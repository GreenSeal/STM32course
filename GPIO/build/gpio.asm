
build/gpio.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000914  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           0000004c  080009d4  080009d4  000109d4  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000a20  08000a20  00010a20  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000a28  08000a28  00010a28  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000a2c  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000024  20000434  08000e60  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000458  08000e60  00020458  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000aa9  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     0000037c  00000000  00000000  00020f05  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000558  00000000  00000000  00021281  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000130  00000000  00000000  000217d9  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000100  00000000  00000000  00021909  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       0000074a  00000000  00000000  00021a09  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        0000052c  00000000  00000000  00022153  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  0002267f  2**0  CONTENTS, READONLY
 17 .debug_frame      00000564  00000000  00000000  000226cc  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000434 	.word	0x20000434
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080009bc 	.word	0x080009bc

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000438 	.word	0x20000438
 8000104:	080009bc 	.word	0x080009bc

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <Reset_Handler>:
 8000220:	480d      	ldr	r0, [pc, #52]	; (8000258 <LoopForever+0x2>)
 8000222:	4685      	mov	sp, r0
 8000224:	480d      	ldr	r0, [pc, #52]	; (800025c <LoopForever+0x6>)
 8000226:	490e      	ldr	r1, [pc, #56]	; (8000260 <LoopForever+0xa>)
 8000228:	4a0e      	ldr	r2, [pc, #56]	; (8000264 <LoopForever+0xe>)
 800022a:	2300      	movs	r3, #0
 800022c:	e002      	b.n	8000234 <LoopCopyDataInit>

0800022e <CopyDataInit>:
 800022e:	58d4      	ldr	r4, [r2, r3]
 8000230:	50c4      	str	r4, [r0, r3]
 8000232:	3304      	adds	r3, #4

08000234 <LoopCopyDataInit>:
 8000234:	18c4      	adds	r4, r0, r3
 8000236:	428c      	cmp	r4, r1
 8000238:	d3f9      	bcc.n	800022e <CopyDataInit>
 800023a:	4a0b      	ldr	r2, [pc, #44]	; (8000268 <LoopForever+0x12>)
 800023c:	4c0b      	ldr	r4, [pc, #44]	; (800026c <LoopForever+0x16>)
 800023e:	2300      	movs	r3, #0
 8000240:	e001      	b.n	8000246 <LoopFillZerobss>

08000242 <FillZerobss>:
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	3204      	adds	r2, #4

08000246 <LoopFillZerobss>:
 8000246:	42a2      	cmp	r2, r4
 8000248:	d3fb      	bcc.n	8000242 <FillZerobss>
 800024a:	f000 fabd 	bl	80007c8 <SystemInit>
 800024e:	f000 fb11 	bl	8000874 <__libc_init_array>
 8000252:	f000 faa3 	bl	800079c <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	08000a2c 	.word	0x08000a2c
 8000268:	20000434 	.word	0x20000434
 800026c:	20000458 	.word	0x20000458

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <LL_RCC_HSI_Enable>:
 8000274:	b580      	push	{r7, lr}
 8000276:	af00      	add	r7, sp, #0
 8000278:	4b04      	ldr	r3, [pc, #16]	; (800028c <LL_RCC_HSI_Enable+0x18>)
 800027a:	681a      	ldr	r2, [r3, #0]
 800027c:	4b03      	ldr	r3, [pc, #12]	; (800028c <LL_RCC_HSI_Enable+0x18>)
 800027e:	2101      	movs	r1, #1
 8000280:	430a      	orrs	r2, r1
 8000282:	601a      	str	r2, [r3, #0]
 8000284:	46c0      	nop			; (mov r8, r8)
 8000286:	46bd      	mov	sp, r7
 8000288:	bd80      	pop	{r7, pc}
 800028a:	46c0      	nop			; (mov r8, r8)
 800028c:	40021000 	.word	0x40021000

08000290 <LL_RCC_HSI_IsReady>:
 8000290:	b580      	push	{r7, lr}
 8000292:	af00      	add	r7, sp, #0
 8000294:	4b05      	ldr	r3, [pc, #20]	; (80002ac <LL_RCC_HSI_IsReady+0x1c>)
 8000296:	681b      	ldr	r3, [r3, #0]
 8000298:	2202      	movs	r2, #2
 800029a:	4013      	ands	r3, r2
 800029c:	3b02      	subs	r3, #2
 800029e:	425a      	negs	r2, r3
 80002a0:	4153      	adcs	r3, r2
 80002a2:	b2db      	uxtb	r3, r3
 80002a4:	0018      	movs	r0, r3
 80002a6:	46bd      	mov	sp, r7
 80002a8:	bd80      	pop	{r7, pc}
 80002aa:	46c0      	nop			; (mov r8, r8)
 80002ac:	40021000 	.word	0x40021000

080002b0 <LL_RCC_SetSysClkSource>:
 80002b0:	b580      	push	{r7, lr}
 80002b2:	b082      	sub	sp, #8
 80002b4:	af00      	add	r7, sp, #0
 80002b6:	6078      	str	r0, [r7, #4]
 80002b8:	4b06      	ldr	r3, [pc, #24]	; (80002d4 <LL_RCC_SetSysClkSource+0x24>)
 80002ba:	685b      	ldr	r3, [r3, #4]
 80002bc:	2203      	movs	r2, #3
 80002be:	4393      	bics	r3, r2
 80002c0:	0019      	movs	r1, r3
 80002c2:	4b04      	ldr	r3, [pc, #16]	; (80002d4 <LL_RCC_SetSysClkSource+0x24>)
 80002c4:	687a      	ldr	r2, [r7, #4]
 80002c6:	430a      	orrs	r2, r1
 80002c8:	605a      	str	r2, [r3, #4]
 80002ca:	46c0      	nop			; (mov r8, r8)
 80002cc:	46bd      	mov	sp, r7
 80002ce:	b002      	add	sp, #8
 80002d0:	bd80      	pop	{r7, pc}
 80002d2:	46c0      	nop			; (mov r8, r8)
 80002d4:	40021000 	.word	0x40021000

080002d8 <LL_RCC_GetSysClkSource>:
 80002d8:	b580      	push	{r7, lr}
 80002da:	af00      	add	r7, sp, #0
 80002dc:	4b03      	ldr	r3, [pc, #12]	; (80002ec <LL_RCC_GetSysClkSource+0x14>)
 80002de:	685b      	ldr	r3, [r3, #4]
 80002e0:	220c      	movs	r2, #12
 80002e2:	4013      	ands	r3, r2
 80002e4:	0018      	movs	r0, r3
 80002e6:	46bd      	mov	sp, r7
 80002e8:	bd80      	pop	{r7, pc}
 80002ea:	46c0      	nop			; (mov r8, r8)
 80002ec:	40021000 	.word	0x40021000

080002f0 <LL_RCC_SetAHBPrescaler>:
 80002f0:	b580      	push	{r7, lr}
 80002f2:	b082      	sub	sp, #8
 80002f4:	af00      	add	r7, sp, #0
 80002f6:	6078      	str	r0, [r7, #4]
 80002f8:	4b06      	ldr	r3, [pc, #24]	; (8000314 <LL_RCC_SetAHBPrescaler+0x24>)
 80002fa:	685b      	ldr	r3, [r3, #4]
 80002fc:	22f0      	movs	r2, #240	; 0xf0
 80002fe:	4393      	bics	r3, r2
 8000300:	0019      	movs	r1, r3
 8000302:	4b04      	ldr	r3, [pc, #16]	; (8000314 <LL_RCC_SetAHBPrescaler+0x24>)
 8000304:	687a      	ldr	r2, [r7, #4]
 8000306:	430a      	orrs	r2, r1
 8000308:	605a      	str	r2, [r3, #4]
 800030a:	46c0      	nop			; (mov r8, r8)
 800030c:	46bd      	mov	sp, r7
 800030e:	b002      	add	sp, #8
 8000310:	bd80      	pop	{r7, pc}
 8000312:	46c0      	nop			; (mov r8, r8)
 8000314:	40021000 	.word	0x40021000

08000318 <LL_RCC_SetAPB1Prescaler>:
 8000318:	b580      	push	{r7, lr}
 800031a:	b082      	sub	sp, #8
 800031c:	af00      	add	r7, sp, #0
 800031e:	6078      	str	r0, [r7, #4]
 8000320:	4b06      	ldr	r3, [pc, #24]	; (800033c <LL_RCC_SetAPB1Prescaler+0x24>)
 8000322:	685b      	ldr	r3, [r3, #4]
 8000324:	4a06      	ldr	r2, [pc, #24]	; (8000340 <LL_RCC_SetAPB1Prescaler+0x28>)
 8000326:	4013      	ands	r3, r2
 8000328:	0019      	movs	r1, r3
 800032a:	4b04      	ldr	r3, [pc, #16]	; (800033c <LL_RCC_SetAPB1Prescaler+0x24>)
 800032c:	687a      	ldr	r2, [r7, #4]
 800032e:	430a      	orrs	r2, r1
 8000330:	605a      	str	r2, [r3, #4]
 8000332:	46c0      	nop			; (mov r8, r8)
 8000334:	46bd      	mov	sp, r7
 8000336:	b002      	add	sp, #8
 8000338:	bd80      	pop	{r7, pc}
 800033a:	46c0      	nop			; (mov r8, r8)
 800033c:	40021000 	.word	0x40021000
 8000340:	fffff8ff 	.word	0xfffff8ff

08000344 <LL_RCC_PLL_Enable>:
 8000344:	b580      	push	{r7, lr}
 8000346:	af00      	add	r7, sp, #0
 8000348:	4b04      	ldr	r3, [pc, #16]	; (800035c <LL_RCC_PLL_Enable+0x18>)
 800034a:	681a      	ldr	r2, [r3, #0]
 800034c:	4b03      	ldr	r3, [pc, #12]	; (800035c <LL_RCC_PLL_Enable+0x18>)
 800034e:	2180      	movs	r1, #128	; 0x80
 8000350:	0449      	lsls	r1, r1, #17
 8000352:	430a      	orrs	r2, r1
 8000354:	601a      	str	r2, [r3, #0]
 8000356:	46c0      	nop			; (mov r8, r8)
 8000358:	46bd      	mov	sp, r7
 800035a:	bd80      	pop	{r7, pc}
 800035c:	40021000 	.word	0x40021000

08000360 <LL_RCC_PLL_IsReady>:
 8000360:	b580      	push	{r7, lr}
 8000362:	af00      	add	r7, sp, #0
 8000364:	4b07      	ldr	r3, [pc, #28]	; (8000384 <LL_RCC_PLL_IsReady+0x24>)
 8000366:	681a      	ldr	r2, [r3, #0]
 8000368:	2380      	movs	r3, #128	; 0x80
 800036a:	049b      	lsls	r3, r3, #18
 800036c:	4013      	ands	r3, r2
 800036e:	22fe      	movs	r2, #254	; 0xfe
 8000370:	0612      	lsls	r2, r2, #24
 8000372:	4694      	mov	ip, r2
 8000374:	4463      	add	r3, ip
 8000376:	425a      	negs	r2, r3
 8000378:	4153      	adcs	r3, r2
 800037a:	b2db      	uxtb	r3, r3
 800037c:	0018      	movs	r0, r3
 800037e:	46bd      	mov	sp, r7
 8000380:	bd80      	pop	{r7, pc}
 8000382:	46c0      	nop			; (mov r8, r8)
 8000384:	40021000 	.word	0x40021000

08000388 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000388:	b580      	push	{r7, lr}
 800038a:	b082      	sub	sp, #8
 800038c:	af00      	add	r7, sp, #0
 800038e:	6078      	str	r0, [r7, #4]
 8000390:	6039      	str	r1, [r7, #0]
 8000392:	4b0e      	ldr	r3, [pc, #56]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000394:	685b      	ldr	r3, [r3, #4]
 8000396:	4a0e      	ldr	r2, [pc, #56]	; (80003d0 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000398:	4013      	ands	r3, r2
 800039a:	0019      	movs	r1, r3
 800039c:	687a      	ldr	r2, [r7, #4]
 800039e:	2380      	movs	r3, #128	; 0x80
 80003a0:	025b      	lsls	r3, r3, #9
 80003a2:	401a      	ands	r2, r3
 80003a4:	683b      	ldr	r3, [r7, #0]
 80003a6:	431a      	orrs	r2, r3
 80003a8:	4b08      	ldr	r3, [pc, #32]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003aa:	430a      	orrs	r2, r1
 80003ac:	605a      	str	r2, [r3, #4]
 80003ae:	4b07      	ldr	r3, [pc, #28]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003b0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80003b2:	220f      	movs	r2, #15
 80003b4:	4393      	bics	r3, r2
 80003b6:	0019      	movs	r1, r3
 80003b8:	687b      	ldr	r3, [r7, #4]
 80003ba:	220f      	movs	r2, #15
 80003bc:	401a      	ands	r2, r3
 80003be:	4b03      	ldr	r3, [pc, #12]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003c0:	430a      	orrs	r2, r1
 80003c2:	62da      	str	r2, [r3, #44]	; 0x2c
 80003c4:	46c0      	nop			; (mov r8, r8)
 80003c6:	46bd      	mov	sp, r7
 80003c8:	b002      	add	sp, #8
 80003ca:	bd80      	pop	{r7, pc}
 80003cc:	40021000 	.word	0x40021000
 80003d0:	ffc2ffff 	.word	0xffc2ffff

080003d4 <LL_FLASH_SetLatency>:
 80003d4:	b580      	push	{r7, lr}
 80003d6:	b082      	sub	sp, #8
 80003d8:	af00      	add	r7, sp, #0
 80003da:	6078      	str	r0, [r7, #4]
 80003dc:	4b06      	ldr	r3, [pc, #24]	; (80003f8 <LL_FLASH_SetLatency+0x24>)
 80003de:	681b      	ldr	r3, [r3, #0]
 80003e0:	2201      	movs	r2, #1
 80003e2:	4393      	bics	r3, r2
 80003e4:	0019      	movs	r1, r3
 80003e6:	4b04      	ldr	r3, [pc, #16]	; (80003f8 <LL_FLASH_SetLatency+0x24>)
 80003e8:	687a      	ldr	r2, [r7, #4]
 80003ea:	430a      	orrs	r2, r1
 80003ec:	601a      	str	r2, [r3, #0]
 80003ee:	46c0      	nop			; (mov r8, r8)
 80003f0:	46bd      	mov	sp, r7
 80003f2:	b002      	add	sp, #8
 80003f4:	bd80      	pop	{r7, pc}
 80003f6:	46c0      	nop			; (mov r8, r8)
 80003f8:	40022000 	.word	0x40022000

080003fc <LL_AHB1_GRP1_EnableClock>:
 80003fc:	b580      	push	{r7, lr}
 80003fe:	b084      	sub	sp, #16
 8000400:	af00      	add	r7, sp, #0
 8000402:	6078      	str	r0, [r7, #4]
 8000404:	4b07      	ldr	r3, [pc, #28]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000406:	6959      	ldr	r1, [r3, #20]
 8000408:	4b06      	ldr	r3, [pc, #24]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 800040a:	687a      	ldr	r2, [r7, #4]
 800040c:	430a      	orrs	r2, r1
 800040e:	615a      	str	r2, [r3, #20]
 8000410:	4b04      	ldr	r3, [pc, #16]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000412:	695b      	ldr	r3, [r3, #20]
 8000414:	687a      	ldr	r2, [r7, #4]
 8000416:	4013      	ands	r3, r2
 8000418:	60fb      	str	r3, [r7, #12]
 800041a:	68fb      	ldr	r3, [r7, #12]
 800041c:	46c0      	nop			; (mov r8, r8)
 800041e:	46bd      	mov	sp, r7
 8000420:	b004      	add	sp, #16
 8000422:	bd80      	pop	{r7, pc}
 8000424:	40021000 	.word	0x40021000

08000428 <LL_GPIO_SetPinMode>:
 8000428:	b580      	push	{r7, lr}
 800042a:	b084      	sub	sp, #16
 800042c:	af00      	add	r7, sp, #0
 800042e:	60f8      	str	r0, [r7, #12]
 8000430:	60b9      	str	r1, [r7, #8]
 8000432:	607a      	str	r2, [r7, #4]
 8000434:	68fb      	ldr	r3, [r7, #12]
 8000436:	6819      	ldr	r1, [r3, #0]
 8000438:	68bb      	ldr	r3, [r7, #8]
 800043a:	435b      	muls	r3, r3
 800043c:	001a      	movs	r2, r3
 800043e:	0013      	movs	r3, r2
 8000440:	005b      	lsls	r3, r3, #1
 8000442:	189b      	adds	r3, r3, r2
 8000444:	43db      	mvns	r3, r3
 8000446:	400b      	ands	r3, r1
 8000448:	001a      	movs	r2, r3
 800044a:	68bb      	ldr	r3, [r7, #8]
 800044c:	435b      	muls	r3, r3
 800044e:	6879      	ldr	r1, [r7, #4]
 8000450:	434b      	muls	r3, r1
 8000452:	431a      	orrs	r2, r3
 8000454:	68fb      	ldr	r3, [r7, #12]
 8000456:	601a      	str	r2, [r3, #0]
 8000458:	46c0      	nop			; (mov r8, r8)
 800045a:	46bd      	mov	sp, r7
 800045c:	b004      	add	sp, #16
 800045e:	bd80      	pop	{r7, pc}

08000460 <LL_GPIO_WriteOutputPort>:
 8000460:	b580      	push	{r7, lr}
 8000462:	b082      	sub	sp, #8
 8000464:	af00      	add	r7, sp, #0
 8000466:	6078      	str	r0, [r7, #4]
 8000468:	6039      	str	r1, [r7, #0]
 800046a:	687b      	ldr	r3, [r7, #4]
 800046c:	683a      	ldr	r2, [r7, #0]
 800046e:	615a      	str	r2, [r3, #20]
 8000470:	46c0      	nop			; (mov r8, r8)
 8000472:	46bd      	mov	sp, r7
 8000474:	b002      	add	sp, #8
 8000476:	bd80      	pop	{r7, pc}

08000478 <LL_GPIO_ReadOutputPort>:
 8000478:	b580      	push	{r7, lr}
 800047a:	b082      	sub	sp, #8
 800047c:	af00      	add	r7, sp, #0
 800047e:	6078      	str	r0, [r7, #4]
 8000480:	687b      	ldr	r3, [r7, #4]
 8000482:	695b      	ldr	r3, [r3, #20]
 8000484:	0018      	movs	r0, r3
 8000486:	46bd      	mov	sp, r7
 8000488:	b002      	add	sp, #8
 800048a:	bd80      	pop	{r7, pc}

0800048c <LL_GPIO_SetOutputPin>:
 800048c:	b580      	push	{r7, lr}
 800048e:	b082      	sub	sp, #8
 8000490:	af00      	add	r7, sp, #0
 8000492:	6078      	str	r0, [r7, #4]
 8000494:	6039      	str	r1, [r7, #0]
 8000496:	687b      	ldr	r3, [r7, #4]
 8000498:	683a      	ldr	r2, [r7, #0]
 800049a:	619a      	str	r2, [r3, #24]
 800049c:	46c0      	nop			; (mov r8, r8)
 800049e:	46bd      	mov	sp, r7
 80004a0:	b002      	add	sp, #8
 80004a2:	bd80      	pop	{r7, pc}

080004a4 <LL_GPIO_ResetOutputPin>:
 80004a4:	b580      	push	{r7, lr}
 80004a6:	b082      	sub	sp, #8
 80004a8:	af00      	add	r7, sp, #0
 80004aa:	6078      	str	r0, [r7, #4]
 80004ac:	6039      	str	r1, [r7, #0]
 80004ae:	687b      	ldr	r3, [r7, #4]
 80004b0:	683a      	ldr	r2, [r7, #0]
 80004b2:	629a      	str	r2, [r3, #40]	; 0x28
 80004b4:	46c0      	nop			; (mov r8, r8)
 80004b6:	46bd      	mov	sp, r7
 80004b8:	b002      	add	sp, #8
 80004ba:	bd80      	pop	{r7, pc}

080004bc <rcc_config>:
 80004bc:	b580      	push	{r7, lr}
 80004be:	af00      	add	r7, sp, #0
 80004c0:	2001      	movs	r0, #1
 80004c2:	f7ff ff87 	bl	80003d4 <LL_FLASH_SetLatency>
 80004c6:	f7ff fed5 	bl	8000274 <LL_RCC_HSI_Enable>
 80004ca:	46c0      	nop			; (mov r8, r8)
 80004cc:	f7ff fee0 	bl	8000290 <LL_RCC_HSI_IsReady>
 80004d0:	0003      	movs	r3, r0
 80004d2:	2b01      	cmp	r3, #1
 80004d4:	d1fa      	bne.n	80004cc <rcc_config+0x10>
 80004d6:	23a0      	movs	r3, #160	; 0xa0
 80004d8:	039b      	lsls	r3, r3, #14
 80004da:	0019      	movs	r1, r3
 80004dc:	2000      	movs	r0, #0
 80004de:	f7ff ff53 	bl	8000388 <LL_RCC_PLL_ConfigDomain_SYS>
 80004e2:	f7ff ff2f 	bl	8000344 <LL_RCC_PLL_Enable>
 80004e6:	46c0      	nop			; (mov r8, r8)
 80004e8:	f7ff ff3a 	bl	8000360 <LL_RCC_PLL_IsReady>
 80004ec:	0003      	movs	r3, r0
 80004ee:	2b01      	cmp	r3, #1
 80004f0:	d1fa      	bne.n	80004e8 <rcc_config+0x2c>
 80004f2:	2000      	movs	r0, #0
 80004f4:	f7ff fefc 	bl	80002f0 <LL_RCC_SetAHBPrescaler>
 80004f8:	2002      	movs	r0, #2
 80004fa:	f7ff fed9 	bl	80002b0 <LL_RCC_SetSysClkSource>
 80004fe:	46c0      	nop			; (mov r8, r8)
 8000500:	f7ff feea 	bl	80002d8 <LL_RCC_GetSysClkSource>
 8000504:	0003      	movs	r3, r0
 8000506:	2b08      	cmp	r3, #8
 8000508:	d1fa      	bne.n	8000500 <rcc_config+0x44>
 800050a:	2000      	movs	r0, #0
 800050c:	f7ff ff04 	bl	8000318 <LL_RCC_SetAPB1Prescaler>
 8000510:	4b02      	ldr	r3, [pc, #8]	; (800051c <rcc_config+0x60>)
 8000512:	4a03      	ldr	r2, [pc, #12]	; (8000520 <rcc_config+0x64>)
 8000514:	601a      	str	r2, [r3, #0]
 8000516:	46c0      	nop			; (mov r8, r8)
 8000518:	46bd      	mov	sp, r7
 800051a:	bd80      	pop	{r7, pc}
 800051c:	20000004 	.word	0x20000004
 8000520:	02dc6c00 	.word	0x02dc6c00

08000524 <gpio_config>:
 8000524:	b580      	push	{r7, lr}
 8000526:	af00      	add	r7, sp, #0
 8000528:	2380      	movs	r3, #128	; 0x80
 800052a:	031b      	lsls	r3, r3, #12
 800052c:	0018      	movs	r0, r3
 800052e:	f7ff ff65 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 8000532:	2380      	movs	r3, #128	; 0x80
 8000534:	005b      	lsls	r3, r3, #1
 8000536:	4831      	ldr	r0, [pc, #196]	; (80005fc <gpio_config+0xd8>)
 8000538:	2201      	movs	r2, #1
 800053a:	0019      	movs	r1, r3
 800053c:	f7ff ff74 	bl	8000428 <LL_GPIO_SetPinMode>
 8000540:	2380      	movs	r3, #128	; 0x80
 8000542:	009b      	lsls	r3, r3, #2
 8000544:	482d      	ldr	r0, [pc, #180]	; (80005fc <gpio_config+0xd8>)
 8000546:	2201      	movs	r2, #1
 8000548:	0019      	movs	r1, r3
 800054a:	f7ff ff6d 	bl	8000428 <LL_GPIO_SetPinMode>
 800054e:	4b2b      	ldr	r3, [pc, #172]	; (80005fc <gpio_config+0xd8>)
 8000550:	2201      	movs	r2, #1
 8000552:	2101      	movs	r1, #1
 8000554:	0018      	movs	r0, r3
 8000556:	f7ff ff67 	bl	8000428 <LL_GPIO_SetPinMode>
 800055a:	4b28      	ldr	r3, [pc, #160]	; (80005fc <gpio_config+0xd8>)
 800055c:	2201      	movs	r2, #1
 800055e:	2102      	movs	r1, #2
 8000560:	0018      	movs	r0, r3
 8000562:	f7ff ff61 	bl	8000428 <LL_GPIO_SetPinMode>
 8000566:	4b25      	ldr	r3, [pc, #148]	; (80005fc <gpio_config+0xd8>)
 8000568:	2201      	movs	r2, #1
 800056a:	2104      	movs	r1, #4
 800056c:	0018      	movs	r0, r3
 800056e:	f7ff ff5b 	bl	8000428 <LL_GPIO_SetPinMode>
 8000572:	4b22      	ldr	r3, [pc, #136]	; (80005fc <gpio_config+0xd8>)
 8000574:	2201      	movs	r2, #1
 8000576:	2108      	movs	r1, #8
 8000578:	0018      	movs	r0, r3
 800057a:	f7ff ff55 	bl	8000428 <LL_GPIO_SetPinMode>
 800057e:	2380      	movs	r3, #128	; 0x80
 8000580:	02db      	lsls	r3, r3, #11
 8000582:	0018      	movs	r0, r3
 8000584:	f7ff ff3a 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 8000588:	4b1d      	ldr	r3, [pc, #116]	; (8000600 <gpio_config+0xdc>)
 800058a:	2201      	movs	r2, #1
 800058c:	2101      	movs	r1, #1
 800058e:	0018      	movs	r0, r3
 8000590:	f7ff ff4a 	bl	8000428 <LL_GPIO_SetPinMode>
 8000594:	4b1a      	ldr	r3, [pc, #104]	; (8000600 <gpio_config+0xdc>)
 8000596:	2201      	movs	r2, #1
 8000598:	2102      	movs	r1, #2
 800059a:	0018      	movs	r0, r3
 800059c:	f7ff ff44 	bl	8000428 <LL_GPIO_SetPinMode>
 80005a0:	4b17      	ldr	r3, [pc, #92]	; (8000600 <gpio_config+0xdc>)
 80005a2:	2201      	movs	r2, #1
 80005a4:	2104      	movs	r1, #4
 80005a6:	0018      	movs	r0, r3
 80005a8:	f7ff ff3e 	bl	8000428 <LL_GPIO_SetPinMode>
 80005ac:	4b14      	ldr	r3, [pc, #80]	; (8000600 <gpio_config+0xdc>)
 80005ae:	2201      	movs	r2, #1
 80005b0:	2108      	movs	r1, #8
 80005b2:	0018      	movs	r0, r3
 80005b4:	f7ff ff38 	bl	8000428 <LL_GPIO_SetPinMode>
 80005b8:	4b11      	ldr	r3, [pc, #68]	; (8000600 <gpio_config+0xdc>)
 80005ba:	2201      	movs	r2, #1
 80005bc:	2110      	movs	r1, #16
 80005be:	0018      	movs	r0, r3
 80005c0:	f7ff ff32 	bl	8000428 <LL_GPIO_SetPinMode>
 80005c4:	4b0e      	ldr	r3, [pc, #56]	; (8000600 <gpio_config+0xdc>)
 80005c6:	2201      	movs	r2, #1
 80005c8:	2120      	movs	r1, #32
 80005ca:	0018      	movs	r0, r3
 80005cc:	f7ff ff2c 	bl	8000428 <LL_GPIO_SetPinMode>
 80005d0:	4b0b      	ldr	r3, [pc, #44]	; (8000600 <gpio_config+0xdc>)
 80005d2:	2201      	movs	r2, #1
 80005d4:	2140      	movs	r1, #64	; 0x40
 80005d6:	0018      	movs	r0, r3
 80005d8:	f7ff ff26 	bl	8000428 <LL_GPIO_SetPinMode>
 80005dc:	2380      	movs	r3, #128	; 0x80
 80005de:	029b      	lsls	r3, r3, #10
 80005e0:	0018      	movs	r0, r3
 80005e2:	f7ff ff0b 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 80005e6:	2390      	movs	r3, #144	; 0x90
 80005e8:	05db      	lsls	r3, r3, #23
 80005ea:	2200      	movs	r2, #0
 80005ec:	2101      	movs	r1, #1
 80005ee:	0018      	movs	r0, r3
 80005f0:	f7ff ff1a 	bl	8000428 <LL_GPIO_SetPinMode>
 80005f4:	46c0      	nop			; (mov r8, r8)
 80005f6:	46bd      	mov	sp, r7
 80005f8:	bd80      	pop	{r7, pc}
 80005fa:	46c0      	nop			; (mov r8, r8)
 80005fc:	48000800 	.word	0x48000800
 8000600:	48000400 	.word	0x48000400

08000604 <delay>:
 8000604:	2400      	movs	r4, #0
 8000606:	e000      	b.n	800060a <delay+0x6>
 8000608:	3401      	adds	r4, #1
 800060a:	4b02      	ldr	r3, [pc, #8]	; (8000614 <delay+0x10>)
 800060c:	429c      	cmp	r4, r3
 800060e:	d9fb      	bls.n	8000608 <delay+0x4>
 8000610:	46c0      	nop			; (mov r8, r8)
 8000612:	46c0      	nop			; (mov r8, r8)
 8000614:	0000270f 	.word	0x0000270f

08000618 <set_indicator>:
 8000618:	b5b0      	push	{r4, r5, r7, lr}
 800061a:	b084      	sub	sp, #16
 800061c:	af00      	add	r7, sp, #0
 800061e:	0002      	movs	r2, r0
 8000620:	1dfb      	adds	r3, r7, #7
 8000622:	701a      	strb	r2, [r3, #0]
 8000624:	250f      	movs	r5, #15
 8000626:	197b      	adds	r3, r7, r5
 8000628:	2206      	movs	r2, #6
 800062a:	701a      	strb	r2, [r3, #0]
 800062c:	2300      	movs	r3, #0
 800062e:	60bb      	str	r3, [r7, #8]
 8000630:	4b12      	ldr	r3, [pc, #72]	; (800067c <set_indicator+0x64>)
 8000632:	0018      	movs	r0, r3
 8000634:	f7ff ff20 	bl	8000478 <LL_GPIO_ReadOutputPort>
 8000638:	0003      	movs	r3, r0
 800063a:	60bb      	str	r3, [r7, #8]
 800063c:	4b10      	ldr	r3, [pc, #64]	; (8000680 <set_indicator+0x68>)
 800063e:	681b      	ldr	r3, [r3, #0]
 8000640:	43db      	mvns	r3, r3
 8000642:	68ba      	ldr	r2, [r7, #8]
 8000644:	401a      	ands	r2, r3
 8000646:	0014      	movs	r4, r2
 8000648:	1dfa      	adds	r2, r7, #7
 800064a:	197b      	adds	r3, r7, r5
 800064c:	7812      	ldrb	r2, [r2, #0]
 800064e:	781b      	ldrb	r3, [r3, #0]
 8000650:	0019      	movs	r1, r3
 8000652:	0010      	movs	r0, r2
 8000654:	f7ff fdde 	bl	8000214 <__aeabi_uidivmod>
 8000658:	000b      	movs	r3, r1
 800065a:	b2db      	uxtb	r3, r3
 800065c:	001a      	movs	r2, r3
 800065e:	4b09      	ldr	r3, [pc, #36]	; (8000684 <set_indicator+0x6c>)
 8000660:	0092      	lsls	r2, r2, #2
 8000662:	58d3      	ldr	r3, [r2, r3]
 8000664:	4323      	orrs	r3, r4
 8000666:	60bb      	str	r3, [r7, #8]
 8000668:	68bb      	ldr	r3, [r7, #8]
 800066a:	4a04      	ldr	r2, [pc, #16]	; (800067c <set_indicator+0x64>)
 800066c:	0019      	movs	r1, r3
 800066e:	0010      	movs	r0, r2
 8000670:	f7ff fef6 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000674:	46c0      	nop			; (mov r8, r8)
 8000676:	46bd      	mov	sp, r7
 8000678:	b004      	add	sp, #16
 800067a:	bdb0      	pop	{r4, r5, r7, pc}
 800067c:	48000400 	.word	0x48000400
 8000680:	20000000 	.word	0x20000000
 8000684:	080009d4 	.word	0x080009d4

08000688 <dyn_display>:
 8000688:	b580      	push	{r7, lr}
 800068a:	b082      	sub	sp, #8
 800068c:	af00      	add	r7, sp, #0
 800068e:	6078      	str	r0, [r7, #4]
 8000690:	4b3f      	ldr	r3, [pc, #252]	; (8000790 <dyn_display+0x108>)
 8000692:	2101      	movs	r1, #1
 8000694:	0018      	movs	r0, r3
 8000696:	f7ff fef9 	bl	800048c <LL_GPIO_SetOutputPin>
 800069a:	4b3d      	ldr	r3, [pc, #244]	; (8000790 <dyn_display+0x108>)
 800069c:	2102      	movs	r1, #2
 800069e:	0018      	movs	r0, r3
 80006a0:	f7ff fef4 	bl	800048c <LL_GPIO_SetOutputPin>
 80006a4:	4b3a      	ldr	r3, [pc, #232]	; (8000790 <dyn_display+0x108>)
 80006a6:	2104      	movs	r1, #4
 80006a8:	0018      	movs	r0, r3
 80006aa:	f7ff feef 	bl	800048c <LL_GPIO_SetOutputPin>
 80006ae:	4b38      	ldr	r3, [pc, #224]	; (8000790 <dyn_display+0x108>)
 80006b0:	2108      	movs	r1, #8
 80006b2:	0018      	movs	r0, r3
 80006b4:	f7ff feea 	bl	800048c <LL_GPIO_SetOutputPin>
 80006b8:	4b36      	ldr	r3, [pc, #216]	; (8000794 <dyn_display+0x10c>)
 80006ba:	681b      	ldr	r3, [r3, #0]
 80006bc:	2b03      	cmp	r3, #3
 80006be:	d046      	beq.n	800074e <dyn_display+0xc6>
 80006c0:	d85a      	bhi.n	8000778 <dyn_display+0xf0>
 80006c2:	2b02      	cmp	r3, #2
 80006c4:	d02e      	beq.n	8000724 <dyn_display+0x9c>
 80006c6:	d857      	bhi.n	8000778 <dyn_display+0xf0>
 80006c8:	2b00      	cmp	r3, #0
 80006ca:	d002      	beq.n	80006d2 <dyn_display+0x4a>
 80006cc:	2b01      	cmp	r3, #1
 80006ce:	d014      	beq.n	80006fa <dyn_display+0x72>
 80006d0:	e052      	b.n	8000778 <dyn_display+0xf0>
 80006d2:	4b2f      	ldr	r3, [pc, #188]	; (8000790 <dyn_display+0x108>)
 80006d4:	2101      	movs	r1, #1
 80006d6:	0018      	movs	r0, r3
 80006d8:	f7ff fee4 	bl	80004a4 <LL_GPIO_ResetOutputPin>
 80006dc:	687b      	ldr	r3, [r7, #4]
 80006de:	210c      	movs	r1, #12
 80006e0:	0018      	movs	r0, r3
 80006e2:	f7ff fd97 	bl	8000214 <__aeabi_uidivmod>
 80006e6:	000b      	movs	r3, r1
 80006e8:	001a      	movs	r2, r3
 80006ea:	4b2b      	ldr	r3, [pc, #172]	; (8000798 <dyn_display+0x110>)
 80006ec:	0092      	lsls	r2, r2, #2
 80006ee:	58d3      	ldr	r3, [r2, r3]
 80006f0:	b2db      	uxtb	r3, r3
 80006f2:	0018      	movs	r0, r3
 80006f4:	f7ff ff90 	bl	8000618 <set_indicator>
 80006f8:	e03e      	b.n	8000778 <dyn_display+0xf0>
 80006fa:	4b25      	ldr	r3, [pc, #148]	; (8000790 <dyn_display+0x108>)
 80006fc:	2102      	movs	r1, #2
 80006fe:	0018      	movs	r0, r3
 8000700:	f7ff fed0 	bl	80004a4 <LL_GPIO_ResetOutputPin>
 8000704:	687b      	ldr	r3, [r7, #4]
 8000706:	3301      	adds	r3, #1
 8000708:	210c      	movs	r1, #12
 800070a:	0018      	movs	r0, r3
 800070c:	f7ff fd82 	bl	8000214 <__aeabi_uidivmod>
 8000710:	000b      	movs	r3, r1
 8000712:	001a      	movs	r2, r3
 8000714:	4b20      	ldr	r3, [pc, #128]	; (8000798 <dyn_display+0x110>)
 8000716:	0092      	lsls	r2, r2, #2
 8000718:	58d3      	ldr	r3, [r2, r3]
 800071a:	b2db      	uxtb	r3, r3
 800071c:	0018      	movs	r0, r3
 800071e:	f7ff ff7b 	bl	8000618 <set_indicator>
 8000722:	e029      	b.n	8000778 <dyn_display+0xf0>
 8000724:	4b1a      	ldr	r3, [pc, #104]	; (8000790 <dyn_display+0x108>)
 8000726:	2104      	movs	r1, #4
 8000728:	0018      	movs	r0, r3
 800072a:	f7ff febb 	bl	80004a4 <LL_GPIO_ResetOutputPin>
 800072e:	687b      	ldr	r3, [r7, #4]
 8000730:	3302      	adds	r3, #2
 8000732:	210c      	movs	r1, #12
 8000734:	0018      	movs	r0, r3
 8000736:	f7ff fd6d 	bl	8000214 <__aeabi_uidivmod>
 800073a:	000b      	movs	r3, r1
 800073c:	001a      	movs	r2, r3
 800073e:	4b16      	ldr	r3, [pc, #88]	; (8000798 <dyn_display+0x110>)
 8000740:	0092      	lsls	r2, r2, #2
 8000742:	58d3      	ldr	r3, [r2, r3]
 8000744:	b2db      	uxtb	r3, r3
 8000746:	0018      	movs	r0, r3
 8000748:	f7ff ff66 	bl	8000618 <set_indicator>
 800074c:	e014      	b.n	8000778 <dyn_display+0xf0>
 800074e:	4b10      	ldr	r3, [pc, #64]	; (8000790 <dyn_display+0x108>)
 8000750:	2108      	movs	r1, #8
 8000752:	0018      	movs	r0, r3
 8000754:	f7ff fea6 	bl	80004a4 <LL_GPIO_ResetOutputPin>
 8000758:	687b      	ldr	r3, [r7, #4]
 800075a:	3303      	adds	r3, #3
 800075c:	210c      	movs	r1, #12
 800075e:	0018      	movs	r0, r3
 8000760:	f7ff fd58 	bl	8000214 <__aeabi_uidivmod>
 8000764:	000b      	movs	r3, r1
 8000766:	001a      	movs	r2, r3
 8000768:	4b0b      	ldr	r3, [pc, #44]	; (8000798 <dyn_display+0x110>)
 800076a:	0092      	lsls	r2, r2, #2
 800076c:	58d3      	ldr	r3, [r2, r3]
 800076e:	b2db      	uxtb	r3, r3
 8000770:	0018      	movs	r0, r3
 8000772:	f7ff ff51 	bl	8000618 <set_indicator>
 8000776:	46c0      	nop			; (mov r8, r8)
 8000778:	4b06      	ldr	r3, [pc, #24]	; (8000794 <dyn_display+0x10c>)
 800077a:	681b      	ldr	r3, [r3, #0]
 800077c:	3301      	adds	r3, #1
 800077e:	2203      	movs	r2, #3
 8000780:	401a      	ands	r2, r3
 8000782:	4b04      	ldr	r3, [pc, #16]	; (8000794 <dyn_display+0x10c>)
 8000784:	601a      	str	r2, [r3, #0]
 8000786:	46c0      	nop			; (mov r8, r8)
 8000788:	46bd      	mov	sp, r7
 800078a:	b002      	add	sp, #8
 800078c:	bd80      	pop	{r7, pc}
 800078e:	46c0      	nop			; (mov r8, r8)
 8000790:	48000800 	.word	0x48000800
 8000794:	20000450 	.word	0x20000450
 8000798:	080009ec 	.word	0x080009ec

0800079c <main>:
 800079c:	b580      	push	{r7, lr}
 800079e:	b084      	sub	sp, #16
 80007a0:	af00      	add	r7, sp, #0
 80007a2:	230f      	movs	r3, #15
 80007a4:	18fb      	adds	r3, r7, r3
 80007a6:	2200      	movs	r2, #0
 80007a8:	701a      	strb	r2, [r3, #0]
 80007aa:	2300      	movs	r3, #0
 80007ac:	60bb      	str	r3, [r7, #8]
 80007ae:	2300      	movs	r3, #0
 80007b0:	607b      	str	r3, [r7, #4]
 80007b2:	f7ff fe83 	bl	80004bc <rcc_config>
 80007b6:	f7ff feb5 	bl	8000524 <gpio_config>
 80007ba:	687b      	ldr	r3, [r7, #4]
 80007bc:	0018      	movs	r0, r3
 80007be:	f7ff ff63 	bl	8000688 <dyn_display>
 80007c2:	f7ff ff1f 	bl	8000604 <delay>
 80007c6:	e7f8      	b.n	80007ba <main+0x1e>

080007c8 <SystemInit>:
 80007c8:	b580      	push	{r7, lr}
 80007ca:	af00      	add	r7, sp, #0
 80007cc:	4b1a      	ldr	r3, [pc, #104]	; (8000838 <SystemInit+0x70>)
 80007ce:	681a      	ldr	r2, [r3, #0]
 80007d0:	4b19      	ldr	r3, [pc, #100]	; (8000838 <SystemInit+0x70>)
 80007d2:	2101      	movs	r1, #1
 80007d4:	430a      	orrs	r2, r1
 80007d6:	601a      	str	r2, [r3, #0]
 80007d8:	4b17      	ldr	r3, [pc, #92]	; (8000838 <SystemInit+0x70>)
 80007da:	685a      	ldr	r2, [r3, #4]
 80007dc:	4b16      	ldr	r3, [pc, #88]	; (8000838 <SystemInit+0x70>)
 80007de:	4917      	ldr	r1, [pc, #92]	; (800083c <SystemInit+0x74>)
 80007e0:	400a      	ands	r2, r1
 80007e2:	605a      	str	r2, [r3, #4]
 80007e4:	4b14      	ldr	r3, [pc, #80]	; (8000838 <SystemInit+0x70>)
 80007e6:	681a      	ldr	r2, [r3, #0]
 80007e8:	4b13      	ldr	r3, [pc, #76]	; (8000838 <SystemInit+0x70>)
 80007ea:	4915      	ldr	r1, [pc, #84]	; (8000840 <SystemInit+0x78>)
 80007ec:	400a      	ands	r2, r1
 80007ee:	601a      	str	r2, [r3, #0]
 80007f0:	4b11      	ldr	r3, [pc, #68]	; (8000838 <SystemInit+0x70>)
 80007f2:	681a      	ldr	r2, [r3, #0]
 80007f4:	4b10      	ldr	r3, [pc, #64]	; (8000838 <SystemInit+0x70>)
 80007f6:	4913      	ldr	r1, [pc, #76]	; (8000844 <SystemInit+0x7c>)
 80007f8:	400a      	ands	r2, r1
 80007fa:	601a      	str	r2, [r3, #0]
 80007fc:	4b0e      	ldr	r3, [pc, #56]	; (8000838 <SystemInit+0x70>)
 80007fe:	685a      	ldr	r2, [r3, #4]
 8000800:	4b0d      	ldr	r3, [pc, #52]	; (8000838 <SystemInit+0x70>)
 8000802:	4911      	ldr	r1, [pc, #68]	; (8000848 <SystemInit+0x80>)
 8000804:	400a      	ands	r2, r1
 8000806:	605a      	str	r2, [r3, #4]
 8000808:	4b0b      	ldr	r3, [pc, #44]	; (8000838 <SystemInit+0x70>)
 800080a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800080c:	4b0a      	ldr	r3, [pc, #40]	; (8000838 <SystemInit+0x70>)
 800080e:	210f      	movs	r1, #15
 8000810:	438a      	bics	r2, r1
 8000812:	62da      	str	r2, [r3, #44]	; 0x2c
 8000814:	4b08      	ldr	r3, [pc, #32]	; (8000838 <SystemInit+0x70>)
 8000816:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000818:	4b07      	ldr	r3, [pc, #28]	; (8000838 <SystemInit+0x70>)
 800081a:	490c      	ldr	r1, [pc, #48]	; (800084c <SystemInit+0x84>)
 800081c:	400a      	ands	r2, r1
 800081e:	631a      	str	r2, [r3, #48]	; 0x30
 8000820:	4b05      	ldr	r3, [pc, #20]	; (8000838 <SystemInit+0x70>)
 8000822:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000824:	4b04      	ldr	r3, [pc, #16]	; (8000838 <SystemInit+0x70>)
 8000826:	2101      	movs	r1, #1
 8000828:	438a      	bics	r2, r1
 800082a:	635a      	str	r2, [r3, #52]	; 0x34
 800082c:	4b02      	ldr	r3, [pc, #8]	; (8000838 <SystemInit+0x70>)
 800082e:	2200      	movs	r2, #0
 8000830:	609a      	str	r2, [r3, #8]
 8000832:	46c0      	nop			; (mov r8, r8)
 8000834:	46bd      	mov	sp, r7
 8000836:	bd80      	pop	{r7, pc}
 8000838:	40021000 	.word	0x40021000
 800083c:	f8ffb80c 	.word	0xf8ffb80c
 8000840:	fef6ffff 	.word	0xfef6ffff
 8000844:	fffbffff 	.word	0xfffbffff
 8000848:	ffc0ffff 	.word	0xffc0ffff
 800084c:	fffffeac 	.word	0xfffffeac

08000850 <NMI_Handler>:
 8000850:	b580      	push	{r7, lr}
 8000852:	af00      	add	r7, sp, #0
 8000854:	46c0      	nop			; (mov r8, r8)
 8000856:	46bd      	mov	sp, r7
 8000858:	bd80      	pop	{r7, pc}

0800085a <HardFault_Handler>:
 800085a:	b580      	push	{r7, lr}
 800085c:	af00      	add	r7, sp, #0
 800085e:	e7fe      	b.n	800085e <HardFault_Handler+0x4>

08000860 <SVC_Handler>:
 8000860:	b580      	push	{r7, lr}
 8000862:	af00      	add	r7, sp, #0
 8000864:	46c0      	nop			; (mov r8, r8)
 8000866:	46bd      	mov	sp, r7
 8000868:	bd80      	pop	{r7, pc}

0800086a <PendSV_Handler>:
 800086a:	b580      	push	{r7, lr}
 800086c:	af00      	add	r7, sp, #0
 800086e:	46c0      	nop			; (mov r8, r8)
 8000870:	46bd      	mov	sp, r7
 8000872:	bd80      	pop	{r7, pc}

08000874 <__libc_init_array>:
 8000874:	b570      	push	{r4, r5, r6, lr}
 8000876:	4d0c      	ldr	r5, [pc, #48]	; (80008a8 <__libc_init_array+0x34>)
 8000878:	4e0c      	ldr	r6, [pc, #48]	; (80008ac <__libc_init_array+0x38>)
 800087a:	1b76      	subs	r6, r6, r5
 800087c:	10b6      	asrs	r6, r6, #2
 800087e:	d005      	beq.n	800088c <__libc_init_array+0x18>
 8000880:	2400      	movs	r4, #0
 8000882:	cd08      	ldmia	r5!, {r3}
 8000884:	3401      	adds	r4, #1
 8000886:	4798      	blx	r3
 8000888:	42a6      	cmp	r6, r4
 800088a:	d1fa      	bne.n	8000882 <__libc_init_array+0xe>
 800088c:	f000 f896 	bl	80009bc <_init>
 8000890:	4d07      	ldr	r5, [pc, #28]	; (80008b0 <__libc_init_array+0x3c>)
 8000892:	4e08      	ldr	r6, [pc, #32]	; (80008b4 <__libc_init_array+0x40>)
 8000894:	1b76      	subs	r6, r6, r5
 8000896:	10b6      	asrs	r6, r6, #2
 8000898:	d005      	beq.n	80008a6 <__libc_init_array+0x32>
 800089a:	2400      	movs	r4, #0
 800089c:	cd08      	ldmia	r5!, {r3}
 800089e:	3401      	adds	r4, #1
 80008a0:	4798      	blx	r3
 80008a2:	42a6      	cmp	r6, r4
 80008a4:	d1fa      	bne.n	800089c <__libc_init_array+0x28>
 80008a6:	bd70      	pop	{r4, r5, r6, pc}
 80008a8:	08000a20 	.word	0x08000a20
 80008ac:	08000a20 	.word	0x08000a20
 80008b0:	08000a20 	.word	0x08000a20
 80008b4:	08000a28 	.word	0x08000a28

080008b8 <register_fini>:
 80008b8:	4b03      	ldr	r3, [pc, #12]	; (80008c8 <register_fini+0x10>)
 80008ba:	b510      	push	{r4, lr}
 80008bc:	2b00      	cmp	r3, #0
 80008be:	d002      	beq.n	80008c6 <register_fini+0xe>
 80008c0:	4802      	ldr	r0, [pc, #8]	; (80008cc <register_fini+0x14>)
 80008c2:	f000 f805 	bl	80008d0 <atexit>
 80008c6:	bd10      	pop	{r4, pc}
 80008c8:	00000000 	.word	0x00000000
 80008cc:	080008e1 	.word	0x080008e1

080008d0 <atexit>:
 80008d0:	b510      	push	{r4, lr}
 80008d2:	0001      	movs	r1, r0
 80008d4:	2300      	movs	r3, #0
 80008d6:	2200      	movs	r2, #0
 80008d8:	2000      	movs	r0, #0
 80008da:	f000 f819 	bl	8000910 <__register_exitproc>
 80008de:	bd10      	pop	{r4, pc}

080008e0 <__libc_fini_array>:
 80008e0:	b570      	push	{r4, r5, r6, lr}
 80008e2:	4d07      	ldr	r5, [pc, #28]	; (8000900 <__libc_fini_array+0x20>)
 80008e4:	4c07      	ldr	r4, [pc, #28]	; (8000904 <__libc_fini_array+0x24>)
 80008e6:	1b64      	subs	r4, r4, r5
 80008e8:	10a4      	asrs	r4, r4, #2
 80008ea:	d005      	beq.n	80008f8 <__libc_fini_array+0x18>
 80008ec:	3c01      	subs	r4, #1
 80008ee:	00a3      	lsls	r3, r4, #2
 80008f0:	58eb      	ldr	r3, [r5, r3]
 80008f2:	4798      	blx	r3
 80008f4:	2c00      	cmp	r4, #0
 80008f6:	d1f9      	bne.n	80008ec <__libc_fini_array+0xc>
 80008f8:	f000 f866 	bl	80009c8 <_fini>
 80008fc:	bd70      	pop	{r4, r5, r6, pc}
 80008fe:	46c0      	nop			; (mov r8, r8)
 8000900:	08000a28 	.word	0x08000a28
 8000904:	08000a2c 	.word	0x08000a2c

08000908 <__retarget_lock_acquire_recursive>:
 8000908:	4770      	bx	lr
 800090a:	46c0      	nop			; (mov r8, r8)

0800090c <__retarget_lock_release_recursive>:
 800090c:	4770      	bx	lr
 800090e:	46c0      	nop			; (mov r8, r8)

08000910 <__register_exitproc>:
 8000910:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000912:	46d6      	mov	lr, sl
 8000914:	464f      	mov	r7, r9
 8000916:	4646      	mov	r6, r8
 8000918:	b5c0      	push	{r6, r7, lr}
 800091a:	4f26      	ldr	r7, [pc, #152]	; (80009b4 <__register_exitproc+0xa4>)
 800091c:	b082      	sub	sp, #8
 800091e:	0006      	movs	r6, r0
 8000920:	6838      	ldr	r0, [r7, #0]
 8000922:	4692      	mov	sl, r2
 8000924:	4698      	mov	r8, r3
 8000926:	4689      	mov	r9, r1
 8000928:	f7ff ffee 	bl	8000908 <__retarget_lock_acquire_recursive>
 800092c:	4b22      	ldr	r3, [pc, #136]	; (80009b8 <__register_exitproc+0xa8>)
 800092e:	681b      	ldr	r3, [r3, #0]
 8000930:	9301      	str	r3, [sp, #4]
 8000932:	23a4      	movs	r3, #164	; 0xa4
 8000934:	9a01      	ldr	r2, [sp, #4]
 8000936:	005b      	lsls	r3, r3, #1
 8000938:	58d5      	ldr	r5, [r2, r3]
 800093a:	2d00      	cmp	r5, #0
 800093c:	d02e      	beq.n	800099c <__register_exitproc+0x8c>
 800093e:	686c      	ldr	r4, [r5, #4]
 8000940:	2c1f      	cmp	r4, #31
 8000942:	dc30      	bgt.n	80009a6 <__register_exitproc+0x96>
 8000944:	2e00      	cmp	r6, #0
 8000946:	d10f      	bne.n	8000968 <__register_exitproc+0x58>
 8000948:	1c63      	adds	r3, r4, #1
 800094a:	606b      	str	r3, [r5, #4]
 800094c:	464b      	mov	r3, r9
 800094e:	3402      	adds	r4, #2
 8000950:	00a4      	lsls	r4, r4, #2
 8000952:	6838      	ldr	r0, [r7, #0]
 8000954:	5163      	str	r3, [r4, r5]
 8000956:	f7ff ffd9 	bl	800090c <__retarget_lock_release_recursive>
 800095a:	2000      	movs	r0, #0
 800095c:	b002      	add	sp, #8
 800095e:	bce0      	pop	{r5, r6, r7}
 8000960:	46ba      	mov	sl, r7
 8000962:	46b1      	mov	r9, r6
 8000964:	46a8      	mov	r8, r5
 8000966:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000968:	2288      	movs	r2, #136	; 0x88
 800096a:	4651      	mov	r1, sl
 800096c:	0028      	movs	r0, r5
 800096e:	00a3      	lsls	r3, r4, #2
 8000970:	18eb      	adds	r3, r5, r3
 8000972:	5099      	str	r1, [r3, r2]
 8000974:	3a87      	subs	r2, #135	; 0x87
 8000976:	40a2      	lsls	r2, r4
 8000978:	3089      	adds	r0, #137	; 0x89
 800097a:	30ff      	adds	r0, #255	; 0xff
 800097c:	6801      	ldr	r1, [r0, #0]
 800097e:	4311      	orrs	r1, r2
 8000980:	6001      	str	r1, [r0, #0]
 8000982:	2184      	movs	r1, #132	; 0x84
 8000984:	4640      	mov	r0, r8
 8000986:	0049      	lsls	r1, r1, #1
 8000988:	5058      	str	r0, [r3, r1]
 800098a:	2e02      	cmp	r6, #2
 800098c:	d1dc      	bne.n	8000948 <__register_exitproc+0x38>
 800098e:	002b      	movs	r3, r5
 8000990:	338d      	adds	r3, #141	; 0x8d
 8000992:	33ff      	adds	r3, #255	; 0xff
 8000994:	6819      	ldr	r1, [r3, #0]
 8000996:	430a      	orrs	r2, r1
 8000998:	601a      	str	r2, [r3, #0]
 800099a:	e7d5      	b.n	8000948 <__register_exitproc+0x38>
 800099c:	0015      	movs	r5, r2
 800099e:	354d      	adds	r5, #77	; 0x4d
 80009a0:	35ff      	adds	r5, #255	; 0xff
 80009a2:	50d5      	str	r5, [r2, r3]
 80009a4:	e7cb      	b.n	800093e <__register_exitproc+0x2e>
 80009a6:	6838      	ldr	r0, [r7, #0]
 80009a8:	f7ff ffb0 	bl	800090c <__retarget_lock_release_recursive>
 80009ac:	2001      	movs	r0, #1
 80009ae:	4240      	negs	r0, r0
 80009b0:	e7d4      	b.n	800095c <__register_exitproc+0x4c>
 80009b2:	46c0      	nop			; (mov r8, r8)
 80009b4:	20000430 	.word	0x20000430
 80009b8:	08000a1c 	.word	0x08000a1c

080009bc <_init>:
 80009bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80009be:	46c0      	nop			; (mov r8, r8)
 80009c0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80009c2:	bc08      	pop	{r3}
 80009c4:	469e      	mov	lr, r3
 80009c6:	4770      	bx	lr

080009c8 <_fini>:
 80009c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80009ca:	46c0      	nop			; (mov r8, r8)
 80009cc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80009ce:	bc08      	pop	{r3}
 80009d0:	469e      	mov	lr, r3
 80009d2:	4770      	bx	lr
