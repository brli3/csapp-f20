
mstore.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <mult2>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 89 f8             	mov    %rdi,%rax
   7:	48 0f af c6          	imul   %rsi,%rax
   b:	c3                   	ret    

000000000000000c <multstore>:
   c:	f3 0f 1e fa          	endbr64 
  10:	53                   	push   %rbx
  11:	48 89 d3             	mov    %rdx,%rbx
  14:	e8 00 00 00 00       	call   19 <multstore+0xd>
  19:	48 89 03             	mov    %rax,(%rbx)
  1c:	5b                   	pop    %rbx
  1d:	c3                   	ret    

000000000000001e <main>:
  1e:	f3 0f 1e fa          	endbr64 
  22:	55                   	push   %rbp
  23:	53                   	push   %rbx
  24:	48 83 ec 18          	sub    $0x18,%rsp
  28:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2f:	00 00 
  31:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  36:	31 c0                	xor    %eax,%eax
  38:	83 ff 02             	cmp    $0x2,%edi
  3b:	7f 1c                	jg     59 <main+0x3b>
  3d:	b8 01 00 00 00       	mov    $0x1,%eax
  42:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  47:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4e:	00 00 
  50:	75 76                	jne    c8 <main+0xaa>
  52:	48 83 c4 18          	add    $0x18,%rsp
  56:	5b                   	pop    %rbx
  57:	5d                   	pop    %rbp
  58:	c3                   	ret    
  59:	48 89 f3             	mov    %rsi,%rbx
  5c:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  60:	ba 0a 00 00 00       	mov    $0xa,%edx
  65:	be 00 00 00 00       	mov    $0x0,%esi
  6a:	e8 00 00 00 00       	call   6f <main+0x51>
  6f:	48 63 e8             	movslq %eax,%rbp
  72:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  76:	ba 0a 00 00 00       	mov    $0xa,%edx
  7b:	be 00 00 00 00       	mov    $0x0,%esi
  80:	e8 00 00 00 00       	call   85 <main+0x67>
  85:	48 63 d8             	movslq %eax,%rbx
  88:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  8f:	00 
  90:	48 89 e2             	mov    %rsp,%rdx
  93:	48 89 de             	mov    %rbx,%rsi
  96:	48 89 ef             	mov    %rbp,%rdi
  99:	e8 00 00 00 00       	call   9e <main+0x80>
  9e:	4c 8b 04 24          	mov    (%rsp),%r8
  a2:	48 89 d9             	mov    %rbx,%rcx
  a5:	48 89 ea             	mov    %rbp,%rdx
  a8:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # af <main+0x91>
  af:	bf 01 00 00 00       	mov    $0x1,%edi
  b4:	b8 00 00 00 00       	mov    $0x0,%eax
  b9:	e8 00 00 00 00       	call   be <main+0xa0>
  be:	b8 00 00 00 00       	mov    $0x0,%eax
  c3:	e9 7a ff ff ff       	jmp    42 <main+0x24>
  c8:	e8 00 00 00 00       	call   cd <main+0xaf>
