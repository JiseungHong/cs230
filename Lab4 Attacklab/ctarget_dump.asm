
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c60 <_init>:
  400c60:	48 83 ec 08          	sub    $0x8,%rsp
  400c64:	48 8b 05 8d 33 20 00 	mov    0x20338d(%rip),%rax        # 603ff8 <_DYNAMIC+0x1d0>
  400c6b:	48 85 c0             	test   %rax,%rax
  400c6e:	74 05                	je     400c75 <_init+0x15>
  400c70:	e8 2b 01 00 00       	callq  400da0 <__gmon_start__@plt>
  400c75:	48 83 c4 08          	add    $0x8,%rsp
  400c79:	c3                   	retq   

Disassembly of section .plt:

0000000000400c80 <strcasecmp@plt-0x10>:
  400c80:	ff 35 82 33 20 00    	pushq  0x203382(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c86:	ff 25 84 33 20 00    	jmpq   *0x203384(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c90 <strcasecmp@plt>:
  400c90:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c96:	68 00 00 00 00       	pushq  $0x0
  400c9b:	e9 e0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ca0 <__errno_location@plt>:
  400ca0:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400ca6:	68 01 00 00 00       	pushq  $0x1
  400cab:	e9 d0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cb0 <srandom@plt>:
  400cb0:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400cb6:	68 02 00 00 00       	pushq  $0x2
  400cbb:	e9 c0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cc0 <strncmp@plt>:
  400cc0:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cc6:	68 03 00 00 00       	pushq  $0x3
  400ccb:	e9 b0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cd0 <strcpy@plt>:
  400cd0:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cd6:	68 04 00 00 00       	pushq  $0x4
  400cdb:	e9 a0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ce0 <puts@plt>:
  400ce0:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400ce6:	68 05 00 00 00       	pushq  $0x5
  400ceb:	e9 90 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cf0 <write@plt>:
  400cf0:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400cf6:	68 06 00 00 00       	pushq  $0x6
  400cfb:	e9 80 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d00 <__stack_chk_fail@plt>:
  400d00:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400d06:	68 07 00 00 00       	pushq  $0x7
  400d0b:	e9 70 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d10 <mmap@plt>:
  400d10:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d16:	68 08 00 00 00       	pushq  $0x8
  400d1b:	e9 60 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d20 <memset@plt>:
  400d20:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d26:	68 09 00 00 00       	pushq  $0x9
  400d2b:	e9 50 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d30 <alarm@plt>:
  400d30:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d36:	68 0a 00 00 00       	pushq  $0xa
  400d3b:	e9 40 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d40 <close@plt>:
  400d40:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d46:	68 0b 00 00 00       	pushq  $0xb
  400d4b:	e9 30 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d50 <read@plt>:
  400d50:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d56:	68 0c 00 00 00       	pushq  $0xc
  400d5b:	e9 20 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d60 <__libc_start_main@plt>:
  400d60:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d66:	68 0d 00 00 00       	pushq  $0xd
  400d6b:	e9 10 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d70 <signal@plt>:
  400d70:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d76:	68 0e 00 00 00       	pushq  $0xe
  400d7b:	e9 00 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d80 <gethostbyname@plt>:
  400d80:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d86:	68 0f 00 00 00       	pushq  $0xf
  400d8b:	e9 f0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d90 <__memmove_chk@plt>:
  400d90:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d96:	68 10 00 00 00       	pushq  $0x10
  400d9b:	e9 e0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400da0 <__gmon_start__@plt>:
  400da0:	ff 25 fa 32 20 00    	jmpq   *0x2032fa(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400da6:	68 11 00 00 00       	pushq  $0x11
  400dab:	e9 d0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400db0 <strtol@plt>:
  400db0:	ff 25 f2 32 20 00    	jmpq   *0x2032f2(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400db6:	68 12 00 00 00       	pushq  $0x12
  400dbb:	e9 c0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400dc0 <memcpy@plt>:
  400dc0:	ff 25 ea 32 20 00    	jmpq   *0x2032ea(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400dc6:	68 13 00 00 00       	pushq  $0x13
  400dcb:	e9 b0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400dd0 <time@plt>:
  400dd0:	ff 25 e2 32 20 00    	jmpq   *0x2032e2(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400dd6:	68 14 00 00 00       	pushq  $0x14
  400ddb:	e9 a0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400de0 <random@plt>:
  400de0:	ff 25 da 32 20 00    	jmpq   *0x2032da(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400de6:	68 15 00 00 00       	pushq  $0x15
  400deb:	e9 90 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400df0 <_IO_getc@plt>:
  400df0:	ff 25 d2 32 20 00    	jmpq   *0x2032d2(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400df6:	68 16 00 00 00       	pushq  $0x16
  400dfb:	e9 80 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e00 <__isoc99_sscanf@plt>:
  400e00:	ff 25 ca 32 20 00    	jmpq   *0x2032ca(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400e06:	68 17 00 00 00       	pushq  $0x17
  400e0b:	e9 70 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e10 <munmap@plt>:
  400e10:	ff 25 c2 32 20 00    	jmpq   *0x2032c2(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e16:	68 18 00 00 00       	pushq  $0x18
  400e1b:	e9 60 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e20 <__printf_chk@plt>:
  400e20:	ff 25 ba 32 20 00    	jmpq   *0x2032ba(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e26:	68 19 00 00 00       	pushq  $0x19
  400e2b:	e9 50 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e30 <fopen@plt>:
  400e30:	ff 25 b2 32 20 00    	jmpq   *0x2032b2(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e36:	68 1a 00 00 00       	pushq  $0x1a
  400e3b:	e9 40 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e40 <getopt@plt>:
  400e40:	ff 25 aa 32 20 00    	jmpq   *0x2032aa(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e46:	68 1b 00 00 00       	pushq  $0x1b
  400e4b:	e9 30 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e50 <strtoul@plt>:
  400e50:	ff 25 a2 32 20 00    	jmpq   *0x2032a2(%rip)        # 6040f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e56:	68 1c 00 00 00       	pushq  $0x1c
  400e5b:	e9 20 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e60 <gethostname@plt>:
  400e60:	ff 25 9a 32 20 00    	jmpq   *0x20329a(%rip)        # 604100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e66:	68 1d 00 00 00       	pushq  $0x1d
  400e6b:	e9 10 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e70 <exit@plt>:
  400e70:	ff 25 92 32 20 00    	jmpq   *0x203292(%rip)        # 604108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e76:	68 1e 00 00 00       	pushq  $0x1e
  400e7b:	e9 00 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e80 <connect@plt>:
  400e80:	ff 25 8a 32 20 00    	jmpq   *0x20328a(%rip)        # 604110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e86:	68 1f 00 00 00       	pushq  $0x1f
  400e8b:	e9 f0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e90 <__fprintf_chk@plt>:
  400e90:	ff 25 82 32 20 00    	jmpq   *0x203282(%rip)        # 604118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e96:	68 20 00 00 00       	pushq  $0x20
  400e9b:	e9 e0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ea0 <__sprintf_chk@plt>:
  400ea0:	ff 25 7a 32 20 00    	jmpq   *0x20327a(%rip)        # 604120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400ea6:	68 21 00 00 00       	pushq  $0x21
  400eab:	e9 d0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400eb0 <socket@plt>:
  400eb0:	ff 25 72 32 20 00    	jmpq   *0x203272(%rip)        # 604128 <_GLOBAL_OFFSET_TABLE_+0x128>
  400eb6:	68 22 00 00 00       	pushq  $0x22
  400ebb:	e9 c0 fd ff ff       	jmpq   400c80 <_init+0x20>

Disassembly of section .text:

0000000000400ec0 <_start>:
  400ec0:	31 ed                	xor    %ebp,%ebp
  400ec2:	49 89 d1             	mov    %rdx,%r9
  400ec5:	5e                   	pop    %rsi
  400ec6:	48 89 e2             	mov    %rsp,%rdx
  400ec9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ecd:	50                   	push   %rax
  400ece:	54                   	push   %rsp
  400ecf:	49 c7 c0 30 2e 40 00 	mov    $0x402e30,%r8
  400ed6:	48 c7 c1 c0 2d 40 00 	mov    $0x402dc0,%rcx
  400edd:	48 c7 c7 bf 11 40 00 	mov    $0x4011bf,%rdi
  400ee4:	e8 77 fe ff ff       	callq  400d60 <__libc_start_main@plt>
  400ee9:	f4                   	hlt    
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <deregister_tm_clones>:
  400ef0:	b8 b7 44 60 00       	mov    $0x6044b7,%eax
  400ef5:	55                   	push   %rbp
  400ef6:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400efc:	48 83 f8 0e          	cmp    $0xe,%rax
  400f00:	48 89 e5             	mov    %rsp,%rbp
  400f03:	77 02                	ja     400f07 <deregister_tm_clones+0x17>
  400f05:	5d                   	pop    %rbp
  400f06:	c3                   	retq   
  400f07:	b8 00 00 00 00       	mov    $0x0,%eax
  400f0c:	48 85 c0             	test   %rax,%rax
  400f0f:	74 f4                	je     400f05 <deregister_tm_clones+0x15>
  400f11:	5d                   	pop    %rbp
  400f12:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400f17:	ff e0                	jmpq   *%rax
  400f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f20 <register_tm_clones>:
  400f20:	b8 b0 44 60 00       	mov    $0x6044b0,%eax
  400f25:	55                   	push   %rbp
  400f26:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400f2c:	48 c1 f8 03          	sar    $0x3,%rax
  400f30:	48 89 e5             	mov    %rsp,%rbp
  400f33:	48 89 c2             	mov    %rax,%rdx
  400f36:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400f3a:	48 01 d0             	add    %rdx,%rax
  400f3d:	48 d1 f8             	sar    %rax
  400f40:	75 02                	jne    400f44 <register_tm_clones+0x24>
  400f42:	5d                   	pop    %rbp
  400f43:	c3                   	retq   
  400f44:	ba 00 00 00 00       	mov    $0x0,%edx
  400f49:	48 85 d2             	test   %rdx,%rdx
  400f4c:	74 f4                	je     400f42 <register_tm_clones+0x22>
  400f4e:	5d                   	pop    %rbp
  400f4f:	48 89 c6             	mov    %rax,%rsi
  400f52:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400f57:	ff e2                	jmpq   *%rdx
  400f59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f60 <__do_global_dtors_aux>:
  400f60:	80 3d 89 35 20 00 00 	cmpb   $0x0,0x203589(%rip)        # 6044f0 <completed.6982>
  400f67:	75 11                	jne    400f7a <__do_global_dtors_aux+0x1a>
  400f69:	55                   	push   %rbp
  400f6a:	48 89 e5             	mov    %rsp,%rbp
  400f6d:	e8 7e ff ff ff       	callq  400ef0 <deregister_tm_clones>
  400f72:	5d                   	pop    %rbp
  400f73:	c6 05 76 35 20 00 01 	movb   $0x1,0x203576(%rip)        # 6044f0 <completed.6982>
  400f7a:	f3 c3                	repz retq 
  400f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f80 <frame_dummy>:
  400f80:	48 83 3d 98 2e 20 00 	cmpq   $0x0,0x202e98(%rip)        # 603e20 <__JCR_END__>
  400f87:	00 
  400f88:	74 1e                	je     400fa8 <frame_dummy+0x28>
  400f8a:	b8 00 00 00 00       	mov    $0x0,%eax
  400f8f:	48 85 c0             	test   %rax,%rax
  400f92:	74 14                	je     400fa8 <frame_dummy+0x28>
  400f94:	55                   	push   %rbp
  400f95:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400f9a:	48 89 e5             	mov    %rsp,%rbp
  400f9d:	ff d0                	callq  *%rax
  400f9f:	5d                   	pop    %rbp
  400fa0:	e9 7b ff ff ff       	jmpq   400f20 <register_tm_clones>
  400fa5:	0f 1f 00             	nopl   (%rax)
  400fa8:	e9 73 ff ff ff       	jmpq   400f20 <register_tm_clones>
  400fad:	0f 1f 00             	nopl   (%rax)

0000000000400fb0 <usage>:
  400fb0:	48 83 ec 08          	sub    $0x8,%rsp
  400fb4:	48 89 fa             	mov    %rdi,%rdx
  400fb7:	83 3d 6a 35 20 00 00 	cmpl   $0x0,0x20356a(%rip)        # 604528 <is_checker>
  400fbe:	74 3e                	je     400ffe <usage+0x4e>
  400fc0:	be 48 2e 40 00       	mov    $0x402e48,%esi
  400fc5:	bf 01 00 00 00       	mov    $0x1,%edi
  400fca:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcf:	e8 4c fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fd4:	bf 80 2e 40 00       	mov    $0x402e80,%edi
  400fd9:	e8 02 fd ff ff       	callq  400ce0 <puts@plt>
  400fde:	bf f8 2f 40 00       	mov    $0x402ff8,%edi
  400fe3:	e8 f8 fc ff ff       	callq  400ce0 <puts@plt>
  400fe8:	bf a8 2e 40 00       	mov    $0x402ea8,%edi
  400fed:	e8 ee fc ff ff       	callq  400ce0 <puts@plt>
  400ff2:	bf 12 30 40 00       	mov    $0x403012,%edi
  400ff7:	e8 e4 fc ff ff       	callq  400ce0 <puts@plt>
  400ffc:	eb 32                	jmp    401030 <usage+0x80>
  400ffe:	be 2e 30 40 00       	mov    $0x40302e,%esi
  401003:	bf 01 00 00 00       	mov    $0x1,%edi
  401008:	b8 00 00 00 00       	mov    $0x0,%eax
  40100d:	e8 0e fe ff ff       	callq  400e20 <__printf_chk@plt>
  401012:	bf d0 2e 40 00       	mov    $0x402ed0,%edi
  401017:	e8 c4 fc ff ff       	callq  400ce0 <puts@plt>
  40101c:	bf f8 2e 40 00       	mov    $0x402ef8,%edi
  401021:	e8 ba fc ff ff       	callq  400ce0 <puts@plt>
  401026:	bf 4c 30 40 00       	mov    $0x40304c,%edi
  40102b:	e8 b0 fc ff ff       	callq  400ce0 <puts@plt>
  401030:	bf 00 00 00 00       	mov    $0x0,%edi
  401035:	e8 36 fe ff ff       	callq  400e70 <exit@plt>

000000000040103a <initialize_target>:
  40103a:	55                   	push   %rbp
  40103b:	53                   	push   %rbx
  40103c:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  401043:	89 f5                	mov    %esi,%ebp
  401045:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40104c:	00 00 
  40104e:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401055:	00 
  401056:	31 c0                	xor    %eax,%eax
  401058:	89 3d ba 34 20 00    	mov    %edi,0x2034ba(%rip)        # 604518 <check_level>
  40105e:	8b 3d 04 31 20 00    	mov    0x203104(%rip),%edi        # 604168 <target_id>
  401064:	e8 2a 1d 00 00       	callq  402d93 <gencookie>
  401069:	89 05 b5 34 20 00    	mov    %eax,0x2034b5(%rip)        # 604524 <cookie>
  40106f:	89 c7                	mov    %eax,%edi
  401071:	e8 1d 1d 00 00       	callq  402d93 <gencookie>
  401076:	89 05 a4 34 20 00    	mov    %eax,0x2034a4(%rip)        # 604520 <authkey>
  40107c:	8b 05 e6 30 20 00    	mov    0x2030e6(%rip),%eax        # 604168 <target_id>
  401082:	8d 78 01             	lea    0x1(%rax),%edi
  401085:	e8 26 fc ff ff       	callq  400cb0 <srandom@plt>
  40108a:	e8 51 fd ff ff       	callq  400de0 <random@plt>
  40108f:	89 c7                	mov    %eax,%edi
  401091:	e8 03 03 00 00       	callq  401399 <scramble>
  401096:	89 c3                	mov    %eax,%ebx
  401098:	85 ed                	test   %ebp,%ebp
  40109a:	74 18                	je     4010b4 <initialize_target+0x7a>
  40109c:	bf 00 00 00 00       	mov    $0x0,%edi
  4010a1:	e8 2a fd ff ff       	callq  400dd0 <time@plt>
  4010a6:	89 c7                	mov    %eax,%edi
  4010a8:	e8 03 fc ff ff       	callq  400cb0 <srandom@plt>
  4010ad:	e8 2e fd ff ff       	callq  400de0 <random@plt>
  4010b2:	eb 05                	jmp    4010b9 <initialize_target+0x7f>
  4010b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4010b9:	01 c3                	add    %eax,%ebx
  4010bb:	0f b7 db             	movzwl %bx,%ebx
  4010be:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  4010c5:	89 c0                	mov    %eax,%eax
  4010c7:	48 89 05 d2 33 20 00 	mov    %rax,0x2033d2(%rip)        # 6044a0 <buf_offset>
  4010ce:	c6 05 73 40 20 00 63 	movb   $0x63,0x204073(%rip)        # 605148 <target_prefix>
  4010d5:	83 3d cc 33 20 00 00 	cmpl   $0x0,0x2033cc(%rip)        # 6044a8 <notify>
  4010dc:	0f 84 bb 00 00 00    	je     40119d <initialize_target+0x163>
  4010e2:	83 3d 3f 34 20 00 00 	cmpl   $0x0,0x20343f(%rip)        # 604528 <is_checker>
  4010e9:	0f 85 ae 00 00 00    	jne    40119d <initialize_target+0x163>
  4010ef:	be 00 01 00 00       	mov    $0x100,%esi
  4010f4:	48 89 e7             	mov    %rsp,%rdi
  4010f7:	e8 64 fd ff ff       	callq  400e60 <gethostname@plt>
  4010fc:	85 c0                	test   %eax,%eax
  4010fe:	74 25                	je     401125 <initialize_target+0xeb>
  401100:	bf 28 2f 40 00       	mov    $0x402f28,%edi
  401105:	e8 d6 fb ff ff       	callq  400ce0 <puts@plt>
  40110a:	bf 08 00 00 00       	mov    $0x8,%edi
  40110f:	e8 5c fd ff ff       	callq  400e70 <exit@plt>
  401114:	48 89 e6             	mov    %rsp,%rsi
  401117:	e8 74 fb ff ff       	callq  400c90 <strcasecmp@plt>
  40111c:	85 c0                	test   %eax,%eax
  40111e:	74 21                	je     401141 <initialize_target+0x107>
  401120:	83 c3 01             	add    $0x1,%ebx
  401123:	eb 05                	jmp    40112a <initialize_target+0xf0>
  401125:	bb 00 00 00 00       	mov    $0x0,%ebx
  40112a:	48 63 c3             	movslq %ebx,%rax
  40112d:	48 8b 3c c5 80 41 60 	mov    0x604180(,%rax,8),%rdi
  401134:	00 
  401135:	48 85 ff             	test   %rdi,%rdi
  401138:	75 da                	jne    401114 <initialize_target+0xda>
  40113a:	b8 00 00 00 00       	mov    $0x0,%eax
  40113f:	eb 05                	jmp    401146 <initialize_target+0x10c>
  401141:	b8 01 00 00 00       	mov    $0x1,%eax
  401146:	85 c0                	test   %eax,%eax
  401148:	75 1c                	jne    401166 <initialize_target+0x12c>
  40114a:	48 89 e2             	mov    %rsp,%rdx
  40114d:	be 60 2f 40 00       	mov    $0x402f60,%esi
  401152:	bf 01 00 00 00       	mov    $0x1,%edi
  401157:	e8 c4 fc ff ff       	callq  400e20 <__printf_chk@plt>
  40115c:	bf 08 00 00 00       	mov    $0x8,%edi
  401161:	e8 0a fd ff ff       	callq  400e70 <exit@plt>
  401166:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40116d:	00 
  40116e:	e8 88 19 00 00       	callq  402afb <init_driver>
  401173:	85 c0                	test   %eax,%eax
  401175:	79 26                	jns    40119d <initialize_target+0x163>
  401177:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40117e:	00 
  40117f:	be a0 2f 40 00       	mov    $0x402fa0,%esi
  401184:	bf 01 00 00 00       	mov    $0x1,%edi
  401189:	b8 00 00 00 00       	mov    $0x0,%eax
  40118e:	e8 8d fc ff ff       	callq  400e20 <__printf_chk@plt>
  401193:	bf 08 00 00 00       	mov    $0x8,%edi
  401198:	e8 d3 fc ff ff       	callq  400e70 <exit@plt>
  40119d:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4011a4:	00 
  4011a5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011ac:	00 00 
  4011ae:	74 05                	je     4011b5 <initialize_target+0x17b>
  4011b0:	e8 4b fb ff ff       	callq  400d00 <__stack_chk_fail@plt>
  4011b5:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4011bc:	5b                   	pop    %rbx
  4011bd:	5d                   	pop    %rbp
  4011be:	c3                   	retq   

00000000004011bf <main>:
  4011bf:	41 56                	push   %r14
  4011c1:	41 55                	push   %r13
  4011c3:	41 54                	push   %r12
  4011c5:	55                   	push   %rbp
  4011c6:	53                   	push   %rbx
  4011c7:	41 89 fc             	mov    %edi,%r12d
  4011ca:	48 89 f3             	mov    %rsi,%rbx
  4011cd:	be 6e 1e 40 00       	mov    $0x401e6e,%esi
  4011d2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011d7:	e8 94 fb ff ff       	callq  400d70 <signal@plt>
  4011dc:	be 20 1e 40 00       	mov    $0x401e20,%esi
  4011e1:	bf 07 00 00 00       	mov    $0x7,%edi
  4011e6:	e8 85 fb ff ff       	callq  400d70 <signal@plt>
  4011eb:	be bc 1e 40 00       	mov    $0x401ebc,%esi
  4011f0:	bf 04 00 00 00       	mov    $0x4,%edi
  4011f5:	e8 76 fb ff ff       	callq  400d70 <signal@plt>
  4011fa:	83 3d 27 33 20 00 00 	cmpl   $0x0,0x203327(%rip)        # 604528 <is_checker>
  401201:	74 20                	je     401223 <main+0x64>
  401203:	be 0a 1f 40 00       	mov    $0x401f0a,%esi
  401208:	bf 0e 00 00 00       	mov    $0xe,%edi
  40120d:	e8 5e fb ff ff       	callq  400d70 <signal@plt>
  401212:	bf 05 00 00 00       	mov    $0x5,%edi
  401217:	e8 14 fb ff ff       	callq  400d30 <alarm@plt>
  40121c:	bd 6a 30 40 00       	mov    $0x40306a,%ebp
  401221:	eb 05                	jmp    401228 <main+0x69>
  401223:	bd 65 30 40 00       	mov    $0x403065,%ebp
  401228:	48 8b 05 91 32 20 00 	mov    0x203291(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  40122f:	48 89 05 da 32 20 00 	mov    %rax,0x2032da(%rip)        # 604510 <infile>
  401236:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40123c:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401242:	e9 c6 00 00 00       	jmpq   40130d <main+0x14e>
  401247:	83 e8 61             	sub    $0x61,%eax
  40124a:	3c 10                	cmp    $0x10,%al
  40124c:	0f 87 9c 00 00 00    	ja     4012ee <main+0x12f>
  401252:	0f b6 c0             	movzbl %al,%eax
  401255:	ff 24 c5 b0 30 40 00 	jmpq   *0x4030b0(,%rax,8)
  40125c:	48 8b 3b             	mov    (%rbx),%rdi
  40125f:	e8 4c fd ff ff       	callq  400fb0 <usage>
  401264:	be 2d 33 40 00       	mov    $0x40332d,%esi
  401269:	48 8b 3d 70 32 20 00 	mov    0x203270(%rip),%rdi        # 6044e0 <optarg@@GLIBC_2.2.5>
  401270:	e8 bb fb ff ff       	callq  400e30 <fopen@plt>
  401275:	48 89 05 94 32 20 00 	mov    %rax,0x203294(%rip)        # 604510 <infile>
  40127c:	48 85 c0             	test   %rax,%rax
  40127f:	0f 85 88 00 00 00    	jne    40130d <main+0x14e>
  401285:	48 8b 0d 54 32 20 00 	mov    0x203254(%rip),%rcx        # 6044e0 <optarg@@GLIBC_2.2.5>
  40128c:	ba 72 30 40 00       	mov    $0x403072,%edx
  401291:	be 01 00 00 00       	mov    $0x1,%esi
  401296:	48 8b 3d 4b 32 20 00 	mov    0x20324b(%rip),%rdi        # 6044e8 <stderr@@GLIBC_2.2.5>
  40129d:	e8 ee fb ff ff       	callq  400e90 <__fprintf_chk@plt>
  4012a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4012a7:	e9 e4 00 00 00       	jmpq   401390 <main+0x1d1>
  4012ac:	ba 10 00 00 00       	mov    $0x10,%edx
  4012b1:	be 00 00 00 00       	mov    $0x0,%esi
  4012b6:	48 8b 3d 23 32 20 00 	mov    0x203223(%rip),%rdi        # 6044e0 <optarg@@GLIBC_2.2.5>
  4012bd:	e8 8e fb ff ff       	callq  400e50 <strtoul@plt>
  4012c2:	41 89 c6             	mov    %eax,%r14d
  4012c5:	eb 46                	jmp    40130d <main+0x14e>
  4012c7:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012cc:	be 00 00 00 00       	mov    $0x0,%esi
  4012d1:	48 8b 3d 08 32 20 00 	mov    0x203208(%rip),%rdi        # 6044e0 <optarg@@GLIBC_2.2.5>
  4012d8:	e8 d3 fa ff ff       	callq  400db0 <strtol@plt>
  4012dd:	41 89 c5             	mov    %eax,%r13d
  4012e0:	eb 2b                	jmp    40130d <main+0x14e>
  4012e2:	c7 05 bc 31 20 00 00 	movl   $0x0,0x2031bc(%rip)        # 6044a8 <notify>
  4012e9:	00 00 00 
  4012ec:	eb 1f                	jmp    40130d <main+0x14e>
  4012ee:	0f be d2             	movsbl %dl,%edx
  4012f1:	be 8f 30 40 00       	mov    $0x40308f,%esi
  4012f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4012fb:	b8 00 00 00 00       	mov    $0x0,%eax
  401300:	e8 1b fb ff ff       	callq  400e20 <__printf_chk@plt>
  401305:	48 8b 3b             	mov    (%rbx),%rdi
  401308:	e8 a3 fc ff ff       	callq  400fb0 <usage>
  40130d:	48 89 ea             	mov    %rbp,%rdx
  401310:	48 89 de             	mov    %rbx,%rsi
  401313:	44 89 e7             	mov    %r12d,%edi
  401316:	e8 25 fb ff ff       	callq  400e40 <getopt@plt>
  40131b:	89 c2                	mov    %eax,%edx
  40131d:	3c ff                	cmp    $0xff,%al
  40131f:	0f 85 22 ff ff ff    	jne    401247 <main+0x88>
  401325:	be 00 00 00 00       	mov    $0x0,%esi
  40132a:	44 89 ef             	mov    %r13d,%edi
  40132d:	e8 08 fd ff ff       	callq  40103a <initialize_target>
  401332:	83 3d ef 31 20 00 00 	cmpl   $0x0,0x2031ef(%rip)        # 604528 <is_checker>
  401339:	74 2a                	je     401365 <main+0x1a6>
  40133b:	44 3b 35 de 31 20 00 	cmp    0x2031de(%rip),%r14d        # 604520 <authkey>
  401342:	74 21                	je     401365 <main+0x1a6>
  401344:	44 89 f2             	mov    %r14d,%edx
  401347:	be c8 2f 40 00       	mov    $0x402fc8,%esi
  40134c:	bf 01 00 00 00       	mov    $0x1,%edi
  401351:	b8 00 00 00 00       	mov    $0x0,%eax
  401356:	e8 c5 fa ff ff       	callq  400e20 <__printf_chk@plt>
  40135b:	b8 00 00 00 00       	mov    $0x0,%eax
  401360:	e8 46 07 00 00       	callq  401aab <check_fail>
  401365:	8b 15 b9 31 20 00    	mov    0x2031b9(%rip),%edx        # 604524 <cookie>
  40136b:	be a2 30 40 00       	mov    $0x4030a2,%esi
  401370:	bf 01 00 00 00       	mov    $0x1,%edi
  401375:	b8 00 00 00 00       	mov    $0x0,%eax
  40137a:	e8 a1 fa ff ff       	callq  400e20 <__printf_chk@plt>
  40137f:	48 8b 3d 1a 31 20 00 	mov    0x20311a(%rip),%rdi        # 6044a0 <buf_offset>
  401386:	e8 7f 0c 00 00       	callq  40200a <stable_launch>
  40138b:	b8 00 00 00 00       	mov    $0x0,%eax
  401390:	5b                   	pop    %rbx
  401391:	5d                   	pop    %rbp
  401392:	41 5c                	pop    %r12
  401394:	41 5d                	pop    %r13
  401396:	41 5e                	pop    %r14
  401398:	c3                   	retq   

0000000000401399 <scramble>:
  401399:	b8 00 00 00 00       	mov    $0x0,%eax
  40139e:	eb 11                	jmp    4013b1 <scramble+0x18>
  4013a0:	69 c8 45 7d 00 00    	imul   $0x7d45,%eax,%ecx
  4013a6:	01 f9                	add    %edi,%ecx
  4013a8:	89 c2                	mov    %eax,%edx
  4013aa:	89 4c 94 c8          	mov    %ecx,-0x38(%rsp,%rdx,4)
  4013ae:	83 c0 01             	add    $0x1,%eax
  4013b1:	83 f8 09             	cmp    $0x9,%eax
  4013b4:	76 ea                	jbe    4013a0 <scramble+0x7>
  4013b6:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4013ba:	69 c0 97 2b 00 00    	imul   $0x2b97,%eax,%eax
  4013c0:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4013c4:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4013c8:	69 c0 ee a0 00 00    	imul   $0xa0ee,%eax,%eax
  4013ce:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4013d2:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4013d6:	69 c0 81 9d 00 00    	imul   $0x9d81,%eax,%eax
  4013dc:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4013e0:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4013e4:	69 c0 4a e8 00 00    	imul   $0xe84a,%eax,%eax
  4013ea:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013ee:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4013f2:	69 c0 05 33 00 00    	imul   $0x3305,%eax,%eax
  4013f8:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013fc:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  401400:	69 c0 89 6a 00 00    	imul   $0x6a89,%eax,%eax
  401406:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  40140a:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40140e:	69 c0 0c 10 00 00    	imul   $0x100c,%eax,%eax
  401414:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401418:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40141c:	69 c0 db 60 00 00    	imul   $0x60db,%eax,%eax
  401422:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401426:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40142a:	69 c0 68 fb 00 00    	imul   $0xfb68,%eax,%eax
  401430:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401434:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401438:	69 c0 bc 78 00 00    	imul   $0x78bc,%eax,%eax
  40143e:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401442:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401446:	69 c0 8b 0d 00 00    	imul   $0xd8b,%eax,%eax
  40144c:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401450:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401454:	69 c0 24 7f 00 00    	imul   $0x7f24,%eax,%eax
  40145a:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40145e:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  401462:	69 c0 0e 01 00 00    	imul   $0x10e,%eax,%eax
  401468:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  40146c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401470:	69 c0 5c 89 00 00    	imul   $0x895c,%eax,%eax
  401476:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40147a:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  40147e:	69 c0 26 7a 00 00    	imul   $0x7a26,%eax,%eax
  401484:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  401488:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40148c:	69 c0 83 6b 00 00    	imul   $0x6b83,%eax,%eax
  401492:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401496:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40149a:	69 c0 72 53 00 00    	imul   $0x5372,%eax,%eax
  4014a0:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014a4:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4014a8:	69 c0 9b 60 00 00    	imul   $0x609b,%eax,%eax
  4014ae:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4014b2:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014b6:	69 c0 b3 5f 00 00    	imul   $0x5fb3,%eax,%eax
  4014bc:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014c0:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014c4:	69 c0 85 6f 00 00    	imul   $0x6f85,%eax,%eax
  4014ca:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014ce:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014d2:	69 c0 f9 77 00 00    	imul   $0x77f9,%eax,%eax
  4014d8:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014dc:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014e0:	69 c0 63 5b 00 00    	imul   $0x5b63,%eax,%eax
  4014e6:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014ea:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  4014ee:	69 c0 3d d7 00 00    	imul   $0xd73d,%eax,%eax
  4014f4:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  4014f8:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014fc:	69 c0 45 f3 00 00    	imul   $0xf345,%eax,%eax
  401502:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401506:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  40150a:	69 c0 ad b5 00 00    	imul   $0xb5ad,%eax,%eax
  401510:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  401514:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401518:	69 c0 ac 83 00 00    	imul   $0x83ac,%eax,%eax
  40151e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401522:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401526:	69 c0 e3 ac 00 00    	imul   $0xace3,%eax,%eax
  40152c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401530:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401534:	69 c0 0e 41 00 00    	imul   $0x410e,%eax,%eax
  40153a:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40153e:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  401542:	69 c0 32 76 00 00    	imul   $0x7632,%eax,%eax
  401548:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  40154c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401550:	69 c0 30 9c 00 00    	imul   $0x9c30,%eax,%eax
  401556:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40155a:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40155e:	69 c0 8c b7 00 00    	imul   $0xb78c,%eax,%eax
  401564:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401568:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40156c:	69 c0 15 96 00 00    	imul   $0x9615,%eax,%eax
  401572:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401576:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40157a:	69 c0 25 14 00 00    	imul   $0x1425,%eax,%eax
  401580:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401584:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401588:	69 c0 f2 fb 00 00    	imul   $0xfbf2,%eax,%eax
  40158e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401592:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401596:	69 c0 95 3f 00 00    	imul   $0x3f95,%eax,%eax
  40159c:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015a0:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015a4:	69 c0 92 06 00 00    	imul   $0x692,%eax,%eax
  4015aa:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015ae:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015b2:	69 c0 86 45 00 00    	imul   $0x4586,%eax,%eax
  4015b8:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015bc:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015c0:	69 c0 95 3f 00 00    	imul   $0x3f95,%eax,%eax
  4015c6:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015ca:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4015ce:	69 c0 33 1e 00 00    	imul   $0x1e33,%eax,%eax
  4015d4:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4015d8:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015dc:	69 c0 69 ef 00 00    	imul   $0xef69,%eax,%eax
  4015e2:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015e6:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015ea:	69 c0 db 9e 00 00    	imul   $0x9edb,%eax,%eax
  4015f0:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4015f4:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015f8:	69 c0 18 97 00 00    	imul   $0x9718,%eax,%eax
  4015fe:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401602:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401606:	69 c0 e7 75 00 00    	imul   $0x75e7,%eax,%eax
  40160c:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401610:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401614:	69 c0 af f9 00 00    	imul   $0xf9af,%eax,%eax
  40161a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40161e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401622:	69 c0 92 a2 00 00    	imul   $0xa292,%eax,%eax
  401628:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40162c:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401630:	69 c0 71 dc 00 00    	imul   $0xdc71,%eax,%eax
  401636:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40163a:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  40163e:	69 c0 93 9d 00 00    	imul   $0x9d93,%eax,%eax
  401644:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  401648:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40164c:	69 c0 1d 65 00 00    	imul   $0x651d,%eax,%eax
  401652:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401656:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  40165a:	69 c0 37 69 00 00    	imul   $0x6937,%eax,%eax
  401660:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  401664:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401668:	69 c0 91 25 00 00    	imul   $0x2591,%eax,%eax
  40166e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401672:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  401676:	69 c0 88 cc 00 00    	imul   $0xcc88,%eax,%eax
  40167c:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  401680:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401684:	69 c0 5b 60 00 00    	imul   $0x605b,%eax,%eax
  40168a:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40168e:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401692:	69 c0 18 8e 00 00    	imul   $0x8e18,%eax,%eax
  401698:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40169c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016a0:	69 c0 d2 2e 00 00    	imul   $0x2ed2,%eax,%eax
  4016a6:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016aa:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  4016ae:	69 c0 ca d2 00 00    	imul   $0xd2ca,%eax,%eax
  4016b4:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  4016b8:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016bc:	69 c0 2c 80 00 00    	imul   $0x802c,%eax,%eax
  4016c2:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016c6:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4016ca:	69 c0 52 91 00 00    	imul   $0x9152,%eax,%eax
  4016d0:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4016d4:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016d8:	69 c0 63 bd 00 00    	imul   $0xbd63,%eax,%eax
  4016de:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016e2:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016e6:	69 c0 6c ef 00 00    	imul   $0xef6c,%eax,%eax
  4016ec:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4016f0:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016f4:	69 c0 52 f3 00 00    	imul   $0xf352,%eax,%eax
  4016fa:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4016fe:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  401702:	69 c0 f2 4c 00 00    	imul   $0x4cf2,%eax,%eax
  401708:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  40170c:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  401710:	69 c0 1c ec 00 00    	imul   $0xec1c,%eax,%eax
  401716:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  40171a:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40171e:	69 c0 49 42 00 00    	imul   $0x4249,%eax,%eax
  401724:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401728:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  40172c:	69 c0 3e 9c 00 00    	imul   $0x9c3e,%eax,%eax
  401732:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  401736:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  40173a:	69 c0 4a b2 00 00    	imul   $0xb24a,%eax,%eax
  401740:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  401744:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401748:	69 c0 4d 54 00 00    	imul   $0x544d,%eax,%eax
  40174e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401752:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401756:	69 c0 f3 ed 00 00    	imul   $0xedf3,%eax,%eax
  40175c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401760:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401764:	69 c0 e0 90 00 00    	imul   $0x90e0,%eax,%eax
  40176a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40176e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401772:	69 c0 99 54 00 00    	imul   $0x5499,%eax,%eax
  401778:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40177c:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  401780:	69 c0 57 28 00 00    	imul   $0x2857,%eax,%eax
  401786:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  40178a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40178e:	69 c0 ef dd 00 00    	imul   $0xddef,%eax,%eax
  401794:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401798:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40179c:	69 c0 09 99 00 00    	imul   $0x9909,%eax,%eax
  4017a2:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4017a6:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4017aa:	69 c0 c9 bf 00 00    	imul   $0xbfc9,%eax,%eax
  4017b0:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4017b4:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4017b8:	69 c0 7a 76 00 00    	imul   $0x767a,%eax,%eax
  4017be:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4017c2:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4017c6:	69 c0 7f 0d 00 00    	imul   $0xd7f,%eax,%eax
  4017cc:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4017d0:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  4017d4:	69 c0 33 41 00 00    	imul   $0x4133,%eax,%eax
  4017da:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  4017de:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4017e2:	69 c0 8f 39 00 00    	imul   $0x398f,%eax,%eax
  4017e8:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4017ec:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4017f0:	69 c0 f7 44 00 00    	imul   $0x44f7,%eax,%eax
  4017f6:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4017fa:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4017fe:	69 c0 89 7e 00 00    	imul   $0x7e89,%eax,%eax
  401804:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401808:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40180c:	69 c0 59 27 00 00    	imul   $0x2759,%eax,%eax
  401812:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401816:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40181a:	69 c0 05 a3 00 00    	imul   $0xa305,%eax,%eax
  401820:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401824:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401828:	69 c0 a5 af 00 00    	imul   $0xafa5,%eax,%eax
  40182e:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401832:	ba 00 00 00 00       	mov    $0x0,%edx
  401837:	b8 00 00 00 00       	mov    $0x0,%eax
  40183c:	eb 0b                	jmp    401849 <scramble+0x4b0>
  40183e:	89 d1                	mov    %edx,%ecx
  401840:	8b 4c 8c c8          	mov    -0x38(%rsp,%rcx,4),%ecx
  401844:	01 c8                	add    %ecx,%eax
  401846:	83 c2 01             	add    $0x1,%edx
  401849:	83 fa 09             	cmp    $0x9,%edx
  40184c:	76 f0                	jbe    40183e <scramble+0x4a5>
  40184e:	f3 c3                	repz retq 

0000000000401850 <getbuf>:
  401850:	48 83 ec 38          	sub    $0x38,%rsp
  401854:	48 89 e7             	mov    %rsp,%rdi
  401857:	e8 84 02 00 00       	callq  401ae0 <Gets>
  40185c:	b8 01 00 00 00       	mov    $0x1,%eax
  401861:	48 83 c4 38          	add    $0x38,%rsp
  401865:	c3                   	retq   

0000000000401866 <touch1>:
  401866:	48 83 ec 08          	sub    $0x8,%rsp
  40186a:	c7 05 a8 2c 20 00 01 	movl   $0x1,0x202ca8(%rip)        # 60451c <vlevel>
  401871:	00 00 00 
  401874:	bf 85 31 40 00       	mov    $0x403185,%edi
  401879:	e8 62 f4 ff ff       	callq  400ce0 <puts@plt>
  40187e:	bf 01 00 00 00       	mov    $0x1,%edi
  401883:	e8 ae 04 00 00       	callq  401d36 <validate>
  401888:	bf 00 00 00 00       	mov    $0x0,%edi
  40188d:	e8 de f5 ff ff       	callq  400e70 <exit@plt>

0000000000401892 <touch2>:
  401892:	48 83 ec 08          	sub    $0x8,%rsp
  401896:	89 fa                	mov    %edi,%edx
  401898:	c7 05 7a 2c 20 00 02 	movl   $0x2,0x202c7a(%rip)        # 60451c <vlevel>
  40189f:	00 00 00 
  4018a2:	3b 3d 7c 2c 20 00    	cmp    0x202c7c(%rip),%edi        # 604524 <cookie>
  4018a8:	75 20                	jne    4018ca <touch2+0x38>
  4018aa:	be a8 31 40 00       	mov    $0x4031a8,%esi
  4018af:	bf 01 00 00 00       	mov    $0x1,%edi
  4018b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b9:	e8 62 f5 ff ff       	callq  400e20 <__printf_chk@plt>
  4018be:	bf 02 00 00 00       	mov    $0x2,%edi
  4018c3:	e8 6e 04 00 00       	callq  401d36 <validate>
  4018c8:	eb 1e                	jmp    4018e8 <touch2+0x56>
  4018ca:	be d0 31 40 00       	mov    $0x4031d0,%esi
  4018cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4018d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018d9:	e8 42 f5 ff ff       	callq  400e20 <__printf_chk@plt>
  4018de:	bf 02 00 00 00       	mov    $0x2,%edi
  4018e3:	e8 10 05 00 00       	callq  401df8 <fail>
  4018e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4018ed:	e8 7e f5 ff ff       	callq  400e70 <exit@plt>

00000000004018f2 <hexmatch>:
  4018f2:	41 54                	push   %r12
  4018f4:	55                   	push   %rbp
  4018f5:	53                   	push   %rbx
  4018f6:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4018fa:	41 89 fc             	mov    %edi,%r12d
  4018fd:	48 89 f5             	mov    %rsi,%rbp
  401900:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401907:	00 00 
  401909:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  40190e:	31 c0                	xor    %eax,%eax
  401910:	e8 cb f4 ff ff       	callq  400de0 <random@plt>
  401915:	48 89 c1             	mov    %rax,%rcx
  401918:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  40191f:	0a d7 a3 
  401922:	48 f7 ea             	imul   %rdx
  401925:	48 01 ca             	add    %rcx,%rdx
  401928:	48 c1 fa 06          	sar    $0x6,%rdx
  40192c:	48 89 c8             	mov    %rcx,%rax
  40192f:	48 c1 f8 3f          	sar    $0x3f,%rax
  401933:	48 29 c2             	sub    %rax,%rdx
  401936:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  40193a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40193e:	48 c1 e0 02          	shl    $0x2,%rax
  401942:	48 29 c1             	sub    %rax,%rcx
  401945:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  401949:	45 89 e0             	mov    %r12d,%r8d
  40194c:	b9 a2 31 40 00       	mov    $0x4031a2,%ecx
  401951:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401958:	be 01 00 00 00       	mov    $0x1,%esi
  40195d:	48 89 df             	mov    %rbx,%rdi
  401960:	b8 00 00 00 00       	mov    $0x0,%eax
  401965:	e8 36 f5 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  40196a:	ba 09 00 00 00       	mov    $0x9,%edx
  40196f:	48 89 de             	mov    %rbx,%rsi
  401972:	48 89 ef             	mov    %rbp,%rdi
  401975:	e8 46 f3 ff ff       	callq  400cc0 <strncmp@plt>
  40197a:	85 c0                	test   %eax,%eax
  40197c:	0f 94 c0             	sete   %al
  40197f:	0f b6 c0             	movzbl %al,%eax
  401982:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
  401987:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  40198e:	00 00 
  401990:	74 05                	je     401997 <hexmatch+0xa5>
  401992:	e8 69 f3 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  401997:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  40199b:	5b                   	pop    %rbx
  40199c:	5d                   	pop    %rbp
  40199d:	41 5c                	pop    %r12
  40199f:	c3                   	retq   

00000000004019a0 <touch3>:
  4019a0:	53                   	push   %rbx
  4019a1:	48 89 fb             	mov    %rdi,%rbx
  4019a4:	c7 05 6e 2b 20 00 03 	movl   $0x3,0x202b6e(%rip)        # 60451c <vlevel>
  4019ab:	00 00 00 
  4019ae:	48 89 fe             	mov    %rdi,%rsi
  4019b1:	8b 3d 6d 2b 20 00    	mov    0x202b6d(%rip),%edi        # 604524 <cookie>
  4019b7:	e8 36 ff ff ff       	callq  4018f2 <hexmatch>
  4019bc:	85 c0                	test   %eax,%eax
  4019be:	74 23                	je     4019e3 <touch3+0x43>
  4019c0:	48 89 da             	mov    %rbx,%rdx
  4019c3:	be f8 31 40 00       	mov    $0x4031f8,%esi
  4019c8:	bf 01 00 00 00       	mov    $0x1,%edi
  4019cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019d2:	e8 49 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019d7:	bf 03 00 00 00       	mov    $0x3,%edi
  4019dc:	e8 55 03 00 00       	callq  401d36 <validate>
  4019e1:	eb 21                	jmp    401a04 <touch3+0x64>
  4019e3:	48 89 da             	mov    %rbx,%rdx
  4019e6:	be 20 32 40 00       	mov    $0x403220,%esi
  4019eb:	bf 01 00 00 00       	mov    $0x1,%edi
  4019f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4019f5:	e8 26 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019fa:	bf 03 00 00 00       	mov    $0x3,%edi
  4019ff:	e8 f4 03 00 00       	callq  401df8 <fail>
  401a04:	bf 00 00 00 00       	mov    $0x0,%edi
  401a09:	e8 62 f4 ff ff       	callq  400e70 <exit@plt>

0000000000401a0e <test>:
  401a0e:	48 83 ec 08          	sub    $0x8,%rsp
  401a12:	b8 00 00 00 00       	mov    $0x0,%eax
  401a17:	e8 34 fe ff ff       	callq  401850 <getbuf>
  401a1c:	89 c2                	mov    %eax,%edx
  401a1e:	be 48 32 40 00       	mov    $0x403248,%esi
  401a23:	bf 01 00 00 00       	mov    $0x1,%edi
  401a28:	b8 00 00 00 00       	mov    $0x0,%eax
  401a2d:	e8 ee f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401a32:	48 83 c4 08          	add    $0x8,%rsp
  401a36:	c3                   	retq   
  401a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401a3e:	00 00 

0000000000401a40 <save_char>:
  401a40:	8b 05 fe 36 20 00    	mov    0x2036fe(%rip),%eax        # 605144 <gets_cnt>
  401a46:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a4b:	7f 49                	jg     401a96 <save_char+0x56>
  401a4d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401a50:	89 f9                	mov    %edi,%ecx
  401a52:	c0 e9 04             	shr    $0x4,%cl
  401a55:	83 e1 0f             	and    $0xf,%ecx
  401a58:	0f b6 b1 70 35 40 00 	movzbl 0x403570(%rcx),%esi
  401a5f:	48 63 ca             	movslq %edx,%rcx
  401a62:	40 88 b1 40 45 60 00 	mov    %sil,0x604540(%rcx)
  401a69:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401a6c:	83 e7 0f             	and    $0xf,%edi
  401a6f:	0f b6 b7 70 35 40 00 	movzbl 0x403570(%rdi),%esi
  401a76:	48 63 c9             	movslq %ecx,%rcx
  401a79:	40 88 b1 40 45 60 00 	mov    %sil,0x604540(%rcx)
  401a80:	83 c2 02             	add    $0x2,%edx
  401a83:	48 63 d2             	movslq %edx,%rdx
  401a86:	c6 82 40 45 60 00 20 	movb   $0x20,0x604540(%rdx)
  401a8d:	83 c0 01             	add    $0x1,%eax
  401a90:	89 05 ae 36 20 00    	mov    %eax,0x2036ae(%rip)        # 605144 <gets_cnt>
  401a96:	f3 c3                	repz retq 

0000000000401a98 <save_term>:
  401a98:	8b 05 a6 36 20 00    	mov    0x2036a6(%rip),%eax        # 605144 <gets_cnt>
  401a9e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401aa1:	48 98                	cltq   
  401aa3:	c6 80 40 45 60 00 00 	movb   $0x0,0x604540(%rax)
  401aaa:	c3                   	retq   

0000000000401aab <check_fail>:
  401aab:	48 83 ec 08          	sub    $0x8,%rsp
  401aaf:	0f be 15 92 36 20 00 	movsbl 0x203692(%rip),%edx        # 605148 <target_prefix>
  401ab6:	41 b8 40 45 60 00    	mov    $0x604540,%r8d
  401abc:	8b 0d 56 2a 20 00    	mov    0x202a56(%rip),%ecx        # 604518 <check_level>
  401ac2:	be 6b 32 40 00       	mov    $0x40326b,%esi
  401ac7:	bf 01 00 00 00       	mov    $0x1,%edi
  401acc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad1:	e8 4a f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401ad6:	bf 01 00 00 00       	mov    $0x1,%edi
  401adb:	e8 90 f3 ff ff       	callq  400e70 <exit@plt>

0000000000401ae0 <Gets>:
  401ae0:	41 54                	push   %r12
  401ae2:	55                   	push   %rbp
  401ae3:	53                   	push   %rbx
  401ae4:	49 89 fc             	mov    %rdi,%r12
  401ae7:	c7 05 53 36 20 00 00 	movl   $0x0,0x203653(%rip)        # 605144 <gets_cnt>
  401aee:	00 00 00 
  401af1:	48 89 fb             	mov    %rdi,%rbx
  401af4:	eb 11                	jmp    401b07 <Gets+0x27>
  401af6:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401afa:	88 03                	mov    %al,(%rbx)
  401afc:	0f b6 f8             	movzbl %al,%edi
  401aff:	e8 3c ff ff ff       	callq  401a40 <save_char>
  401b04:	48 89 eb             	mov    %rbp,%rbx
  401b07:	48 8b 3d 02 2a 20 00 	mov    0x202a02(%rip),%rdi        # 604510 <infile>
  401b0e:	e8 dd f2 ff ff       	callq  400df0 <_IO_getc@plt>
  401b13:	83 f8 ff             	cmp    $0xffffffff,%eax
  401b16:	74 05                	je     401b1d <Gets+0x3d>
  401b18:	83 f8 0a             	cmp    $0xa,%eax
  401b1b:	75 d9                	jne    401af6 <Gets+0x16>
  401b1d:	c6 03 00             	movb   $0x0,(%rbx)
  401b20:	b8 00 00 00 00       	mov    $0x0,%eax
  401b25:	e8 6e ff ff ff       	callq  401a98 <save_term>
  401b2a:	4c 89 e0             	mov    %r12,%rax
  401b2d:	5b                   	pop    %rbx
  401b2e:	5d                   	pop    %rbp
  401b2f:	41 5c                	pop    %r12
  401b31:	c3                   	retq   

0000000000401b32 <notify_server>:
  401b32:	53                   	push   %rbx
  401b33:	48 81 ec 30 40 00 00 	sub    $0x4030,%rsp
  401b3a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b41:	00 00 
  401b43:	48 89 84 24 28 40 00 	mov    %rax,0x4028(%rsp)
  401b4a:	00 
  401b4b:	31 c0                	xor    %eax,%eax
  401b4d:	83 3d d4 29 20 00 00 	cmpl   $0x0,0x2029d4(%rip)        # 604528 <is_checker>
  401b54:	0f 85 bb 01 00 00    	jne    401d15 <notify_server+0x1e3>
  401b5a:	89 fb                	mov    %edi,%ebx
  401b5c:	8b 05 e2 35 20 00    	mov    0x2035e2(%rip),%eax        # 605144 <gets_cnt>
  401b62:	83 c0 64             	add    $0x64,%eax
  401b65:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401b6a:	7e 1e                	jle    401b8a <notify_server+0x58>
  401b6c:	be a0 33 40 00       	mov    $0x4033a0,%esi
  401b71:	bf 01 00 00 00       	mov    $0x1,%edi
  401b76:	b8 00 00 00 00       	mov    $0x0,%eax
  401b7b:	e8 a0 f2 ff ff       	callq  400e20 <__printf_chk@plt>
  401b80:	bf 01 00 00 00       	mov    $0x1,%edi
  401b85:	e8 e6 f2 ff ff       	callq  400e70 <exit@plt>
  401b8a:	0f be 05 b7 35 20 00 	movsbl 0x2035b7(%rip),%eax        # 605148 <target_prefix>
  401b91:	83 3d 10 29 20 00 00 	cmpl   $0x0,0x202910(%rip)        # 6044a8 <notify>
  401b98:	74 08                	je     401ba2 <notify_server+0x70>
  401b9a:	8b 15 80 29 20 00    	mov    0x202980(%rip),%edx        # 604520 <authkey>
  401ba0:	eb 05                	jmp    401ba7 <notify_server+0x75>
  401ba2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401ba7:	85 db                	test   %ebx,%ebx
  401ba9:	74 08                	je     401bb3 <notify_server+0x81>
  401bab:	41 b9 81 32 40 00    	mov    $0x403281,%r9d
  401bb1:	eb 06                	jmp    401bb9 <notify_server+0x87>
  401bb3:	41 b9 86 32 40 00    	mov    $0x403286,%r9d
  401bb9:	48 c7 44 24 18 40 45 	movq   $0x604540,0x18(%rsp)
  401bc0:	60 00 
  401bc2:	89 74 24 10          	mov    %esi,0x10(%rsp)
  401bc6:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bca:	89 14 24             	mov    %edx,(%rsp)
  401bcd:	44 8b 05 94 25 20 00 	mov    0x202594(%rip),%r8d        # 604168 <target_id>
  401bd4:	b9 8b 32 40 00       	mov    $0x40328b,%ecx
  401bd9:	ba 00 20 00 00       	mov    $0x2000,%edx
  401bde:	be 01 00 00 00       	mov    $0x1,%esi
  401be3:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401be8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bed:	e8 ae f2 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401bf2:	83 3d af 28 20 00 00 	cmpl   $0x0,0x2028af(%rip)        # 6044a8 <notify>
  401bf9:	0f 84 86 00 00 00    	je     401c85 <notify_server+0x153>
  401bff:	85 db                	test   %ebx,%ebx
  401c01:	74 70                	je     401c73 <notify_server+0x141>
  401c03:	4c 8d 8c 24 20 20 00 	lea    0x2020(%rsp),%r9
  401c0a:	00 
  401c0b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401c11:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401c16:	48 8b 15 53 25 20 00 	mov    0x202553(%rip),%rdx        # 604170 <lab>
  401c1d:	48 8b 35 54 25 20 00 	mov    0x202554(%rip),%rsi        # 604178 <course>
  401c24:	48 8b 3d 35 25 20 00 	mov    0x202535(%rip),%rdi        # 604160 <user_id>
  401c2b:	e8 be 10 00 00       	callq  402cee <driver_post>
  401c30:	85 c0                	test   %eax,%eax
  401c32:	79 26                	jns    401c5a <notify_server+0x128>
  401c34:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  401c3b:	00 
  401c3c:	be a7 32 40 00       	mov    $0x4032a7,%esi
  401c41:	bf 01 00 00 00       	mov    $0x1,%edi
  401c46:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4b:	e8 d0 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401c50:	bf 01 00 00 00       	mov    $0x1,%edi
  401c55:	e8 16 f2 ff ff       	callq  400e70 <exit@plt>
  401c5a:	bf d0 33 40 00       	mov    $0x4033d0,%edi
  401c5f:	e8 7c f0 ff ff       	callq  400ce0 <puts@plt>
  401c64:	bf b3 32 40 00       	mov    $0x4032b3,%edi
  401c69:	e8 72 f0 ff ff       	callq  400ce0 <puts@plt>
  401c6e:	e9 a2 00 00 00       	jmpq   401d15 <notify_server+0x1e3>
  401c73:	bf bd 32 40 00       	mov    $0x4032bd,%edi
  401c78:	e8 63 f0 ff ff       	callq  400ce0 <puts@plt>
  401c7d:	0f 1f 00             	nopl   (%rax)
  401c80:	e9 90 00 00 00       	jmpq   401d15 <notify_server+0x1e3>
  401c85:	85 db                	test   %ebx,%ebx
  401c87:	74 09                	je     401c92 <notify_server+0x160>
  401c89:	ba 81 32 40 00       	mov    $0x403281,%edx
  401c8e:	66 90                	xchg   %ax,%ax
  401c90:	eb 05                	jmp    401c97 <notify_server+0x165>
  401c92:	ba 86 32 40 00       	mov    $0x403286,%edx
  401c97:	be 08 34 40 00       	mov    $0x403408,%esi
  401c9c:	bf 01 00 00 00       	mov    $0x1,%edi
  401ca1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca6:	e8 75 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401cab:	48 8b 15 ae 24 20 00 	mov    0x2024ae(%rip),%rdx        # 604160 <user_id>
  401cb2:	be c4 32 40 00       	mov    $0x4032c4,%esi
  401cb7:	bf 01 00 00 00       	mov    $0x1,%edi
  401cbc:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc1:	e8 5a f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401cc6:	48 8b 15 ab 24 20 00 	mov    0x2024ab(%rip),%rdx        # 604178 <course>
  401ccd:	be d1 32 40 00       	mov    $0x4032d1,%esi
  401cd2:	bf 01 00 00 00       	mov    $0x1,%edi
  401cd7:	b8 00 00 00 00       	mov    $0x0,%eax
  401cdc:	e8 3f f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401ce1:	48 8b 15 88 24 20 00 	mov    0x202488(%rip),%rdx        # 604170 <lab>
  401ce8:	be dd 32 40 00       	mov    $0x4032dd,%esi
  401ced:	bf 01 00 00 00       	mov    $0x1,%edi
  401cf2:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf7:	e8 24 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401cfc:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401d01:	be e6 32 40 00       	mov    $0x4032e6,%esi
  401d06:	bf 01 00 00 00       	mov    $0x1,%edi
  401d0b:	b8 00 00 00 00       	mov    $0x0,%eax
  401d10:	e8 0b f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401d15:	48 8b 84 24 28 40 00 	mov    0x4028(%rsp),%rax
  401d1c:	00 
  401d1d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401d24:	00 00 
  401d26:	74 05                	je     401d2d <notify_server+0x1fb>
  401d28:	e8 d3 ef ff ff       	callq  400d00 <__stack_chk_fail@plt>
  401d2d:	48 81 c4 30 40 00 00 	add    $0x4030,%rsp
  401d34:	5b                   	pop    %rbx
  401d35:	c3                   	retq   

0000000000401d36 <validate>:
  401d36:	53                   	push   %rbx
  401d37:	89 fb                	mov    %edi,%ebx
  401d39:	83 3d e8 27 20 00 00 	cmpl   $0x0,0x2027e8(%rip)        # 604528 <is_checker>
  401d40:	74 6b                	je     401dad <validate+0x77>
  401d42:	39 3d d4 27 20 00    	cmp    %edi,0x2027d4(%rip)        # 60451c <vlevel>
  401d48:	74 14                	je     401d5e <validate+0x28>
  401d4a:	bf f2 32 40 00       	mov    $0x4032f2,%edi
  401d4f:	e8 8c ef ff ff       	callq  400ce0 <puts@plt>
  401d54:	b8 00 00 00 00       	mov    $0x0,%eax
  401d59:	e8 4d fd ff ff       	callq  401aab <check_fail>
  401d5e:	8b 15 b4 27 20 00    	mov    0x2027b4(%rip),%edx        # 604518 <check_level>
  401d64:	39 fa                	cmp    %edi,%edx
  401d66:	74 20                	je     401d88 <validate+0x52>
  401d68:	89 f9                	mov    %edi,%ecx
  401d6a:	be 30 34 40 00       	mov    $0x403430,%esi
  401d6f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d74:	b8 00 00 00 00       	mov    $0x0,%eax
  401d79:	e8 a2 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d7e:	b8 00 00 00 00       	mov    $0x0,%eax
  401d83:	e8 23 fd ff ff       	callq  401aab <check_fail>
  401d88:	0f be 15 b9 33 20 00 	movsbl 0x2033b9(%rip),%edx        # 605148 <target_prefix>
  401d8f:	41 b8 40 45 60 00    	mov    $0x604540,%r8d
  401d95:	89 f9                	mov    %edi,%ecx
  401d97:	be 10 33 40 00       	mov    $0x403310,%esi
  401d9c:	bf 01 00 00 00       	mov    $0x1,%edi
  401da1:	b8 00 00 00 00       	mov    $0x0,%eax
  401da6:	e8 75 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401dab:	eb 49                	jmp    401df6 <validate+0xc0>
  401dad:	39 3d 69 27 20 00    	cmp    %edi,0x202769(%rip)        # 60451c <vlevel>
  401db3:	74 18                	je     401dcd <validate+0x97>
  401db5:	bf f2 32 40 00       	mov    $0x4032f2,%edi
  401dba:	e8 21 ef ff ff       	callq  400ce0 <puts@plt>
  401dbf:	89 de                	mov    %ebx,%esi
  401dc1:	bf 00 00 00 00       	mov    $0x0,%edi
  401dc6:	e8 67 fd ff ff       	callq  401b32 <notify_server>
  401dcb:	eb 29                	jmp    401df6 <validate+0xc0>
  401dcd:	0f be 0d 74 33 20 00 	movsbl 0x203374(%rip),%ecx        # 605148 <target_prefix>
  401dd4:	89 fa                	mov    %edi,%edx
  401dd6:	be 58 34 40 00       	mov    $0x403458,%esi
  401ddb:	bf 01 00 00 00       	mov    $0x1,%edi
  401de0:	b8 00 00 00 00       	mov    $0x0,%eax
  401de5:	e8 36 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401dea:	89 de                	mov    %ebx,%esi
  401dec:	bf 01 00 00 00       	mov    $0x1,%edi
  401df1:	e8 3c fd ff ff       	callq  401b32 <notify_server>
  401df6:	5b                   	pop    %rbx
  401df7:	c3                   	retq   

0000000000401df8 <fail>:
  401df8:	48 83 ec 08          	sub    $0x8,%rsp
  401dfc:	83 3d 25 27 20 00 00 	cmpl   $0x0,0x202725(%rip)        # 604528 <is_checker>
  401e03:	74 0a                	je     401e0f <fail+0x17>
  401e05:	b8 00 00 00 00       	mov    $0x0,%eax
  401e0a:	e8 9c fc ff ff       	callq  401aab <check_fail>
  401e0f:	89 fe                	mov    %edi,%esi
  401e11:	bf 00 00 00 00       	mov    $0x0,%edi
  401e16:	e8 17 fd ff ff       	callq  401b32 <notify_server>
  401e1b:	48 83 c4 08          	add    $0x8,%rsp
  401e1f:	c3                   	retq   

0000000000401e20 <bushandler>:
  401e20:	48 83 ec 08          	sub    $0x8,%rsp
  401e24:	83 3d fd 26 20 00 00 	cmpl   $0x0,0x2026fd(%rip)        # 604528 <is_checker>
  401e2b:	74 14                	je     401e41 <bushandler+0x21>
  401e2d:	bf 25 33 40 00       	mov    $0x403325,%edi
  401e32:	e8 a9 ee ff ff       	callq  400ce0 <puts@plt>
  401e37:	b8 00 00 00 00       	mov    $0x0,%eax
  401e3c:	e8 6a fc ff ff       	callq  401aab <check_fail>
  401e41:	bf 90 34 40 00       	mov    $0x403490,%edi
  401e46:	e8 95 ee ff ff       	callq  400ce0 <puts@plt>
  401e4b:	bf 2f 33 40 00       	mov    $0x40332f,%edi
  401e50:	e8 8b ee ff ff       	callq  400ce0 <puts@plt>
  401e55:	be 00 00 00 00       	mov    $0x0,%esi
  401e5a:	bf 00 00 00 00       	mov    $0x0,%edi
  401e5f:	e8 ce fc ff ff       	callq  401b32 <notify_server>
  401e64:	bf 01 00 00 00       	mov    $0x1,%edi
  401e69:	e8 02 f0 ff ff       	callq  400e70 <exit@plt>

0000000000401e6e <seghandler>:
  401e6e:	48 83 ec 08          	sub    $0x8,%rsp
  401e72:	83 3d af 26 20 00 00 	cmpl   $0x0,0x2026af(%rip)        # 604528 <is_checker>
  401e79:	74 14                	je     401e8f <seghandler+0x21>
  401e7b:	bf 45 33 40 00       	mov    $0x403345,%edi
  401e80:	e8 5b ee ff ff       	callq  400ce0 <puts@plt>
  401e85:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8a:	e8 1c fc ff ff       	callq  401aab <check_fail>
  401e8f:	bf b0 34 40 00       	mov    $0x4034b0,%edi
  401e94:	e8 47 ee ff ff       	callq  400ce0 <puts@plt>
  401e99:	bf 2f 33 40 00       	mov    $0x40332f,%edi
  401e9e:	e8 3d ee ff ff       	callq  400ce0 <puts@plt>
  401ea3:	be 00 00 00 00       	mov    $0x0,%esi
  401ea8:	bf 00 00 00 00       	mov    $0x0,%edi
  401ead:	e8 80 fc ff ff       	callq  401b32 <notify_server>
  401eb2:	bf 01 00 00 00       	mov    $0x1,%edi
  401eb7:	e8 b4 ef ff ff       	callq  400e70 <exit@plt>

0000000000401ebc <illegalhandler>:
  401ebc:	48 83 ec 08          	sub    $0x8,%rsp
  401ec0:	83 3d 61 26 20 00 00 	cmpl   $0x0,0x202661(%rip)        # 604528 <is_checker>
  401ec7:	74 14                	je     401edd <illegalhandler+0x21>
  401ec9:	bf 58 33 40 00       	mov    $0x403358,%edi
  401ece:	e8 0d ee ff ff       	callq  400ce0 <puts@plt>
  401ed3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed8:	e8 ce fb ff ff       	callq  401aab <check_fail>
  401edd:	bf d8 34 40 00       	mov    $0x4034d8,%edi
  401ee2:	e8 f9 ed ff ff       	callq  400ce0 <puts@plt>
  401ee7:	bf 2f 33 40 00       	mov    $0x40332f,%edi
  401eec:	e8 ef ed ff ff       	callq  400ce0 <puts@plt>
  401ef1:	be 00 00 00 00       	mov    $0x0,%esi
  401ef6:	bf 00 00 00 00       	mov    $0x0,%edi
  401efb:	e8 32 fc ff ff       	callq  401b32 <notify_server>
  401f00:	bf 01 00 00 00       	mov    $0x1,%edi
  401f05:	e8 66 ef ff ff       	callq  400e70 <exit@plt>

0000000000401f0a <sigalrmhandler>:
  401f0a:	48 83 ec 08          	sub    $0x8,%rsp
  401f0e:	83 3d 13 26 20 00 00 	cmpl   $0x0,0x202613(%rip)        # 604528 <is_checker>
  401f15:	74 14                	je     401f2b <sigalrmhandler+0x21>
  401f17:	bf 6c 33 40 00       	mov    $0x40336c,%edi
  401f1c:	e8 bf ed ff ff       	callq  400ce0 <puts@plt>
  401f21:	b8 00 00 00 00       	mov    $0x0,%eax
  401f26:	e8 80 fb ff ff       	callq  401aab <check_fail>
  401f2b:	ba 05 00 00 00       	mov    $0x5,%edx
  401f30:	be 08 35 40 00       	mov    $0x403508,%esi
  401f35:	bf 01 00 00 00       	mov    $0x1,%edi
  401f3a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f3f:	e8 dc ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f44:	be 00 00 00 00       	mov    $0x0,%esi
  401f49:	bf 00 00 00 00       	mov    $0x0,%edi
  401f4e:	e8 df fb ff ff       	callq  401b32 <notify_server>
  401f53:	bf 01 00 00 00       	mov    $0x1,%edi
  401f58:	e8 13 ef ff ff       	callq  400e70 <exit@plt>

0000000000401f5d <launch>:
  401f5d:	55                   	push   %rbp
  401f5e:	48 89 e5             	mov    %rsp,%rbp
  401f61:	48 83 ec 10          	sub    $0x10,%rsp
  401f65:	48 89 fa             	mov    %rdi,%rdx
  401f68:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f6f:	00 00 
  401f71:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f75:	31 c0                	xor    %eax,%eax
  401f77:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401f7b:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401f7f:	48 29 c4             	sub    %rax,%rsp
  401f82:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401f87:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401f8b:	be f4 00 00 00       	mov    $0xf4,%esi
  401f90:	e8 8b ed ff ff       	callq  400d20 <memset@plt>
  401f95:	48 8b 05 24 25 20 00 	mov    0x202524(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401f9c:	48 39 05 6d 25 20 00 	cmp    %rax,0x20256d(%rip)        # 604510 <infile>
  401fa3:	75 14                	jne    401fb9 <launch+0x5c>
  401fa5:	be 74 33 40 00       	mov    $0x403374,%esi
  401faa:	bf 01 00 00 00       	mov    $0x1,%edi
  401faf:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb4:	e8 67 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401fb9:	c7 05 59 25 20 00 00 	movl   $0x0,0x202559(%rip)        # 60451c <vlevel>
  401fc0:	00 00 00 
  401fc3:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc8:	e8 41 fa ff ff       	callq  401a0e <test>
  401fcd:	83 3d 54 25 20 00 00 	cmpl   $0x0,0x202554(%rip)        # 604528 <is_checker>
  401fd4:	74 14                	je     401fea <launch+0x8d>
  401fd6:	bf 81 33 40 00       	mov    $0x403381,%edi
  401fdb:	e8 00 ed ff ff       	callq  400ce0 <puts@plt>
  401fe0:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe5:	e8 c1 fa ff ff       	callq  401aab <check_fail>
  401fea:	bf 8c 33 40 00       	mov    $0x40338c,%edi
  401fef:	e8 ec ec ff ff       	callq  400ce0 <puts@plt>
  401ff4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ff8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401fff:	00 00 
  402001:	74 05                	je     402008 <launch+0xab>
  402003:	e8 f8 ec ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402008:	c9                   	leaveq 
  402009:	c3                   	retq   

000000000040200a <stable_launch>:
  40200a:	53                   	push   %rbx
  40200b:	48 89 3d f6 24 20 00 	mov    %rdi,0x2024f6(%rip)        # 604508 <global_offset>
  402012:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402018:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40201e:	b9 32 01 00 00       	mov    $0x132,%ecx
  402023:	ba 07 00 00 00       	mov    $0x7,%edx
  402028:	be 00 00 10 00       	mov    $0x100000,%esi
  40202d:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402032:	e8 d9 ec ff ff       	callq  400d10 <mmap@plt>
  402037:	48 89 c3             	mov    %rax,%rbx
  40203a:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402040:	74 37                	je     402079 <stable_launch+0x6f>
  402042:	be 00 00 10 00       	mov    $0x100000,%esi
  402047:	48 89 c7             	mov    %rax,%rdi
  40204a:	e8 c1 ed ff ff       	callq  400e10 <munmap@plt>
  40204f:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402054:	ba 40 35 40 00       	mov    $0x403540,%edx
  402059:	be 01 00 00 00       	mov    $0x1,%esi
  40205e:	48 8b 3d 83 24 20 00 	mov    0x202483(%rip),%rdi        # 6044e8 <stderr@@GLIBC_2.2.5>
  402065:	b8 00 00 00 00       	mov    $0x0,%eax
  40206a:	e8 21 ee ff ff       	callq  400e90 <__fprintf_chk@plt>
  40206f:	bf 01 00 00 00       	mov    $0x1,%edi
  402074:	e8 f7 ed ff ff       	callq  400e70 <exit@plt>
  402079:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402080:	48 89 15 c9 30 20 00 	mov    %rdx,0x2030c9(%rip)        # 605150 <stack_top>
  402087:	48 89 e0             	mov    %rsp,%rax
  40208a:	48 89 d4             	mov    %rdx,%rsp
  40208d:	48 89 c2             	mov    %rax,%rdx
  402090:	48 89 15 69 24 20 00 	mov    %rdx,0x202469(%rip)        # 604500 <global_save_stack>
  402097:	48 8b 3d 6a 24 20 00 	mov    0x20246a(%rip),%rdi        # 604508 <global_offset>
  40209e:	e8 ba fe ff ff       	callq  401f5d <launch>
  4020a3:	48 8b 05 56 24 20 00 	mov    0x202456(%rip),%rax        # 604500 <global_save_stack>
  4020aa:	48 89 c4             	mov    %rax,%rsp
  4020ad:	be 00 00 10 00       	mov    $0x100000,%esi
  4020b2:	48 89 df             	mov    %rbx,%rdi
  4020b5:	e8 56 ed ff ff       	callq  400e10 <munmap@plt>
  4020ba:	5b                   	pop    %rbx
  4020bb:	c3                   	retq   
  4020bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004020c0 <rio_readinitb>:
  4020c0:	89 37                	mov    %esi,(%rdi)
  4020c2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4020c9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4020cd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4020d1:	c3                   	retq   

00000000004020d2 <sigalrm_handler>:
  4020d2:	48 83 ec 08          	sub    $0x8,%rsp
  4020d6:	b9 00 00 00 00       	mov    $0x0,%ecx
  4020db:	ba 80 35 40 00       	mov    $0x403580,%edx
  4020e0:	be 01 00 00 00       	mov    $0x1,%esi
  4020e5:	48 8b 3d fc 23 20 00 	mov    0x2023fc(%rip),%rdi        # 6044e8 <stderr@@GLIBC_2.2.5>
  4020ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4020f1:	e8 9a ed ff ff       	callq  400e90 <__fprintf_chk@plt>
  4020f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4020fb:	e8 70 ed ff ff       	callq  400e70 <exit@plt>

0000000000402100 <rio_writen>:
  402100:	41 55                	push   %r13
  402102:	41 54                	push   %r12
  402104:	55                   	push   %rbp
  402105:	53                   	push   %rbx
  402106:	48 83 ec 08          	sub    $0x8,%rsp
  40210a:	41 89 fc             	mov    %edi,%r12d
  40210d:	48 89 f5             	mov    %rsi,%rbp
  402110:	49 89 d5             	mov    %rdx,%r13
  402113:	48 89 d3             	mov    %rdx,%rbx
  402116:	eb 28                	jmp    402140 <rio_writen+0x40>
  402118:	48 89 da             	mov    %rbx,%rdx
  40211b:	48 89 ee             	mov    %rbp,%rsi
  40211e:	44 89 e7             	mov    %r12d,%edi
  402121:	e8 ca eb ff ff       	callq  400cf0 <write@plt>
  402126:	48 85 c0             	test   %rax,%rax
  402129:	7f 0f                	jg     40213a <rio_writen+0x3a>
  40212b:	e8 70 eb ff ff       	callq  400ca0 <__errno_location@plt>
  402130:	83 38 04             	cmpl   $0x4,(%rax)
  402133:	75 15                	jne    40214a <rio_writen+0x4a>
  402135:	b8 00 00 00 00       	mov    $0x0,%eax
  40213a:	48 29 c3             	sub    %rax,%rbx
  40213d:	48 01 c5             	add    %rax,%rbp
  402140:	48 85 db             	test   %rbx,%rbx
  402143:	75 d3                	jne    402118 <rio_writen+0x18>
  402145:	4c 89 e8             	mov    %r13,%rax
  402148:	eb 07                	jmp    402151 <rio_writen+0x51>
  40214a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402151:	48 83 c4 08          	add    $0x8,%rsp
  402155:	5b                   	pop    %rbx
  402156:	5d                   	pop    %rbp
  402157:	41 5c                	pop    %r12
  402159:	41 5d                	pop    %r13
  40215b:	c3                   	retq   

000000000040215c <rio_read>:
  40215c:	41 56                	push   %r14
  40215e:	41 55                	push   %r13
  402160:	41 54                	push   %r12
  402162:	55                   	push   %rbp
  402163:	53                   	push   %rbx
  402164:	48 89 fb             	mov    %rdi,%rbx
  402167:	49 89 f6             	mov    %rsi,%r14
  40216a:	49 89 d5             	mov    %rdx,%r13
  40216d:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  402171:	eb 2a                	jmp    40219d <rio_read+0x41>
  402173:	8b 3b                	mov    (%rbx),%edi
  402175:	ba 00 20 00 00       	mov    $0x2000,%edx
  40217a:	4c 89 e6             	mov    %r12,%rsi
  40217d:	e8 ce eb ff ff       	callq  400d50 <read@plt>
  402182:	89 43 04             	mov    %eax,0x4(%rbx)
  402185:	85 c0                	test   %eax,%eax
  402187:	79 0c                	jns    402195 <rio_read+0x39>
  402189:	e8 12 eb ff ff       	callq  400ca0 <__errno_location@plt>
  40218e:	83 38 04             	cmpl   $0x4,(%rax)
  402191:	74 0a                	je     40219d <rio_read+0x41>
  402193:	eb 37                	jmp    4021cc <rio_read+0x70>
  402195:	85 c0                	test   %eax,%eax
  402197:	74 3c                	je     4021d5 <rio_read+0x79>
  402199:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  40219d:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4021a0:	85 ed                	test   %ebp,%ebp
  4021a2:	7e cf                	jle    402173 <rio_read+0x17>
  4021a4:	89 e8                	mov    %ebp,%eax
  4021a6:	4c 39 e8             	cmp    %r13,%rax
  4021a9:	72 03                	jb     4021ae <rio_read+0x52>
  4021ab:	44 89 ed             	mov    %r13d,%ebp
  4021ae:	4c 63 e5             	movslq %ebp,%r12
  4021b1:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4021b5:	4c 89 e2             	mov    %r12,%rdx
  4021b8:	4c 89 f7             	mov    %r14,%rdi
  4021bb:	e8 00 ec ff ff       	callq  400dc0 <memcpy@plt>
  4021c0:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4021c4:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4021c7:	4c 89 e0             	mov    %r12,%rax
  4021ca:	eb 0e                	jmp    4021da <rio_read+0x7e>
  4021cc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021d3:	eb 05                	jmp    4021da <rio_read+0x7e>
  4021d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4021da:	5b                   	pop    %rbx
  4021db:	5d                   	pop    %rbp
  4021dc:	41 5c                	pop    %r12
  4021de:	41 5d                	pop    %r13
  4021e0:	41 5e                	pop    %r14
  4021e2:	c3                   	retq   

00000000004021e3 <rio_readlineb>:
  4021e3:	41 55                	push   %r13
  4021e5:	41 54                	push   %r12
  4021e7:	55                   	push   %rbp
  4021e8:	53                   	push   %rbx
  4021e9:	48 83 ec 18          	sub    $0x18,%rsp
  4021ed:	49 89 fd             	mov    %rdi,%r13
  4021f0:	48 89 f5             	mov    %rsi,%rbp
  4021f3:	49 89 d4             	mov    %rdx,%r12
  4021f6:	bb 01 00 00 00       	mov    $0x1,%ebx
  4021fb:	eb 3e                	jmp    40223b <rio_readlineb+0x58>
  4021fd:	ba 01 00 00 00       	mov    $0x1,%edx
  402202:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402207:	4c 89 ef             	mov    %r13,%rdi
  40220a:	e8 4d ff ff ff       	callq  40215c <rio_read>
  40220f:	83 f8 01             	cmp    $0x1,%eax
  402212:	75 12                	jne    402226 <rio_readlineb+0x43>
  402214:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402218:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40221d:	88 45 00             	mov    %al,0x0(%rbp)
  402220:	3c 0a                	cmp    $0xa,%al
  402222:	75 10                	jne    402234 <rio_readlineb+0x51>
  402224:	eb 1c                	jmp    402242 <rio_readlineb+0x5f>
  402226:	85 c0                	test   %eax,%eax
  402228:	75 24                	jne    40224e <rio_readlineb+0x6b>
  40222a:	48 83 fb 01          	cmp    $0x1,%rbx
  40222e:	66 90                	xchg   %ax,%ax
  402230:	75 13                	jne    402245 <rio_readlineb+0x62>
  402232:	eb 23                	jmp    402257 <rio_readlineb+0x74>
  402234:	48 83 c3 01          	add    $0x1,%rbx
  402238:	48 89 d5             	mov    %rdx,%rbp
  40223b:	4c 39 e3             	cmp    %r12,%rbx
  40223e:	72 bd                	jb     4021fd <rio_readlineb+0x1a>
  402240:	eb 03                	jmp    402245 <rio_readlineb+0x62>
  402242:	48 89 d5             	mov    %rdx,%rbp
  402245:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402249:	48 89 d8             	mov    %rbx,%rax
  40224c:	eb 0e                	jmp    40225c <rio_readlineb+0x79>
  40224e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402255:	eb 05                	jmp    40225c <rio_readlineb+0x79>
  402257:	b8 00 00 00 00       	mov    $0x0,%eax
  40225c:	48 83 c4 18          	add    $0x18,%rsp
  402260:	5b                   	pop    %rbx
  402261:	5d                   	pop    %rbp
  402262:	41 5c                	pop    %r12
  402264:	41 5d                	pop    %r13
  402266:	c3                   	retq   

0000000000402267 <urlencode>:
  402267:	41 54                	push   %r12
  402269:	55                   	push   %rbp
  40226a:	53                   	push   %rbx
  40226b:	48 83 ec 10          	sub    $0x10,%rsp
  40226f:	48 89 fb             	mov    %rdi,%rbx
  402272:	48 89 f5             	mov    %rsi,%rbp
  402275:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40227c:	00 00 
  40227e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402283:	31 c0                	xor    %eax,%eax
  402285:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40228c:	f2 ae                	repnz scas %es:(%rdi),%al
  40228e:	48 f7 d1             	not    %rcx
  402291:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402294:	e9 aa 00 00 00       	jmpq   402343 <urlencode+0xdc>
  402299:	44 0f b6 03          	movzbl (%rbx),%r8d
  40229d:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4022a1:	0f 94 c2             	sete   %dl
  4022a4:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4022a8:	0f 94 c0             	sete   %al
  4022ab:	08 c2                	or     %al,%dl
  4022ad:	75 24                	jne    4022d3 <urlencode+0x6c>
  4022af:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4022b3:	74 1e                	je     4022d3 <urlencode+0x6c>
  4022b5:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4022b9:	74 18                	je     4022d3 <urlencode+0x6c>
  4022bb:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4022bf:	3c 09                	cmp    $0x9,%al
  4022c1:	76 10                	jbe    4022d3 <urlencode+0x6c>
  4022c3:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4022c7:	3c 19                	cmp    $0x19,%al
  4022c9:	76 08                	jbe    4022d3 <urlencode+0x6c>
  4022cb:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4022cf:	3c 19                	cmp    $0x19,%al
  4022d1:	77 0a                	ja     4022dd <urlencode+0x76>
  4022d3:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4022d7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4022db:	eb 5f                	jmp    40233c <urlencode+0xd5>
  4022dd:	41 80 f8 20          	cmp    $0x20,%r8b
  4022e1:	75 0a                	jne    4022ed <urlencode+0x86>
  4022e3:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4022e7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4022eb:	eb 4f                	jmp    40233c <urlencode+0xd5>
  4022ed:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4022f1:	3c 5f                	cmp    $0x5f,%al
  4022f3:	0f 96 c2             	setbe  %dl
  4022f6:	41 80 f8 09          	cmp    $0x9,%r8b
  4022fa:	0f 94 c0             	sete   %al
  4022fd:	08 c2                	or     %al,%dl
  4022ff:	74 50                	je     402351 <urlencode+0xea>
  402301:	45 0f b6 c0          	movzbl %r8b,%r8d
  402305:	b9 18 36 40 00       	mov    $0x403618,%ecx
  40230a:	ba 08 00 00 00       	mov    $0x8,%edx
  40230f:	be 01 00 00 00       	mov    $0x1,%esi
  402314:	48 89 e7             	mov    %rsp,%rdi
  402317:	b8 00 00 00 00       	mov    $0x0,%eax
  40231c:	e8 7f eb ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402321:	0f b6 04 24          	movzbl (%rsp),%eax
  402325:	88 45 00             	mov    %al,0x0(%rbp)
  402328:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40232d:	88 45 01             	mov    %al,0x1(%rbp)
  402330:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402335:	88 45 02             	mov    %al,0x2(%rbp)
  402338:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40233c:	48 83 c3 01          	add    $0x1,%rbx
  402340:	44 89 e0             	mov    %r12d,%eax
  402343:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402347:	85 c0                	test   %eax,%eax
  402349:	0f 85 4a ff ff ff    	jne    402299 <urlencode+0x32>
  40234f:	eb 05                	jmp    402356 <urlencode+0xef>
  402351:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402356:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40235b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402362:	00 00 
  402364:	74 05                	je     40236b <urlencode+0x104>
  402366:	e8 95 e9 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  40236b:	48 83 c4 10          	add    $0x10,%rsp
  40236f:	5b                   	pop    %rbx
  402370:	5d                   	pop    %rbp
  402371:	41 5c                	pop    %r12
  402373:	c3                   	retq   

0000000000402374 <submitr>:
  402374:	41 57                	push   %r15
  402376:	41 56                	push   %r14
  402378:	41 55                	push   %r13
  40237a:	41 54                	push   %r12
  40237c:	55                   	push   %rbp
  40237d:	53                   	push   %rbx
  40237e:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  402385:	49 89 fc             	mov    %rdi,%r12
  402388:	89 74 24 14          	mov    %esi,0x14(%rsp)
  40238c:	49 89 d7             	mov    %rdx,%r15
  40238f:	49 89 ce             	mov    %rcx,%r14
  402392:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402397:	4d 89 cd             	mov    %r9,%r13
  40239a:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  4023a1:	00 
  4023a2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023a9:	00 00 
  4023ab:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  4023b2:	00 
  4023b3:	31 c0                	xor    %eax,%eax
  4023b5:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  4023bc:	00 
  4023bd:	ba 00 00 00 00       	mov    $0x0,%edx
  4023c2:	be 01 00 00 00       	mov    $0x1,%esi
  4023c7:	bf 02 00 00 00       	mov    $0x2,%edi
  4023cc:	e8 df ea ff ff       	callq  400eb0 <socket@plt>
  4023d1:	89 c5                	mov    %eax,%ebp
  4023d3:	85 c0                	test   %eax,%eax
  4023d5:	79 4e                	jns    402425 <submitr+0xb1>
  4023d7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4023de:	3a 20 43 
  4023e1:	48 89 03             	mov    %rax,(%rbx)
  4023e4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4023eb:	20 75 6e 
  4023ee:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023f2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4023f9:	74 6f 20 
  4023fc:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402400:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402407:	65 20 73 
  40240a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40240e:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402415:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40241b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402420:	e9 84 06 00 00       	jmpq   402aa9 <submitr+0x735>
  402425:	4c 89 e7             	mov    %r12,%rdi
  402428:	e8 53 e9 ff ff       	callq  400d80 <gethostbyname@plt>
  40242d:	48 85 c0             	test   %rax,%rax
  402430:	75 67                	jne    402499 <submitr+0x125>
  402432:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402439:	3a 20 44 
  40243c:	48 89 03             	mov    %rax,(%rbx)
  40243f:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402446:	20 75 6e 
  402449:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40244d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402454:	74 6f 20 
  402457:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40245b:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402462:	76 65 20 
  402465:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402469:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402470:	72 20 61 
  402473:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402477:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  40247e:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402484:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402488:	89 ef                	mov    %ebp,%edi
  40248a:	e8 b1 e8 ff ff       	callq  400d40 <close@plt>
  40248f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402494:	e9 10 06 00 00       	jmpq   402aa9 <submitr+0x735>
  402499:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  4024a0:	00 00 
  4024a2:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4024a9:	00 00 
  4024ab:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4024b2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4024b6:	48 8b 40 18          	mov    0x18(%rax),%rax
  4024ba:	48 8b 30             	mov    (%rax),%rsi
  4024bd:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  4024c2:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4024c7:	e8 c4 e8 ff ff       	callq  400d90 <__memmove_chk@plt>
  4024cc:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4024d1:	66 c1 c8 08          	ror    $0x8,%ax
  4024d5:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  4024da:	ba 10 00 00 00       	mov    $0x10,%edx
  4024df:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  4024e4:	89 ef                	mov    %ebp,%edi
  4024e6:	e8 95 e9 ff ff       	callq  400e80 <connect@plt>
  4024eb:	85 c0                	test   %eax,%eax
  4024ed:	79 59                	jns    402548 <submitr+0x1d4>
  4024ef:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4024f6:	3a 20 55 
  4024f9:	48 89 03             	mov    %rax,(%rbx)
  4024fc:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402503:	20 74 6f 
  402506:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40250a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402511:	65 63 74 
  402514:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402518:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40251f:	68 65 20 
  402522:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402526:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40252d:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402533:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402537:	89 ef                	mov    %ebp,%edi
  402539:	e8 02 e8 ff ff       	callq  400d40 <close@plt>
  40253e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402543:	e9 61 05 00 00       	jmpq   402aa9 <submitr+0x735>
  402548:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40254f:	4c 89 ef             	mov    %r13,%rdi
  402552:	b8 00 00 00 00       	mov    $0x0,%eax
  402557:	48 89 d1             	mov    %rdx,%rcx
  40255a:	f2 ae                	repnz scas %es:(%rdi),%al
  40255c:	48 f7 d1             	not    %rcx
  40255f:	48 89 ce             	mov    %rcx,%rsi
  402562:	4c 89 ff             	mov    %r15,%rdi
  402565:	48 89 d1             	mov    %rdx,%rcx
  402568:	f2 ae                	repnz scas %es:(%rdi),%al
  40256a:	48 f7 d1             	not    %rcx
  40256d:	49 89 c8             	mov    %rcx,%r8
  402570:	4c 89 f7             	mov    %r14,%rdi
  402573:	48 89 d1             	mov    %rdx,%rcx
  402576:	f2 ae                	repnz scas %es:(%rdi),%al
  402578:	49 29 c8             	sub    %rcx,%r8
  40257b:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402580:	48 89 d1             	mov    %rdx,%rcx
  402583:	f2 ae                	repnz scas %es:(%rdi),%al
  402585:	49 29 c8             	sub    %rcx,%r8
  402588:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  40258d:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  402592:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402598:	76 72                	jbe    40260c <submitr+0x298>
  40259a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4025a1:	3a 20 52 
  4025a4:	48 89 03             	mov    %rax,(%rbx)
  4025a7:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4025ae:	20 73 74 
  4025b1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025b5:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4025bc:	74 6f 6f 
  4025bf:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025c3:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4025ca:	65 2e 20 
  4025cd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025d1:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4025d8:	61 73 65 
  4025db:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4025df:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  4025e6:	49 54 52 
  4025e9:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4025ed:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4025f4:	55 46 00 
  4025f7:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4025fb:	89 ef                	mov    %ebp,%edi
  4025fd:	e8 3e e7 ff ff       	callq  400d40 <close@plt>
  402602:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402607:	e9 9d 04 00 00       	jmpq   402aa9 <submitr+0x735>
  40260c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402613:	00 
  402614:	b9 00 04 00 00       	mov    $0x400,%ecx
  402619:	b8 00 00 00 00       	mov    $0x0,%eax
  40261e:	48 89 f7             	mov    %rsi,%rdi
  402621:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402624:	4c 89 ef             	mov    %r13,%rdi
  402627:	e8 3b fc ff ff       	callq  402267 <urlencode>
  40262c:	85 c0                	test   %eax,%eax
  40262e:	0f 89 8a 00 00 00    	jns    4026be <submitr+0x34a>
  402634:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40263b:	3a 20 52 
  40263e:	48 89 03             	mov    %rax,(%rbx)
  402641:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402648:	20 73 74 
  40264b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40264f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402656:	63 6f 6e 
  402659:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40265d:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402664:	20 61 6e 
  402667:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40266b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402672:	67 61 6c 
  402675:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402679:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402680:	6e 70 72 
  402683:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402687:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40268e:	6c 65 20 
  402691:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402695:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  40269c:	63 74 65 
  40269f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4026a3:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4026a9:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4026ad:	89 ef                	mov    %ebp,%edi
  4026af:	e8 8c e6 ff ff       	callq  400d40 <close@plt>
  4026b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026b9:	e9 eb 03 00 00       	jmpq   402aa9 <submitr+0x735>
  4026be:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  4026c3:	48 8d 84 24 40 20 00 	lea    0x2040(%rsp),%rax
  4026ca:	00 
  4026cb:	48 89 04 24          	mov    %rax,(%rsp)
  4026cf:	4d 89 f9             	mov    %r15,%r9
  4026d2:	4d 89 f0             	mov    %r14,%r8
  4026d5:	b9 a8 35 40 00       	mov    $0x4035a8,%ecx
  4026da:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026df:	be 01 00 00 00       	mov    $0x1,%esi
  4026e4:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4026e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ee:	e8 ad e7 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  4026f3:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4026f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4026fd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402704:	f2 ae                	repnz scas %es:(%rdi),%al
  402706:	48 f7 d1             	not    %rcx
  402709:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40270d:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402712:	89 ef                	mov    %ebp,%edi
  402714:	e8 e7 f9 ff ff       	callq  402100 <rio_writen>
  402719:	48 85 c0             	test   %rax,%rax
  40271c:	79 6e                	jns    40278c <submitr+0x418>
  40271e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402725:	3a 20 43 
  402728:	48 89 03             	mov    %rax,(%rbx)
  40272b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402732:	20 75 6e 
  402735:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402739:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402740:	74 6f 20 
  402743:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402747:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  40274e:	20 74 6f 
  402751:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402755:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  40275c:	72 65 73 
  40275f:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402763:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  40276a:	65 72 76 
  40276d:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402771:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402777:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  40277b:	89 ef                	mov    %ebp,%edi
  40277d:	e8 be e5 ff ff       	callq  400d40 <close@plt>
  402782:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402787:	e9 1d 03 00 00       	jmpq   402aa9 <submitr+0x735>
  40278c:	89 ee                	mov    %ebp,%esi
  40278e:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  402795:	00 
  402796:	e8 25 f9 ff ff       	callq  4020c0 <rio_readinitb>
  40279b:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027a0:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  4027a5:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  4027ac:	00 
  4027ad:	e8 31 fa ff ff       	callq  4021e3 <rio_readlineb>
  4027b2:	48 85 c0             	test   %rax,%rax
  4027b5:	7f 7d                	jg     402834 <submitr+0x4c0>
  4027b7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027be:	3a 20 43 
  4027c1:	48 89 03             	mov    %rax,(%rbx)
  4027c4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4027cb:	20 75 6e 
  4027ce:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027d2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027d9:	74 6f 20 
  4027dc:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027e0:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4027e7:	66 69 72 
  4027ea:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027ee:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4027f5:	61 64 65 
  4027f8:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027fc:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402803:	6d 20 72 
  402806:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40280a:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402811:	20 73 65 
  402814:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402818:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40281f:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402823:	89 ef                	mov    %ebp,%edi
  402825:	e8 16 e5 ff ff       	callq  400d40 <close@plt>
  40282a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40282f:	e9 75 02 00 00       	jmpq   402aa9 <submitr+0x735>
  402834:	4c 8d 84 24 40 60 00 	lea    0x6040(%rsp),%r8
  40283b:	00 
  40283c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402841:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
  402848:	00 
  402849:	be 1f 36 40 00       	mov    $0x40361f,%esi
  40284e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402853:	b8 00 00 00 00       	mov    $0x0,%eax
  402858:	e8 a3 e5 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  40285d:	41 bc 0d 00 00 00    	mov    $0xd,%r12d
  402863:	41 bd 0a 00 00 00    	mov    $0xa,%r13d
  402869:	e9 95 00 00 00       	jmpq   402903 <submitr+0x58f>
  40286e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402873:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402878:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  40287f:	00 
  402880:	e8 5e f9 ff ff       	callq  4021e3 <rio_readlineb>
  402885:	48 85 c0             	test   %rax,%rax
  402888:	7f 79                	jg     402903 <submitr+0x58f>
  40288a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402891:	3a 20 43 
  402894:	48 89 03             	mov    %rax,(%rbx)
  402897:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40289e:	20 75 6e 
  4028a1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028a5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028ac:	74 6f 20 
  4028af:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028b3:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4028ba:	68 65 61 
  4028bd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028c1:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4028c8:	66 72 6f 
  4028cb:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028cf:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4028d6:	20 72 65 
  4028d9:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4028dd:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4028e4:	73 65 72 
  4028e7:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4028eb:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  4028f2:	89 ef                	mov    %ebp,%edi
  4028f4:	e8 47 e4 ff ff       	callq  400d40 <close@plt>
  4028f9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028fe:	e9 a6 01 00 00       	jmpq   402aa9 <submitr+0x735>
  402903:	0f b6 44 24 40       	movzbl 0x40(%rsp),%eax
  402908:	44 89 e6             	mov    %r12d,%esi
  40290b:	29 c6                	sub    %eax,%esi
  40290d:	89 f0                	mov    %esi,%eax
  40290f:	75 15                	jne    402926 <submitr+0x5b2>
  402911:	0f b6 44 24 41       	movzbl 0x41(%rsp),%eax
  402916:	44 89 ea             	mov    %r13d,%edx
  402919:	29 c2                	sub    %eax,%edx
  40291b:	89 d0                	mov    %edx,%eax
  40291d:	75 07                	jne    402926 <submitr+0x5b2>
  40291f:	0f b6 44 24 42       	movzbl 0x42(%rsp),%eax
  402924:	f7 d8                	neg    %eax
  402926:	85 c0                	test   %eax,%eax
  402928:	0f 85 40 ff ff ff    	jne    40286e <submitr+0x4fa>
  40292e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402933:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402938:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  40293f:	00 
  402940:	e8 9e f8 ff ff       	callq  4021e3 <rio_readlineb>
  402945:	48 85 c0             	test   %rax,%rax
  402948:	0f 8f 83 00 00 00    	jg     4029d1 <submitr+0x65d>
  40294e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402955:	3a 20 43 
  402958:	48 89 03             	mov    %rax,(%rbx)
  40295b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402962:	20 75 6e 
  402965:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402969:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402970:	74 6f 20 
  402973:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402977:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  40297e:	73 74 61 
  402981:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402985:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40298c:	65 73 73 
  40298f:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402993:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  40299a:	72 6f 6d 
  40299d:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4029a1:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  4029a8:	6c 74 20 
  4029ab:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4029af:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  4029b6:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  4029bc:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  4029c0:	89 ef                	mov    %ebp,%edi
  4029c2:	e8 79 e3 ff ff       	callq  400d40 <close@plt>
  4029c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029cc:	e9 d8 00 00 00       	jmpq   402aa9 <submitr+0x735>
  4029d1:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4029d6:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4029dd:	74 37                	je     402a16 <submitr+0x6a2>
  4029df:	4c 8d 8c 24 40 60 00 	lea    0x6040(%rsp),%r9
  4029e6:	00 
  4029e7:	b9 e8 35 40 00       	mov    $0x4035e8,%ecx
  4029ec:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4029f3:	be 01 00 00 00       	mov    $0x1,%esi
  4029f8:	48 89 df             	mov    %rbx,%rdi
  4029fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402a00:	e8 9b e4 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402a05:	89 ef                	mov    %ebp,%edi
  402a07:	e8 34 e3 ff ff       	callq  400d40 <close@plt>
  402a0c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a11:	e9 93 00 00 00       	jmpq   402aa9 <submitr+0x735>
  402a16:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402a1b:	48 89 df             	mov    %rbx,%rdi
  402a1e:	e8 ad e2 ff ff       	callq  400cd0 <strcpy@plt>
  402a23:	89 ef                	mov    %ebp,%edi
  402a25:	e8 16 e3 ff ff       	callq  400d40 <close@plt>
  402a2a:	0f b6 03             	movzbl (%rbx),%eax
  402a2d:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402a32:	29 c2                	sub    %eax,%edx
  402a34:	75 22                	jne    402a58 <submitr+0x6e4>
  402a36:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402a3a:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402a3f:	29 c8                	sub    %ecx,%eax
  402a41:	75 17                	jne    402a5a <submitr+0x6e6>
  402a43:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402a47:	b8 0a 00 00 00       	mov    $0xa,%eax
  402a4c:	29 c8                	sub    %ecx,%eax
  402a4e:	75 0a                	jne    402a5a <submitr+0x6e6>
  402a50:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402a54:	f7 d8                	neg    %eax
  402a56:	eb 02                	jmp    402a5a <submitr+0x6e6>
  402a58:	89 d0                	mov    %edx,%eax
  402a5a:	85 c0                	test   %eax,%eax
  402a5c:	74 38                	je     402a96 <submitr+0x722>
  402a5e:	bf 30 36 40 00       	mov    $0x403630,%edi
  402a63:	b9 05 00 00 00       	mov    $0x5,%ecx
  402a68:	48 89 de             	mov    %rbx,%rsi
  402a6b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a6d:	0f 97 c1             	seta   %cl
  402a70:	0f 92 c0             	setb   %al
  402a73:	38 c1                	cmp    %al,%cl
  402a75:	74 26                	je     402a9d <submitr+0x729>
  402a77:	85 d2                	test   %edx,%edx
  402a79:	75 10                	jne    402a8b <submitr+0x717>
  402a7b:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402a7f:	b2 4b                	mov    $0x4b,%dl
  402a81:	29 c2                	sub    %eax,%edx
  402a83:	75 06                	jne    402a8b <submitr+0x717>
  402a85:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402a89:	f7 da                	neg    %edx
  402a8b:	85 d2                	test   %edx,%edx
  402a8d:	75 15                	jne    402aa4 <submitr+0x730>
  402a8f:	b8 00 00 00 00       	mov    $0x0,%eax
  402a94:	eb 13                	jmp    402aa9 <submitr+0x735>
  402a96:	b8 00 00 00 00       	mov    $0x0,%eax
  402a9b:	eb 0c                	jmp    402aa9 <submitr+0x735>
  402a9d:	b8 00 00 00 00       	mov    $0x0,%eax
  402aa2:	eb 05                	jmp    402aa9 <submitr+0x735>
  402aa4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aa9:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402ab0:	00 
  402ab1:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402ab8:	00 00 
  402aba:	74 05                	je     402ac1 <submitr+0x74d>
  402abc:	e8 3f e2 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402ac1:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402ac8:	5b                   	pop    %rbx
  402ac9:	5d                   	pop    %rbp
  402aca:	41 5c                	pop    %r12
  402acc:	41 5d                	pop    %r13
  402ace:	41 5e                	pop    %r14
  402ad0:	41 5f                	pop    %r15
  402ad2:	c3                   	retq   

0000000000402ad3 <init_timeout>:
  402ad3:	53                   	push   %rbx
  402ad4:	89 fb                	mov    %edi,%ebx
  402ad6:	85 ff                	test   %edi,%edi
  402ad8:	74 1f                	je     402af9 <init_timeout+0x26>
  402ada:	85 ff                	test   %edi,%edi
  402adc:	79 05                	jns    402ae3 <init_timeout+0x10>
  402ade:	bb 00 00 00 00       	mov    $0x0,%ebx
  402ae3:	be d2 20 40 00       	mov    $0x4020d2,%esi
  402ae8:	bf 0e 00 00 00       	mov    $0xe,%edi
  402aed:	e8 7e e2 ff ff       	callq  400d70 <signal@plt>
  402af2:	89 df                	mov    %ebx,%edi
  402af4:	e8 37 e2 ff ff       	callq  400d30 <alarm@plt>
  402af9:	5b                   	pop    %rbx
  402afa:	c3                   	retq   

0000000000402afb <init_driver>:
  402afb:	55                   	push   %rbp
  402afc:	53                   	push   %rbx
  402afd:	48 83 ec 28          	sub    $0x28,%rsp
  402b01:	48 89 fd             	mov    %rdi,%rbp
  402b04:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b0b:	00 00 
  402b0d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402b12:	31 c0                	xor    %eax,%eax
  402b14:	be 01 00 00 00       	mov    $0x1,%esi
  402b19:	bf 0d 00 00 00       	mov    $0xd,%edi
  402b1e:	e8 4d e2 ff ff       	callq  400d70 <signal@plt>
  402b23:	be 01 00 00 00       	mov    $0x1,%esi
  402b28:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402b2d:	e8 3e e2 ff ff       	callq  400d70 <signal@plt>
  402b32:	be 01 00 00 00       	mov    $0x1,%esi
  402b37:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402b3c:	e8 2f e2 ff ff       	callq  400d70 <signal@plt>
  402b41:	ba 00 00 00 00       	mov    $0x0,%edx
  402b46:	be 01 00 00 00       	mov    $0x1,%esi
  402b4b:	bf 02 00 00 00       	mov    $0x2,%edi
  402b50:	e8 5b e3 ff ff       	callq  400eb0 <socket@plt>
  402b55:	89 c3                	mov    %eax,%ebx
  402b57:	85 c0                	test   %eax,%eax
  402b59:	79 4f                	jns    402baa <init_driver+0xaf>
  402b5b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b62:	3a 20 43 
  402b65:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b69:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402b70:	20 75 6e 
  402b73:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b77:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b7e:	74 6f 20 
  402b81:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b85:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402b8c:	65 20 73 
  402b8f:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b93:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402b9a:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402ba0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ba5:	e9 28 01 00 00       	jmpq   402cd2 <init_driver+0x1d7>
  402baa:	bf 35 36 40 00       	mov    $0x403635,%edi
  402baf:	e8 cc e1 ff ff       	callq  400d80 <gethostbyname@plt>
  402bb4:	48 85 c0             	test   %rax,%rax
  402bb7:	75 68                	jne    402c21 <init_driver+0x126>
  402bb9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402bc0:	3a 20 44 
  402bc3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bc7:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402bce:	20 75 6e 
  402bd1:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402bd5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bdc:	74 6f 20 
  402bdf:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402be3:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402bea:	76 65 20 
  402bed:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402bf1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402bf8:	72 20 61 
  402bfb:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bff:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402c06:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402c0c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402c10:	89 df                	mov    %ebx,%edi
  402c12:	e8 29 e1 ff ff       	callq  400d40 <close@plt>
  402c17:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c1c:	e9 b1 00 00 00       	jmpq   402cd2 <init_driver+0x1d7>
  402c21:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402c28:	00 
  402c29:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402c30:	00 00 
  402c32:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402c38:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c3c:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c40:	48 8b 30             	mov    (%rax),%rsi
  402c43:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402c48:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c4d:	e8 3e e1 ff ff       	callq  400d90 <__memmove_chk@plt>
  402c52:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402c59:	ba 10 00 00 00       	mov    $0x10,%edx
  402c5e:	48 89 e6             	mov    %rsp,%rsi
  402c61:	89 df                	mov    %ebx,%edi
  402c63:	e8 18 e2 ff ff       	callq  400e80 <connect@plt>
  402c68:	85 c0                	test   %eax,%eax
  402c6a:	79 50                	jns    402cbc <init_driver+0x1c1>
  402c6c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402c73:	3a 20 55 
  402c76:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c7a:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402c81:	20 74 6f 
  402c84:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402c88:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402c8f:	65 63 74 
  402c92:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c96:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402c9d:	65 72 76 
  402ca0:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ca4:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402caa:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402cae:	89 df                	mov    %ebx,%edi
  402cb0:	e8 8b e0 ff ff       	callq  400d40 <close@plt>
  402cb5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cba:	eb 16                	jmp    402cd2 <init_driver+0x1d7>
  402cbc:	89 df                	mov    %ebx,%edi
  402cbe:	e8 7d e0 ff ff       	callq  400d40 <close@plt>
  402cc3:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402cc9:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402ccd:	b8 00 00 00 00       	mov    $0x0,%eax
  402cd2:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402cd7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402cde:	00 00 
  402ce0:	74 05                	je     402ce7 <init_driver+0x1ec>
  402ce2:	e8 19 e0 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402ce7:	48 83 c4 28          	add    $0x28,%rsp
  402ceb:	5b                   	pop    %rbx
  402cec:	5d                   	pop    %rbp
  402ced:	c3                   	retq   

0000000000402cee <driver_post>:
  402cee:	53                   	push   %rbx
  402cef:	48 83 ec 10          	sub    $0x10,%rsp
  402cf3:	4c 89 cb             	mov    %r9,%rbx
  402cf6:	45 85 c0             	test   %r8d,%r8d
  402cf9:	74 27                	je     402d22 <driver_post+0x34>
  402cfb:	48 89 ca             	mov    %rcx,%rdx
  402cfe:	be 44 36 40 00       	mov    $0x403644,%esi
  402d03:	bf 01 00 00 00       	mov    $0x1,%edi
  402d08:	b8 00 00 00 00       	mov    $0x0,%eax
  402d0d:	e8 0e e1 ff ff       	callq  400e20 <__printf_chk@plt>
  402d12:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402d17:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402d1b:	b8 00 00 00 00       	mov    $0x0,%eax
  402d20:	eb 39                	jmp    402d5b <driver_post+0x6d>
  402d22:	48 85 ff             	test   %rdi,%rdi
  402d25:	74 26                	je     402d4d <driver_post+0x5f>
  402d27:	80 3f 00             	cmpb   $0x0,(%rdi)
  402d2a:	74 21                	je     402d4d <driver_post+0x5f>
  402d2c:	4c 89 0c 24          	mov    %r9,(%rsp)
  402d30:	49 89 c9             	mov    %rcx,%r9
  402d33:	49 89 d0             	mov    %rdx,%r8
  402d36:	48 89 f9             	mov    %rdi,%rcx
  402d39:	48 89 f2             	mov    %rsi,%rdx
  402d3c:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402d41:	bf 35 36 40 00       	mov    $0x403635,%edi
  402d46:	e8 29 f6 ff ff       	callq  402374 <submitr>
  402d4b:	eb 0e                	jmp    402d5b <driver_post+0x6d>
  402d4d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402d52:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402d56:	b8 00 00 00 00       	mov    $0x0,%eax
  402d5b:	48 83 c4 10          	add    $0x10,%rsp
  402d5f:	5b                   	pop    %rbx
  402d60:	c3                   	retq   

0000000000402d61 <check>:
  402d61:	89 f8                	mov    %edi,%eax
  402d63:	c1 e8 1c             	shr    $0x1c,%eax
  402d66:	85 c0                	test   %eax,%eax
  402d68:	74 1d                	je     402d87 <check+0x26>
  402d6a:	b9 00 00 00 00       	mov    $0x0,%ecx
  402d6f:	eb 0b                	jmp    402d7c <check+0x1b>
  402d71:	89 f8                	mov    %edi,%eax
  402d73:	d3 e8                	shr    %cl,%eax
  402d75:	3c 0a                	cmp    $0xa,%al
  402d77:	74 14                	je     402d8d <check+0x2c>
  402d79:	83 c1 08             	add    $0x8,%ecx
  402d7c:	83 f9 1f             	cmp    $0x1f,%ecx
  402d7f:	7e f0                	jle    402d71 <check+0x10>
  402d81:	b8 01 00 00 00       	mov    $0x1,%eax
  402d86:	c3                   	retq   
  402d87:	b8 00 00 00 00       	mov    $0x0,%eax
  402d8c:	c3                   	retq   
  402d8d:	b8 00 00 00 00       	mov    $0x0,%eax
  402d92:	c3                   	retq   

0000000000402d93 <gencookie>:
  402d93:	53                   	push   %rbx
  402d94:	83 c7 01             	add    $0x1,%edi
  402d97:	e8 14 df ff ff       	callq  400cb0 <srandom@plt>
  402d9c:	e8 3f e0 ff ff       	callq  400de0 <random@plt>
  402da1:	89 c3                	mov    %eax,%ebx
  402da3:	89 c7                	mov    %eax,%edi
  402da5:	e8 b7 ff ff ff       	callq  402d61 <check>
  402daa:	85 c0                	test   %eax,%eax
  402dac:	74 ee                	je     402d9c <gencookie+0x9>
  402dae:	89 d8                	mov    %ebx,%eax
  402db0:	5b                   	pop    %rbx
  402db1:	c3                   	retq   
  402db2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402db9:	00 00 00 
  402dbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402dc0 <__libc_csu_init>:
  402dc0:	41 57                	push   %r15
  402dc2:	41 89 ff             	mov    %edi,%r15d
  402dc5:	41 56                	push   %r14
  402dc7:	49 89 f6             	mov    %rsi,%r14
  402dca:	41 55                	push   %r13
  402dcc:	49 89 d5             	mov    %rdx,%r13
  402dcf:	41 54                	push   %r12
  402dd1:	4c 8d 25 38 10 20 00 	lea    0x201038(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402dd8:	55                   	push   %rbp
  402dd9:	48 8d 2d 38 10 20 00 	lea    0x201038(%rip),%rbp        # 603e18 <__init_array_end>
  402de0:	53                   	push   %rbx
  402de1:	4c 29 e5             	sub    %r12,%rbp
  402de4:	31 db                	xor    %ebx,%ebx
  402de6:	48 c1 fd 03          	sar    $0x3,%rbp
  402dea:	48 83 ec 08          	sub    $0x8,%rsp
  402dee:	e8 6d de ff ff       	callq  400c60 <_init>
  402df3:	48 85 ed             	test   %rbp,%rbp
  402df6:	74 1e                	je     402e16 <__libc_csu_init+0x56>
  402df8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402dff:	00 
  402e00:	4c 89 ea             	mov    %r13,%rdx
  402e03:	4c 89 f6             	mov    %r14,%rsi
  402e06:	44 89 ff             	mov    %r15d,%edi
  402e09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402e0d:	48 83 c3 01          	add    $0x1,%rbx
  402e11:	48 39 eb             	cmp    %rbp,%rbx
  402e14:	75 ea                	jne    402e00 <__libc_csu_init+0x40>
  402e16:	48 83 c4 08          	add    $0x8,%rsp
  402e1a:	5b                   	pop    %rbx
  402e1b:	5d                   	pop    %rbp
  402e1c:	41 5c                	pop    %r12
  402e1e:	41 5d                	pop    %r13
  402e20:	41 5e                	pop    %r14
  402e22:	41 5f                	pop    %r15
  402e24:	c3                   	retq   
  402e25:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  402e2c:	00 00 00 00 

0000000000402e30 <__libc_csu_fini>:
  402e30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402e34 <_fini>:
  402e34:	48 83 ec 08          	sub    $0x8,%rsp
  402e38:	48 83 c4 08          	add    $0x8,%rsp
  402e3c:	c3                   	retq   
