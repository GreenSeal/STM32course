#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"
#include "stm32f0xx_ll_tim.h"
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
    
    // Configure pins for digit numbers for semisegment indicator 
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);
    
    
    //Configure pins for segments in semisegment indicator
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_4, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_5, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6, LL_GPIO_MODE_OUTPUT);
    
    return;
}

int counter = 0;
uint32_t time[] = {0, 0, 0, 0};

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
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE2);

    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_2);
    
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_2);
    /*
     * Setting interrupts
     */
    NVIC_EnableIRQ(EXTI0_1_IRQn);
    NVIC_EnableIRQ(EXTI2_3_IRQn);
    
    NVIC_SetPriority(EXTI0_1_IRQn, 2);
    NVIC_SetPriority(EXTI2_3_IRQn, 3);
}

static void timers_config() {
    
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);
    LL_TIM_SetPrescaler(TIM2, 47999);
    LL_TIM_SetAutoReload(TIM2, 999);
    LL_TIM_SetCounterMode(TIM2, LL_TIM_COUNTERMODE_UP);
    LL_TIM_EnableIT_UPDATE(TIM2);
    LL_TIM_EnableCounter(TIM2);
    
    /* Setup NVIC*/
    NVIC_EnableIRQ(TIM2_IRQn);
    NVIC_SetPriority(TIM2_IRQn, 0);

}

/*
 * Handler for user button
 */
void EXTI0_1_IRQHandler(void)
{   
    
}

void EXTI2_3_IRQHandler(void)
{   
}

static void set_indicator(uint8_t number)
{
    /*
     * Put all pins for indicator together (for segments only)
     */
    static uint32_t mask = LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | \
                           LL_GPIO_PIN_3 | LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | \
                           LL_GPIO_PIN_6;
    /*
     * For simplicity there are only decoded values for the first 4 numbers
     */
    static const uint32_t decoder[] = {
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | LL_GPIO_PIN_4 | 
        LL_GPIO_PIN_5, // 0
        LL_GPIO_PIN_1 | LL_GPIO_PIN_2, // 1
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_3 | LL_GPIO_PIN_4 | LL_GPIO_PIN_6, // 2
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | LL_GPIO_PIN_6, // 3
        LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6, // 4
        LL_GPIO_PIN_0 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6, // 5
        LL_GPIO_PIN_0 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | LL_GPIO_PIN_4 | LL_GPIO_PIN_5 |
        LL_GPIO_PIN_6, // 6
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2, // 7
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | LL_GPIO_PIN_4 | 
        LL_GPIO_PIN_5 | LL_GPIO_PIN_6, // 8
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 |
        LL_GPIO_PIN_5 | LL_GPIO_PIN_6, // 9
    };
    const uint8_t max_num = sizeof(decoder) / sizeof(uint32_t);
    uint32_t port_state = 0;

    /*
     * Read current state and do not change pins that are not related to
     * indicator (that is done by using masking)
     */
    port_state = LL_GPIO_ReadOutputPort(GPIOB);
    /*
     * Example:
     * 01100101 <= Input
     * mask = 111 (pins allowed to be changed)
     * ~mask = 11111000 (inverted mask sets remaing bits to one)
     * result = result & ~mask (zero only first three bits)
     * result = result | 001 (modify first three bits)
     * result -> 01100001
     */
    port_state = (port_state & ~mask) | decoder[number % max_num];
    LL_GPIO_WriteOutputPort(GPIOB, port_state);
    return;
}

static void dyn_display() {
    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_0);
    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_1);
    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_2);
    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_3);
    static uint32_t digit_num = 0;

    switch(digit_num) {
        case 0: LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_0);
                set_indicator(1);
                break;
        case 1: LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_1);
                set_indicator(2);
                break;
        case 2: LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_2);
                set_indicator(3);
                break;
        case 3: LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_3);
                set_indicator(4);
                break;
    }

    digit_num = (digit_num + 1)%4;

}


void TIM2_IRQHandler(void)
{
  ++counter;
  if(counter % 100000 == 0) {
    dyn_display();
  }
  /*if(counter % 1 == 0) {
    counter = 0;
    ++time[0];
    if(time[0] == 10) {
      ++time[1];
      time[0] = 0;
      if(time[1] == 7) {
        ++time[2];
        time[1] = time[0] = 0;
        if(time[2] == 10) {
          ++time[3];
          time[2]= time[1] = time[0] = 0;
        }
            
        else if(time[3] == 2 && time[2] == 4) {
          time[3] = time[2] = time[1] = time[0] = 0;
        }
      }
    }
  }  */
}


int main(void)
{
    rcc_config();
    gpio_config();
    //exti_config();
    timers_config();

    while (1) {
        /*dyn_display();
        int i = 0;
        while(++i < 40000); */
    };
    return 0;
}
