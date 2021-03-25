
build/exti_systick.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000c9c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000010  08000d5c  08000d5c  00010d5c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000d6c  08000d6c  00010d6c  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000d74  08000d74  00010d74  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             0000043c  20000000  08000d78  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000028  2000043c  080011b4  0002043c  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000464  080011b4  00020464  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  0002043c  2**0  CONTENTS, READONLY
  9 .debug_info       00001003  00000000  00000000  00020464  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     000003e2  00000000  00000000  00021467  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000007a4  00000000  00000000  00021849  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000180  00000000  00000000  00021fed  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000150  00000000  00000000  0002216d  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000923  00000000  00000000  000222bd  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        000008b5  00000000  00000000  00022be0  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00023495  2**0  CONTENTS, READONLY
 17 .debug_frame      000006c4  00000000  00000000  000234e4  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000dc:	2000043c 	.word	0x2000043c
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08000d44 	.word	0x08000d44

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
 8000100:	20000440 	.word	0x20000440
 8000104:	08000d44 	.word	0x08000d44

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
 800020c:	f000 f8f0 	bl	80003f0 <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__divsi3>:
 800021c:	4603      	mov	r3, r0
 800021e:	430b      	orrs	r3, r1
 8000220:	d47f      	bmi.n	8000322 <__divsi3+0x106>
 8000222:	2200      	movs	r2, #0
 8000224:	0843      	lsrs	r3, r0, #1
 8000226:	428b      	cmp	r3, r1
 8000228:	d374      	bcc.n	8000314 <__divsi3+0xf8>
 800022a:	0903      	lsrs	r3, r0, #4
 800022c:	428b      	cmp	r3, r1
 800022e:	d35f      	bcc.n	80002f0 <__divsi3+0xd4>
 8000230:	0a03      	lsrs	r3, r0, #8
 8000232:	428b      	cmp	r3, r1
 8000234:	d344      	bcc.n	80002c0 <__divsi3+0xa4>
 8000236:	0b03      	lsrs	r3, r0, #12
 8000238:	428b      	cmp	r3, r1
 800023a:	d328      	bcc.n	800028e <__divsi3+0x72>
 800023c:	0c03      	lsrs	r3, r0, #16
 800023e:	428b      	cmp	r3, r1
 8000240:	d30d      	bcc.n	800025e <__divsi3+0x42>
 8000242:	22ff      	movs	r2, #255	; 0xff
 8000244:	0209      	lsls	r1, r1, #8
 8000246:	ba12      	rev	r2, r2
 8000248:	0c03      	lsrs	r3, r0, #16
 800024a:	428b      	cmp	r3, r1
 800024c:	d302      	bcc.n	8000254 <__divsi3+0x38>
 800024e:	1212      	asrs	r2, r2, #8
 8000250:	0209      	lsls	r1, r1, #8
 8000252:	d065      	beq.n	8000320 <__divsi3+0x104>
 8000254:	0b03      	lsrs	r3, r0, #12
 8000256:	428b      	cmp	r3, r1
 8000258:	d319      	bcc.n	800028e <__divsi3+0x72>
 800025a:	e000      	b.n	800025e <__divsi3+0x42>
 800025c:	0a09      	lsrs	r1, r1, #8
 800025e:	0bc3      	lsrs	r3, r0, #15
 8000260:	428b      	cmp	r3, r1
 8000262:	d301      	bcc.n	8000268 <__divsi3+0x4c>
 8000264:	03cb      	lsls	r3, r1, #15
 8000266:	1ac0      	subs	r0, r0, r3
 8000268:	4152      	adcs	r2, r2
 800026a:	0b83      	lsrs	r3, r0, #14
 800026c:	428b      	cmp	r3, r1
 800026e:	d301      	bcc.n	8000274 <__divsi3+0x58>
 8000270:	038b      	lsls	r3, r1, #14
 8000272:	1ac0      	subs	r0, r0, r3
 8000274:	4152      	adcs	r2, r2
 8000276:	0b43      	lsrs	r3, r0, #13
 8000278:	428b      	cmp	r3, r1
 800027a:	d301      	bcc.n	8000280 <__divsi3+0x64>
 800027c:	034b      	lsls	r3, r1, #13
 800027e:	1ac0      	subs	r0, r0, r3
 8000280:	4152      	adcs	r2, r2
 8000282:	0b03      	lsrs	r3, r0, #12
 8000284:	428b      	cmp	r3, r1
 8000286:	d301      	bcc.n	800028c <__divsi3+0x70>
 8000288:	030b      	lsls	r3, r1, #12
 800028a:	1ac0      	subs	r0, r0, r3
 800028c:	4152      	adcs	r2, r2
 800028e:	0ac3      	lsrs	r3, r0, #11
 8000290:	428b      	cmp	r3, r1
 8000292:	d301      	bcc.n	8000298 <__divsi3+0x7c>
 8000294:	02cb      	lsls	r3, r1, #11
 8000296:	1ac0      	subs	r0, r0, r3
 8000298:	4152      	adcs	r2, r2
 800029a:	0a83      	lsrs	r3, r0, #10
 800029c:	428b      	cmp	r3, r1
 800029e:	d301      	bcc.n	80002a4 <__divsi3+0x88>
 80002a0:	028b      	lsls	r3, r1, #10
 80002a2:	1ac0      	subs	r0, r0, r3
 80002a4:	4152      	adcs	r2, r2
 80002a6:	0a43      	lsrs	r3, r0, #9
 80002a8:	428b      	cmp	r3, r1
 80002aa:	d301      	bcc.n	80002b0 <__divsi3+0x94>
 80002ac:	024b      	lsls	r3, r1, #9
 80002ae:	1ac0      	subs	r0, r0, r3
 80002b0:	4152      	adcs	r2, r2
 80002b2:	0a03      	lsrs	r3, r0, #8
 80002b4:	428b      	cmp	r3, r1
 80002b6:	d301      	bcc.n	80002bc <__divsi3+0xa0>
 80002b8:	020b      	lsls	r3, r1, #8
 80002ba:	1ac0      	subs	r0, r0, r3
 80002bc:	4152      	adcs	r2, r2
 80002be:	d2cd      	bcs.n	800025c <__divsi3+0x40>
 80002c0:	09c3      	lsrs	r3, r0, #7
 80002c2:	428b      	cmp	r3, r1
 80002c4:	d301      	bcc.n	80002ca <__divsi3+0xae>
 80002c6:	01cb      	lsls	r3, r1, #7
 80002c8:	1ac0      	subs	r0, r0, r3
 80002ca:	4152      	adcs	r2, r2
 80002cc:	0983      	lsrs	r3, r0, #6
 80002ce:	428b      	cmp	r3, r1
 80002d0:	d301      	bcc.n	80002d6 <__divsi3+0xba>
 80002d2:	018b      	lsls	r3, r1, #6
 80002d4:	1ac0      	subs	r0, r0, r3
 80002d6:	4152      	adcs	r2, r2
 80002d8:	0943      	lsrs	r3, r0, #5
 80002da:	428b      	cmp	r3, r1
 80002dc:	d301      	bcc.n	80002e2 <__divsi3+0xc6>
 80002de:	014b      	lsls	r3, r1, #5
 80002e0:	1ac0      	subs	r0, r0, r3
 80002e2:	4152      	adcs	r2, r2
 80002e4:	0903      	lsrs	r3, r0, #4
 80002e6:	428b      	cmp	r3, r1
 80002e8:	d301      	bcc.n	80002ee <__divsi3+0xd2>
 80002ea:	010b      	lsls	r3, r1, #4
 80002ec:	1ac0      	subs	r0, r0, r3
 80002ee:	4152      	adcs	r2, r2
 80002f0:	08c3      	lsrs	r3, r0, #3
 80002f2:	428b      	cmp	r3, r1
 80002f4:	d301      	bcc.n	80002fa <__divsi3+0xde>
 80002f6:	00cb      	lsls	r3, r1, #3
 80002f8:	1ac0      	subs	r0, r0, r3
 80002fa:	4152      	adcs	r2, r2
 80002fc:	0883      	lsrs	r3, r0, #2
 80002fe:	428b      	cmp	r3, r1
 8000300:	d301      	bcc.n	8000306 <__divsi3+0xea>
 8000302:	008b      	lsls	r3, r1, #2
 8000304:	1ac0      	subs	r0, r0, r3
 8000306:	4152      	adcs	r2, r2
 8000308:	0843      	lsrs	r3, r0, #1
 800030a:	428b      	cmp	r3, r1
 800030c:	d301      	bcc.n	8000312 <__divsi3+0xf6>
 800030e:	004b      	lsls	r3, r1, #1
 8000310:	1ac0      	subs	r0, r0, r3
 8000312:	4152      	adcs	r2, r2
 8000314:	1a41      	subs	r1, r0, r1
 8000316:	d200      	bcs.n	800031a <__divsi3+0xfe>
 8000318:	4601      	mov	r1, r0
 800031a:	4152      	adcs	r2, r2
 800031c:	4610      	mov	r0, r2
 800031e:	4770      	bx	lr
 8000320:	e05d      	b.n	80003de <__divsi3+0x1c2>
 8000322:	0fca      	lsrs	r2, r1, #31
 8000324:	d000      	beq.n	8000328 <__divsi3+0x10c>
 8000326:	4249      	negs	r1, r1
 8000328:	1003      	asrs	r3, r0, #32
 800032a:	d300      	bcc.n	800032e <__divsi3+0x112>
 800032c:	4240      	negs	r0, r0
 800032e:	4053      	eors	r3, r2
 8000330:	2200      	movs	r2, #0
 8000332:	469c      	mov	ip, r3
 8000334:	0903      	lsrs	r3, r0, #4
 8000336:	428b      	cmp	r3, r1
 8000338:	d32d      	bcc.n	8000396 <__divsi3+0x17a>
 800033a:	0a03      	lsrs	r3, r0, #8
 800033c:	428b      	cmp	r3, r1
 800033e:	d312      	bcc.n	8000366 <__divsi3+0x14a>
 8000340:	22fc      	movs	r2, #252	; 0xfc
 8000342:	0189      	lsls	r1, r1, #6
 8000344:	ba12      	rev	r2, r2
 8000346:	0a03      	lsrs	r3, r0, #8
 8000348:	428b      	cmp	r3, r1
 800034a:	d30c      	bcc.n	8000366 <__divsi3+0x14a>
 800034c:	0189      	lsls	r1, r1, #6
 800034e:	1192      	asrs	r2, r2, #6
 8000350:	428b      	cmp	r3, r1
 8000352:	d308      	bcc.n	8000366 <__divsi3+0x14a>
 8000354:	0189      	lsls	r1, r1, #6
 8000356:	1192      	asrs	r2, r2, #6
 8000358:	428b      	cmp	r3, r1
 800035a:	d304      	bcc.n	8000366 <__divsi3+0x14a>
 800035c:	0189      	lsls	r1, r1, #6
 800035e:	d03a      	beq.n	80003d6 <__divsi3+0x1ba>
 8000360:	1192      	asrs	r2, r2, #6
 8000362:	e000      	b.n	8000366 <__divsi3+0x14a>
 8000364:	0989      	lsrs	r1, r1, #6
 8000366:	09c3      	lsrs	r3, r0, #7
 8000368:	428b      	cmp	r3, r1
 800036a:	d301      	bcc.n	8000370 <__divsi3+0x154>
 800036c:	01cb      	lsls	r3, r1, #7
 800036e:	1ac0      	subs	r0, r0, r3
 8000370:	4152      	adcs	r2, r2
 8000372:	0983      	lsrs	r3, r0, #6
 8000374:	428b      	cmp	r3, r1
 8000376:	d301      	bcc.n	800037c <__divsi3+0x160>
 8000378:	018b      	lsls	r3, r1, #6
 800037a:	1ac0      	subs	r0, r0, r3
 800037c:	4152      	adcs	r2, r2
 800037e:	0943      	lsrs	r3, r0, #5
 8000380:	428b      	cmp	r3, r1
 8000382:	d301      	bcc.n	8000388 <__divsi3+0x16c>
 8000384:	014b      	lsls	r3, r1, #5
 8000386:	1ac0      	subs	r0, r0, r3
 8000388:	4152      	adcs	r2, r2
 800038a:	0903      	lsrs	r3, r0, #4
 800038c:	428b      	cmp	r3, r1
 800038e:	d301      	bcc.n	8000394 <__divsi3+0x178>
 8000390:	010b      	lsls	r3, r1, #4
 8000392:	1ac0      	subs	r0, r0, r3
 8000394:	4152      	adcs	r2, r2
 8000396:	08c3      	lsrs	r3, r0, #3
 8000398:	428b      	cmp	r3, r1
 800039a:	d301      	bcc.n	80003a0 <__divsi3+0x184>
 800039c:	00cb      	lsls	r3, r1, #3
 800039e:	1ac0      	subs	r0, r0, r3
 80003a0:	4152      	adcs	r2, r2
 80003a2:	0883      	lsrs	r3, r0, #2
 80003a4:	428b      	cmp	r3, r1
 80003a6:	d301      	bcc.n	80003ac <__divsi3+0x190>
 80003a8:	008b      	lsls	r3, r1, #2
 80003aa:	1ac0      	subs	r0, r0, r3
 80003ac:	4152      	adcs	r2, r2
 80003ae:	d2d9      	bcs.n	8000364 <__divsi3+0x148>
 80003b0:	0843      	lsrs	r3, r0, #1
 80003b2:	428b      	cmp	r3, r1
 80003b4:	d301      	bcc.n	80003ba <__divsi3+0x19e>
 80003b6:	004b      	lsls	r3, r1, #1
 80003b8:	1ac0      	subs	r0, r0, r3
 80003ba:	4152      	adcs	r2, r2
 80003bc:	1a41      	subs	r1, r0, r1
 80003be:	d200      	bcs.n	80003c2 <__divsi3+0x1a6>
 80003c0:	4601      	mov	r1, r0
 80003c2:	4663      	mov	r3, ip
 80003c4:	4152      	adcs	r2, r2
 80003c6:	105b      	asrs	r3, r3, #1
 80003c8:	4610      	mov	r0, r2
 80003ca:	d301      	bcc.n	80003d0 <__divsi3+0x1b4>
 80003cc:	4240      	negs	r0, r0
 80003ce:	2b00      	cmp	r3, #0
 80003d0:	d500      	bpl.n	80003d4 <__divsi3+0x1b8>
 80003d2:	4249      	negs	r1, r1
 80003d4:	4770      	bx	lr
 80003d6:	4663      	mov	r3, ip
 80003d8:	105b      	asrs	r3, r3, #1
 80003da:	d300      	bcc.n	80003de <__divsi3+0x1c2>
 80003dc:	4240      	negs	r0, r0
 80003de:	b501      	push	{r0, lr}
 80003e0:	2000      	movs	r0, #0
 80003e2:	f000 f805 	bl	80003f0 <__aeabi_idiv0>
 80003e6:	bd02      	pop	{r1, pc}

