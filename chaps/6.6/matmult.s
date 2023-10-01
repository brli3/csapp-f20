
matmult:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   0x2f62(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 63 2f 00 00 	bnd jmp *0x2f63(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 3d 2f 00 00 	bnd jmp *0x2f3d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010c0 <puts@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 3f98 <puts@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <clock@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 3fa0 <clock@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <__stack_chk_fail@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 3fa8 <__stack_chk_fail@GLIBC_2.4>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <srand@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 3fb0 <srand@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <calloc@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 3fb8 <calloc@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <time@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 a5 2e 00 00 	bnd jmp *0x2ea5(%rip)        # 3fc0 <time@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <__printf_chk@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 9d 2e 00 00 	bnd jmp *0x2e9d(%rip)        # 3fc8 <__printf_chk@GLIBC_2.3.4>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <rand@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 95 2e 00 00 	bnd jmp *0x2e95(%rip)        # 3fd0 <rand@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	31 ed                	xor    %ebp,%ebp
    1146:	49 89 d1             	mov    %rdx,%r9
    1149:	5e                   	pop    %rsi
    114a:	48 89 e2             	mov    %rsp,%rdx
    114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1151:	50                   	push   %rax
    1152:	54                   	push   %rsp
    1153:	45 31 c0             	xor    %r8d,%r8d
    1156:	31 c9                	xor    %ecx,%ecx
    1158:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1229 <main>
    115f:	ff 15 73 2e 00 00    	call   *0x2e73(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1165:	f4                   	hlt    
    1166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    116d:	00 00 00 

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d 99 2e 00 00 	lea    0x2e99(%rip),%rdi        # 4010 <__TMC_END__>
    1177:	48 8d 05 92 2e 00 00 	lea    0x2e92(%rip),%rax        # 4010 <__TMC_END__>
    117e:	48 39 f8             	cmp    %rdi,%rax
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 56 2e 00 00 	mov    0x2e56(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    118a:	48 85 c0             	test   %rax,%rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmp    *%rax
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 69 2e 00 00 	lea    0x2e69(%rip),%rdi        # 4010 <__TMC_END__>
    11a7:	48 8d 35 62 2e 00 00 	lea    0x2e62(%rip),%rsi        # 4010 <__TMC_END__>
    11ae:	48 29 fe             	sub    %rdi,%rsi
    11b1:	48 89 f0             	mov    %rsi,%rax
    11b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11b8:	48 c1 f8 03          	sar    $0x3,%rax
    11bc:	48 01 c6             	add    %rax,%rsi
    11bf:	48 d1 fe             	sar    %rsi
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 25 2e 00 00 	mov    0x2e25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11cb:	48 85 c0             	test   %rax,%rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmp    *%rax
    11d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	80 3d 25 2e 00 00 00 	cmpb   $0x0,0x2e25(%rip)        # 4010 <__TMC_END__>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   %rbp
    11ee:	48 83 3d 02 2e 00 00 	cmpq   $0x0,0x2e02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 06 2e 00 00 	mov    0x2e06(%rip),%rdi        # 4008 <__dso_handle>
    1202:	e8 a9 fe ff ff       	call   10b0 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	call   1170 <deregister_tm_clones>
    120c:	c6 05 fd 2d 00 00 01 	movb   $0x1,0x2dfd(%rip)        # 4010 <__TMC_END__>
    1213:	5d                   	pop    %rbp
    1214:	c3                   	ret    
    1215:	0f 1f 00             	nopl   (%rax)
    1218:	c3                   	ret    
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	e9 77 ff ff ff       	jmp    11a0 <register_tm_clones>

0000000000001229 <main>:
    1229:	f3 0f 1e fa          	endbr64 
    122d:	41 57                	push   %r15
    122f:	41 56                	push   %r14
    1231:	41 55                	push   %r13
    1233:	41 54                	push   %r12
    1235:	55                   	push   %rbp
    1236:	53                   	push   %rbx
    1237:	4c 8d 9c 24 00 f0 85 	lea    -0x7a1000(%rsp),%r11
    123e:	ff 
    123f:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1246:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    124b:	4c 39 dc             	cmp    %r11,%rsp
    124e:	75 ef                	jne    123f <main+0x16>
    1250:	48 81 ec 18 02 00 00 	sub    $0x218,%rsp
    1257:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    125e:	00 00 
    1260:	48 89 84 24 08 12 7a 	mov    %rax,0x7a1208(%rsp)
    1267:	00 
    1268:	31 c0                	xor    %eax,%eax
    126a:	bf 00 00 00 00       	mov    $0x0,%edi
    126f:	e8 9c fe ff ff       	call   1110 <time@plt>
    1274:	89 c7                	mov    %eax,%edi
    1276:	e8 75 fe ff ff       	call   10f0 <srand@plt>
    127b:	49 89 e4             	mov    %rsp,%r12
    127e:	4c 89 e7             	mov    %r12,%rdi
    1281:	e8 c6 01 00 00       	call   144c <setMatrixRandom>
    1286:	4c 8d ac 24 80 84 1e 	lea    0x1e8480(%rsp),%r13
    128d:	00 
    128e:	4c 89 ef             	mov    %r13,%rdi
    1291:	e8 b6 01 00 00       	call   144c <setMatrixRandom>
    1296:	48 8d 9c 24 00 09 3d 	lea    0x3d0900(%rsp),%rbx
    129d:	00 
    129e:	48 89 df             	mov    %rbx,%rdi
    12a1:	e8 65 01 00 00       	call   140b <setMatrixZero>
    12a6:	48 8d ac 24 80 8d 5b 	lea    0x5b8d80(%rsp),%rbp
    12ad:	00 
    12ae:	48 89 ef             	mov    %rbp,%rdi
    12b1:	e8 55 01 00 00       	call   140b <setMatrixZero>
    12b6:	48 8d 3d 47 0d 00 00 	lea    0xd47(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    12bd:	e8 fe fd ff ff       	call   10c0 <puts@plt>
    12c2:	e8 09 fe ff ff       	call   10d0 <clock@plt>
    12c7:	49 89 c6             	mov    %rax,%r14
    12ca:	48 89 da             	mov    %rbx,%rdx
    12cd:	4c 89 ee             	mov    %r13,%rsi
    12d0:	4c 89 e7             	mov    %r12,%rdi
    12d3:	e8 1d 03 00 00       	call   15f5 <matrixMultIJK>
    12d8:	e8 f3 fd ff ff       	call   10d0 <clock@plt>
    12dd:	4c 29 f0             	sub    %r14,%rax
    12e0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    12e4:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    12e9:	f2 0f 5e 05 5f 0d 00 	divsd  0xd5f(%rip),%xmm0        # 2050 <_IO_stdin_used+0x50>
    12f0:	00 
    12f1:	66 49 0f 7e c7       	movq   %xmm0,%r15
    12f6:	4c 8d 35 1a 0d 00 00 	lea    0xd1a(%rip),%r14        # 2017 <_IO_stdin_used+0x17>
    12fd:	4c 89 f6             	mov    %r14,%rsi
    1300:	bf 01 00 00 00       	mov    $0x1,%edi
    1305:	b8 01 00 00 00       	mov    $0x1,%eax
    130a:	e8 11 fe ff ff       	call   1120 <__printf_chk@plt>
    130f:	48 8d 3d 10 0d 00 00 	lea    0xd10(%rip),%rdi        # 2026 <_IO_stdin_used+0x26>
    1316:	e8 a5 fd ff ff       	call   10c0 <puts@plt>
    131b:	48 89 ea             	mov    %rbp,%rdx
    131e:	4c 89 ee             	mov    %r13,%rsi
    1321:	4c 89 e7             	mov    %r12,%rdi
    1324:	e8 5c 03 00 00       	call   1685 <matrixMultKIJ>
    1329:	66 49 0f 6e c7       	movq   %r15,%xmm0
    132e:	4c 89 f6             	mov    %r14,%rsi
    1331:	bf 01 00 00 00       	mov    $0x1,%edi
    1336:	b8 01 00 00 00       	mov    $0x1,%eax
    133b:	e8 e0 fd ff ff       	call   1120 <__printf_chk@plt>
    1340:	48 89 ee             	mov    %rbp,%rsi
    1343:	48 89 df             	mov    %rbx,%rdi
    1346:	e8 63 01 00 00       	call   14ae <equalMatrices>
    134b:	0f b6 d0             	movzbl %al,%edx
    134e:	48 8d 35 e4 0c 00 00 	lea    0xce4(%rip),%rsi        # 2039 <_IO_stdin_used+0x39>
    1355:	bf 01 00 00 00       	mov    $0x1,%edi
    135a:	b8 00 00 00 00       	mov    $0x0,%eax
    135f:	e8 bc fd ff ff       	call   1120 <__printf_chk@plt>
    1364:	48 8b 84 24 08 12 7a 	mov    0x7a1208(%rsp),%rax
    136b:	00 
    136c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1373:	00 00 
    1375:	75 17                	jne    138e <main+0x165>
    1377:	b8 00 00 00 00       	mov    $0x0,%eax
    137c:	48 81 c4 18 12 7a 00 	add    $0x7a1218,%rsp
    1383:	5b                   	pop    %rbx
    1384:	5d                   	pop    %rbp
    1385:	41 5c                	pop    %r12
    1387:	41 5d                	pop    %r13
    1389:	41 5e                	pop    %r14
    138b:	41 5f                	pop    %r15
    138d:	c3                   	ret    
    138e:	e8 4d fd ff ff       	call   10e0 <__stack_chk_fail@plt>

0000000000001393 <getRandomDouble>:
    1393:	f3 0f 1e fa          	endbr64 
    1397:	48 83 ec 08          	sub    $0x8,%rsp
    139b:	e8 90 fd ff ff       	call   1130 <rand@plt>
    13a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    13a4:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    13a8:	f2 0f 5e 05 b0 0c 00 	divsd  0xcb0(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
    13af:	00 
    13b0:	f2 0f 59 05 b0 0c 00 	mulsd  0xcb0(%rip),%xmm0        # 2068 <_IO_stdin_used+0x68>
    13b7:	00 
    13b8:	48 83 c4 08          	add    $0x8,%rsp
    13bc:	c3                   	ret    

00000000000013bd <createMatrixZero>:
    13bd:	f3 0f 1e fa          	endbr64 
    13c1:	41 54                	push   %r12
    13c3:	55                   	push   %rbp
    13c4:	53                   	push   %rbx
    13c5:	be 08 00 00 00       	mov    $0x8,%esi
    13ca:	bf f4 01 00 00       	mov    $0x1f4,%edi
    13cf:	e8 2c fd ff ff       	call   1100 <calloc@plt>
    13d4:	49 89 c4             	mov    %rax,%r12
    13d7:	bb 00 00 00 00       	mov    $0x0,%ebx
    13dc:	eb 1d                	jmp    13fb <createMatrixZero+0x3e>
    13de:	48 63 c3             	movslq %ebx,%rax
    13e1:	49 8d 2c c4          	lea    (%r12,%rax,8),%rbp
    13e5:	be 08 00 00 00       	mov    $0x8,%esi
    13ea:	bf f4 01 00 00       	mov    $0x1f4,%edi
    13ef:	e8 0c fd ff ff       	call   1100 <calloc@plt>
    13f4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    13f8:	83 c3 01             	add    $0x1,%ebx
    13fb:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    1401:	7e db                	jle    13de <createMatrixZero+0x21>
    1403:	4c 89 e0             	mov    %r12,%rax
    1406:	5b                   	pop    %rbx
    1407:	5d                   	pop    %rbp
    1408:	41 5c                	pop    %r12
    140a:	c3                   	ret    

000000000000140b <setMatrixZero>:
    140b:	f3 0f 1e fa          	endbr64 
    140f:	be 00 00 00 00       	mov    $0x0,%esi
    1414:	eb 26                	jmp    143c <setMatrixZero+0x31>
    1416:	48 63 c6             	movslq %esi,%rax
    1419:	48 69 c0 a0 0f 00 00 	imul   $0xfa0,%rax,%rax
    1420:	48 01 f8             	add    %rdi,%rax
    1423:	48 63 ca             	movslq %edx,%rcx
    1426:	48 c7 04 c8 00 00 00 	movq   $0x0,(%rax,%rcx,8)
    142d:	00 
    142e:	83 c2 01             	add    $0x1,%edx
    1431:	81 fa f3 01 00 00    	cmp    $0x1f3,%edx
    1437:	7e dd                	jle    1416 <setMatrixZero+0xb>
    1439:	83 c6 01             	add    $0x1,%esi
    143c:	81 fe f3 01 00 00    	cmp    $0x1f3,%esi
    1442:	7f 07                	jg     144b <setMatrixZero+0x40>
    1444:	ba 00 00 00 00       	mov    $0x0,%edx
    1449:	eb e6                	jmp    1431 <setMatrixZero+0x26>
    144b:	c3                   	ret    

000000000000144c <setMatrixRandom>:
    144c:	f3 0f 1e fa          	endbr64 
    1450:	41 55                	push   %r13
    1452:	41 54                	push   %r12
    1454:	55                   	push   %rbp
    1455:	53                   	push   %rbx
    1456:	48 83 ec 08          	sub    $0x8,%rsp
    145a:	49 89 fd             	mov    %rdi,%r13
    145d:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    1463:	eb 2e                	jmp    1493 <setMatrixRandom+0x47>
    1465:	49 63 dc             	movslq %r12d,%rbx
    1468:	48 69 db a0 0f 00 00 	imul   $0xfa0,%rbx,%rbx
    146f:	4c 01 eb             	add    %r13,%rbx
    1472:	b8 00 00 00 00       	mov    $0x0,%eax
    1477:	e8 17 ff ff ff       	call   1393 <getRandomDouble>
    147c:	48 63 c5             	movslq %ebp,%rax
    147f:	f2 0f 11 04 c3       	movsd  %xmm0,(%rbx,%rax,8)
    1484:	83 c5 01             	add    $0x1,%ebp
    1487:	81 fd f3 01 00 00    	cmp    $0x1f3,%ebp
    148d:	7e d6                	jle    1465 <setMatrixRandom+0x19>
    148f:	41 83 c4 01          	add    $0x1,%r12d
    1493:	41 81 fc f3 01 00 00 	cmp    $0x1f3,%r12d
    149a:	7f 07                	jg     14a3 <setMatrixRandom+0x57>
    149c:	bd 00 00 00 00       	mov    $0x0,%ebp
    14a1:	eb e4                	jmp    1487 <setMatrixRandom+0x3b>
    14a3:	48 83 c4 08          	add    $0x8,%rsp
    14a7:	5b                   	pop    %rbx
    14a8:	5d                   	pop    %rbp
    14a9:	41 5c                	pop    %r12
    14ab:	41 5d                	pop    %r13
    14ad:	c3                   	ret    

00000000000014ae <equalMatrices>:
    14ae:	f3 0f 1e fa          	endbr64 
    14b2:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    14b8:	41 81 f9 f3 01 00 00 	cmp    $0x1f3,%r9d
    14bf:	7f 45                	jg     1506 <equalMatrices+0x58>
    14c1:	ba 00 00 00 00       	mov    $0x0,%edx
    14c6:	eb 03                	jmp    14cb <equalMatrices+0x1d>
    14c8:	83 c2 01             	add    $0x1,%edx
    14cb:	81 fa f3 01 00 00    	cmp    $0x1f3,%edx
    14d1:	7f 2d                	jg     1500 <equalMatrices+0x52>
    14d3:	49 63 c1             	movslq %r9d,%rax
    14d6:	48 69 c0 a0 0f 00 00 	imul   $0xfa0,%rax,%rax
    14dd:	4c 8d 04 07          	lea    (%rdi,%rax,1),%r8
    14e1:	48 63 ca             	movslq %edx,%rcx
    14e4:	f2 41 0f 10 0c c8    	movsd  (%r8,%rcx,8),%xmm1
    14ea:	48 01 f0             	add    %rsi,%rax
    14ed:	f2 0f 10 04 c8       	movsd  (%rax,%rcx,8),%xmm0
    14f2:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    14f6:	7a 02                	jp     14fa <equalMatrices+0x4c>
    14f8:	74 ce                	je     14c8 <equalMatrices+0x1a>
    14fa:	b8 00 00 00 00       	mov    $0x0,%eax
    14ff:	c3                   	ret    
    1500:	41 83 c1 01          	add    $0x1,%r9d
    1504:	eb b2                	jmp    14b8 <equalMatrices+0xa>
    1506:	b8 01 00 00 00       	mov    $0x1,%eax
    150b:	c3                   	ret    

000000000000150c <displayMatrix>:
    150c:	f3 0f 1e fa          	endbr64 
    1510:	41 54                	push   %r12
    1512:	55                   	push   %rbp
    1513:	53                   	push   %rbx
    1514:	49 89 fc             	mov    %rdi,%r12
    1517:	bd 00 00 00 00       	mov    $0x0,%ebp
    151c:	eb 45                	jmp    1563 <displayMatrix+0x57>
    151e:	48 63 c5             	movslq %ebp,%rax
    1521:	48 69 c0 a0 0f 00 00 	imul   $0xfa0,%rax,%rax
    1528:	4c 01 e0             	add    %r12,%rax
    152b:	48 63 d3             	movslq %ebx,%rdx
    152e:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
    1533:	48 8d 35 1e 0b 00 00 	lea    0xb1e(%rip),%rsi        # 2058 <_IO_stdin_used+0x58>
    153a:	bf 01 00 00 00       	mov    $0x1,%edi
    153f:	b8 01 00 00 00       	mov    $0x1,%eax
    1544:	e8 d7 fb ff ff       	call   1120 <__printf_chk@plt>
    1549:	83 c3 01             	add    $0x1,%ebx
    154c:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    1552:	7e ca                	jle    151e <displayMatrix+0x12>
    1554:	48 8d 3d ca 0a 00 00 	lea    0xaca(%rip),%rdi        # 2025 <_IO_stdin_used+0x25>
    155b:	e8 60 fb ff ff       	call   10c0 <puts@plt>
    1560:	83 c5 01             	add    $0x1,%ebp
    1563:	81 fd f3 01 00 00    	cmp    $0x1f3,%ebp
    1569:	7f 07                	jg     1572 <displayMatrix+0x66>
    156b:	bb 00 00 00 00       	mov    $0x0,%ebx
    1570:	eb da                	jmp    154c <displayMatrix+0x40>
    1572:	48 8d 3d ac 0a 00 00 	lea    0xaac(%rip),%rdi        # 2025 <_IO_stdin_used+0x25>
    1579:	e8 42 fb ff ff       	call   10c0 <puts@plt>
    157e:	5b                   	pop    %rbx
    157f:	5d                   	pop    %rbp
    1580:	41 5c                	pop    %r12
    1582:	c3                   	ret    

0000000000001583 <displayMatrixPointer>:
    1583:	f3 0f 1e fa          	endbr64 
    1587:	41 54                	push   %r12
    1589:	55                   	push   %rbp
    158a:	53                   	push   %rbx
    158b:	49 89 fc             	mov    %rdi,%r12
    158e:	bd 00 00 00 00       	mov    $0x0,%ebp
    1593:	eb 40                	jmp    15d5 <displayMatrixPointer+0x52>
    1595:	69 c5 f4 01 00 00    	imul   $0x1f4,%ebp,%eax
    159b:	01 d8                	add    %ebx,%eax
    159d:	48 98                	cltq   
    159f:	f2 41 0f 10 04 c4    	movsd  (%r12,%rax,8),%xmm0
    15a5:	48 8d 35 ac 0a 00 00 	lea    0xaac(%rip),%rsi        # 2058 <_IO_stdin_used+0x58>
    15ac:	bf 01 00 00 00       	mov    $0x1,%edi
    15b1:	b8 01 00 00 00       	mov    $0x1,%eax
    15b6:	e8 65 fb ff ff       	call   1120 <__printf_chk@plt>
    15bb:	83 c3 01             	add    $0x1,%ebx
    15be:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    15c4:	7e cf                	jle    1595 <displayMatrixPointer+0x12>
    15c6:	48 8d 3d 58 0a 00 00 	lea    0xa58(%rip),%rdi        # 2025 <_IO_stdin_used+0x25>
    15cd:	e8 ee fa ff ff       	call   10c0 <puts@plt>
    15d2:	83 c5 01             	add    $0x1,%ebp
    15d5:	81 fd f3 01 00 00    	cmp    $0x1f3,%ebp
    15db:	7f 07                	jg     15e4 <displayMatrixPointer+0x61>
    15dd:	bb 00 00 00 00       	mov    $0x0,%ebx
    15e2:	eb da                	jmp    15be <displayMatrixPointer+0x3b>
    15e4:	48 8d 3d 3a 0a 00 00 	lea    0xa3a(%rip),%rdi        # 2025 <_IO_stdin_used+0x25>
    15eb:	e8 d0 fa ff ff       	call   10c0 <puts@plt>
    15f0:	5b                   	pop    %rbx
    15f1:	5d                   	pop    %rbp
    15f2:	41 5c                	pop    %r12
    15f4:	c3                   	ret    

00000000000015f5 <matrixMultIJK>:
    15f5:	f3 0f 1e fa          	endbr64 
    15f9:	53                   	push   %rbx
    15fa:	49 89 fb             	mov    %rdi,%r11
    15fd:	49 89 f2             	mov    %rsi,%r10
    1600:	48 89 d3             	mov    %rdx,%rbx
    1603:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    1609:	eb 67                	jmp    1672 <matrixMultIJK+0x7d>
    160b:	49 63 c1             	movslq %r9d,%rax
    160e:	48 69 c0 a0 0f 00 00 	imul   $0xfa0,%rax,%rax
    1615:	4c 01 d8             	add    %r11,%rax
    1618:	48 63 f2             	movslq %edx,%rsi
    161b:	48 69 ce a0 0f 00 00 	imul   $0xfa0,%rsi,%rcx
    1622:	4c 01 d1             	add    %r10,%rcx
    1625:	49 63 f8             	movslq %r8d,%rdi
    1628:	f2 0f 10 04 f9       	movsd  (%rcx,%rdi,8),%xmm0
    162d:	f2 0f 59 04 f0       	mulsd  (%rax,%rsi,8),%xmm0
    1632:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1636:	83 c2 01             	add    $0x1,%edx
    1639:	81 fa f3 01 00 00    	cmp    $0x1f3,%edx
    163f:	7e ca                	jle    160b <matrixMultIJK+0x16>
    1641:	49 63 c1             	movslq %r9d,%rax
    1644:	48 69 c0 a0 0f 00 00 	imul   $0xfa0,%rax,%rax
    164b:	48 01 d8             	add    %rbx,%rax
    164e:	49 63 d0             	movslq %r8d,%rdx
    1651:	f2 0f 11 0c d0       	movsd  %xmm1,(%rax,%rdx,8)
    1656:	41 83 c0 01          	add    $0x1,%r8d
    165a:	41 81 f8 f3 01 00 00 	cmp    $0x1f3,%r8d
    1661:	7f 0b                	jg     166e <matrixMultIJK+0x79>
    1663:	ba 00 00 00 00       	mov    $0x0,%edx
    1668:	66 0f ef c9          	pxor   %xmm1,%xmm1
    166c:	eb cb                	jmp    1639 <matrixMultIJK+0x44>
    166e:	41 83 c1 01          	add    $0x1,%r9d
    1672:	41 81 f9 f3 01 00 00 	cmp    $0x1f3,%r9d
    1679:	7f 08                	jg     1683 <matrixMultIJK+0x8e>
    167b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1681:	eb d7                	jmp    165a <matrixMultIJK+0x65>
    1683:	5b                   	pop    %rbx
    1684:	c3                   	ret    

0000000000001685 <matrixMultKIJ>:
    1685:	f3 0f 1e fa          	endbr64 
    1689:	49 89 fa             	mov    %rdi,%r10
    168c:	49 89 f3             	mov    %rsi,%r11
    168f:	49 89 d1             	mov    %rdx,%r9
    1692:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1698:	41 81 f8 f3 01 00 00 	cmp    $0x1f3,%r8d
    169f:	7f 73                	jg     1714 <matrixMultKIJ+0x8f>
    16a1:	53                   	push   %rbx
    16a2:	eb 67                	jmp    170b <matrixMultKIJ+0x86>
    16a4:	49 8d 34 39          	lea    (%r9,%rdi,1),%rsi
    16a8:	49 63 c0             	movslq %r8d,%rax
    16ab:	48 69 c0 a0 0f 00 00 	imul   $0xfa0,%rax,%rax
    16b2:	4c 01 d8             	add    %r11,%rax
    16b5:	48 63 ca             	movslq %edx,%rcx
    16b8:	66 0f 28 c1          	movapd %xmm1,%xmm0
    16bc:	f2 0f 59 04 c8       	mulsd  (%rax,%rcx,8),%xmm0
    16c1:	f2 0f 58 04 ce       	addsd  (%rsi,%rcx,8),%xmm0
    16c6:	f2 0f 11 04 ce       	movsd  %xmm0,(%rsi,%rcx,8)
    16cb:	83 c2 01             	add    $0x1,%edx
    16ce:	81 fa f3 01 00 00    	cmp    $0x1f3,%edx
    16d4:	7e ce                	jle    16a4 <matrixMultKIJ+0x1f>
    16d6:	83 c3 01             	add    $0x1,%ebx
    16d9:	81 fb f3 01 00 00    	cmp    $0x1f3,%ebx
    16df:	7f 1d                	jg     16fe <matrixMultKIJ+0x79>
    16e1:	48 63 fb             	movslq %ebx,%rdi
    16e4:	48 69 ff a0 0f 00 00 	imul   $0xfa0,%rdi,%rdi
    16eb:	49 8d 04 3a          	lea    (%r10,%rdi,1),%rax
    16ef:	49 63 d0             	movslq %r8d,%rdx
    16f2:	f2 0f 10 0c d0       	movsd  (%rax,%rdx,8),%xmm1
    16f7:	ba 00 00 00 00       	mov    $0x0,%edx
    16fc:	eb d0                	jmp    16ce <matrixMultKIJ+0x49>
    16fe:	41 83 c0 01          	add    $0x1,%r8d
    1702:	41 81 f8 f3 01 00 00 	cmp    $0x1f3,%r8d
    1709:	7f 07                	jg     1712 <matrixMultKIJ+0x8d>
    170b:	bb 00 00 00 00       	mov    $0x0,%ebx
    1710:	eb c7                	jmp    16d9 <matrixMultKIJ+0x54>
    1712:	5b                   	pop    %rbx
    1713:	c3                   	ret    
    1714:	c3                   	ret    

Disassembly of section .fini:

0000000000001718 <_fini>:
    1718:	f3 0f 1e fa          	endbr64 
    171c:	48 83 ec 08          	sub    $0x8,%rsp
    1720:	48 83 c4 08          	add    $0x8,%rsp
    1724:	c3                   	ret    
