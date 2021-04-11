#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"
#include "system_stm32f0xx.h"

/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */
static void rcc_config()
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

/*
 * Configure GPIO
 */
static void gpio_config(void)
{
    /*
     * Configure LEDs
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);
    return;
}

int random() {
   static int num = 13;
   static const int a = 9;
   static const int b = 17;
   static const int m = 3;
   num = (a*num + b) % m;
   return num + 1;
}
/*
 * Configure external interrupts
 */
static void exti_config(void)
{
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);
;
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);

    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);

//    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);
    /*
     * Setting interrupts
     */
    NVIC_EnableIRQ(EXTI0_1_IRQn);
    NVIC_SetPriority(EXTI0_1_IRQn, 3);
}


static int counter_top = 3000;
static int counter = 0;
static int pin9_counter = 0;
static const int pin9_turn_on_time = 500;
static int exti_flag = 0;
static int pin8_flag = 0;
/*
 * Handler for user button
 */
void EXTI0_1_IRQHandler(void)
{   
    if(LL_GPIO_IsOutputPinSet(GPIOC, LL_GPIO_PIN_8)) {
    	//LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_8);
    	LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_9);
      counter_top += pin9_turn_on_time;
      exti_flag = 1;
    }


    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);


	return;

}

/*
 * Configure system timer to time 1 ms
 */
static void systick_config(void)
{
    LL_InitTick(48000000, 1000);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}

/*
 * Handler for system timer
 * Count up to counter_top then switch led
 * (to make blinking more visible)
 */
void SysTick_Handler(void)
{
    if(counter == 0) {

      if(!pin8_flag) 
        counter_top = random() * 1000;

      else
        counter_top = random() * 100;
    }

    
    // if exti was, then stay pin 9 on pin9_turn_on_time ms
    if(exti_flag) {
        pin9_counter = (pin9_counter + 1) % pin9_turn_on_time;
        if(!pin9_counter) {
          LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_9);
          exti_flag = 0;
        }

    }

    counter = (counter + 1) % counter_top;
    if (!counter) {
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
        pin8_flag = !pin8_flag;
    }
}

int main(void)
{
    rcc_config();
    gpio_config();
    exti_config();
    systick_config();

    while (1) {};
    return 0;
}