080003e8 <__aeabi_idivmod>:
 80003e8:	2900      	cmp	r1, #0
 80003ea:	d0f8      	beq.n	80003de <__divsi3+0x1c2>
 80003ec:	e716      	b.n	800021c <__divsi3>
 80003ee:	4770      	bx	lr

080003f0 <__aeabi_idiv0>:
 80003f0:	4770      	bx	lr
 80003f2:	46c0      	nop			; (mov r8, r8)

080003f4 <Reset_Handler>:
 80003f4:	480d      	ldr	r0, [pc, #52]	; (800042c <LoopForever+0x2>)
 80003f6:	4685      	mov	sp, r0
 80003f8:	480d      	ldr	r0, [pc, #52]	; (8000430 <LoopForever+0x6>)
 80003fa:	490e      	ldr	r1, [pc, #56]	; (8000434 <LoopForever+0xa>)
 80003fc:	4a0e      	ldr	r2, [pc, #56]	; (8000438 <LoopForever+0xe>)
 80003fe:	2300      	movs	r3, #0
 8000400:	e002      	b.n	8000408 <LoopCopyDataInit>

08000402 <CopyDataInit>:
 8000402:	58d4      	ldr	r4, [r2, r3]
 8000404:	50c4      	str	r4, [r0, r3]
 8000406:	3304      	adds	r3, #4

08000408 <LoopCopyDataInit>:
 8000408:	18c4      	adds	r4, r0, r3
 800040a:	428c      	cmp	r4, r1
 800040c:	d3f9      	bcc.n	8000402 <CopyDataInit>
 800040e:	4a0b      	ldr	r2, [pc, #44]	; (800043c <LoopForever+0x12>)
 8000410:	4c0b      	ldr	r4, [pc, #44]	; (8000440 <LoopForever+0x16>)
 8000412:	2300      	movs	r3, #0
 8000414:	e001      	b.n	800041a <LoopFillZerobss>

08000416 <FillZerobss>:
 8000416:	6013      	str	r3, [r2, #0]
 8000418:	3204      	adds	r2, #4

0800041a <LoopFillZerobss>:
 800041a:	42a2      	cmp	r2, r4
 800041c:	d3fb      	bcc.n	8000416 <FillZerobss>
 800041e:	f000 fb97 	bl	8000b50 <SystemInit>
 8000422:	f000 fbeb 	bl	8000bfc <__libc_init_array>
 8000426:	f000 fb87 	bl	8000b38 <main>

0800042a <LoopForever>:
 800042a:	e7fe      	b.n	800042a <LoopForever>
 800042c:	20002000 	.word	0x20002000
 8000430:	20000000 	.word	0x20000000
 8000434:	2000043c 	.word	0x2000043c
 8000438:	08000d78 	.word	0x08000d78
 800043c:	2000043c 	.word	0x2000043c
 8000440:	20000464 	.word	0x20000464

08000444 <ADC1_COMP_IRQHandler>:
 8000444:	e7fe      	b.n	8000444 <ADC1_COMP_IRQHandler>
	...

08000448 <NVIC_EnableIRQ>:
 8000448:	b580      	push	{r7, lr}
 800044a:	b082      	sub	sp, #8
 800044c:	af00      	add	r7, sp, #0
 800044e:	0002      	movs	r2, r0
 8000450:	1dfb      	adds	r3, r7, #7
 8000452:	701a      	strb	r2, [r3, #0]
 8000454:	1dfb      	adds	r3, r7, #7
 8000456:	781b      	ldrb	r3, [r3, #0]
 8000458:	001a      	movs	r2, r3
 800045a:	231f      	movs	r3, #31
 800045c:	401a      	ands	r2, r3
 800045e:	4b04      	ldr	r3, [pc, #16]	; (8000470 <NVIC_EnableIRQ+0x28>)
 8000460:	2101      	movs	r1, #1
 8000462:	4091      	lsls	r1, r2
 8000464:	000a      	movs	r2, r1
 8000466:	601a      	str	r2, [r3, #0]
 8000468:	46c0      	nop			; (mov r8, r8)
 800046a:	46bd      	mov	sp, r7
 800046c:	b002      	add	sp, #8
 800046e:	bd80      	pop	{r7, pc}
 8000470:	e000e100 	.word	0xe000e100

08000474 <NVIC_SetPriority>:
 8000474:	b590      	push	{r4, r7, lr}
 8000476:	b083      	sub	sp, #12
 8000478:	af00      	add	r7, sp, #0
 800047a:	0002      	movs	r2, r0
 800047c:	6039      	str	r1, [r7, #0]
 800047e:	1dfb      	adds	r3, r7, #7
 8000480:	701a      	strb	r2, [r3, #0]
 8000482:	1dfb      	adds	r3, r7, #7
 8000484:	781b      	ldrb	r3, [r3, #0]
 8000486:	2b7f      	cmp	r3, #127	; 0x7f
 8000488:	d932      	bls.n	80004f0 <NVIC_SetPriority+0x7c>
 800048a:	4a2f      	ldr	r2, [pc, #188]	; (8000548 <NVIC_SetPriority+0xd4>)
 800048c:	1dfb      	adds	r3, r7, #7
 800048e:	781b      	ldrb	r3, [r3, #0]
 8000490:	0019      	movs	r1, r3
 8000492:	230f      	movs	r3, #15
 8000494:	400b      	ands	r3, r1
 8000496:	3b08      	subs	r3, #8
 8000498:	089b      	lsrs	r3, r3, #2
 800049a:	3306      	adds	r3, #6
 800049c:	009b      	lsls	r3, r3, #2
 800049e:	18d3      	adds	r3, r2, r3
 80004a0:	3304      	adds	r3, #4
 80004a2:	681b      	ldr	r3, [r3, #0]
 80004a4:	1dfa      	adds	r2, r7, #7
 80004a6:	7812      	ldrb	r2, [r2, #0]
 80004a8:	0011      	movs	r1, r2
 80004aa:	2203      	movs	r2, #3
 80004ac:	400a      	ands	r2, r1
 80004ae:	00d2      	lsls	r2, r2, #3
 80004b0:	21ff      	movs	r1, #255	; 0xff
 80004b2:	4091      	lsls	r1, r2
 80004b4:	000a      	movs	r2, r1
 80004b6:	43d2      	mvns	r2, r2
 80004b8:	401a      	ands	r2, r3
 80004ba:	0011      	movs	r1, r2
 80004bc:	683b      	ldr	r3, [r7, #0]
 80004be:	019b      	lsls	r3, r3, #6
 80004c0:	22ff      	movs	r2, #255	; 0xff
 80004c2:	401a      	ands	r2, r3
 80004c4:	1dfb      	adds	r3, r7, #7
 80004c6:	781b      	ldrb	r3, [r3, #0]
 80004c8:	0018      	movs	r0, r3
 80004ca:	2303      	movs	r3, #3
 80004cc:	4003      	ands	r3, r0
 80004ce:	00db      	lsls	r3, r3, #3
 80004d0:	409a      	lsls	r2, r3
 80004d2:	481d      	ldr	r0, [pc, #116]	; (8000548 <NVIC_SetPriority+0xd4>)
 80004d4:	1dfb      	adds	r3, r7, #7
 80004d6:	781b      	ldrb	r3, [r3, #0]
 80004d8:	001c      	movs	r4, r3
 80004da:	230f      	movs	r3, #15
 80004dc:	4023      	ands	r3, r4
 80004de:	3b08      	subs	r3, #8
 80004e0:	089b      	lsrs	r3, r3, #2
 80004e2:	430a      	orrs	r2, r1
 80004e4:	3306      	adds	r3, #6
 80004e6:	009b      	lsls	r3, r3, #2
 80004e8:	18c3      	adds	r3, r0, r3
 80004ea:	3304      	adds	r3, #4
 80004ec:	601a      	str	r2, [r3, #0]
 80004ee:	e027      	b.n	8000540 <NVIC_SetPriority+0xcc>
 80004f0:	4a16      	ldr	r2, [pc, #88]	; (800054c <NVIC_SetPriority+0xd8>)
 80004f2:	1dfb      	adds	r3, r7, #7
 80004f4:	781b      	ldrb	r3, [r3, #0]
 80004f6:	b25b      	sxtb	r3, r3
 80004f8:	089b      	lsrs	r3, r3, #2
 80004fa:	33c0      	adds	r3, #192	; 0xc0
 80004fc:	009b      	lsls	r3, r3, #2
 80004fe:	589b      	ldr	r3, [r3, r2]
 8000500:	1dfa      	adds	r2, r7, #7
 8000502:	7812      	ldrb	r2, [r2, #0]
 8000504:	0011      	movs	r1, r2
 8000506:	2203      	movs	r2, #3
 8000508:	400a      	ands	r2, r1
 800050a:	00d2      	lsls	r2, r2, #3
 800050c:	21ff      	movs	r1, #255	; 0xff
 800050e:	4091      	lsls	r1, r2
 8000510:	000a      	movs	r2, r1
 8000512:	43d2      	mvns	r2, r2
 8000514:	401a      	ands	r2, r3
 8000516:	0011      	movs	r1, r2
 8000518:	683b      	ldr	r3, [r7, #0]
 800051a:	019b      	lsls	r3, r3, #6
 800051c:	22ff      	movs	r2, #255	; 0xff
 800051e:	401a      	ands	r2, r3
 8000520:	1dfb      	adds	r3, r7, #7
 8000522:	781b      	ldrb	r3, [r3, #0]
 8000524:	0018      	movs	r0, r3
 8000526:	2303      	movs	r3, #3
 8000528:	4003      	ands	r3, r0
 800052a:	00db      	lsls	r3, r3, #3
 800052c:	409a      	lsls	r2, r3
 800052e:	4807      	ldr	r0, [pc, #28]	; (800054c <NVIC_SetPriority+0xd8>)
 8000530:	1dfb      	adds	r3, r7, #7
 8000532:	781b      	ldrb	r3, [r3, #0]
 8000534:	b25b      	sxtb	r3, r3
 8000536:	089b      	lsrs	r3, r3, #2
 8000538:	430a      	orrs	r2, r1
 800053a:	33c0      	adds	r3, #192	; 0xc0
 800053c:	009b      	lsls	r3, r3, #2
 800053e:	501a      	str	r2, [r3, r0]
 8000540:	46c0      	nop			; (mov r8, r8)
 8000542:	46bd      	mov	sp, r7
 8000544:	b003      	add	sp, #12
 8000546:	bd90      	pop	{r4, r7, pc}
 8000548:	e000ed00 	.word	0xe000ed00
 800054c:	e000e100 	.word	0xe000e100

08000550 <LL_RCC_HSI_Enable>:
 8000550:	b580      	push	{r7, lr}
 8000552:	af00      	add	r7, sp, #0
 8000554:	4b04      	ldr	r3, [pc, #16]	; (8000568 <LL_RCC_HSI_Enable+0x18>)
 8000556:	681a      	ldr	r2, [r3, #0]
 8000558:	4b03      	ldr	r3, [pc, #12]	; (8000568 <LL_RCC_HSI_Enable+0x18>)
 800055a:	2101      	movs	r1, #1
 800055c:	430a      	orrs	r2, r1
 800055e:	601a      	str	r2, [r3, #0]
 8000560:	46c0      	nop			; (mov r8, r8)
 8000562:	46bd      	mov	sp, r7
 8000564:	bd80      	pop	{r7, pc}
 8000566:	46c0      	nop			; (mov r8, r8)
 8000568:	40021000 	.word	0x40021000

0800056c <LL_RCC_HSI_IsReady>:
 800056c:	b580      	push	{r7, lr}
 800056e:	af00      	add	r7, sp, #0
 8000570:	4b05      	ldr	r3, [pc, #20]	; (8000588 <LL_RCC_HSI_IsReady+0x1c>)
 8000572:	681b      	ldr	r3, [r3, #0]
 8000574:	2202      	movs	r2, #2
 8000576:	4013      	ands	r3, r2
 8000578:	3b02      	subs	r3, #2
 800057a:	425a      	negs	r2, r3
 800057c:	4153      	adcs	r3, r2
 800057e:	b2db      	uxtb	r3, r3
 8000580:	0018      	movs	r0, r3
 8000582:	46bd      	mov	sp, r7
 8000584:	bd80      	pop	{r7, pc}
 8000586:	46c0      	nop			; (mov r8, r8)
 8000588:	40021000 	.word	0x40021000

0800058c <LL_RCC_SetSysClkSource>:
 800058c:	b580      	push	{r7, lr}
 800058e:	b082      	sub	sp, #8
 8000590:	af00      	add	r7, sp, #0
 8000592:	6078      	str	r0, [r7, #4]
 8000594:	4b06      	ldr	r3, [pc, #24]	; (80005b0 <LL_RCC_SetSysClkSource+0x24>)
 8000596:	685b      	ldr	r3, [r3, #4]
 8000598:	2203      	movs	r2, #3
 800059a:	4393      	bics	r3, r2
 800059c:	0019      	movs	r1, r3
 800059e:	4b04      	ldr	r3, [pc, #16]	; (80005b0 <LL_RCC_SetSysClkSource+0x24>)
 80005a0:	687a      	ldr	r2, [r7, #4]
 80005a2:	430a      	orrs	r2, r1
 80005a4:	605a      	str	r2, [r3, #4]
 80005a6:	46c0      	nop			; (mov r8, r8)
 80005a8:	46bd      	mov	sp, r7
 80005aa:	b002      	add	sp, #8
 80005ac:	bd80      	pop	{r7, pc}
 80005ae:	46c0      	nop			; (mov r8, r8)
 80005b0:	40021000 	.word	0x40021000

080005b4 <LL_RCC_GetSysClkSource>:
 80005b4:	b580      	push	{r7, lr}
 80005b6:	af00      	add	r7, sp, #0
 80005b8:	4b03      	ldr	r3, [pc, #12]	; (80005c8 <LL_RCC_GetSysClkSource+0x14>)
 80005ba:	685b      	ldr	r3, [r3, #4]
 80005bc:	220c      	movs	r2, #12
 80005be:	4013      	ands	r3, r2
 80005c0:	0018      	movs	r0, r3
 80005c2:	46bd      	mov	sp, r7
 80005c4:	bd80      	pop	{r7, pc}
 80005c6:	46c0      	nop			; (mov r8, r8)
 80005c8:	40021000 	.word	0x40021000

080005cc <LL_RCC_SetAHBPrescaler>:
 80005cc:	b580      	push	{r7, lr}
 80005ce:	b082      	sub	sp, #8
 80005d0:	af00      	add	r7, sp, #0
 80005d2:	6078      	str	r0, [r7, #4]
 80005d4:	4b06      	ldr	r3, [pc, #24]	; (80005f0 <LL_RCC_SetAHBPrescaler+0x24>)
 80005d6:	685b      	ldr	r3, [r3, #4]
 80005d8:	22f0      	movs	r2, #240	; 0xf0
 80005da:	4393      	bics	r3, r2
 80005dc:	0019      	movs	r1, r3
 80005de:	4b04      	ldr	r3, [pc, #16]	; (80005f0 <LL_RCC_SetAHBPrescaler+0x24>)
 80005e0:	687a      	ldr	r2, [r7, #4]
 80005e2:	430a      	orrs	r2, r1
 80005e4:	605a      	str	r2, [r3, #4]
 80005e6:	46c0      	nop			; (mov r8, r8)
 80005e8:	46bd      	mov	sp, r7
 80005ea:	b002      	add	sp, #8
 80005ec:	bd80      	pop	{r7, pc}
 80005ee:	46c0      	nop			; (mov r8, r8)
 80005f0:	40021000 	.word	0x40021000

080005f4 <LL_RCC_SetAPB1Prescaler>:
 80005f4:	b580      	push	{r7, lr}
 80005f6:	b082      	sub	sp, #8
 80005f8:	af00      	add	r7, sp, #0
 80005fa:	6078      	str	r0, [r7, #4]
 80005fc:	4b06      	ldr	r3, [pc, #24]	; (8000618 <LL_RCC_SetAPB1Prescaler+0x24>)
 80005fe:	685b      	ldr	r3, [r3, #4]
 8000600:	4a06      	ldr	r2, [pc, #24]	; (800061c <LL_RCC_SetAPB1Prescaler+0x28>)
 8000602:	4013      	ands	r3, r2
 8000604:	0019      	movs	r1, r3
 8000606:	4b04      	ldr	r3, [pc, #16]	; (8000618 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000608:	687a      	ldr	r2, [r7, #4]
 800060a:	430a      	orrs	r2, r1
 800060c:	605a      	str	r2, [r3, #4]
 800060e:	46c0      	nop			; (mov r8, r8)
 8000610:	46bd      	mov	sp, r7
 8000612:	b002      	add	sp, #8
 8000614:	bd80      	pop	{r7, pc}
 8000616:	46c0      	nop			; (mov r8, r8)
 8000618:	40021000 	.word	0x40021000
 800061c:	fffff8ff 	.word	0xfffff8ff

08000620 <LL_RCC_PLL_Enable>:
 8000620:	b580      	push	{r7, lr}
 8000622:	af00      	add	r7, sp, #0
 8000624:	4b04      	ldr	r3, [pc, #16]	; (8000638 <LL_RCC_PLL_Enable+0x18>)
 8000626:	681a      	ldr	r2, [r3, #0]
 8000628:	4b03      	ldr	r3, [pc, #12]	; (8000638 <LL_RCC_PLL_Enable+0x18>)
 800062a:	2180      	movs	r1, #128	; 0x80
 800062c:	0449      	lsls	r1, r1, #17
 800062e:	430a      	orrs	r2, r1
 8000630:	601a      	str	r2, [r3, #0]
 8000632:	46c0      	nop			; (mov r8, r8)
 8000634:	46bd      	mov	sp, r7
 8000636:	bd80      	pop	{r7, pc}
 8000638:	40021000 	.word	0x40021000

0800063c <LL_RCC_PLL_IsReady>:
 800063c:	b580      	push	{r7, lr}
 800063e:	af00      	add	r7, sp, #0
 8000640:	4b07      	ldr	r3, [pc, #28]	; (8000660 <LL_RCC_PLL_IsReady+0x24>)
 8000642:	681a      	ldr	r2, [r3, #0]
 8000644:	2380      	movs	r3, #128	; 0x80
 8000646:	049b      	lsls	r3, r3, #18
 8000648:	4013      	ands	r3, r2
 800064a:	22fe      	movs	r2, #254	; 0xfe
 800064c:	0612      	lsls	r2, r2, #24
 800064e:	4694      	mov	ip, r2
 8000650:	4463      	add	r3, ip
 8000652:	425a      	negs	r2, r3
 8000654:	4153      	adcs	r3, r2
 8000656:	b2db      	uxtb	r3, r3
 8000658:	0018      	movs	r0, r3
 800065a:	46bd      	mov	sp, r7
 800065c:	bd80      	pop	{r7, pc}
 800065e:	46c0      	nop			; (mov r8, r8)
 8000660:	40021000 	.word	0x40021000

08000664 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000664:	b580      	push	{r7, lr}
 8000666:	b082      	sub	sp, #8
 8000668:	af00      	add	r7, sp, #0
 800066a:	6078      	str	r0, [r7, #4]
 800066c:	6039      	str	r1, [r7, #0]
 800066e:	4b0e      	ldr	r3, [pc, #56]	; (80006a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000670:	685b      	ldr	r3, [r3, #4]
 8000672:	4a0e      	ldr	r2, [pc, #56]	; (80006ac <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000674:	4013      	ands	r3, r2
 8000676:	0019      	movs	r1, r3
 8000678:	687a      	ldr	r2, [r7, #4]
 800067a:	2380      	movs	r3, #128	; 0x80
 800067c:	025b      	lsls	r3, r3, #9
 800067e:	401a      	ands	r2, r3
 8000680:	683b      	ldr	r3, [r7, #0]
 8000682:	431a      	orrs	r2, r3
 8000684:	4b08      	ldr	r3, [pc, #32]	; (80006a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000686:	430a      	orrs	r2, r1
 8000688:	605a      	str	r2, [r3, #4]
 800068a:	4b07      	ldr	r3, [pc, #28]	; (80006a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800068c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800068e:	220f      	movs	r2, #15
 8000690:	4393      	bics	r3, r2
 8000692:	0019      	movs	r1, r3
 8000694:	687b      	ldr	r3, [r7, #4]
 8000696:	220f      	movs	r2, #15
 8000698:	401a      	ands	r2, r3
 800069a:	4b03      	ldr	r3, [pc, #12]	; (80006a8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800069c:	430a      	orrs	r2, r1
 800069e:	62da      	str	r2, [r3, #44]	; 0x2c
 80006a0:	46c0      	nop			; (mov r8, r8)
 80006a2:	46bd      	mov	sp, r7
 80006a4:	b002      	add	sp, #8
 80006a6:	bd80      	pop	{r7, pc}
 80006a8:	40021000 	.word	0x40021000
 80006ac:	ffc2ffff 	.word	0xffc2ffff

080006b0 <LL_SYSCFG_SetEXTISource>:
 80006b0:	b590      	push	{r4, r7, lr}
 80006b2:	b083      	sub	sp, #12
 80006b4:	af00      	add	r7, sp, #0
 80006b6:	6078      	str	r0, [r7, #4]
 80006b8:	6039      	str	r1, [r7, #0]
 80006ba:	4a0f      	ldr	r2, [pc, #60]	; (80006f8 <LL_SYSCFG_SetEXTISource+0x48>)
 80006bc:	683b      	ldr	r3, [r7, #0]
 80006be:	21ff      	movs	r1, #255	; 0xff
 80006c0:	400b      	ands	r3, r1
 80006c2:	3302      	adds	r3, #2
 80006c4:	009b      	lsls	r3, r3, #2
 80006c6:	589b      	ldr	r3, [r3, r2]
 80006c8:	683a      	ldr	r2, [r7, #0]
 80006ca:	0c12      	lsrs	r2, r2, #16
 80006cc:	210f      	movs	r1, #15
 80006ce:	4091      	lsls	r1, r2
 80006d0:	000a      	movs	r2, r1
 80006d2:	43d2      	mvns	r2, r2
 80006d4:	401a      	ands	r2, r3
 80006d6:	0011      	movs	r1, r2
 80006d8:	683b      	ldr	r3, [r7, #0]
 80006da:	0c1b      	lsrs	r3, r3, #16
 80006dc:	687a      	ldr	r2, [r7, #4]
 80006de:	409a      	lsls	r2, r3
 80006e0:	4805      	ldr	r0, [pc, #20]	; (80006f8 <LL_SYSCFG_SetEXTISource+0x48>)
 80006e2:	683b      	ldr	r3, [r7, #0]
 80006e4:	24ff      	movs	r4, #255	; 0xff
 80006e6:	4023      	ands	r3, r4
 80006e8:	430a      	orrs	r2, r1
 80006ea:	3302      	adds	r3, #2
 80006ec:	009b      	lsls	r3, r3, #2
 80006ee:	501a      	str	r2, [r3, r0]
 80006f0:	46c0      	nop			; (mov r8, r8)
 80006f2:	46bd      	mov	sp, r7
 80006f4:	b003      	add	sp, #12
 80006f6:	bd90      	pop	{r4, r7, pc}
 80006f8:	40010000 	.word	0x40010000

080006fc <LL_FLASH_SetLatency>:
 80006fc:	b580      	push	{r7, lr}
 80006fe:	b082      	sub	sp, #8
 8000700:	af00      	add	r7, sp, #0
 8000702:	6078      	str	r0, [r7, #4]
 8000704:	4b06      	ldr	r3, [pc, #24]	; (8000720 <LL_FLASH_SetLatency+0x24>)
 8000706:	681b      	ldr	r3, [r3, #0]
 8000708:	2201      	movs	r2, #1
 800070a:	4393      	bics	r3, r2
 800070c:	0019      	movs	r1, r3
 800070e:	4b04      	ldr	r3, [pc, #16]	; (8000720 <LL_FLASH_SetLatency+0x24>)
 8000710:	687a      	ldr	r2, [r7, #4]
 8000712:	430a      	orrs	r2, r1
 8000714:	601a      	str	r2, [r3, #0]
 8000716:	46c0      	nop			; (mov r8, r8)
 8000718:	46bd      	mov	sp, r7
 800071a:	b002      	add	sp, #8
 800071c:	bd80      	pop	{r7, pc}
 800071e:	46c0      	nop			; (mov r8, r8)
 8000720:	40022000 	.word	0x40022000

08000724 <LL_AHB1_GRP1_EnableClock>:
 8000724:	b580      	push	{r7, lr}
 8000726:	b084      	sub	sp, #16
 8000728:	af00      	add	r7, sp, #0
 800072a:	6078      	str	r0, [r7, #4]
 800072c:	4b07      	ldr	r3, [pc, #28]	; (800074c <LL_AHB1_GRP1_EnableClock+0x28>)
 800072e:	6959      	ldr	r1, [r3, #20]
 8000730:	4b06      	ldr	r3, [pc, #24]	; (800074c <LL_AHB1_GRP1_EnableClock+0x28>)
 8000732:	687a      	ldr	r2, [r7, #4]
 8000734:	430a      	orrs	r2, r1
 8000736:	615a      	str	r2, [r3, #20]
 8000738:	4b04      	ldr	r3, [pc, #16]	; (800074c <LL_AHB1_GRP1_EnableClock+0x28>)
 800073a:	695b      	ldr	r3, [r3, #20]
 800073c:	687a      	ldr	r2, [r7, #4]
 800073e:	4013      	ands	r3, r2
 8000740:	60fb      	str	r3, [r7, #12]
 8000742:	68fb      	ldr	r3, [r7, #12]
 8000744:	46c0      	nop			; (mov r8, r8)
 8000746:	46bd      	mov	sp, r7
 8000748:	b004      	add	sp, #16
 800074a:	bd80      	pop	{r7, pc}
 800074c:	40021000 	.word	0x40021000

08000750 <LL_APB1_GRP2_EnableClock>:
 8000750:	b580      	push	{r7, lr}
 8000752:	b084      	sub	sp, #16
 8000754:	af00      	add	r7, sp, #0
 8000756:	6078      	str	r0, [r7, #4]
 8000758:	4b07      	ldr	r3, [pc, #28]	; (8000778 <LL_APB1_GRP2_EnableClock+0x28>)
 800075a:	6999      	ldr	r1, [r3, #24]
 800075c:	4b06      	ldr	r3, [pc, #24]	; (8000778 <LL_APB1_GRP2_EnableClock+0x28>)
 800075e:	687a      	ldr	r2, [r7, #4]
 8000760:	430a      	orrs	r2, r1
 8000762:	619a      	str	r2, [r3, #24]
 8000764:	4b04      	ldr	r3, [pc, #16]	; (8000778 <LL_APB1_GRP2_EnableClock+0x28>)
 8000766:	699b      	ldr	r3, [r3, #24]
 8000768:	687a      	ldr	r2, [r7, #4]
 800076a:	4013      	ands	r3, r2
 800076c:	60fb      	str	r3, [r7, #12]
 800076e:	68fb      	ldr	r3, [r7, #12]
 8000770:	46c0      	nop			; (mov r8, r8)
 8000772:	46bd      	mov	sp, r7
 8000774:	b004      	add	sp, #16
 8000776:	bd80      	pop	{r7, pc}
 8000778:	40021000 	.word	0x40021000

0800077c <LL_GPIO_SetPinMode>:
 800077c:	b580      	push	{r7, lr}
 800077e:	b084      	sub	sp, #16
 8000780:	af00      	add	r7, sp, #0
 8000782:	60f8      	str	r0, [r7, #12]
 8000784:	60b9      	str	r1, [r7, #8]
 8000786:	607a      	str	r2, [r7, #4]
 8000788:	68fb      	ldr	r3, [r7, #12]
 800078a:	6819      	ldr	r1, [r3, #0]
 800078c:	68bb      	ldr	r3, [r7, #8]
 800078e:	435b      	muls	r3, r3
 8000790:	001a      	movs	r2, r3
 8000792:	0013      	movs	r3, r2
 8000794:	005b      	lsls	r3, r3, #1
 8000796:	189b      	adds	r3, r3, r2
 8000798:	43db      	mvns	r3, r3
 800079a:	400b      	ands	r3, r1
 800079c:	001a      	movs	r2, r3
 800079e:	68bb      	ldr	r3, [r7, #8]
 80007a0:	435b      	muls	r3, r3
 80007a2:	6879      	ldr	r1, [r7, #4]
 80007a4:	434b      	muls	r3, r1
 80007a6:	431a      	orrs	r2, r3
 80007a8:	68fb      	ldr	r3, [r7, #12]
 80007aa:	601a      	str	r2, [r3, #0]
 80007ac:	46c0      	nop			; (mov r8, r8)
 80007ae:	46bd      	mov	sp, r7
 80007b0:	b004      	add	sp, #16
 80007b2:	bd80      	pop	{r7, pc}

080007b4 <LL_GPIO_IsOutputPinSet>:
 80007b4:	b580      	push	{r7, lr}
 80007b6:	b082      	sub	sp, #8
 80007b8:	af00      	add	r7, sp, #0
 80007ba:	6078      	str	r0, [r7, #4]
 80007bc:	6039      	str	r1, [r7, #0]
 80007be:	687b      	ldr	r3, [r7, #4]
 80007c0:	695b      	ldr	r3, [r3, #20]
 80007c2:	683a      	ldr	r2, [r7, #0]
 80007c4:	4013      	ands	r3, r2
 80007c6:	683a      	ldr	r2, [r7, #0]
 80007c8:	1ad3      	subs	r3, r2, r3
 80007ca:	425a      	negs	r2, r3
 80007cc:	4153      	adcs	r3, r2
 80007ce:	b2db      	uxtb	r3, r3
 80007d0:	0018      	movs	r0, r3
 80007d2:	46bd      	mov	sp, r7
 80007d4:	b002      	add	sp, #8
 80007d6:	bd80      	pop	{r7, pc}

080007d8 <LL_GPIO_SetOutputPin>:
 80007d8:	b580      	push	{r7, lr}
 80007da:	b082      	sub	sp, #8
 80007dc:	af00      	add	r7, sp, #0
 80007de:	6078      	str	r0, [r7, #4]
 80007e0:	6039      	str	r1, [r7, #0]
 80007e2:	687b      	ldr	r3, [r7, #4]
 80007e4:	683a      	ldr	r2, [r7, #0]
 80007e6:	619a      	str	r2, [r3, #24]
 80007e8:	46c0      	nop			; (mov r8, r8)
 80007ea:	46bd      	mov	sp, r7
 80007ec:	b002      	add	sp, #8
 80007ee:	bd80      	pop	{r7, pc}

080007f0 <LL_GPIO_ResetOutputPin>:
 80007f0:	b580      	push	{r7, lr}
 80007f2:	b082      	sub	sp, #8
 80007f4:	af00      	add	r7, sp, #0
 80007f6:	6078      	str	r0, [r7, #4]
 80007f8:	6039      	str	r1, [r7, #0]
 80007fa:	687b      	ldr	r3, [r7, #4]
 80007fc:	683a      	ldr	r2, [r7, #0]
 80007fe:	629a      	str	r2, [r3, #40]	; 0x28
 8000800:	46c0      	nop			; (mov r8, r8)
 8000802:	46bd      	mov	sp, r7
 8000804:	b002      	add	sp, #8
 8000806:	bd80      	pop	{r7, pc}

08000808 <LL_GPIO_TogglePin>:
 8000808:	b580      	push	{r7, lr}
 800080a:	b082      	sub	sp, #8
 800080c:	af00      	add	r7, sp, #0
 800080e:	6078      	str	r0, [r7, #4]
 8000810:	6039      	str	r1, [r7, #0]
 8000812:	687b      	ldr	r3, [r7, #4]
 8000814:	695a      	ldr	r2, [r3, #20]
 8000816:	683b      	ldr	r3, [r7, #0]
 8000818:	405a      	eors	r2, r3
 800081a:	687b      	ldr	r3, [r7, #4]
 800081c:	615a      	str	r2, [r3, #20]
 800081e:	46c0      	nop			; (mov r8, r8)
 8000820:	46bd      	mov	sp, r7
 8000822:	b002      	add	sp, #8
 8000824:	bd80      	pop	{r7, pc}
	...

08000828 <LL_EXTI_EnableIT_0_31>:
 8000828:	b580      	push	{r7, lr}
 800082a:	b082      	sub	sp, #8
 800082c:	af00      	add	r7, sp, #0
 800082e:	6078      	str	r0, [r7, #4]
 8000830:	4b04      	ldr	r3, [pc, #16]	; (8000844 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000832:	6819      	ldr	r1, [r3, #0]
 8000834:	4b03      	ldr	r3, [pc, #12]	; (8000844 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000836:	687a      	ldr	r2, [r7, #4]
 8000838:	430a      	orrs	r2, r1
 800083a:	601a      	str	r2, [r3, #0]
 800083c:	46c0      	nop			; (mov r8, r8)
 800083e:	46bd      	mov	sp, r7
 8000840:	b002      	add	sp, #8
 8000842:	bd80      	pop	{r7, pc}
 8000844:	40010400 	.word	0x40010400

08000848 <LL_EXTI_EnableRisingTrig_0_31>:
 8000848:	b580      	push	{r7, lr}
 800084a:	b082      	sub	sp, #8
 800084c:	af00      	add	r7, sp, #0
 800084e:	6078      	str	r0, [r7, #4]
 8000850:	4b04      	ldr	r3, [pc, #16]	; (8000864 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 8000852:	6899      	ldr	r1, [r3, #8]
 8000854:	4b03      	ldr	r3, [pc, #12]	; (8000864 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 8000856:	687a      	ldr	r2, [r7, #4]
 8000858:	430a      	orrs	r2, r1
 800085a:	609a      	str	r2, [r3, #8]
 800085c:	46c0      	nop			; (mov r8, r8)
 800085e:	46bd      	mov	sp, r7
 8000860:	b002      	add	sp, #8
 8000862:	bd80      	pop	{r7, pc}
 8000864:	40010400 	.word	0x40010400

08000868 <LL_EXTI_ClearFlag_0_31>:
 8000868:	b580      	push	{r7, lr}
 800086a:	b082      	sub	sp, #8
 800086c:	af00      	add	r7, sp, #0
 800086e:	6078      	str	r0, [r7, #4]
 8000870:	4b03      	ldr	r3, [pc, #12]	; (8000880 <LL_EXTI_ClearFlag_0_31+0x18>)
 8000872:	687a      	ldr	r2, [r7, #4]
 8000874:	615a      	str	r2, [r3, #20]
 8000876:	46c0      	nop			; (mov r8, r8)
 8000878:	46bd      	mov	sp, r7
 800087a:	b002      	add	sp, #8
 800087c:	bd80      	pop	{r7, pc}
 800087e:	46c0      	nop			; (mov r8, r8)
 8000880:	40010400 	.word	0x40010400

08000884 <LL_InitTick>:
 8000884:	b580      	push	{r7, lr}
 8000886:	b082      	sub	sp, #8
 8000888:	af00      	add	r7, sp, #0
 800088a:	6078      	str	r0, [r7, #4]
 800088c:	6039      	str	r1, [r7, #0]
 800088e:	6839      	ldr	r1, [r7, #0]
 8000890:	6878      	ldr	r0, [r7, #4]
 8000892:	f7ff fc39 	bl	8000108 <__udivsi3>
 8000896:	0003      	movs	r3, r0
 8000898:	001a      	movs	r2, r3
 800089a:	4b06      	ldr	r3, [pc, #24]	; (80008b4 <LL_InitTick+0x30>)
 800089c:	3a01      	subs	r2, #1
 800089e:	605a      	str	r2, [r3, #4]
 80008a0:	4b04      	ldr	r3, [pc, #16]	; (80008b4 <LL_InitTick+0x30>)
 80008a2:	2200      	movs	r2, #0
 80008a4:	609a      	str	r2, [r3, #8]
 80008a6:	4b03      	ldr	r3, [pc, #12]	; (80008b4 <LL_InitTick+0x30>)
 80008a8:	2205      	movs	r2, #5
 80008aa:	601a      	str	r2, [r3, #0]
 80008ac:	46c0      	nop			; (mov r8, r8)
 80008ae:	46bd      	mov	sp, r7
 80008b0:	b002      	add	sp, #8
 80008b2:	bd80      	pop	{r7, pc}
 80008b4:	e000e010 	.word	0xe000e010

080008b8 <LL_SYSTICK_EnableIT>:
 80008b8:	b580      	push	{r7, lr}
 80008ba:	af00      	add	r7, sp, #0
 80008bc:	4b04      	ldr	r3, [pc, #16]	; (80008d0 <LL_SYSTICK_EnableIT+0x18>)
 80008be:	681a      	ldr	r2, [r3, #0]
 80008c0:	4b03      	ldr	r3, [pc, #12]	; (80008d0 <LL_SYSTICK_EnableIT+0x18>)
 80008c2:	2102      	movs	r1, #2
 80008c4:	430a      	orrs	r2, r1
 80008c6:	601a      	str	r2, [r3, #0]
 80008c8:	46c0      	nop			; (mov r8, r8)
 80008ca:	46bd      	mov	sp, r7
 80008cc:	bd80      	pop	{r7, pc}
 80008ce:	46c0      	nop			; (mov r8, r8)
 80008d0:	e000e010 	.word	0xe000e010

080008d4 <rcc_config>:
 80008d4:	b580      	push	{r7, lr}
 80008d6:	af00      	add	r7, sp, #0
 80008d8:	2001      	movs	r0, #1
 80008da:	f7ff ff0f 	bl	80006fc <LL_FLASH_SetLatency>
 80008de:	f7ff fe37 	bl	8000550 <LL_RCC_HSI_Enable>
 80008e2:	46c0      	nop			; (mov r8, r8)
 80008e4:	f7ff fe42 	bl	800056c <LL_RCC_HSI_IsReady>
 80008e8:	0003      	movs	r3, r0
 80008ea:	2b01      	cmp	r3, #1
 80008ec:	d1fa      	bne.n	80008e4 <rcc_config+0x10>
 80008ee:	23a0      	movs	r3, #160	; 0xa0
 80008f0:	039b      	lsls	r3, r3, #14
 80008f2:	0019      	movs	r1, r3
 80008f4:	2000      	movs	r0, #0
 80008f6:	f7ff feb5 	bl	8000664 <LL_RCC_PLL_ConfigDomain_SYS>
 80008fa:	f7ff fe91 	bl	8000620 <LL_RCC_PLL_Enable>
 80008fe:	46c0      	nop			; (mov r8, r8)
 8000900:	f7ff fe9c 	bl	800063c <LL_RCC_PLL_IsReady>
 8000904:	0003      	movs	r3, r0
 8000906:	2b01      	cmp	r3, #1
 8000908:	d1fa      	bne.n	8000900 <rcc_config+0x2c>
 800090a:	2000      	movs	r0, #0
 800090c:	f7ff fe5e 	bl	80005cc <LL_RCC_SetAHBPrescaler>
 8000910:	2002      	movs	r0, #2
 8000912:	f7ff fe3b 	bl	800058c <LL_RCC_SetSysClkSource>
 8000916:	46c0      	nop			; (mov r8, r8)
 8000918:	f7ff fe4c 	bl	80005b4 <LL_RCC_GetSysClkSource>
 800091c:	0003      	movs	r3, r0
 800091e:	2b08      	cmp	r3, #8
 8000920:	d1fa      	bne.n	8000918 <rcc_config+0x44>
 8000922:	2000      	movs	r0, #0
 8000924:	f7ff fe66 	bl	80005f4 <LL_RCC_SetAPB1Prescaler>
 8000928:	4b02      	ldr	r3, [pc, #8]	; (8000934 <rcc_config+0x60>)
 800092a:	4a03      	ldr	r2, [pc, #12]	; (8000938 <rcc_config+0x64>)
 800092c:	601a      	str	r2, [r3, #0]
 800092e:	46c0      	nop			; (mov r8, r8)
 8000930:	46bd      	mov	sp, r7
 8000932:	bd80      	pop	{r7, pc}
 8000934:	2000000c 	.word	0x2000000c
 8000938:	02dc6c00 	.word	0x02dc6c00

0800093c <gpio_config>:
 800093c:	b580      	push	{r7, lr}
 800093e:	af00      	add	r7, sp, #0
 8000940:	2380      	movs	r3, #128	; 0x80
 8000942:	031b      	lsls	r3, r3, #12
 8000944:	0018      	movs	r0, r3
 8000946:	f7ff feed 	bl	8000724 <LL_AHB1_GRP1_EnableClock>
 800094a:	2380      	movs	r3, #128	; 0x80
 800094c:	005b      	lsls	r3, r3, #1
 800094e:	480d      	ldr	r0, [pc, #52]	; (8000984 <gpio_config+0x48>)
 8000950:	2201      	movs	r2, #1
 8000952:	0019      	movs	r1, r3
 8000954:	f7ff ff12 	bl	800077c <LL_GPIO_SetPinMode>
 8000958:	2380      	movs	r3, #128	; 0x80
 800095a:	009b      	lsls	r3, r3, #2
 800095c:	4809      	ldr	r0, [pc, #36]	; (8000984 <gpio_config+0x48>)
 800095e:	2201      	movs	r2, #1
 8000960:	0019      	movs	r1, r3
 8000962:	f7ff ff0b 	bl	800077c <LL_GPIO_SetPinMode>
 8000966:	2380      	movs	r3, #128	; 0x80
 8000968:	029b      	lsls	r3, r3, #10
 800096a:	0018      	movs	r0, r3
 800096c:	f7ff feda 	bl	8000724 <LL_AHB1_GRP1_EnableClock>
 8000970:	2390      	movs	r3, #144	; 0x90
 8000972:	05db      	lsls	r3, r3, #23
 8000974:	2200      	movs	r2, #0
 8000976:	2101      	movs	r1, #1
 8000978:	0018      	movs	r0, r3
 800097a:	f7ff feff 	bl	800077c <LL_GPIO_SetPinMode>
 800097e:	46c0      	nop			; (mov r8, r8)
 8000980:	46bd      	mov	sp, r7
 8000982:	bd80      	pop	{r7, pc}
 8000984:	48000800 	.word	0x48000800

08000988 <random>:
 8000988:	b580      	push	{r7, lr}
 800098a:	af00      	add	r7, sp, #0
 800098c:	4b0b      	ldr	r3, [pc, #44]	; (80009bc <random+0x34>)
 800098e:	681a      	ldr	r2, [r3, #0]
 8000990:	4b0b      	ldr	r3, [pc, #44]	; (80009c0 <random+0x38>)
 8000992:	681b      	ldr	r3, [r3, #0]
 8000994:	435a      	muls	r2, r3
 8000996:	4b0b      	ldr	r3, [pc, #44]	; (80009c4 <random+0x3c>)
 8000998:	681b      	ldr	r3, [r3, #0]
 800099a:	18d2      	adds	r2, r2, r3
 800099c:	4b0a      	ldr	r3, [pc, #40]	; (80009c8 <random+0x40>)
 800099e:	681b      	ldr	r3, [r3, #0]
 80009a0:	0019      	movs	r1, r3
 80009a2:	0010      	movs	r0, r2
 80009a4:	f7ff fd20 	bl	80003e8 <__aeabi_idivmod>
 80009a8:	000b      	movs	r3, r1
 80009aa:	001a      	movs	r2, r3
 80009ac:	4b04      	ldr	r3, [pc, #16]	; (80009c0 <random+0x38>)
 80009ae:	601a      	str	r2, [r3, #0]
 80009b0:	4b03      	ldr	r3, [pc, #12]	; (80009c0 <random+0x38>)
 80009b2:	681b      	ldr	r3, [r3, #0]
 80009b4:	3301      	adds	r3, #1
 80009b6:	0018      	movs	r0, r3
 80009b8:	46bd      	mov	sp, r7
 80009ba:	bd80      	pop	{r7, pc}
 80009bc:	08000d5c 	.word	0x08000d5c
 80009c0:	20000008 	.word	0x20000008
 80009c4:	08000d60 	.word	0x08000d60
 80009c8:	08000d64 	.word	0x08000d64

080009cc <exti_config>:
 80009cc:	b580      	push	{r7, lr}
 80009ce:	af00      	add	r7, sp, #0
 80009d0:	2001      	movs	r0, #1
 80009d2:	f7ff febd 	bl	8000750 <LL_APB1_GRP2_EnableClock>
 80009d6:	2100      	movs	r1, #0
 80009d8:	2000      	movs	r0, #0
 80009da:	f7ff fe69 	bl	80006b0 <LL_SYSCFG_SetEXTISource>
 80009de:	2001      	movs	r0, #1
 80009e0:	f7ff ff22 	bl	8000828 <LL_EXTI_EnableIT_0_31>
 80009e4:	2001      	movs	r0, #1
 80009e6:	f7ff ff2f 	bl	8000848 <LL_EXTI_EnableRisingTrig_0_31>
 80009ea:	2005      	movs	r0, #5
 80009ec:	f7ff fd2c 	bl	8000448 <NVIC_EnableIRQ>
 80009f0:	2103      	movs	r1, #3
 80009f2:	2005      	movs	r0, #5
 80009f4:	f7ff fd3e 	bl	8000474 <NVIC_SetPriority>
 80009f8:	46c0      	nop			; (mov r8, r8)
 80009fa:	46bd      	mov	sp, r7
 80009fc:	bd80      	pop	{r7, pc}
	...

08000a00 <EXTI0_1_IRQHandler>:
 8000a00:	b580      	push	{r7, lr}
 8000a02:	af00      	add	r7, sp, #0
 8000a04:	2380      	movs	r3, #128	; 0x80
 8000a06:	005b      	lsls	r3, r3, #1
 8000a08:	4a0e      	ldr	r2, [pc, #56]	; (8000a44 <EXTI0_1_IRQHandler+0x44>)
 8000a0a:	0019      	movs	r1, r3
 8000a0c:	0010      	movs	r0, r2
 8000a0e:	f7ff fed1 	bl	80007b4 <LL_GPIO_IsOutputPinSet>
 8000a12:	1e03      	subs	r3, r0, #0
 8000a14:	d010      	beq.n	8000a38 <EXTI0_1_IRQHandler+0x38>
 8000a16:	2380      	movs	r3, #128	; 0x80
 8000a18:	005b      	lsls	r3, r3, #1
 8000a1a:	4a0a      	ldr	r2, [pc, #40]	; (8000a44 <EXTI0_1_IRQHandler+0x44>)
 8000a1c:	0019      	movs	r1, r3
 8000a1e:	0010      	movs	r0, r2
 8000a20:	f7ff fee6 	bl	80007f0 <LL_GPIO_ResetOutputPin>
 8000a24:	2380      	movs	r3, #128	; 0x80
 8000a26:	009b      	lsls	r3, r3, #2
 8000a28:	4a06      	ldr	r2, [pc, #24]	; (8000a44 <EXTI0_1_IRQHandler+0x44>)
 8000a2a:	0019      	movs	r1, r3
 8000a2c:	0010      	movs	r0, r2
 8000a2e:	f7ff fed3 	bl	80007d8 <LL_GPIO_SetOutputPin>
 8000a32:	4b05      	ldr	r3, [pc, #20]	; (8000a48 <EXTI0_1_IRQHandler+0x48>)
 8000a34:	2201      	movs	r2, #1
 8000a36:	601a      	str	r2, [r3, #0]
 8000a38:	2001      	movs	r0, #1
 8000a3a:	f7ff ff15 	bl	8000868 <LL_EXTI_ClearFlag_0_31>
 8000a3e:	46c0      	nop			; (mov r8, r8)
 8000a40:	46bd      	mov	sp, r7
 8000a42:	bd80      	pop	{r7, pc}
 8000a44:	48000800 	.word	0x48000800
 8000a48:	2000045c 	.word	0x2000045c

08000a4c <systick_config>:
 8000a4c:	b580      	push	{r7, lr}
 8000a4e:	af00      	add	r7, sp, #0
 8000a50:	23fa      	movs	r3, #250	; 0xfa
 8000a52:	009b      	lsls	r3, r3, #2
 8000a54:	4a07      	ldr	r2, [pc, #28]	; (8000a74 <systick_config+0x28>)
 8000a56:	0019      	movs	r1, r3
 8000a58:	0010      	movs	r0, r2
 8000a5a:	f7ff ff13 	bl	8000884 <LL_InitTick>
 8000a5e:	f7ff ff2b 	bl	80008b8 <LL_SYSTICK_EnableIT>
 8000a62:	2301      	movs	r3, #1
 8000a64:	425b      	negs	r3, r3
 8000a66:	2100      	movs	r1, #0
 8000a68:	0018      	movs	r0, r3
 8000a6a:	f7ff fd03 	bl	8000474 <NVIC_SetPriority>
 8000a6e:	46c0      	nop			; (mov r8, r8)
 8000a70:	46bd      	mov	sp, r7
 8000a72:	bd80      	pop	{r7, pc}
 8000a74:	02dc6c00 	.word	0x02dc6c00

08000a78 <SysTick_Handler>:
 8000a78:	b580      	push	{r7, lr}
 8000a7a:	af00      	add	r7, sp, #0
 8000a7c:	4b28      	ldr	r3, [pc, #160]	; (8000b20 <SysTick_Handler+0xa8>)
 8000a7e:	681b      	ldr	r3, [r3, #0]
 8000a80:	2b00      	cmp	r3, #0
 8000a82:	d10b      	bne.n	8000a9c <SysTick_Handler+0x24>
 8000a84:	f7ff ff80 	bl	8000988 <random>
 8000a88:	0002      	movs	r2, r0
 8000a8a:	0013      	movs	r3, r2
 8000a8c:	015b      	lsls	r3, r3, #5
 8000a8e:	1a9b      	subs	r3, r3, r2
 8000a90:	009b      	lsls	r3, r3, #2
 8000a92:	189b      	adds	r3, r3, r2
 8000a94:	00db      	lsls	r3, r3, #3
 8000a96:	001a      	movs	r2, r3
 8000a98:	4b22      	ldr	r3, [pc, #136]	; (8000b24 <SysTick_Handler+0xac>)
 8000a9a:	601a      	str	r2, [r3, #0]
 8000a9c:	4b22      	ldr	r3, [pc, #136]	; (8000b28 <SysTick_Handler+0xb0>)
 8000a9e:	681b      	ldr	r3, [r3, #0]
 8000aa0:	2b00      	cmp	r3, #0
 8000aa2:	d00d      	beq.n	8000ac0 <SysTick_Handler+0x48>
 8000aa4:	4b1e      	ldr	r3, [pc, #120]	; (8000b20 <SysTick_Handler+0xa8>)
 8000aa6:	681a      	ldr	r2, [r3, #0]
 8000aa8:	4b20      	ldr	r3, [pc, #128]	; (8000b2c <SysTick_Handler+0xb4>)
 8000aaa:	601a      	str	r2, [r3, #0]
 8000aac:	4b1c      	ldr	r3, [pc, #112]	; (8000b20 <SysTick_Handler+0xa8>)
 8000aae:	681a      	ldr	r2, [r3, #0]
 8000ab0:	23fa      	movs	r3, #250	; 0xfa
 8000ab2:	005b      	lsls	r3, r3, #1
 8000ab4:	1ad2      	subs	r2, r2, r3
 8000ab6:	4b1a      	ldr	r3, [pc, #104]	; (8000b20 <SysTick_Handler+0xa8>)
 8000ab8:	601a      	str	r2, [r3, #0]
 8000aba:	4b1b      	ldr	r3, [pc, #108]	; (8000b28 <SysTick_Handler+0xb0>)
 8000abc:	2200      	movs	r2, #0
 8000abe:	601a      	str	r2, [r3, #0]
 8000ac0:	4b17      	ldr	r3, [pc, #92]	; (8000b20 <SysTick_Handler+0xa8>)
 8000ac2:	681a      	ldr	r2, [r3, #0]
 8000ac4:	4b19      	ldr	r3, [pc, #100]	; (8000b2c <SysTick_Handler+0xb4>)
 8000ac6:	681b      	ldr	r3, [r3, #0]
 8000ac8:	429a      	cmp	r2, r3
 8000aca:	d109      	bne.n	8000ae0 <SysTick_Handler+0x68>
 8000acc:	4b17      	ldr	r3, [pc, #92]	; (8000b2c <SysTick_Handler+0xb4>)
 8000ace:	4a18      	ldr	r2, [pc, #96]	; (8000b30 <SysTick_Handler+0xb8>)
 8000ad0:	601a      	str	r2, [r3, #0]
 8000ad2:	2380      	movs	r3, #128	; 0x80
 8000ad4:	009b      	lsls	r3, r3, #2
 8000ad6:	4a17      	ldr	r2, [pc, #92]	; (8000b34 <SysTick_Handler+0xbc>)
 8000ad8:	0019      	movs	r1, r3
 8000ada:	0010      	movs	r0, r2
 8000adc:	f7ff fe88 	bl	80007f0 <LL_GPIO_ResetOutputPin>
 8000ae0:	4b0f      	ldr	r3, [pc, #60]	; (8000b20 <SysTick_Handler+0xa8>)
 8000ae2:	681b      	ldr	r3, [r3, #0]
 8000ae4:	1c5a      	adds	r2, r3, #1
 8000ae6:	4b0f      	ldr	r3, [pc, #60]	; (8000b24 <SysTick_Handler+0xac>)
 8000ae8:	681b      	ldr	r3, [r3, #0]
 8000aea:	0019      	movs	r1, r3
 8000aec:	0010      	movs	r0, r2
 8000aee:	f7ff fc7b 	bl	80003e8 <__aeabi_idivmod>
 8000af2:	000b      	movs	r3, r1
 8000af4:	001a      	movs	r2, r3
 8000af6:	4b0a      	ldr	r3, [pc, #40]	; (8000b20 <SysTick_Handler+0xa8>)
 8000af8:	601a      	str	r2, [r3, #0]
 8000afa:	4b09      	ldr	r3, [pc, #36]	; (8000b20 <SysTick_Handler+0xa8>)
 8000afc:	681b      	ldr	r3, [r3, #0]
 8000afe:	2b00      	cmp	r3, #0
 8000b00:	d10b      	bne.n	8000b1a <SysTick_Handler+0xa2>
 8000b02:	4b0a      	ldr	r3, [pc, #40]	; (8000b2c <SysTick_Handler+0xb4>)
 8000b04:	681b      	ldr	r3, [r3, #0]
 8000b06:	4a0a      	ldr	r2, [pc, #40]	; (8000b30 <SysTick_Handler+0xb8>)
 8000b08:	4293      	cmp	r3, r2
 8000b0a:	d106      	bne.n	8000b1a <SysTick_Handler+0xa2>
 8000b0c:	2380      	movs	r3, #128	; 0x80
 8000b0e:	005b      	lsls	r3, r3, #1
 8000b10:	4a08      	ldr	r2, [pc, #32]	; (8000b34 <SysTick_Handler+0xbc>)
 8000b12:	0019      	movs	r1, r3
 8000b14:	0010      	movs	r0, r2
 8000b16:	f7ff fe77 	bl	8000808 <LL_GPIO_TogglePin>
 8000b1a:	46c0      	nop			; (mov r8, r8)
 8000b1c:	46bd      	mov	sp, r7
 8000b1e:	bd80      	pop	{r7, pc}
 8000b20:	20000458 	.word	0x20000458
 8000b24:	20000000 	.word	0x20000000
 8000b28:	2000045c 	.word	0x2000045c
 8000b2c:	20000004 	.word	0x20000004
 8000b30:	00989680 	.word	0x00989680
 8000b34:	48000800 	.word	0x48000800

08000b38 <main>:
 8000b38:	b580      	push	{r7, lr}
 8000b3a:	af00      	add	r7, sp, #0
 8000b3c:	f7ff feca 	bl	80008d4 <rcc_config>
 8000b40:	f7ff fefc 	bl	800093c <gpio_config>
 8000b44:	f7ff ff42 	bl	80009cc <exti_config>
 8000b48:	f7ff ff80 	bl	8000a4c <systick_config>
 8000b4c:	e7fe      	b.n	8000b4c <main+0x14>
	...

08000b50 <SystemInit>:
 8000b50:	b580      	push	{r7, lr}
 8000b52:	af00      	add	r7, sp, #0
 8000b54:	4b1a      	ldr	r3, [pc, #104]	; (8000bc0 <SystemInit+0x70>)
 8000b56:	681a      	ldr	r2, [r3, #0]
 8000b58:	4b19      	ldr	r3, [pc, #100]	; (8000bc0 <SystemInit+0x70>)
 8000b5a:	2101      	movs	r1, #1
 8000b5c:	430a      	orrs	r2, r1
 8000b5e:	601a      	str	r2, [r3, #0]
 8000b60:	4b17      	ldr	r3, [pc, #92]	; (8000bc0 <SystemInit+0x70>)
 8000b62:	685a      	ldr	r2, [r3, #4]
 8000b64:	4b16      	ldr	r3, [pc, #88]	; (8000bc0 <SystemInit+0x70>)
 8000b66:	4917      	ldr	r1, [pc, #92]	; (8000bc4 <SystemInit+0x74>)
 8000b68:	400a      	ands	r2, r1
 8000b6a:	605a      	str	r2, [r3, #4]
 8000b6c:	4b14      	ldr	r3, [pc, #80]	; (8000bc0 <SystemInit+0x70>)
 8000b6e:	681a      	ldr	r2, [r3, #0]
 8000b70:	4b13      	ldr	r3, [pc, #76]	; (8000bc0 <SystemInit+0x70>)
 8000b72:	4915      	ldr	r1, [pc, #84]	; (8000bc8 <SystemInit+0x78>)
 8000b74:	400a      	ands	r2, r1
 8000b76:	601a      	str	r2, [r3, #0]
 8000b78:	4b11      	ldr	r3, [pc, #68]	; (8000bc0 <SystemInit+0x70>)
 8000b7a:	681a      	ldr	r2, [r3, #0]
 8000b7c:	4b10      	ldr	r3, [pc, #64]	; (8000bc0 <SystemInit+0x70>)
 8000b7e:	4913      	ldr	r1, [pc, #76]	; (8000bcc <SystemInit+0x7c>)
 8000b80:	400a      	ands	r2, r1
 8000b82:	601a      	str	r2, [r3, #0]
 8000b84:	4b0e      	ldr	r3, [pc, #56]	; (8000bc0 <SystemInit+0x70>)
 8000b86:	685a      	ldr	r2, [r3, #4]
 8000b88:	4b0d      	ldr	r3, [pc, #52]	; (8000bc0 <SystemInit+0x70>)
 8000b8a:	4911      	ldr	r1, [pc, #68]	; (8000bd0 <SystemInit+0x80>)
 8000b8c:	400a      	ands	r2, r1
 8000b8e:	605a      	str	r2, [r3, #4]
 8000b90:	4b0b      	ldr	r3, [pc, #44]	; (8000bc0 <SystemInit+0x70>)
 8000b92:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000b94:	4b0a      	ldr	r3, [pc, #40]	; (8000bc0 <SystemInit+0x70>)
 8000b96:	210f      	movs	r1, #15
 8000b98:	438a      	bics	r2, r1
 8000b9a:	62da      	str	r2, [r3, #44]	; 0x2c
 8000b9c:	4b08      	ldr	r3, [pc, #32]	; (8000bc0 <SystemInit+0x70>)
 8000b9e:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000ba0:	4b07      	ldr	r3, [pc, #28]	; (8000bc0 <SystemInit+0x70>)
 8000ba2:	490c      	ldr	r1, [pc, #48]	; (8000bd4 <SystemInit+0x84>)
 8000ba4:	400a      	ands	r2, r1
 8000ba6:	631a      	str	r2, [r3, #48]	; 0x30
 8000ba8:	4b05      	ldr	r3, [pc, #20]	; (8000bc0 <SystemInit+0x70>)
 8000baa:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000bac:	4b04      	ldr	r3, [pc, #16]	; (8000bc0 <SystemInit+0x70>)
 8000bae:	2101      	movs	r1, #1
 8000bb0:	438a      	bics	r2, r1
 8000bb2:	635a      	str	r2, [r3, #52]	; 0x34
 8000bb4:	4b02      	ldr	r3, [pc, #8]	; (8000bc0 <SystemInit+0x70>)
 8000bb6:	2200      	movs	r2, #0
 8000bb8:	609a      	str	r2, [r3, #8]
 8000bba:	46c0      	nop			; (mov r8, r8)
 8000bbc:	46bd      	mov	sp, r7
 8000bbe:	bd80      	pop	{r7, pc}
 8000bc0:	40021000 	.word	0x40021000
 8000bc4:	f8ffb80c 	.word	0xf8ffb80c
 8000bc8:	fef6ffff 	.word	0xfef6ffff
 8000bcc:	fffbffff 	.word	0xfffbffff
 8000bd0:	ffc0ffff 	.word	0xffc0ffff
 8000bd4:	fffffeac 	.word	0xfffffeac

08000bd8 <NMI_Handler>:
 8000bd8:	b580      	push	{r7, lr}
 8000bda:	af00      	add	r7, sp, #0
 8000bdc:	46c0      	nop			; (mov r8, r8)
 8000bde:	46bd      	mov	sp, r7
 8000be0:	bd80      	pop	{r7, pc}

08000be2 <HardFault_Handler>:
 8000be2:	b580      	push	{r7, lr}
 8000be4:	af00      	add	r7, sp, #0
 8000be6:	e7fe      	b.n	8000be6 <HardFault_Handler+0x4>

08000be8 <SVC_Handler>:
 8000be8:	b580      	push	{r7, lr}
 8000bea:	af00      	add	r7, sp, #0
 8000bec:	46c0      	nop			; (mov r8, r8)
 8000bee:	46bd      	mov	sp, r7
 8000bf0:	bd80      	pop	{r7, pc}

08000bf2 <PendSV_Handler>:
 8000bf2:	b580      	push	{r7, lr}
 8000bf4:	af00      	add	r7, sp, #0
 8000bf6:	46c0      	nop			; (mov r8, r8)
 8000bf8:	46bd      	mov	sp, r7
 8000bfa:	bd80      	pop	{r7, pc}

08000bfc <__libc_init_array>:
 8000bfc:	b570      	push	{r4, r5, r6, lr}
 8000bfe:	4d0c      	ldr	r5, [pc, #48]	; (8000c30 <__libc_init_array+0x34>)
 8000c00:	4e0c      	ldr	r6, [pc, #48]	; (8000c34 <__libc_init_array+0x38>)
 8000c02:	1b76      	subs	r6, r6, r5
 8000c04:	10b6      	asrs	r6, r6, #2
 8000c06:	d005      	beq.n	8000c14 <__libc_init_array+0x18>
 8000c08:	2400      	movs	r4, #0
 8000c0a:	cd08      	ldmia	r5!, {r3}
 8000c0c:	3401      	adds	r4, #1
 8000c0e:	4798      	blx	r3
 8000c10:	42a6      	cmp	r6, r4
 8000c12:	d1fa      	bne.n	8000c0a <__libc_init_array+0xe>
 8000c14:	f000 f896 	bl	8000d44 <_init>
 8000c18:	4d07      	ldr	r5, [pc, #28]	; (8000c38 <__libc_init_array+0x3c>)
 8000c1a:	4e08      	ldr	r6, [pc, #32]	; (8000c3c <__libc_init_array+0x40>)
 8000c1c:	1b76      	subs	r6, r6, r5
 8000c1e:	10b6      	asrs	r6, r6, #2
 8000c20:	d005      	beq.n	8000c2e <__libc_init_array+0x32>
 8000c22:	2400      	movs	r4, #0
 8000c24:	cd08      	ldmia	r5!, {r3}
 8000c26:	3401      	adds	r4, #1
 8000c28:	4798      	blx	r3
 8000c2a:	42a6      	cmp	r6, r4
 8000c2c:	d1fa      	bne.n	8000c24 <__libc_init_array+0x28>
 8000c2e:	bd70      	pop	{r4, r5, r6, pc}
 8000c30:	08000d6c 	.word	0x08000d6c
 8000c34:	08000d6c 	.word	0x08000d6c
 8000c38:	08000d6c 	.word	0x08000d6c
 8000c3c:	08000d74 	.word	0x08000d74

08000c40 <register_fini>:
 8000c40:	4b03      	ldr	r3, [pc, #12]	; (8000c50 <register_fini+0x10>)
 8000c42:	b510      	push	{r4, lr}
 8000c44:	2b00      	cmp	r3, #0
 8000c46:	d002      	beq.n	8000c4e <register_fini+0xe>
 8000c48:	4802      	ldr	r0, [pc, #8]	; (8000c54 <register_fini+0x14>)
 8000c4a:	f000 f805 	bl	8000c58 <atexit>
 8000c4e:	bd10      	pop	{r4, pc}
 8000c50:	00000000 	.word	0x00000000
 8000c54:	08000c69 	.word	0x08000c69

08000c58 <atexit>:
 8000c58:	b510      	push	{r4, lr}
 8000c5a:	0001      	movs	r1, r0
 8000c5c:	2300      	movs	r3, #0
 8000c5e:	2200      	movs	r2, #0
 8000c60:	2000      	movs	r0, #0
 8000c62:	f000 f819 	bl	8000c98 <__register_exitproc>
 8000c66:	bd10      	pop	{r4, pc}

08000c68 <__libc_fini_array>:
 8000c68:	b570      	push	{r4, r5, r6, lr}
 8000c6a:	4d07      	ldr	r5, [pc, #28]	; (8000c88 <__libc_fini_array+0x20>)
 8000c6c:	4c07      	ldr	r4, [pc, #28]	; (8000c8c <__libc_fini_array+0x24>)
 8000c6e:	1b64      	subs	r4, r4, r5
 8000c70:	10a4      	asrs	r4, r4, #2
 8000c72:	d005      	beq.n	8000c80 <__libc_fini_array+0x18>
 8000c74:	3c01      	subs	r4, #1
 8000c76:	00a3      	lsls	r3, r4, #2
 8000c78:	58eb      	ldr	r3, [r5, r3]
 8000c7a:	4798      	blx	r3
 8000c7c:	2c00      	cmp	r4, #0
 8000c7e:	d1f9      	bne.n	8000c74 <__libc_fini_array+0xc>
 8000c80:	f000 f866 	bl	8000d50 <_fini>
 8000c84:	bd70      	pop	{r4, r5, r6, pc}
 8000c86:	46c0      	nop			; (mov r8, r8)
 8000c88:	08000d74 	.word	0x08000d74
 8000c8c:	08000d78 	.word	0x08000d78

08000c90 <__retarget_lock_acquire_recursive>:
 8000c90:	4770      	bx	lr
 8000c92:	46c0      	nop			; (mov r8, r8)

08000c94 <__retarget_lock_release_recursive>:
 8000c94:	4770      	bx	lr
 8000c96:	46c0      	nop			; (mov r8, r8)

08000c98 <__register_exitproc>:
 8000c98:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c9a:	46d6      	mov	lr, sl
 8000c9c:	464f      	mov	r7, r9
 8000c9e:	4646      	mov	r6, r8
 8000ca0:	b5c0      	push	{r6, r7, lr}
 8000ca2:	4f26      	ldr	r7, [pc, #152]	; (8000d3c <__register_exitproc+0xa4>)
 8000ca4:	b082      	sub	sp, #8
 8000ca6:	0006      	movs	r6, r0
 8000ca8:	6838      	ldr	r0, [r7, #0]
 8000caa:	4692      	mov	sl, r2
 8000cac:	4698      	mov	r8, r3
 8000cae:	4689      	mov	r9, r1
 8000cb0:	f7ff ffee 	bl	8000c90 <__retarget_lock_acquire_recursive>
 8000cb4:	4b22      	ldr	r3, [pc, #136]	; (8000d40 <__register_exitproc+0xa8>)
 8000cb6:	681b      	ldr	r3, [r3, #0]
 8000cb8:	9301      	str	r3, [sp, #4]
 8000cba:	23a4      	movs	r3, #164	; 0xa4
 8000cbc:	9a01      	ldr	r2, [sp, #4]
 8000cbe:	005b      	lsls	r3, r3, #1
 8000cc0:	58d5      	ldr	r5, [r2, r3]
 8000cc2:	2d00      	cmp	r5, #0
 8000cc4:	d02e      	beq.n	8000d24 <__register_exitproc+0x8c>
 8000cc6:	686c      	ldr	r4, [r5, #4]
 8000cc8:	2c1f      	cmp	r4, #31
 8000cca:	dc30      	bgt.n	8000d2e <__register_exitproc+0x96>
 8000ccc:	2e00      	cmp	r6, #0
 8000cce:	d10f      	bne.n	8000cf0 <__register_exitproc+0x58>
 8000cd0:	1c63      	adds	r3, r4, #1
 8000cd2:	606b      	str	r3, [r5, #4]
 8000cd4:	464b      	mov	r3, r9
 8000cd6:	3402      	adds	r4, #2
 8000cd8:	00a4      	lsls	r4, r4, #2
 8000cda:	6838      	ldr	r0, [r7, #0]
 8000cdc:	5163      	str	r3, [r4, r5]
 8000cde:	f7ff ffd9 	bl	8000c94 <__retarget_lock_release_recursive>
 8000ce2:	2000      	movs	r0, #0
 8000ce4:	b002      	add	sp, #8
 8000ce6:	bce0      	pop	{r5, r6, r7}
 8000ce8:	46ba      	mov	sl, r7
 8000cea:	46b1      	mov	r9, r6
 8000cec:	46a8      	mov	r8, r5
 8000cee:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000cf0:	2288      	movs	r2, #136	; 0x88
 8000cf2:	4651      	mov	r1, sl
 8000cf4:	0028      	movs	r0, r5
 8000cf6:	00a3      	lsls	r3, r4, #2
 8000cf8:	18eb      	adds	r3, r5, r3
 8000cfa:	5099      	str	r1, [r3, r2]
 8000cfc:	3a87      	subs	r2, #135	; 0x87
 8000cfe:	40a2      	lsls	r2, r4
 8000d00:	3089      	adds	r0, #137	; 0x89
 8000d02:	30ff      	adds	r0, #255	; 0xff
 8000d04:	6801      	ldr	r1, [r0, #0]
 8000d06:	4311      	orrs	r1, r2
 8000d08:	6001      	str	r1, [r0, #0]
 8000d0a:	2184      	movs	r1, #132	; 0x84
 8000d0c:	4640      	mov	r0, r8
 8000d0e:	0049      	lsls	r1, r1, #1
 8000d10:	5058      	str	r0, [r3, r1]
 8000d12:	2e02      	cmp	r6, #2
 8000d14:	d1dc      	bne.n	8000cd0 <__register_exitproc+0x38>
 8000d16:	002b      	movs	r3, r5
 8000d18:	338d      	adds	r3, #141	; 0x8d
 8000d1a:	33ff      	adds	r3, #255	; 0xff
 8000d1c:	6819      	ldr	r1, [r3, #0]
 8000d1e:	430a      	orrs	r2, r1
 8000d20:	601a      	str	r2, [r3, #0]
 8000d22:	e7d5      	b.n	8000cd0 <__register_exitproc+0x38>
 8000d24:	0015      	movs	r5, r2
 8000d26:	354d      	adds	r5, #77	; 0x4d
 8000d28:	35ff      	adds	r5, #255	; 0xff
 8000d2a:	50d5      	str	r5, [r2, r3]
 8000d2c:	e7cb      	b.n	8000cc6 <__register_exitproc+0x2e>
 8000d2e:	6838      	ldr	r0, [r7, #0]
 8000d30:	f7ff ffb0 	bl	8000c94 <__retarget_lock_release_recursive>
 8000d34:	2001      	movs	r0, #1
 8000d36:	4240      	negs	r0, r0
 8000d38:	e7d4      	b.n	8000ce4 <__register_exitproc+0x4c>
 8000d3a:	46c0      	nop			; (mov r8, r8)
 8000d3c:	20000438 	.word	0x20000438
 8000d40:	08000d68 	.word	0x08000d68

08000d44 <_init>:
 8000d44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d46:	46c0      	nop			; (mov r8, r8)
 8000d48:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d4a:	bc08      	pop	{r3}
 8000d4c:	469e      	mov	lr, r3
 8000d4e:	4770      	bx	lr

08000d50 <_fini>:
 8000d50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d52:	46c0      	nop			; (mov r8, r8)
 8000d54:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d56:	bc08      	pop	{r3}
 8000d58:	469e      	mov	lr, r3
 8000d5a:	4770      	bx	lr
