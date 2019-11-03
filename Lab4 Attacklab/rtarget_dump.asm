
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c60 <_init>:
  400c60:	48 83 ec 08          	sub    $0x8,%rsp
  400c64:	48 8b 05 8d 43 20 00 	mov    0x20438d(%rip),%rax        # 604ff8 <_DYNAMIC+0x1d0>
  400c6b:	48 85 c0             	test   %rax,%rax
  400c6e:	74 05                	je     400c75 <_init+0x15>
  400c70:	e8 2b 01 00 00       	callq  400da0 <__gmon_start__@plt>
  400c75:	48 83 c4 08          	add    $0x8,%rsp
  400c79:	c3                   	retq   

Disassembly of section .plt:

0000000000400c80 <strcasecmp@plt-0x10>:
  400c80:	ff 35 82 43 20 00    	pushq  0x204382(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c86:	ff 25 84 43 20 00    	jmpq   *0x204384(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c90 <strcasecmp@plt>:
  400c90:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c96:	68 00 00 00 00       	pushq  $0x0
  400c9b:	e9 e0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ca0 <__errno_location@plt>:
  400ca0:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400ca6:	68 01 00 00 00       	pushq  $0x1
  400cab:	e9 d0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cb0 <srandom@plt>:
  400cb0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400cb6:	68 02 00 00 00       	pushq  $0x2
  400cbb:	e9 c0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cc0 <strncmp@plt>:
  400cc0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cc6:	68 03 00 00 00       	pushq  $0x3
  400ccb:	e9 b0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cd0 <strcpy@plt>:
  400cd0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cd6:	68 04 00 00 00       	pushq  $0x4
  400cdb:	e9 a0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ce0 <puts@plt>:
  400ce0:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400ce6:	68 05 00 00 00       	pushq  $0x5
  400ceb:	e9 90 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cf0 <write@plt>:
  400cf0:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400cf6:	68 06 00 00 00       	pushq  $0x6
  400cfb:	e9 80 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d00 <__stack_chk_fail@plt>:
  400d00:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400d06:	68 07 00 00 00       	pushq  $0x7
  400d0b:	e9 70 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d10 <mmap@plt>:
  400d10:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d16:	68 08 00 00 00       	pushq  $0x8
  400d1b:	e9 60 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d20 <memset@plt>:
  400d20:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d26:	68 09 00 00 00       	pushq  $0x9
  400d2b:	e9 50 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d30 <alarm@plt>:
  400d30:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d36:	68 0a 00 00 00       	pushq  $0xa
  400d3b:	e9 40 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d40 <close@plt>:
  400d40:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d46:	68 0b 00 00 00       	pushq  $0xb
  400d4b:	e9 30 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d50 <read@plt>:
  400d50:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d56:	68 0c 00 00 00       	pushq  $0xc
  400d5b:	e9 20 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d60 <__libc_start_main@plt>:
  400d60:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d66:	68 0d 00 00 00       	pushq  $0xd
  400d6b:	e9 10 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d70 <signal@plt>:
  400d70:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d76:	68 0e 00 00 00       	pushq  $0xe
  400d7b:	e9 00 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d80 <gethostbyname@plt>:
  400d80:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d86:	68 0f 00 00 00       	pushq  $0xf
  400d8b:	e9 f0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d90 <__memmove_chk@plt>:
  400d90:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d96:	68 10 00 00 00       	pushq  $0x10
  400d9b:	e9 e0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400da0 <__gmon_start__@plt>:
  400da0:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400da6:	68 11 00 00 00       	pushq  $0x11
  400dab:	e9 d0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400db0 <strtol@plt>:
  400db0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400db6:	68 12 00 00 00       	pushq  $0x12
  400dbb:	e9 c0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400dc0 <memcpy@plt>:
  400dc0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400dc6:	68 13 00 00 00       	pushq  $0x13
  400dcb:	e9 b0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400dd0 <time@plt>:
  400dd0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400dd6:	68 14 00 00 00       	pushq  $0x14
  400ddb:	e9 a0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400de0 <random@plt>:
  400de0:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400de6:	68 15 00 00 00       	pushq  $0x15
  400deb:	e9 90 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400df0 <_IO_getc@plt>:
  400df0:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400df6:	68 16 00 00 00       	pushq  $0x16
  400dfb:	e9 80 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e00 <__isoc99_sscanf@plt>:
  400e00:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400e06:	68 17 00 00 00       	pushq  $0x17
  400e0b:	e9 70 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e10 <munmap@plt>:
  400e10:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e16:	68 18 00 00 00       	pushq  $0x18
  400e1b:	e9 60 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e20 <__printf_chk@plt>:
  400e20:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e26:	68 19 00 00 00       	pushq  $0x19
  400e2b:	e9 50 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e30 <fopen@plt>:
  400e30:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e36:	68 1a 00 00 00       	pushq  $0x1a
  400e3b:	e9 40 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e40 <getopt@plt>:
  400e40:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e46:	68 1b 00 00 00       	pushq  $0x1b
  400e4b:	e9 30 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e50 <strtoul@plt>:
  400e50:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e56:	68 1c 00 00 00       	pushq  $0x1c
  400e5b:	e9 20 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e60 <gethostname@plt>:
  400e60:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e66:	68 1d 00 00 00       	pushq  $0x1d
  400e6b:	e9 10 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e70 <exit@plt>:
  400e70:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e76:	68 1e 00 00 00       	pushq  $0x1e
  400e7b:	e9 00 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e80 <connect@plt>:
  400e80:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e86:	68 1f 00 00 00       	pushq  $0x1f
  400e8b:	e9 f0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e90 <__fprintf_chk@plt>:
  400e90:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e96:	68 20 00 00 00       	pushq  $0x20
  400e9b:	e9 e0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ea0 <__sprintf_chk@plt>:
  400ea0:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400ea6:	68 21 00 00 00       	pushq  $0x21
  400eab:	e9 d0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400eb0 <socket@plt>:
  400eb0:	ff 25 72 42 20 00    	jmpq   *0x204272(%rip)        # 605128 <_GLOBAL_OFFSET_TABLE_+0x128>
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
  400ecf:	49 c7 c0 50 2f 40 00 	mov    $0x402f50,%r8
  400ed6:	48 c7 c1 e0 2e 40 00 	mov    $0x402ee0,%rcx
  400edd:	48 c7 c7 bf 11 40 00 	mov    $0x4011bf,%rdi
  400ee4:	e8 77 fe ff ff       	callq  400d60 <__libc_start_main@plt>
  400ee9:	f4                   	hlt    
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <deregister_tm_clones>:
  400ef0:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400ef5:	55                   	push   %rbp
  400ef6:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400efc:	48 83 f8 0e          	cmp    $0xe,%rax
  400f00:	48 89 e5             	mov    %rsp,%rbp
  400f03:	77 02                	ja     400f07 <deregister_tm_clones+0x17>
  400f05:	5d                   	pop    %rbp
  400f06:	c3                   	retq   
  400f07:	b8 00 00 00 00       	mov    $0x0,%eax
  400f0c:	48 85 c0             	test   %rax,%rax
  400f0f:	74 f4                	je     400f05 <deregister_tm_clones+0x15>
  400f11:	5d                   	pop    %rbp
  400f12:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f17:	ff e0                	jmpq   *%rax
  400f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f20 <register_tm_clones>:
  400f20:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400f25:	55                   	push   %rbp
  400f26:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
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
  400f52:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f57:	ff e2                	jmpq   *%rdx
  400f59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f60 <__do_global_dtors_aux>:
  400f60:	80 3d 89 45 20 00 00 	cmpb   $0x0,0x204589(%rip)        # 6054f0 <completed.6982>
  400f67:	75 11                	jne    400f7a <__do_global_dtors_aux+0x1a>
  400f69:	55                   	push   %rbp
  400f6a:	48 89 e5             	mov    %rsp,%rbp
  400f6d:	e8 7e ff ff ff       	callq  400ef0 <deregister_tm_clones>
  400f72:	5d                   	pop    %rbp
  400f73:	c6 05 76 45 20 00 01 	movb   $0x1,0x204576(%rip)        # 6054f0 <completed.6982>
  400f7a:	f3 c3                	repz retq 
  400f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f80 <frame_dummy>:
  400f80:	48 83 3d 98 3e 20 00 	cmpq   $0x0,0x203e98(%rip)        # 604e20 <__JCR_END__>
  400f87:	00 
  400f88:	74 1e                	je     400fa8 <frame_dummy+0x28>
  400f8a:	b8 00 00 00 00       	mov    $0x0,%eax
  400f8f:	48 85 c0             	test   %rax,%rax
  400f92:	74 14                	je     400fa8 <frame_dummy+0x28>
  400f94:	55                   	push   %rbp
  400f95:	bf 20 4e 60 00       	mov    $0x604e20,%edi
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
  400fb7:	83 3d 6a 45 20 00 00 	cmpl   $0x0,0x20456a(%rip)        # 605528 <is_checker>
  400fbe:	74 3e                	je     400ffe <usage+0x4e>
  400fc0:	be 68 2f 40 00       	mov    $0x402f68,%esi
  400fc5:	bf 01 00 00 00       	mov    $0x1,%edi
  400fca:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcf:	e8 4c fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fd4:	bf a0 2f 40 00       	mov    $0x402fa0,%edi
  400fd9:	e8 02 fd ff ff       	callq  400ce0 <puts@plt>
  400fde:	bf 18 31 40 00       	mov    $0x403118,%edi
  400fe3:	e8 f8 fc ff ff       	callq  400ce0 <puts@plt>
  400fe8:	bf c8 2f 40 00       	mov    $0x402fc8,%edi
  400fed:	e8 ee fc ff ff       	callq  400ce0 <puts@plt>
  400ff2:	bf 32 31 40 00       	mov    $0x403132,%edi
  400ff7:	e8 e4 fc ff ff       	callq  400ce0 <puts@plt>
  400ffc:	eb 32                	jmp    401030 <usage+0x80>
  400ffe:	be 4e 31 40 00       	mov    $0x40314e,%esi
  401003:	bf 01 00 00 00       	mov    $0x1,%edi
  401008:	b8 00 00 00 00       	mov    $0x0,%eax
  40100d:	e8 0e fe ff ff       	callq  400e20 <__printf_chk@plt>
  401012:	bf f0 2f 40 00       	mov    $0x402ff0,%edi
  401017:	e8 c4 fc ff ff       	callq  400ce0 <puts@plt>
  40101c:	bf 18 30 40 00       	mov    $0x403018,%edi
  401021:	e8 ba fc ff ff       	callq  400ce0 <puts@plt>
  401026:	bf 6c 31 40 00       	mov    $0x40316c,%edi
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
  401058:	89 3d ba 44 20 00    	mov    %edi,0x2044ba(%rip)        # 605518 <check_level>
  40105e:	8b 3d 04 41 20 00    	mov    0x204104(%rip),%edi        # 605168 <target_id>
  401064:	e8 4a 1e 00 00       	callq  402eb3 <gencookie>
  401069:	89 05 b5 44 20 00    	mov    %eax,0x2044b5(%rip)        # 605524 <cookie>
  40106f:	89 c7                	mov    %eax,%edi
  401071:	e8 3d 1e 00 00       	callq  402eb3 <gencookie>
  401076:	89 05 a4 44 20 00    	mov    %eax,0x2044a4(%rip)        # 605520 <authkey>
  40107c:	8b 05 e6 40 20 00    	mov    0x2040e6(%rip),%eax        # 605168 <target_id>
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
  4010c7:	48 89 05 d2 43 20 00 	mov    %rax,0x2043d2(%rip)        # 6054a0 <buf_offset>
  4010ce:	c6 05 73 50 20 00 72 	movb   $0x72,0x205073(%rip)        # 606148 <target_prefix>
  4010d5:	83 3d cc 43 20 00 00 	cmpl   $0x0,0x2043cc(%rip)        # 6054a8 <notify>
  4010dc:	0f 84 bb 00 00 00    	je     40119d <initialize_target+0x163>
  4010e2:	83 3d 3f 44 20 00 00 	cmpl   $0x0,0x20443f(%rip)        # 605528 <is_checker>
  4010e9:	0f 85 ae 00 00 00    	jne    40119d <initialize_target+0x163>
  4010ef:	be 00 01 00 00       	mov    $0x100,%esi
  4010f4:	48 89 e7             	mov    %rsp,%rdi
  4010f7:	e8 64 fd ff ff       	callq  400e60 <gethostname@plt>
  4010fc:	85 c0                	test   %eax,%eax
  4010fe:	74 25                	je     401125 <initialize_target+0xeb>
  401100:	bf 48 30 40 00       	mov    $0x403048,%edi
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
  40112d:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  401134:	00 
  401135:	48 85 ff             	test   %rdi,%rdi
  401138:	75 da                	jne    401114 <initialize_target+0xda>
  40113a:	b8 00 00 00 00       	mov    $0x0,%eax
  40113f:	eb 05                	jmp    401146 <initialize_target+0x10c>
  401141:	b8 01 00 00 00       	mov    $0x1,%eax
  401146:	85 c0                	test   %eax,%eax
  401148:	75 1c                	jne    401166 <initialize_target+0x12c>
  40114a:	48 89 e2             	mov    %rsp,%rdx
  40114d:	be 80 30 40 00       	mov    $0x403080,%esi
  401152:	bf 01 00 00 00       	mov    $0x1,%edi
  401157:	e8 c4 fc ff ff       	callq  400e20 <__printf_chk@plt>
  40115c:	bf 08 00 00 00       	mov    $0x8,%edi
  401161:	e8 0a fd ff ff       	callq  400e70 <exit@plt>
  401166:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40116d:	00 
  40116e:	e8 a8 1a 00 00       	callq  402c1b <init_driver>
  401173:	85 c0                	test   %eax,%eax
  401175:	79 26                	jns    40119d <initialize_target+0x163>
  401177:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40117e:	00 
  40117f:	be c0 30 40 00       	mov    $0x4030c0,%esi
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
  4011cd:	be 8e 1f 40 00       	mov    $0x401f8e,%esi
  4011d2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011d7:	e8 94 fb ff ff       	callq  400d70 <signal@plt>
  4011dc:	be 40 1f 40 00       	mov    $0x401f40,%esi
  4011e1:	bf 07 00 00 00       	mov    $0x7,%edi
  4011e6:	e8 85 fb ff ff       	callq  400d70 <signal@plt>
  4011eb:	be dc 1f 40 00       	mov    $0x401fdc,%esi
  4011f0:	bf 04 00 00 00       	mov    $0x4,%edi
  4011f5:	e8 76 fb ff ff       	callq  400d70 <signal@plt>
  4011fa:	83 3d 27 43 20 00 00 	cmpl   $0x0,0x204327(%rip)        # 605528 <is_checker>
  401201:	74 20                	je     401223 <main+0x64>
  401203:	be 2a 20 40 00       	mov    $0x40202a,%esi
  401208:	bf 0e 00 00 00       	mov    $0xe,%edi
  40120d:	e8 5e fb ff ff       	callq  400d70 <signal@plt>
  401212:	bf 05 00 00 00       	mov    $0x5,%edi
  401217:	e8 14 fb ff ff       	callq  400d30 <alarm@plt>
  40121c:	bd 8a 31 40 00       	mov    $0x40318a,%ebp
  401221:	eb 05                	jmp    401228 <main+0x69>
  401223:	bd 85 31 40 00       	mov    $0x403185,%ebp
  401228:	48 8b 05 91 42 20 00 	mov    0x204291(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40122f:	48 89 05 da 42 20 00 	mov    %rax,0x2042da(%rip)        # 605510 <infile>
  401236:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40123c:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401242:	e9 c6 00 00 00       	jmpq   40130d <main+0x14e>
  401247:	83 e8 61             	sub    $0x61,%eax
  40124a:	3c 10                	cmp    $0x10,%al
  40124c:	0f 87 9c 00 00 00    	ja     4012ee <main+0x12f>
  401252:	0f b6 c0             	movzbl %al,%eax
  401255:	ff 24 c5 d0 31 40 00 	jmpq   *0x4031d0(,%rax,8)
  40125c:	48 8b 3b             	mov    (%rbx),%rdi
  40125f:	e8 4c fd ff ff       	callq  400fb0 <usage>
  401264:	be 4d 34 40 00       	mov    $0x40344d,%esi
  401269:	48 8b 3d 70 42 20 00 	mov    0x204270(%rip),%rdi        # 6054e0 <optarg@@GLIBC_2.2.5>
  401270:	e8 bb fb ff ff       	callq  400e30 <fopen@plt>
  401275:	48 89 05 94 42 20 00 	mov    %rax,0x204294(%rip)        # 605510 <infile>
  40127c:	48 85 c0             	test   %rax,%rax
  40127f:	0f 85 88 00 00 00    	jne    40130d <main+0x14e>
  401285:	48 8b 0d 54 42 20 00 	mov    0x204254(%rip),%rcx        # 6054e0 <optarg@@GLIBC_2.2.5>
  40128c:	ba 92 31 40 00       	mov    $0x403192,%edx
  401291:	be 01 00 00 00       	mov    $0x1,%esi
  401296:	48 8b 3d 4b 42 20 00 	mov    0x20424b(%rip),%rdi        # 6054e8 <stderr@@GLIBC_2.2.5>
  40129d:	e8 ee fb ff ff       	callq  400e90 <__fprintf_chk@plt>
  4012a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4012a7:	e9 e4 00 00 00       	jmpq   401390 <main+0x1d1>
  4012ac:	ba 10 00 00 00       	mov    $0x10,%edx
  4012b1:	be 00 00 00 00       	mov    $0x0,%esi
  4012b6:	48 8b 3d 23 42 20 00 	mov    0x204223(%rip),%rdi        # 6054e0 <optarg@@GLIBC_2.2.5>
  4012bd:	e8 8e fb ff ff       	callq  400e50 <strtoul@plt>
  4012c2:	41 89 c6             	mov    %eax,%r14d
  4012c5:	eb 46                	jmp    40130d <main+0x14e>
  4012c7:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012cc:	be 00 00 00 00       	mov    $0x0,%esi
  4012d1:	48 8b 3d 08 42 20 00 	mov    0x204208(%rip),%rdi        # 6054e0 <optarg@@GLIBC_2.2.5>
  4012d8:	e8 d3 fa ff ff       	callq  400db0 <strtol@plt>
  4012dd:	41 89 c5             	mov    %eax,%r13d
  4012e0:	eb 2b                	jmp    40130d <main+0x14e>
  4012e2:	c7 05 bc 41 20 00 00 	movl   $0x0,0x2041bc(%rip)        # 6054a8 <notify>
  4012e9:	00 00 00 
  4012ec:	eb 1f                	jmp    40130d <main+0x14e>
  4012ee:	0f be d2             	movsbl %dl,%edx
  4012f1:	be af 31 40 00       	mov    $0x4031af,%esi
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
  401325:	be 01 00 00 00       	mov    $0x1,%esi
  40132a:	44 89 ef             	mov    %r13d,%edi
  40132d:	e8 08 fd ff ff       	callq  40103a <initialize_target>
  401332:	83 3d ef 41 20 00 00 	cmpl   $0x0,0x2041ef(%rip)        # 605528 <is_checker>
  401339:	74 2a                	je     401365 <main+0x1a6>
  40133b:	44 3b 35 de 41 20 00 	cmp    0x2041de(%rip),%r14d        # 605520 <authkey>
  401342:	74 21                	je     401365 <main+0x1a6>
  401344:	44 89 f2             	mov    %r14d,%edx
  401347:	be e8 30 40 00       	mov    $0x4030e8,%esi
  40134c:	bf 01 00 00 00       	mov    $0x1,%edi
  401351:	b8 00 00 00 00       	mov    $0x0,%eax
  401356:	e8 c5 fa ff ff       	callq  400e20 <__printf_chk@plt>
  40135b:	b8 00 00 00 00       	mov    $0x0,%eax
  401360:	e8 66 08 00 00       	callq  401bcb <check_fail>
  401365:	8b 15 b9 41 20 00    	mov    0x2041b9(%rip),%edx        # 605524 <cookie>
  40136b:	be c2 31 40 00       	mov    $0x4031c2,%esi
  401370:	bf 01 00 00 00       	mov    $0x1,%edi
  401375:	b8 00 00 00 00       	mov    $0x0,%eax
  40137a:	e8 a1 fa ff ff       	callq  400e20 <__printf_chk@plt>
  40137f:	48 8b 3d 1a 41 20 00 	mov    0x20411a(%rip),%rdi        # 6054a0 <buf_offset>
  401386:	e8 f2 0c 00 00       	callq  40207d <launch>
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
  401857:	e8 a4 03 00 00       	callq  401c00 <Gets>
  40185c:	b8 01 00 00 00       	mov    $0x1,%eax
  401861:	48 83 c4 38          	add    $0x38,%rsp
  401865:	c3                   	retq   

0000000000401866 <touch1>:
  401866:	48 83 ec 08          	sub    $0x8,%rsp
  40186a:	c7 05 a8 3c 20 00 01 	movl   $0x1,0x203ca8(%rip)        # 60551c <vlevel>
  401871:	00 00 00 
  401874:	bf a5 32 40 00       	mov    $0x4032a5,%edi
  401879:	e8 62 f4 ff ff       	callq  400ce0 <puts@plt>
  40187e:	bf 01 00 00 00       	mov    $0x1,%edi
  401883:	e8 ce 05 00 00       	callq  401e56 <validate>
  401888:	bf 00 00 00 00       	mov    $0x0,%edi
  40188d:	e8 de f5 ff ff       	callq  400e70 <exit@plt>

0000000000401892 <touch2>:
  401892:	48 83 ec 08          	sub    $0x8,%rsp
  401896:	89 fa                	mov    %edi,%edx
  401898:	c7 05 7a 3c 20 00 02 	movl   $0x2,0x203c7a(%rip)        # 60551c <vlevel>
  40189f:	00 00 00 
  4018a2:	3b 3d 7c 3c 20 00    	cmp    0x203c7c(%rip),%edi        # 605524 <cookie>
  4018a8:	75 20                	jne    4018ca <touch2+0x38>
  4018aa:	be c8 32 40 00       	mov    $0x4032c8,%esi
  4018af:	bf 01 00 00 00       	mov    $0x1,%edi
  4018b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b9:	e8 62 f5 ff ff       	callq  400e20 <__printf_chk@plt>
  4018be:	bf 02 00 00 00       	mov    $0x2,%edi
  4018c3:	e8 8e 05 00 00       	callq  401e56 <validate>
  4018c8:	eb 1e                	jmp    4018e8 <touch2+0x56>
  4018ca:	be f0 32 40 00       	mov    $0x4032f0,%esi
  4018cf:	bf 01 00 00 00       	mov    $0x1,%edi
  4018d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018d9:	e8 42 f5 ff ff       	callq  400e20 <__printf_chk@plt>
  4018de:	bf 02 00 00 00       	mov    $0x2,%edi
  4018e3:	e8 30 06 00 00       	callq  401f18 <fail>
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
  40194c:	b9 c2 32 40 00       	mov    $0x4032c2,%ecx
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
  4019a4:	c7 05 6e 3b 20 00 03 	movl   $0x3,0x203b6e(%rip)        # 60551c <vlevel>
  4019ab:	00 00 00 
  4019ae:	48 89 fe             	mov    %rdi,%rsi
  4019b1:	8b 3d 6d 3b 20 00    	mov    0x203b6d(%rip),%edi        # 605524 <cookie>
  4019b7:	e8 36 ff ff ff       	callq  4018f2 <hexmatch>
  4019bc:	85 c0                	test   %eax,%eax
  4019be:	74 23                	je     4019e3 <touch3+0x43>
  4019c0:	48 89 da             	mov    %rbx,%rdx
  4019c3:	be 18 33 40 00       	mov    $0x403318,%esi
  4019c8:	bf 01 00 00 00       	mov    $0x1,%edi
  4019cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019d2:	e8 49 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019d7:	bf 03 00 00 00       	mov    $0x3,%edi
  4019dc:	e8 75 04 00 00       	callq  401e56 <validate>
  4019e1:	eb 21                	jmp    401a04 <touch3+0x64>
  4019e3:	48 89 da             	mov    %rbx,%rdx
  4019e6:	be 40 33 40 00       	mov    $0x403340,%esi
  4019eb:	bf 01 00 00 00       	mov    $0x1,%edi
  4019f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4019f5:	e8 26 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019fa:	bf 03 00 00 00       	mov    $0x3,%edi
  4019ff:	e8 14 05 00 00       	callq  401f18 <fail>
  401a04:	bf 00 00 00 00       	mov    $0x0,%edi
  401a09:	e8 62 f4 ff ff       	callq  400e70 <exit@plt>

0000000000401a0e <test>:
  401a0e:	48 83 ec 08          	sub    $0x8,%rsp
  401a12:	b8 00 00 00 00       	mov    $0x0,%eax
  401a17:	e8 34 fe ff ff       	callq  401850 <getbuf>
  401a1c:	89 c2                	mov    %eax,%edx
  401a1e:	be 68 33 40 00       	mov    $0x403368,%esi
  401a23:	bf 01 00 00 00       	mov    $0x1,%edi
  401a28:	b8 00 00 00 00       	mov    $0x0,%eax
  401a2d:	e8 ee f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401a32:	48 83 c4 08          	add    $0x8,%rsp
  401a36:	c3                   	retq   

0000000000401a37 <start_farm>:
  401a37:	b8 01 00 00 00       	mov    $0x1,%eax
  401a3c:	c3                   	retq   

0000000000401a3d <getval_473>:
  401a3d:	b8 cf 50 90 90       	mov    $0x909050cf,%eax
  401a42:	c3                   	retq   

0000000000401a43 <addval_292>:
  401a43:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  401a49:	c3                   	retq   

0000000000401a4a <setval_474>:
  401a4a:	c7 07 34 48 89 c7    	movl   $0xc7894834,(%rdi)
  401a50:	c3                   	retq   

0000000000401a51 <getval_136>:
  401a51:	b8 08 89 c7 c3       	mov    $0xc3c78908,%eax
  401a56:	c3                   	retq   

0000000000401a57 <setval_123>:
  401a57:	c7 07 f8 38 58 c2    	movl   $0xc25838f8,(%rdi)
  401a5d:	c3                   	retq   

0000000000401a5e <addval_351>:
  401a5e:	8d 87 28 45 c3 58    	lea    0x58c34528(%rdi),%eax
  401a64:	c3                   	retq   

0000000000401a65 <setval_286>:
  401a65:	c7 07 58 90 90 90    	movl   $0x90909058,(%rdi)
  401a6b:	c3                   	retq   

0000000000401a6c <addval_410>:
  401a6c:	8d 87 6f 4c 89 c7    	lea    -0x3876b391(%rdi),%eax
  401a72:	c3                   	retq   

0000000000401a73 <mid_farm>:
  401a73:	b8 01 00 00 00       	mov    $0x1,%eax
  401a78:	c3                   	retq   

0000000000401a79 <add_xy>:
  401a79:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401a7d:	c3                   	retq   

0000000000401a7e <setval_120>:
  401a7e:	c7 07 89 d6 90 c3    	movl   $0xc390d689,(%rdi)
  401a84:	c3                   	retq   

0000000000401a85 <getval_425>:
  401a85:	b8 ec 89 ca 90       	mov    $0x90ca89ec,%eax
  401a8a:	c3                   	retq   

0000000000401a8b <addval_154>:
  401a8b:	8d 87 89 ca 94 db    	lea    -0x246b3577(%rdi),%eax
  401a91:	c3                   	retq   

0000000000401a92 <getval_322>:
  401a92:	b8 a3 89 d6 94       	mov    $0x94d689a3,%eax
  401a97:	c3                   	retq   

0000000000401a98 <setval_337>:
  401a98:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  401a9e:	c3                   	retq   

0000000000401a9f <setval_167>:
  401a9f:	c7 07 89 ca 38 db    	movl   $0xdb38ca89,(%rdi)
  401aa5:	c3                   	retq   

0000000000401aa6 <addval_356>:
  401aa6:	8d 87 8d c1 38 c9    	lea    -0x36c73e73(%rdi),%eax
  401aac:	c3                   	retq   

0000000000401aad <setval_101>:
  401aad:	c7 07 89 c1 c4 db    	movl   $0xdbc4c189,(%rdi)
  401ab3:	c3                   	retq   

0000000000401ab4 <addval_498>:
  401ab4:	8d 87 89 c1 20 c0    	lea    -0x3fdf3e77(%rdi),%eax
  401aba:	c3                   	retq   

0000000000401abb <getval_415>:
  401abb:	b8 2f 89 d6 c1       	mov    $0xc1d6892f,%eax
  401ac0:	c3                   	retq   

0000000000401ac1 <setval_173>:
  401ac1:	c7 07 63 09 d6 90    	movl   $0x90d60963,(%rdi)
  401ac7:	c3                   	retq   

0000000000401ac8 <setval_279>:
  401ac8:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  401ace:	c3                   	retq   

0000000000401acf <getval_207>:
  401acf:	b8 89 d6 84 db       	mov    $0xdb84d689,%eax
  401ad4:	c3                   	retq   

0000000000401ad5 <setval_282>:
  401ad5:	c7 07 39 89 ca 91    	movl   $0x91ca8939,(%rdi)
  401adb:	c3                   	retq   

0000000000401adc <addval_208>:
  401adc:	8d 87 40 89 e0 c3    	lea    -0x3c1f76c0(%rdi),%eax
  401ae2:	c3                   	retq   

0000000000401ae3 <getval_250>:
  401ae3:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  401ae8:	c3                   	retq   

0000000000401ae9 <setval_323>:
  401ae9:	c7 07 89 ca c1 dc    	movl   $0xdcc1ca89,(%rdi)
  401aef:	c3                   	retq   

0000000000401af0 <getval_316>:
  401af0:	b8 48 8d e0 c3       	mov    $0xc3e08d48,%eax
  401af5:	c3                   	retq   

0000000000401af6 <addval_289>:
  401af6:	8d 87 89 c1 90 c3    	lea    -0x3c6f3e77(%rdi),%eax
  401afc:	c3                   	retq   

0000000000401afd <getval_342>:
  401afd:	b8 81 ca 08 d2       	mov    $0xd208ca81,%eax
  401b02:	c3                   	retq   

0000000000401b03 <addval_295>:
  401b03:	8d 87 89 ca 94 d2    	lea    -0x2d6b3577(%rdi),%eax
  401b09:	c3                   	retq   

0000000000401b0a <getval_240>:
  401b0a:	b8 89 d6 94 c9       	mov    $0xc994d689,%eax
  401b0f:	c3                   	retq   

0000000000401b10 <addval_396>:
  401b10:	8d 87 89 c1 00 c0    	lea    -0x3fff3e77(%rdi),%eax
  401b16:	c3                   	retq   

0000000000401b17 <getval_153>:
  401b17:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401b1c:	c3                   	retq   

0000000000401b1d <setval_463>:
  401b1d:	c7 07 a9 d6 08 db    	movl   $0xdb08d6a9,(%rdi)
  401b23:	c3                   	retq   

0000000000401b24 <setval_152>:
  401b24:	c7 07 8d ca 38 db    	movl   $0xdb38ca8d,(%rdi)
  401b2a:	c3                   	retq   

0000000000401b2b <getval_298>:
  401b2b:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401b30:	c3                   	retq   

0000000000401b31 <addval_124>:
  401b31:	8d 87 89 c1 90 c7    	lea    -0x386f3e77(%rdi),%eax
  401b37:	c3                   	retq   

0000000000401b38 <setval_370>:
  401b38:	c7 07 89 c1 18 db    	movl   $0xdb18c189,(%rdi)
  401b3e:	c3                   	retq   

0000000000401b3f <getval_435>:
  401b3f:	b8 89 c1 78 d2       	mov    $0xd278c189,%eax
  401b44:	c3                   	retq   

0000000000401b45 <setval_394>:
  401b45:	c7 07 89 d6 94 c3    	movl   $0xc394d689,(%rdi)
  401b4b:	c3                   	retq   

0000000000401b4c <addval_392>:
  401b4c:	8d 87 4a 89 e0 c3    	lea    -0x3c1f76b6(%rdi),%eax
  401b52:	c3                   	retq   

0000000000401b53 <end_farm>:
  401b53:	b8 01 00 00 00       	mov    $0x1,%eax
  401b58:	c3                   	retq   
  401b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401b60 <save_char>:
  401b60:	8b 05 de 45 20 00    	mov    0x2045de(%rip),%eax        # 606144 <gets_cnt>
  401b66:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401b6b:	7f 49                	jg     401bb6 <save_char+0x56>
  401b6d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401b70:	89 f9                	mov    %edi,%ecx
  401b72:	c0 e9 04             	shr    $0x4,%cl
  401b75:	83 e1 0f             	and    $0xf,%ecx
  401b78:	0f b6 b1 90 36 40 00 	movzbl 0x403690(%rcx),%esi
  401b7f:	48 63 ca             	movslq %edx,%rcx
  401b82:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401b89:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401b8c:	83 e7 0f             	and    $0xf,%edi
  401b8f:	0f b6 b7 90 36 40 00 	movzbl 0x403690(%rdi),%esi
  401b96:	48 63 c9             	movslq %ecx,%rcx
  401b99:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401ba0:	83 c2 02             	add    $0x2,%edx
  401ba3:	48 63 d2             	movslq %edx,%rdx
  401ba6:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401bad:	83 c0 01             	add    $0x1,%eax
  401bb0:	89 05 8e 45 20 00    	mov    %eax,0x20458e(%rip)        # 606144 <gets_cnt>
  401bb6:	f3 c3                	repz retq 

0000000000401bb8 <save_term>:
  401bb8:	8b 05 86 45 20 00    	mov    0x204586(%rip),%eax        # 606144 <gets_cnt>
  401bbe:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401bc1:	48 98                	cltq   
  401bc3:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401bca:	c3                   	retq   

0000000000401bcb <check_fail>:
  401bcb:	48 83 ec 08          	sub    $0x8,%rsp
  401bcf:	0f be 15 72 45 20 00 	movsbl 0x204572(%rip),%edx        # 606148 <target_prefix>
  401bd6:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401bdc:	8b 0d 36 39 20 00    	mov    0x203936(%rip),%ecx        # 605518 <check_level>
  401be2:	be 8b 33 40 00       	mov    $0x40338b,%esi
  401be7:	bf 01 00 00 00       	mov    $0x1,%edi
  401bec:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf1:	e8 2a f2 ff ff       	callq  400e20 <__printf_chk@plt>
  401bf6:	bf 01 00 00 00       	mov    $0x1,%edi
  401bfb:	e8 70 f2 ff ff       	callq  400e70 <exit@plt>

0000000000401c00 <Gets>:
  401c00:	41 54                	push   %r12
  401c02:	55                   	push   %rbp
  401c03:	53                   	push   %rbx
  401c04:	49 89 fc             	mov    %rdi,%r12
  401c07:	c7 05 33 45 20 00 00 	movl   $0x0,0x204533(%rip)        # 606144 <gets_cnt>
  401c0e:	00 00 00 
  401c11:	48 89 fb             	mov    %rdi,%rbx
  401c14:	eb 11                	jmp    401c27 <Gets+0x27>
  401c16:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401c1a:	88 03                	mov    %al,(%rbx)
  401c1c:	0f b6 f8             	movzbl %al,%edi
  401c1f:	e8 3c ff ff ff       	callq  401b60 <save_char>
  401c24:	48 89 eb             	mov    %rbp,%rbx
  401c27:	48 8b 3d e2 38 20 00 	mov    0x2038e2(%rip),%rdi        # 605510 <infile>
  401c2e:	e8 bd f1 ff ff       	callq  400df0 <_IO_getc@plt>
  401c33:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c36:	74 05                	je     401c3d <Gets+0x3d>
  401c38:	83 f8 0a             	cmp    $0xa,%eax
  401c3b:	75 d9                	jne    401c16 <Gets+0x16>
  401c3d:	c6 03 00             	movb   $0x0,(%rbx)
  401c40:	b8 00 00 00 00       	mov    $0x0,%eax
  401c45:	e8 6e ff ff ff       	callq  401bb8 <save_term>
  401c4a:	4c 89 e0             	mov    %r12,%rax
  401c4d:	5b                   	pop    %rbx
  401c4e:	5d                   	pop    %rbp
  401c4f:	41 5c                	pop    %r12
  401c51:	c3                   	retq   

0000000000401c52 <notify_server>:
  401c52:	53                   	push   %rbx
  401c53:	48 81 ec 30 40 00 00 	sub    $0x4030,%rsp
  401c5a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c61:	00 00 
  401c63:	48 89 84 24 28 40 00 	mov    %rax,0x4028(%rsp)
  401c6a:	00 
  401c6b:	31 c0                	xor    %eax,%eax
  401c6d:	83 3d b4 38 20 00 00 	cmpl   $0x0,0x2038b4(%rip)        # 605528 <is_checker>
  401c74:	0f 85 bb 01 00 00    	jne    401e35 <notify_server+0x1e3>
  401c7a:	89 fb                	mov    %edi,%ebx
  401c7c:	8b 05 c2 44 20 00    	mov    0x2044c2(%rip),%eax        # 606144 <gets_cnt>
  401c82:	83 c0 64             	add    $0x64,%eax
  401c85:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401c8a:	7e 1e                	jle    401caa <notify_server+0x58>
  401c8c:	be c0 34 40 00       	mov    $0x4034c0,%esi
  401c91:	bf 01 00 00 00       	mov    $0x1,%edi
  401c96:	b8 00 00 00 00       	mov    $0x0,%eax
  401c9b:	e8 80 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401ca0:	bf 01 00 00 00       	mov    $0x1,%edi
  401ca5:	e8 c6 f1 ff ff       	callq  400e70 <exit@plt>
  401caa:	0f be 05 97 44 20 00 	movsbl 0x204497(%rip),%eax        # 606148 <target_prefix>
  401cb1:	83 3d f0 37 20 00 00 	cmpl   $0x0,0x2037f0(%rip)        # 6054a8 <notify>
  401cb8:	74 08                	je     401cc2 <notify_server+0x70>
  401cba:	8b 15 60 38 20 00    	mov    0x203860(%rip),%edx        # 605520 <authkey>
  401cc0:	eb 05                	jmp    401cc7 <notify_server+0x75>
  401cc2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401cc7:	85 db                	test   %ebx,%ebx
  401cc9:	74 08                	je     401cd3 <notify_server+0x81>
  401ccb:	41 b9 a1 33 40 00    	mov    $0x4033a1,%r9d
  401cd1:	eb 06                	jmp    401cd9 <notify_server+0x87>
  401cd3:	41 b9 a6 33 40 00    	mov    $0x4033a6,%r9d
  401cd9:	48 c7 44 24 18 40 55 	movq   $0x605540,0x18(%rsp)
  401ce0:	60 00 
  401ce2:	89 74 24 10          	mov    %esi,0x10(%rsp)
  401ce6:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401cea:	89 14 24             	mov    %edx,(%rsp)
  401ced:	44 8b 05 74 34 20 00 	mov    0x203474(%rip),%r8d        # 605168 <target_id>
  401cf4:	b9 ab 33 40 00       	mov    $0x4033ab,%ecx
  401cf9:	ba 00 20 00 00       	mov    $0x2000,%edx
  401cfe:	be 01 00 00 00       	mov    $0x1,%esi
  401d03:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401d08:	b8 00 00 00 00       	mov    $0x0,%eax
  401d0d:	e8 8e f1 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401d12:	83 3d 8f 37 20 00 00 	cmpl   $0x0,0x20378f(%rip)        # 6054a8 <notify>
  401d19:	0f 84 86 00 00 00    	je     401da5 <notify_server+0x153>
  401d1f:	85 db                	test   %ebx,%ebx
  401d21:	74 70                	je     401d93 <notify_server+0x141>
  401d23:	4c 8d 8c 24 20 20 00 	lea    0x2020(%rsp),%r9
  401d2a:	00 
  401d2b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401d31:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401d36:	48 8b 15 33 34 20 00 	mov    0x203433(%rip),%rdx        # 605170 <lab>
  401d3d:	48 8b 35 34 34 20 00 	mov    0x203434(%rip),%rsi        # 605178 <course>
  401d44:	48 8b 3d 15 34 20 00 	mov    0x203415(%rip),%rdi        # 605160 <user_id>
  401d4b:	e8 be 10 00 00       	callq  402e0e <driver_post>
  401d50:	85 c0                	test   %eax,%eax
  401d52:	79 26                	jns    401d7a <notify_server+0x128>
  401d54:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  401d5b:	00 
  401d5c:	be c7 33 40 00       	mov    $0x4033c7,%esi
  401d61:	bf 01 00 00 00       	mov    $0x1,%edi
  401d66:	b8 00 00 00 00       	mov    $0x0,%eax
  401d6b:	e8 b0 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d70:	bf 01 00 00 00       	mov    $0x1,%edi
  401d75:	e8 f6 f0 ff ff       	callq  400e70 <exit@plt>
  401d7a:	bf f0 34 40 00       	mov    $0x4034f0,%edi
  401d7f:	e8 5c ef ff ff       	callq  400ce0 <puts@plt>
  401d84:	bf d3 33 40 00       	mov    $0x4033d3,%edi
  401d89:	e8 52 ef ff ff       	callq  400ce0 <puts@plt>
  401d8e:	e9 a2 00 00 00       	jmpq   401e35 <notify_server+0x1e3>
  401d93:	bf dd 33 40 00       	mov    $0x4033dd,%edi
  401d98:	e8 43 ef ff ff       	callq  400ce0 <puts@plt>
  401d9d:	0f 1f 00             	nopl   (%rax)
  401da0:	e9 90 00 00 00       	jmpq   401e35 <notify_server+0x1e3>
  401da5:	85 db                	test   %ebx,%ebx
  401da7:	74 09                	je     401db2 <notify_server+0x160>
  401da9:	ba a1 33 40 00       	mov    $0x4033a1,%edx
  401dae:	66 90                	xchg   %ax,%ax
  401db0:	eb 05                	jmp    401db7 <notify_server+0x165>
  401db2:	ba a6 33 40 00       	mov    $0x4033a6,%edx
  401db7:	be 28 35 40 00       	mov    $0x403528,%esi
  401dbc:	bf 01 00 00 00       	mov    $0x1,%edi
  401dc1:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc6:	e8 55 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401dcb:	48 8b 15 8e 33 20 00 	mov    0x20338e(%rip),%rdx        # 605160 <user_id>
  401dd2:	be e4 33 40 00       	mov    $0x4033e4,%esi
  401dd7:	bf 01 00 00 00       	mov    $0x1,%edi
  401ddc:	b8 00 00 00 00       	mov    $0x0,%eax
  401de1:	e8 3a f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401de6:	48 8b 15 8b 33 20 00 	mov    0x20338b(%rip),%rdx        # 605178 <course>
  401ded:	be f1 33 40 00       	mov    $0x4033f1,%esi
  401df2:	bf 01 00 00 00       	mov    $0x1,%edi
  401df7:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfc:	e8 1f f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401e01:	48 8b 15 68 33 20 00 	mov    0x203368(%rip),%rdx        # 605170 <lab>
  401e08:	be fd 33 40 00       	mov    $0x4033fd,%esi
  401e0d:	bf 01 00 00 00       	mov    $0x1,%edi
  401e12:	b8 00 00 00 00       	mov    $0x0,%eax
  401e17:	e8 04 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401e1c:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401e21:	be 06 34 40 00       	mov    $0x403406,%esi
  401e26:	bf 01 00 00 00       	mov    $0x1,%edi
  401e2b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e30:	e8 eb ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e35:	48 8b 84 24 28 40 00 	mov    0x4028(%rsp),%rax
  401e3c:	00 
  401e3d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e44:	00 00 
  401e46:	74 05                	je     401e4d <notify_server+0x1fb>
  401e48:	e8 b3 ee ff ff       	callq  400d00 <__stack_chk_fail@plt>
  401e4d:	48 81 c4 30 40 00 00 	add    $0x4030,%rsp
  401e54:	5b                   	pop    %rbx
  401e55:	c3                   	retq   

0000000000401e56 <validate>:
  401e56:	53                   	push   %rbx
  401e57:	89 fb                	mov    %edi,%ebx
  401e59:	83 3d c8 36 20 00 00 	cmpl   $0x0,0x2036c8(%rip)        # 605528 <is_checker>
  401e60:	74 6b                	je     401ecd <validate+0x77>
  401e62:	39 3d b4 36 20 00    	cmp    %edi,0x2036b4(%rip)        # 60551c <vlevel>
  401e68:	74 14                	je     401e7e <validate+0x28>
  401e6a:	bf 12 34 40 00       	mov    $0x403412,%edi
  401e6f:	e8 6c ee ff ff       	callq  400ce0 <puts@plt>
  401e74:	b8 00 00 00 00       	mov    $0x0,%eax
  401e79:	e8 4d fd ff ff       	callq  401bcb <check_fail>
  401e7e:	8b 15 94 36 20 00    	mov    0x203694(%rip),%edx        # 605518 <check_level>
  401e84:	39 fa                	cmp    %edi,%edx
  401e86:	74 20                	je     401ea8 <validate+0x52>
  401e88:	89 f9                	mov    %edi,%ecx
  401e8a:	be 50 35 40 00       	mov    $0x403550,%esi
  401e8f:	bf 01 00 00 00       	mov    $0x1,%edi
  401e94:	b8 00 00 00 00       	mov    $0x0,%eax
  401e99:	e8 82 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e9e:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea3:	e8 23 fd ff ff       	callq  401bcb <check_fail>
  401ea8:	0f be 15 99 42 20 00 	movsbl 0x204299(%rip),%edx        # 606148 <target_prefix>
  401eaf:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401eb5:	89 f9                	mov    %edi,%ecx
  401eb7:	be 30 34 40 00       	mov    $0x403430,%esi
  401ebc:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec6:	e8 55 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ecb:	eb 49                	jmp    401f16 <validate+0xc0>
  401ecd:	39 3d 49 36 20 00    	cmp    %edi,0x203649(%rip)        # 60551c <vlevel>
  401ed3:	74 18                	je     401eed <validate+0x97>
  401ed5:	bf 12 34 40 00       	mov    $0x403412,%edi
  401eda:	e8 01 ee ff ff       	callq  400ce0 <puts@plt>
  401edf:	89 de                	mov    %ebx,%esi
  401ee1:	bf 00 00 00 00       	mov    $0x0,%edi
  401ee6:	e8 67 fd ff ff       	callq  401c52 <notify_server>
  401eeb:	eb 29                	jmp    401f16 <validate+0xc0>
  401eed:	0f be 0d 54 42 20 00 	movsbl 0x204254(%rip),%ecx        # 606148 <target_prefix>
  401ef4:	89 fa                	mov    %edi,%edx
  401ef6:	be 78 35 40 00       	mov    $0x403578,%esi
  401efb:	bf 01 00 00 00       	mov    $0x1,%edi
  401f00:	b8 00 00 00 00       	mov    $0x0,%eax
  401f05:	e8 16 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401f0a:	89 de                	mov    %ebx,%esi
  401f0c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f11:	e8 3c fd ff ff       	callq  401c52 <notify_server>
  401f16:	5b                   	pop    %rbx
  401f17:	c3                   	retq   

0000000000401f18 <fail>:
  401f18:	48 83 ec 08          	sub    $0x8,%rsp
  401f1c:	83 3d 05 36 20 00 00 	cmpl   $0x0,0x203605(%rip)        # 605528 <is_checker>
  401f23:	74 0a                	je     401f2f <fail+0x17>
  401f25:	b8 00 00 00 00       	mov    $0x0,%eax
  401f2a:	e8 9c fc ff ff       	callq  401bcb <check_fail>
  401f2f:	89 fe                	mov    %edi,%esi
  401f31:	bf 00 00 00 00       	mov    $0x0,%edi
  401f36:	e8 17 fd ff ff       	callq  401c52 <notify_server>
  401f3b:	48 83 c4 08          	add    $0x8,%rsp
  401f3f:	c3                   	retq   

0000000000401f40 <bushandler>:
  401f40:	48 83 ec 08          	sub    $0x8,%rsp
  401f44:	83 3d dd 35 20 00 00 	cmpl   $0x0,0x2035dd(%rip)        # 605528 <is_checker>
  401f4b:	74 14                	je     401f61 <bushandler+0x21>
  401f4d:	bf 45 34 40 00       	mov    $0x403445,%edi
  401f52:	e8 89 ed ff ff       	callq  400ce0 <puts@plt>
  401f57:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5c:	e8 6a fc ff ff       	callq  401bcb <check_fail>
  401f61:	bf b0 35 40 00       	mov    $0x4035b0,%edi
  401f66:	e8 75 ed ff ff       	callq  400ce0 <puts@plt>
  401f6b:	bf 4f 34 40 00       	mov    $0x40344f,%edi
  401f70:	e8 6b ed ff ff       	callq  400ce0 <puts@plt>
  401f75:	be 00 00 00 00       	mov    $0x0,%esi
  401f7a:	bf 00 00 00 00       	mov    $0x0,%edi
  401f7f:	e8 ce fc ff ff       	callq  401c52 <notify_server>
  401f84:	bf 01 00 00 00       	mov    $0x1,%edi
  401f89:	e8 e2 ee ff ff       	callq  400e70 <exit@plt>

0000000000401f8e <seghandler>:
  401f8e:	48 83 ec 08          	sub    $0x8,%rsp
  401f92:	83 3d 8f 35 20 00 00 	cmpl   $0x0,0x20358f(%rip)        # 605528 <is_checker>
  401f99:	74 14                	je     401faf <seghandler+0x21>
  401f9b:	bf 65 34 40 00       	mov    $0x403465,%edi
  401fa0:	e8 3b ed ff ff       	callq  400ce0 <puts@plt>
  401fa5:	b8 00 00 00 00       	mov    $0x0,%eax
  401faa:	e8 1c fc ff ff       	callq  401bcb <check_fail>
  401faf:	bf d0 35 40 00       	mov    $0x4035d0,%edi
  401fb4:	e8 27 ed ff ff       	callq  400ce0 <puts@plt>
  401fb9:	bf 4f 34 40 00       	mov    $0x40344f,%edi
  401fbe:	e8 1d ed ff ff       	callq  400ce0 <puts@plt>
  401fc3:	be 00 00 00 00       	mov    $0x0,%esi
  401fc8:	bf 00 00 00 00       	mov    $0x0,%edi
  401fcd:	e8 80 fc ff ff       	callq  401c52 <notify_server>
  401fd2:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd7:	e8 94 ee ff ff       	callq  400e70 <exit@plt>

0000000000401fdc <illegalhandler>:
  401fdc:	48 83 ec 08          	sub    $0x8,%rsp
  401fe0:	83 3d 41 35 20 00 00 	cmpl   $0x0,0x203541(%rip)        # 605528 <is_checker>
  401fe7:	74 14                	je     401ffd <illegalhandler+0x21>
  401fe9:	bf 78 34 40 00       	mov    $0x403478,%edi
  401fee:	e8 ed ec ff ff       	callq  400ce0 <puts@plt>
  401ff3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff8:	e8 ce fb ff ff       	callq  401bcb <check_fail>
  401ffd:	bf f8 35 40 00       	mov    $0x4035f8,%edi
  402002:	e8 d9 ec ff ff       	callq  400ce0 <puts@plt>
  402007:	bf 4f 34 40 00       	mov    $0x40344f,%edi
  40200c:	e8 cf ec ff ff       	callq  400ce0 <puts@plt>
  402011:	be 00 00 00 00       	mov    $0x0,%esi
  402016:	bf 00 00 00 00       	mov    $0x0,%edi
  40201b:	e8 32 fc ff ff       	callq  401c52 <notify_server>
  402020:	bf 01 00 00 00       	mov    $0x1,%edi
  402025:	e8 46 ee ff ff       	callq  400e70 <exit@plt>

000000000040202a <sigalrmhandler>:
  40202a:	48 83 ec 08          	sub    $0x8,%rsp
  40202e:	83 3d f3 34 20 00 00 	cmpl   $0x0,0x2034f3(%rip)        # 605528 <is_checker>
  402035:	74 14                	je     40204b <sigalrmhandler+0x21>
  402037:	bf 8c 34 40 00       	mov    $0x40348c,%edi
  40203c:	e8 9f ec ff ff       	callq  400ce0 <puts@plt>
  402041:	b8 00 00 00 00       	mov    $0x0,%eax
  402046:	e8 80 fb ff ff       	callq  401bcb <check_fail>
  40204b:	ba 05 00 00 00       	mov    $0x5,%edx
  402050:	be 28 36 40 00       	mov    $0x403628,%esi
  402055:	bf 01 00 00 00       	mov    $0x1,%edi
  40205a:	b8 00 00 00 00       	mov    $0x0,%eax
  40205f:	e8 bc ed ff ff       	callq  400e20 <__printf_chk@plt>
  402064:	be 00 00 00 00       	mov    $0x0,%esi
  402069:	bf 00 00 00 00       	mov    $0x0,%edi
  40206e:	e8 df fb ff ff       	callq  401c52 <notify_server>
  402073:	bf 01 00 00 00       	mov    $0x1,%edi
  402078:	e8 f3 ed ff ff       	callq  400e70 <exit@plt>

000000000040207d <launch>:
  40207d:	55                   	push   %rbp
  40207e:	48 89 e5             	mov    %rsp,%rbp
  402081:	48 83 ec 10          	sub    $0x10,%rsp
  402085:	48 89 fa             	mov    %rdi,%rdx
  402088:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40208f:	00 00 
  402091:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402095:	31 c0                	xor    %eax,%eax
  402097:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  40209b:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40209f:	48 29 c4             	sub    %rax,%rsp
  4020a2:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4020a7:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4020ab:	be f4 00 00 00       	mov    $0xf4,%esi
  4020b0:	e8 6b ec ff ff       	callq  400d20 <memset@plt>
  4020b5:	48 8b 05 04 34 20 00 	mov    0x203404(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  4020bc:	48 39 05 4d 34 20 00 	cmp    %rax,0x20344d(%rip)        # 605510 <infile>
  4020c3:	75 14                	jne    4020d9 <launch+0x5c>
  4020c5:	be 94 34 40 00       	mov    $0x403494,%esi
  4020ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4020cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d4:	e8 47 ed ff ff       	callq  400e20 <__printf_chk@plt>
  4020d9:	c7 05 39 34 20 00 00 	movl   $0x0,0x203439(%rip)        # 60551c <vlevel>
  4020e0:	00 00 00 
  4020e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e8:	e8 21 f9 ff ff       	callq  401a0e <test>
  4020ed:	83 3d 34 34 20 00 00 	cmpl   $0x0,0x203434(%rip)        # 605528 <is_checker>
  4020f4:	74 14                	je     40210a <launch+0x8d>
  4020f6:	bf a1 34 40 00       	mov    $0x4034a1,%edi
  4020fb:	e8 e0 eb ff ff       	callq  400ce0 <puts@plt>
  402100:	b8 00 00 00 00       	mov    $0x0,%eax
  402105:	e8 c1 fa ff ff       	callq  401bcb <check_fail>
  40210a:	bf ac 34 40 00       	mov    $0x4034ac,%edi
  40210f:	e8 cc eb ff ff       	callq  400ce0 <puts@plt>
  402114:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402118:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40211f:	00 00 
  402121:	74 05                	je     402128 <launch+0xab>
  402123:	e8 d8 eb ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402128:	c9                   	leaveq 
  402129:	c3                   	retq   

000000000040212a <stable_launch>:
  40212a:	53                   	push   %rbx
  40212b:	48 89 3d d6 33 20 00 	mov    %rdi,0x2033d6(%rip)        # 605508 <global_offset>
  402132:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402138:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40213e:	b9 32 01 00 00       	mov    $0x132,%ecx
  402143:	ba 07 00 00 00       	mov    $0x7,%edx
  402148:	be 00 00 10 00       	mov    $0x100000,%esi
  40214d:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402152:	e8 b9 eb ff ff       	callq  400d10 <mmap@plt>
  402157:	48 89 c3             	mov    %rax,%rbx
  40215a:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402160:	74 37                	je     402199 <stable_launch+0x6f>
  402162:	be 00 00 10 00       	mov    $0x100000,%esi
  402167:	48 89 c7             	mov    %rax,%rdi
  40216a:	e8 a1 ec ff ff       	callq  400e10 <munmap@plt>
  40216f:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402174:	ba 60 36 40 00       	mov    $0x403660,%edx
  402179:	be 01 00 00 00       	mov    $0x1,%esi
  40217e:	48 8b 3d 63 33 20 00 	mov    0x203363(%rip),%rdi        # 6054e8 <stderr@@GLIBC_2.2.5>
  402185:	b8 00 00 00 00       	mov    $0x0,%eax
  40218a:	e8 01 ed ff ff       	callq  400e90 <__fprintf_chk@plt>
  40218f:	bf 01 00 00 00       	mov    $0x1,%edi
  402194:	e8 d7 ec ff ff       	callq  400e70 <exit@plt>
  402199:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4021a0:	48 89 15 a9 3f 20 00 	mov    %rdx,0x203fa9(%rip)        # 606150 <stack_top>
  4021a7:	48 89 e0             	mov    %rsp,%rax
  4021aa:	48 89 d4             	mov    %rdx,%rsp
  4021ad:	48 89 c2             	mov    %rax,%rdx
  4021b0:	48 89 15 49 33 20 00 	mov    %rdx,0x203349(%rip)        # 605500 <global_save_stack>
  4021b7:	48 8b 3d 4a 33 20 00 	mov    0x20334a(%rip),%rdi        # 605508 <global_offset>
  4021be:	e8 ba fe ff ff       	callq  40207d <launch>
  4021c3:	48 8b 05 36 33 20 00 	mov    0x203336(%rip),%rax        # 605500 <global_save_stack>
  4021ca:	48 89 c4             	mov    %rax,%rsp
  4021cd:	be 00 00 10 00       	mov    $0x100000,%esi
  4021d2:	48 89 df             	mov    %rbx,%rdi
  4021d5:	e8 36 ec ff ff       	callq  400e10 <munmap@plt>
  4021da:	5b                   	pop    %rbx
  4021db:	c3                   	retq   
  4021dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004021e0 <rio_readinitb>:
  4021e0:	89 37                	mov    %esi,(%rdi)
  4021e2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4021e9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4021ed:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4021f1:	c3                   	retq   

00000000004021f2 <sigalrm_handler>:
  4021f2:	48 83 ec 08          	sub    $0x8,%rsp
  4021f6:	b9 00 00 00 00       	mov    $0x0,%ecx
  4021fb:	ba a0 36 40 00       	mov    $0x4036a0,%edx
  402200:	be 01 00 00 00       	mov    $0x1,%esi
  402205:	48 8b 3d dc 32 20 00 	mov    0x2032dc(%rip),%rdi        # 6054e8 <stderr@@GLIBC_2.2.5>
  40220c:	b8 00 00 00 00       	mov    $0x0,%eax
  402211:	e8 7a ec ff ff       	callq  400e90 <__fprintf_chk@plt>
  402216:	bf 01 00 00 00       	mov    $0x1,%edi
  40221b:	e8 50 ec ff ff       	callq  400e70 <exit@plt>

0000000000402220 <rio_writen>:
  402220:	41 55                	push   %r13
  402222:	41 54                	push   %r12
  402224:	55                   	push   %rbp
  402225:	53                   	push   %rbx
  402226:	48 83 ec 08          	sub    $0x8,%rsp
  40222a:	41 89 fc             	mov    %edi,%r12d
  40222d:	48 89 f5             	mov    %rsi,%rbp
  402230:	49 89 d5             	mov    %rdx,%r13
  402233:	48 89 d3             	mov    %rdx,%rbx
  402236:	eb 28                	jmp    402260 <rio_writen+0x40>
  402238:	48 89 da             	mov    %rbx,%rdx
  40223b:	48 89 ee             	mov    %rbp,%rsi
  40223e:	44 89 e7             	mov    %r12d,%edi
  402241:	e8 aa ea ff ff       	callq  400cf0 <write@plt>
  402246:	48 85 c0             	test   %rax,%rax
  402249:	7f 0f                	jg     40225a <rio_writen+0x3a>
  40224b:	e8 50 ea ff ff       	callq  400ca0 <__errno_location@plt>
  402250:	83 38 04             	cmpl   $0x4,(%rax)
  402253:	75 15                	jne    40226a <rio_writen+0x4a>
  402255:	b8 00 00 00 00       	mov    $0x0,%eax
  40225a:	48 29 c3             	sub    %rax,%rbx
  40225d:	48 01 c5             	add    %rax,%rbp
  402260:	48 85 db             	test   %rbx,%rbx
  402263:	75 d3                	jne    402238 <rio_writen+0x18>
  402265:	4c 89 e8             	mov    %r13,%rax
  402268:	eb 07                	jmp    402271 <rio_writen+0x51>
  40226a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402271:	48 83 c4 08          	add    $0x8,%rsp
  402275:	5b                   	pop    %rbx
  402276:	5d                   	pop    %rbp
  402277:	41 5c                	pop    %r12
  402279:	41 5d                	pop    %r13
  40227b:	c3                   	retq   

000000000040227c <rio_read>:
  40227c:	41 56                	push   %r14
  40227e:	41 55                	push   %r13
  402280:	41 54                	push   %r12
  402282:	55                   	push   %rbp
  402283:	53                   	push   %rbx
  402284:	48 89 fb             	mov    %rdi,%rbx
  402287:	49 89 f6             	mov    %rsi,%r14
  40228a:	49 89 d5             	mov    %rdx,%r13
  40228d:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  402291:	eb 2a                	jmp    4022bd <rio_read+0x41>
  402293:	8b 3b                	mov    (%rbx),%edi
  402295:	ba 00 20 00 00       	mov    $0x2000,%edx
  40229a:	4c 89 e6             	mov    %r12,%rsi
  40229d:	e8 ae ea ff ff       	callq  400d50 <read@plt>
  4022a2:	89 43 04             	mov    %eax,0x4(%rbx)
  4022a5:	85 c0                	test   %eax,%eax
  4022a7:	79 0c                	jns    4022b5 <rio_read+0x39>
  4022a9:	e8 f2 e9 ff ff       	callq  400ca0 <__errno_location@plt>
  4022ae:	83 38 04             	cmpl   $0x4,(%rax)
  4022b1:	74 0a                	je     4022bd <rio_read+0x41>
  4022b3:	eb 37                	jmp    4022ec <rio_read+0x70>
  4022b5:	85 c0                	test   %eax,%eax
  4022b7:	74 3c                	je     4022f5 <rio_read+0x79>
  4022b9:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  4022bd:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4022c0:	85 ed                	test   %ebp,%ebp
  4022c2:	7e cf                	jle    402293 <rio_read+0x17>
  4022c4:	89 e8                	mov    %ebp,%eax
  4022c6:	4c 39 e8             	cmp    %r13,%rax
  4022c9:	72 03                	jb     4022ce <rio_read+0x52>
  4022cb:	44 89 ed             	mov    %r13d,%ebp
  4022ce:	4c 63 e5             	movslq %ebp,%r12
  4022d1:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4022d5:	4c 89 e2             	mov    %r12,%rdx
  4022d8:	4c 89 f7             	mov    %r14,%rdi
  4022db:	e8 e0 ea ff ff       	callq  400dc0 <memcpy@plt>
  4022e0:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4022e4:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4022e7:	4c 89 e0             	mov    %r12,%rax
  4022ea:	eb 0e                	jmp    4022fa <rio_read+0x7e>
  4022ec:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022f3:	eb 05                	jmp    4022fa <rio_read+0x7e>
  4022f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4022fa:	5b                   	pop    %rbx
  4022fb:	5d                   	pop    %rbp
  4022fc:	41 5c                	pop    %r12
  4022fe:	41 5d                	pop    %r13
  402300:	41 5e                	pop    %r14
  402302:	c3                   	retq   

0000000000402303 <rio_readlineb>:
  402303:	41 55                	push   %r13
  402305:	41 54                	push   %r12
  402307:	55                   	push   %rbp
  402308:	53                   	push   %rbx
  402309:	48 83 ec 18          	sub    $0x18,%rsp
  40230d:	49 89 fd             	mov    %rdi,%r13
  402310:	48 89 f5             	mov    %rsi,%rbp
  402313:	49 89 d4             	mov    %rdx,%r12
  402316:	bb 01 00 00 00       	mov    $0x1,%ebx
  40231b:	eb 3e                	jmp    40235b <rio_readlineb+0x58>
  40231d:	ba 01 00 00 00       	mov    $0x1,%edx
  402322:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402327:	4c 89 ef             	mov    %r13,%rdi
  40232a:	e8 4d ff ff ff       	callq  40227c <rio_read>
  40232f:	83 f8 01             	cmp    $0x1,%eax
  402332:	75 12                	jne    402346 <rio_readlineb+0x43>
  402334:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402338:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40233d:	88 45 00             	mov    %al,0x0(%rbp)
  402340:	3c 0a                	cmp    $0xa,%al
  402342:	75 10                	jne    402354 <rio_readlineb+0x51>
  402344:	eb 1c                	jmp    402362 <rio_readlineb+0x5f>
  402346:	85 c0                	test   %eax,%eax
  402348:	75 24                	jne    40236e <rio_readlineb+0x6b>
  40234a:	48 83 fb 01          	cmp    $0x1,%rbx
  40234e:	66 90                	xchg   %ax,%ax
  402350:	75 13                	jne    402365 <rio_readlineb+0x62>
  402352:	eb 23                	jmp    402377 <rio_readlineb+0x74>
  402354:	48 83 c3 01          	add    $0x1,%rbx
  402358:	48 89 d5             	mov    %rdx,%rbp
  40235b:	4c 39 e3             	cmp    %r12,%rbx
  40235e:	72 bd                	jb     40231d <rio_readlineb+0x1a>
  402360:	eb 03                	jmp    402365 <rio_readlineb+0x62>
  402362:	48 89 d5             	mov    %rdx,%rbp
  402365:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402369:	48 89 d8             	mov    %rbx,%rax
  40236c:	eb 0e                	jmp    40237c <rio_readlineb+0x79>
  40236e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402375:	eb 05                	jmp    40237c <rio_readlineb+0x79>
  402377:	b8 00 00 00 00       	mov    $0x0,%eax
  40237c:	48 83 c4 18          	add    $0x18,%rsp
  402380:	5b                   	pop    %rbx
  402381:	5d                   	pop    %rbp
  402382:	41 5c                	pop    %r12
  402384:	41 5d                	pop    %r13
  402386:	c3                   	retq   

0000000000402387 <urlencode>:
  402387:	41 54                	push   %r12
  402389:	55                   	push   %rbp
  40238a:	53                   	push   %rbx
  40238b:	48 83 ec 10          	sub    $0x10,%rsp
  40238f:	48 89 fb             	mov    %rdi,%rbx
  402392:	48 89 f5             	mov    %rsi,%rbp
  402395:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40239c:	00 00 
  40239e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4023a3:	31 c0                	xor    %eax,%eax
  4023a5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4023ac:	f2 ae                	repnz scas %es:(%rdi),%al
  4023ae:	48 f7 d1             	not    %rcx
  4023b1:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4023b4:	e9 aa 00 00 00       	jmpq   402463 <urlencode+0xdc>
  4023b9:	44 0f b6 03          	movzbl (%rbx),%r8d
  4023bd:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4023c1:	0f 94 c2             	sete   %dl
  4023c4:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4023c8:	0f 94 c0             	sete   %al
  4023cb:	08 c2                	or     %al,%dl
  4023cd:	75 24                	jne    4023f3 <urlencode+0x6c>
  4023cf:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4023d3:	74 1e                	je     4023f3 <urlencode+0x6c>
  4023d5:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4023d9:	74 18                	je     4023f3 <urlencode+0x6c>
  4023db:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4023df:	3c 09                	cmp    $0x9,%al
  4023e1:	76 10                	jbe    4023f3 <urlencode+0x6c>
  4023e3:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4023e7:	3c 19                	cmp    $0x19,%al
  4023e9:	76 08                	jbe    4023f3 <urlencode+0x6c>
  4023eb:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4023ef:	3c 19                	cmp    $0x19,%al
  4023f1:	77 0a                	ja     4023fd <urlencode+0x76>
  4023f3:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4023f7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023fb:	eb 5f                	jmp    40245c <urlencode+0xd5>
  4023fd:	41 80 f8 20          	cmp    $0x20,%r8b
  402401:	75 0a                	jne    40240d <urlencode+0x86>
  402403:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402407:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40240b:	eb 4f                	jmp    40245c <urlencode+0xd5>
  40240d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402411:	3c 5f                	cmp    $0x5f,%al
  402413:	0f 96 c2             	setbe  %dl
  402416:	41 80 f8 09          	cmp    $0x9,%r8b
  40241a:	0f 94 c0             	sete   %al
  40241d:	08 c2                	or     %al,%dl
  40241f:	74 50                	je     402471 <urlencode+0xea>
  402421:	45 0f b6 c0          	movzbl %r8b,%r8d
  402425:	b9 38 37 40 00       	mov    $0x403738,%ecx
  40242a:	ba 08 00 00 00       	mov    $0x8,%edx
  40242f:	be 01 00 00 00       	mov    $0x1,%esi
  402434:	48 89 e7             	mov    %rsp,%rdi
  402437:	b8 00 00 00 00       	mov    $0x0,%eax
  40243c:	e8 5f ea ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402441:	0f b6 04 24          	movzbl (%rsp),%eax
  402445:	88 45 00             	mov    %al,0x0(%rbp)
  402448:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40244d:	88 45 01             	mov    %al,0x1(%rbp)
  402450:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402455:	88 45 02             	mov    %al,0x2(%rbp)
  402458:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40245c:	48 83 c3 01          	add    $0x1,%rbx
  402460:	44 89 e0             	mov    %r12d,%eax
  402463:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402467:	85 c0                	test   %eax,%eax
  402469:	0f 85 4a ff ff ff    	jne    4023b9 <urlencode+0x32>
  40246f:	eb 05                	jmp    402476 <urlencode+0xef>
  402471:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402476:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40247b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402482:	00 00 
  402484:	74 05                	je     40248b <urlencode+0x104>
  402486:	e8 75 e8 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  40248b:	48 83 c4 10          	add    $0x10,%rsp
  40248f:	5b                   	pop    %rbx
  402490:	5d                   	pop    %rbp
  402491:	41 5c                	pop    %r12
  402493:	c3                   	retq   

0000000000402494 <submitr>:
  402494:	41 57                	push   %r15
  402496:	41 56                	push   %r14
  402498:	41 55                	push   %r13
  40249a:	41 54                	push   %r12
  40249c:	55                   	push   %rbp
  40249d:	53                   	push   %rbx
  40249e:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  4024a5:	49 89 fc             	mov    %rdi,%r12
  4024a8:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4024ac:	49 89 d7             	mov    %rdx,%r15
  4024af:	49 89 ce             	mov    %rcx,%r14
  4024b2:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4024b7:	4d 89 cd             	mov    %r9,%r13
  4024ba:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  4024c1:	00 
  4024c2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024c9:	00 00 
  4024cb:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  4024d2:	00 
  4024d3:	31 c0                	xor    %eax,%eax
  4024d5:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  4024dc:	00 
  4024dd:	ba 00 00 00 00       	mov    $0x0,%edx
  4024e2:	be 01 00 00 00       	mov    $0x1,%esi
  4024e7:	bf 02 00 00 00       	mov    $0x2,%edi
  4024ec:	e8 bf e9 ff ff       	callq  400eb0 <socket@plt>
  4024f1:	89 c5                	mov    %eax,%ebp
  4024f3:	85 c0                	test   %eax,%eax
  4024f5:	79 4e                	jns    402545 <submitr+0xb1>
  4024f7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4024fe:	3a 20 43 
  402501:	48 89 03             	mov    %rax,(%rbx)
  402504:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40250b:	20 75 6e 
  40250e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402512:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402519:	74 6f 20 
  40251c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402520:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402527:	65 20 73 
  40252a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40252e:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402535:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40253b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402540:	e9 84 06 00 00       	jmpq   402bc9 <submitr+0x735>
  402545:	4c 89 e7             	mov    %r12,%rdi
  402548:	e8 33 e8 ff ff       	callq  400d80 <gethostbyname@plt>
  40254d:	48 85 c0             	test   %rax,%rax
  402550:	75 67                	jne    4025b9 <submitr+0x125>
  402552:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402559:	3a 20 44 
  40255c:	48 89 03             	mov    %rax,(%rbx)
  40255f:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402566:	20 75 6e 
  402569:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40256d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402574:	74 6f 20 
  402577:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40257b:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402582:	76 65 20 
  402585:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402589:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402590:	72 20 61 
  402593:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402597:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  40259e:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4025a4:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4025a8:	89 ef                	mov    %ebp,%edi
  4025aa:	e8 91 e7 ff ff       	callq  400d40 <close@plt>
  4025af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025b4:	e9 10 06 00 00       	jmpq   402bc9 <submitr+0x735>
  4025b9:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  4025c0:	00 00 
  4025c2:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4025c9:	00 00 
  4025cb:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4025d2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4025d6:	48 8b 40 18          	mov    0x18(%rax),%rax
  4025da:	48 8b 30             	mov    (%rax),%rsi
  4025dd:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  4025e2:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4025e7:	e8 a4 e7 ff ff       	callq  400d90 <__memmove_chk@plt>
  4025ec:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4025f1:	66 c1 c8 08          	ror    $0x8,%ax
  4025f5:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  4025fa:	ba 10 00 00 00       	mov    $0x10,%edx
  4025ff:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  402604:	89 ef                	mov    %ebp,%edi
  402606:	e8 75 e8 ff ff       	callq  400e80 <connect@plt>
  40260b:	85 c0                	test   %eax,%eax
  40260d:	79 59                	jns    402668 <submitr+0x1d4>
  40260f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402616:	3a 20 55 
  402619:	48 89 03             	mov    %rax,(%rbx)
  40261c:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402623:	20 74 6f 
  402626:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40262a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402631:	65 63 74 
  402634:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402638:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40263f:	68 65 20 
  402642:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402646:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40264d:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402653:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402657:	89 ef                	mov    %ebp,%edi
  402659:	e8 e2 e6 ff ff       	callq  400d40 <close@plt>
  40265e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402663:	e9 61 05 00 00       	jmpq   402bc9 <submitr+0x735>
  402668:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40266f:	4c 89 ef             	mov    %r13,%rdi
  402672:	b8 00 00 00 00       	mov    $0x0,%eax
  402677:	48 89 d1             	mov    %rdx,%rcx
  40267a:	f2 ae                	repnz scas %es:(%rdi),%al
  40267c:	48 f7 d1             	not    %rcx
  40267f:	48 89 ce             	mov    %rcx,%rsi
  402682:	4c 89 ff             	mov    %r15,%rdi
  402685:	48 89 d1             	mov    %rdx,%rcx
  402688:	f2 ae                	repnz scas %es:(%rdi),%al
  40268a:	48 f7 d1             	not    %rcx
  40268d:	49 89 c8             	mov    %rcx,%r8
  402690:	4c 89 f7             	mov    %r14,%rdi
  402693:	48 89 d1             	mov    %rdx,%rcx
  402696:	f2 ae                	repnz scas %es:(%rdi),%al
  402698:	49 29 c8             	sub    %rcx,%r8
  40269b:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4026a0:	48 89 d1             	mov    %rdx,%rcx
  4026a3:	f2 ae                	repnz scas %es:(%rdi),%al
  4026a5:	49 29 c8             	sub    %rcx,%r8
  4026a8:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  4026ad:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  4026b2:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4026b8:	76 72                	jbe    40272c <submitr+0x298>
  4026ba:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4026c1:	3a 20 52 
  4026c4:	48 89 03             	mov    %rax,(%rbx)
  4026c7:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4026ce:	20 73 74 
  4026d1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026d5:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4026dc:	74 6f 6f 
  4026df:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026e3:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4026ea:	65 2e 20 
  4026ed:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026f1:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4026f8:	61 73 65 
  4026fb:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026ff:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402706:	49 54 52 
  402709:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40270d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402714:	55 46 00 
  402717:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40271b:	89 ef                	mov    %ebp,%edi
  40271d:	e8 1e e6 ff ff       	callq  400d40 <close@plt>
  402722:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402727:	e9 9d 04 00 00       	jmpq   402bc9 <submitr+0x735>
  40272c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402733:	00 
  402734:	b9 00 04 00 00       	mov    $0x400,%ecx
  402739:	b8 00 00 00 00       	mov    $0x0,%eax
  40273e:	48 89 f7             	mov    %rsi,%rdi
  402741:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402744:	4c 89 ef             	mov    %r13,%rdi
  402747:	e8 3b fc ff ff       	callq  402387 <urlencode>
  40274c:	85 c0                	test   %eax,%eax
  40274e:	0f 89 8a 00 00 00    	jns    4027de <submitr+0x34a>
  402754:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40275b:	3a 20 52 
  40275e:	48 89 03             	mov    %rax,(%rbx)
  402761:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402768:	20 73 74 
  40276b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40276f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402776:	63 6f 6e 
  402779:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40277d:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402784:	20 61 6e 
  402787:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40278b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402792:	67 61 6c 
  402795:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402799:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4027a0:	6e 70 72 
  4027a3:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027a7:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4027ae:	6c 65 20 
  4027b1:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027b5:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4027bc:	63 74 65 
  4027bf:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4027c3:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4027c9:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4027cd:	89 ef                	mov    %ebp,%edi
  4027cf:	e8 6c e5 ff ff       	callq  400d40 <close@plt>
  4027d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027d9:	e9 eb 03 00 00       	jmpq   402bc9 <submitr+0x735>
  4027de:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  4027e3:	48 8d 84 24 40 20 00 	lea    0x2040(%rsp),%rax
  4027ea:	00 
  4027eb:	48 89 04 24          	mov    %rax,(%rsp)
  4027ef:	4d 89 f9             	mov    %r15,%r9
  4027f2:	4d 89 f0             	mov    %r14,%r8
  4027f5:	b9 c8 36 40 00       	mov    $0x4036c8,%ecx
  4027fa:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027ff:	be 01 00 00 00       	mov    $0x1,%esi
  402804:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402809:	b8 00 00 00 00       	mov    $0x0,%eax
  40280e:	e8 8d e6 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402813:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402818:	b8 00 00 00 00       	mov    $0x0,%eax
  40281d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402824:	f2 ae                	repnz scas %es:(%rdi),%al
  402826:	48 f7 d1             	not    %rcx
  402829:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40282d:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402832:	89 ef                	mov    %ebp,%edi
  402834:	e8 e7 f9 ff ff       	callq  402220 <rio_writen>
  402839:	48 85 c0             	test   %rax,%rax
  40283c:	79 6e                	jns    4028ac <submitr+0x418>
  40283e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402845:	3a 20 43 
  402848:	48 89 03             	mov    %rax,(%rbx)
  40284b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402852:	20 75 6e 
  402855:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402859:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402860:	74 6f 20 
  402863:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402867:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  40286e:	20 74 6f 
  402871:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402875:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  40287c:	72 65 73 
  40287f:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402883:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  40288a:	65 72 76 
  40288d:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402891:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402897:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  40289b:	89 ef                	mov    %ebp,%edi
  40289d:	e8 9e e4 ff ff       	callq  400d40 <close@plt>
  4028a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028a7:	e9 1d 03 00 00       	jmpq   402bc9 <submitr+0x735>
  4028ac:	89 ee                	mov    %ebp,%esi
  4028ae:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  4028b5:	00 
  4028b6:	e8 25 f9 ff ff       	callq  4021e0 <rio_readinitb>
  4028bb:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028c0:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  4028c5:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  4028cc:	00 
  4028cd:	e8 31 fa ff ff       	callq  402303 <rio_readlineb>
  4028d2:	48 85 c0             	test   %rax,%rax
  4028d5:	7f 7d                	jg     402954 <submitr+0x4c0>
  4028d7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028de:	3a 20 43 
  4028e1:	48 89 03             	mov    %rax,(%rbx)
  4028e4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028eb:	20 75 6e 
  4028ee:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028f2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028f9:	74 6f 20 
  4028fc:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402900:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402907:	66 69 72 
  40290a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40290e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402915:	61 64 65 
  402918:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40291c:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402923:	6d 20 72 
  402926:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40292a:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402931:	20 73 65 
  402934:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402938:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40293f:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402943:	89 ef                	mov    %ebp,%edi
  402945:	e8 f6 e3 ff ff       	callq  400d40 <close@plt>
  40294a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40294f:	e9 75 02 00 00       	jmpq   402bc9 <submitr+0x735>
  402954:	4c 8d 84 24 40 60 00 	lea    0x6040(%rsp),%r8
  40295b:	00 
  40295c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402961:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
  402968:	00 
  402969:	be 3f 37 40 00       	mov    $0x40373f,%esi
  40296e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402973:	b8 00 00 00 00       	mov    $0x0,%eax
  402978:	e8 83 e4 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  40297d:	41 bc 0d 00 00 00    	mov    $0xd,%r12d
  402983:	41 bd 0a 00 00 00    	mov    $0xa,%r13d
  402989:	e9 95 00 00 00       	jmpq   402a23 <submitr+0x58f>
  40298e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402993:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402998:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  40299f:	00 
  4029a0:	e8 5e f9 ff ff       	callq  402303 <rio_readlineb>
  4029a5:	48 85 c0             	test   %rax,%rax
  4029a8:	7f 79                	jg     402a23 <submitr+0x58f>
  4029aa:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029b1:	3a 20 43 
  4029b4:	48 89 03             	mov    %rax,(%rbx)
  4029b7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029be:	20 75 6e 
  4029c1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029c5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029cc:	74 6f 20 
  4029cf:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4029d3:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4029da:	68 65 61 
  4029dd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4029e1:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4029e8:	66 72 6f 
  4029eb:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4029ef:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4029f6:	20 72 65 
  4029f9:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4029fd:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402a04:	73 65 72 
  402a07:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a0b:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402a12:	89 ef                	mov    %ebp,%edi
  402a14:	e8 27 e3 ff ff       	callq  400d40 <close@plt>
  402a19:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a1e:	e9 a6 01 00 00       	jmpq   402bc9 <submitr+0x735>
  402a23:	0f b6 44 24 40       	movzbl 0x40(%rsp),%eax
  402a28:	44 89 e6             	mov    %r12d,%esi
  402a2b:	29 c6                	sub    %eax,%esi
  402a2d:	89 f0                	mov    %esi,%eax
  402a2f:	75 15                	jne    402a46 <submitr+0x5b2>
  402a31:	0f b6 44 24 41       	movzbl 0x41(%rsp),%eax
  402a36:	44 89 ea             	mov    %r13d,%edx
  402a39:	29 c2                	sub    %eax,%edx
  402a3b:	89 d0                	mov    %edx,%eax
  402a3d:	75 07                	jne    402a46 <submitr+0x5b2>
  402a3f:	0f b6 44 24 42       	movzbl 0x42(%rsp),%eax
  402a44:	f7 d8                	neg    %eax
  402a46:	85 c0                	test   %eax,%eax
  402a48:	0f 85 40 ff ff ff    	jne    40298e <submitr+0x4fa>
  402a4e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a53:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402a58:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  402a5f:	00 
  402a60:	e8 9e f8 ff ff       	callq  402303 <rio_readlineb>
  402a65:	48 85 c0             	test   %rax,%rax
  402a68:	0f 8f 83 00 00 00    	jg     402af1 <submitr+0x65d>
  402a6e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a75:	3a 20 43 
  402a78:	48 89 03             	mov    %rax,(%rbx)
  402a7b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a82:	20 75 6e 
  402a85:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402a89:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a90:	74 6f 20 
  402a93:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a97:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402a9e:	73 74 61 
  402aa1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402aa5:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402aac:	65 73 73 
  402aaf:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402ab3:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402aba:	72 6f 6d 
  402abd:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402ac1:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402ac8:	6c 74 20 
  402acb:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402acf:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402ad6:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402adc:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402ae0:	89 ef                	mov    %ebp,%edi
  402ae2:	e8 59 e2 ff ff       	callq  400d40 <close@plt>
  402ae7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aec:	e9 d8 00 00 00       	jmpq   402bc9 <submitr+0x735>
  402af1:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402af6:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402afd:	74 37                	je     402b36 <submitr+0x6a2>
  402aff:	4c 8d 8c 24 40 60 00 	lea    0x6040(%rsp),%r9
  402b06:	00 
  402b07:	b9 08 37 40 00       	mov    $0x403708,%ecx
  402b0c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402b13:	be 01 00 00 00       	mov    $0x1,%esi
  402b18:	48 89 df             	mov    %rbx,%rdi
  402b1b:	b8 00 00 00 00       	mov    $0x0,%eax
  402b20:	e8 7b e3 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402b25:	89 ef                	mov    %ebp,%edi
  402b27:	e8 14 e2 ff ff       	callq  400d40 <close@plt>
  402b2c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b31:	e9 93 00 00 00       	jmpq   402bc9 <submitr+0x735>
  402b36:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402b3b:	48 89 df             	mov    %rbx,%rdi
  402b3e:	e8 8d e1 ff ff       	callq  400cd0 <strcpy@plt>
  402b43:	89 ef                	mov    %ebp,%edi
  402b45:	e8 f6 e1 ff ff       	callq  400d40 <close@plt>
  402b4a:	0f b6 03             	movzbl (%rbx),%eax
  402b4d:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402b52:	29 c2                	sub    %eax,%edx
  402b54:	75 22                	jne    402b78 <submitr+0x6e4>
  402b56:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402b5a:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402b5f:	29 c8                	sub    %ecx,%eax
  402b61:	75 17                	jne    402b7a <submitr+0x6e6>
  402b63:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402b67:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b6c:	29 c8                	sub    %ecx,%eax
  402b6e:	75 0a                	jne    402b7a <submitr+0x6e6>
  402b70:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402b74:	f7 d8                	neg    %eax
  402b76:	eb 02                	jmp    402b7a <submitr+0x6e6>
  402b78:	89 d0                	mov    %edx,%eax
  402b7a:	85 c0                	test   %eax,%eax
  402b7c:	74 38                	je     402bb6 <submitr+0x722>
  402b7e:	bf 50 37 40 00       	mov    $0x403750,%edi
  402b83:	b9 05 00 00 00       	mov    $0x5,%ecx
  402b88:	48 89 de             	mov    %rbx,%rsi
  402b8b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b8d:	0f 97 c1             	seta   %cl
  402b90:	0f 92 c0             	setb   %al
  402b93:	38 c1                	cmp    %al,%cl
  402b95:	74 26                	je     402bbd <submitr+0x729>
  402b97:	85 d2                	test   %edx,%edx
  402b99:	75 10                	jne    402bab <submitr+0x717>
  402b9b:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402b9f:	b2 4b                	mov    $0x4b,%dl
  402ba1:	29 c2                	sub    %eax,%edx
  402ba3:	75 06                	jne    402bab <submitr+0x717>
  402ba5:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402ba9:	f7 da                	neg    %edx
  402bab:	85 d2                	test   %edx,%edx
  402bad:	75 15                	jne    402bc4 <submitr+0x730>
  402baf:	b8 00 00 00 00       	mov    $0x0,%eax
  402bb4:	eb 13                	jmp    402bc9 <submitr+0x735>
  402bb6:	b8 00 00 00 00       	mov    $0x0,%eax
  402bbb:	eb 0c                	jmp    402bc9 <submitr+0x735>
  402bbd:	b8 00 00 00 00       	mov    $0x0,%eax
  402bc2:	eb 05                	jmp    402bc9 <submitr+0x735>
  402bc4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bc9:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402bd0:	00 
  402bd1:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402bd8:	00 00 
  402bda:	74 05                	je     402be1 <submitr+0x74d>
  402bdc:	e8 1f e1 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402be1:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402be8:	5b                   	pop    %rbx
  402be9:	5d                   	pop    %rbp
  402bea:	41 5c                	pop    %r12
  402bec:	41 5d                	pop    %r13
  402bee:	41 5e                	pop    %r14
  402bf0:	41 5f                	pop    %r15
  402bf2:	c3                   	retq   

0000000000402bf3 <init_timeout>:
  402bf3:	53                   	push   %rbx
  402bf4:	89 fb                	mov    %edi,%ebx
  402bf6:	85 ff                	test   %edi,%edi
  402bf8:	74 1f                	je     402c19 <init_timeout+0x26>
  402bfa:	85 ff                	test   %edi,%edi
  402bfc:	79 05                	jns    402c03 <init_timeout+0x10>
  402bfe:	bb 00 00 00 00       	mov    $0x0,%ebx
  402c03:	be f2 21 40 00       	mov    $0x4021f2,%esi
  402c08:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c0d:	e8 5e e1 ff ff       	callq  400d70 <signal@plt>
  402c12:	89 df                	mov    %ebx,%edi
  402c14:	e8 17 e1 ff ff       	callq  400d30 <alarm@plt>
  402c19:	5b                   	pop    %rbx
  402c1a:	c3                   	retq   

0000000000402c1b <init_driver>:
  402c1b:	55                   	push   %rbp
  402c1c:	53                   	push   %rbx
  402c1d:	48 83 ec 28          	sub    $0x28,%rsp
  402c21:	48 89 fd             	mov    %rdi,%rbp
  402c24:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c2b:	00 00 
  402c2d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402c32:	31 c0                	xor    %eax,%eax
  402c34:	be 01 00 00 00       	mov    $0x1,%esi
  402c39:	bf 0d 00 00 00       	mov    $0xd,%edi
  402c3e:	e8 2d e1 ff ff       	callq  400d70 <signal@plt>
  402c43:	be 01 00 00 00       	mov    $0x1,%esi
  402c48:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c4d:	e8 1e e1 ff ff       	callq  400d70 <signal@plt>
  402c52:	be 01 00 00 00       	mov    $0x1,%esi
  402c57:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c5c:	e8 0f e1 ff ff       	callq  400d70 <signal@plt>
  402c61:	ba 00 00 00 00       	mov    $0x0,%edx
  402c66:	be 01 00 00 00       	mov    $0x1,%esi
  402c6b:	bf 02 00 00 00       	mov    $0x2,%edi
  402c70:	e8 3b e2 ff ff       	callq  400eb0 <socket@plt>
  402c75:	89 c3                	mov    %eax,%ebx
  402c77:	85 c0                	test   %eax,%eax
  402c79:	79 4f                	jns    402cca <init_driver+0xaf>
  402c7b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c82:	3a 20 43 
  402c85:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c89:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402c90:	20 75 6e 
  402c93:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402c97:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c9e:	74 6f 20 
  402ca1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ca5:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402cac:	65 20 73 
  402caf:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402cb3:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402cba:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402cc0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cc5:	e9 28 01 00 00       	jmpq   402df2 <init_driver+0x1d7>
  402cca:	bf 55 37 40 00       	mov    $0x403755,%edi
  402ccf:	e8 ac e0 ff ff       	callq  400d80 <gethostbyname@plt>
  402cd4:	48 85 c0             	test   %rax,%rax
  402cd7:	75 68                	jne    402d41 <init_driver+0x126>
  402cd9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ce0:	3a 20 44 
  402ce3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ce7:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402cee:	20 75 6e 
  402cf1:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402cf5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cfc:	74 6f 20 
  402cff:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d03:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402d0a:	76 65 20 
  402d0d:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d11:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d18:	72 20 61 
  402d1b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d1f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402d26:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402d2c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402d30:	89 df                	mov    %ebx,%edi
  402d32:	e8 09 e0 ff ff       	callq  400d40 <close@plt>
  402d37:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d3c:	e9 b1 00 00 00       	jmpq   402df2 <init_driver+0x1d7>
  402d41:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402d48:	00 
  402d49:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402d50:	00 00 
  402d52:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402d58:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d5c:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d60:	48 8b 30             	mov    (%rax),%rsi
  402d63:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402d68:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d6d:	e8 1e e0 ff ff       	callq  400d90 <__memmove_chk@plt>
  402d72:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402d79:	ba 10 00 00 00       	mov    $0x10,%edx
  402d7e:	48 89 e6             	mov    %rsp,%rsi
  402d81:	89 df                	mov    %ebx,%edi
  402d83:	e8 f8 e0 ff ff       	callq  400e80 <connect@plt>
  402d88:	85 c0                	test   %eax,%eax
  402d8a:	79 50                	jns    402ddc <init_driver+0x1c1>
  402d8c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402d93:	3a 20 55 
  402d96:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d9a:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402da1:	20 74 6f 
  402da4:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402da8:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402daf:	65 63 74 
  402db2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402db6:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402dbd:	65 72 76 
  402dc0:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402dc4:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402dca:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402dce:	89 df                	mov    %ebx,%edi
  402dd0:	e8 6b df ff ff       	callq  400d40 <close@plt>
  402dd5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dda:	eb 16                	jmp    402df2 <init_driver+0x1d7>
  402ddc:	89 df                	mov    %ebx,%edi
  402dde:	e8 5d df ff ff       	callq  400d40 <close@plt>
  402de3:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402de9:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402ded:	b8 00 00 00 00       	mov    $0x0,%eax
  402df2:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402df7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402dfe:	00 00 
  402e00:	74 05                	je     402e07 <init_driver+0x1ec>
  402e02:	e8 f9 de ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402e07:	48 83 c4 28          	add    $0x28,%rsp
  402e0b:	5b                   	pop    %rbx
  402e0c:	5d                   	pop    %rbp
  402e0d:	c3                   	retq   

0000000000402e0e <driver_post>:
  402e0e:	53                   	push   %rbx
  402e0f:	48 83 ec 10          	sub    $0x10,%rsp
  402e13:	4c 89 cb             	mov    %r9,%rbx
  402e16:	45 85 c0             	test   %r8d,%r8d
  402e19:	74 27                	je     402e42 <driver_post+0x34>
  402e1b:	48 89 ca             	mov    %rcx,%rdx
  402e1e:	be 64 37 40 00       	mov    $0x403764,%esi
  402e23:	bf 01 00 00 00       	mov    $0x1,%edi
  402e28:	b8 00 00 00 00       	mov    $0x0,%eax
  402e2d:	e8 ee df ff ff       	callq  400e20 <__printf_chk@plt>
  402e32:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e37:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e3b:	b8 00 00 00 00       	mov    $0x0,%eax
  402e40:	eb 39                	jmp    402e7b <driver_post+0x6d>
  402e42:	48 85 ff             	test   %rdi,%rdi
  402e45:	74 26                	je     402e6d <driver_post+0x5f>
  402e47:	80 3f 00             	cmpb   $0x0,(%rdi)
  402e4a:	74 21                	je     402e6d <driver_post+0x5f>
  402e4c:	4c 89 0c 24          	mov    %r9,(%rsp)
  402e50:	49 89 c9             	mov    %rcx,%r9
  402e53:	49 89 d0             	mov    %rdx,%r8
  402e56:	48 89 f9             	mov    %rdi,%rcx
  402e59:	48 89 f2             	mov    %rsi,%rdx
  402e5c:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402e61:	bf 55 37 40 00       	mov    $0x403755,%edi
  402e66:	e8 29 f6 ff ff       	callq  402494 <submitr>
  402e6b:	eb 0e                	jmp    402e7b <driver_post+0x6d>
  402e6d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e72:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e76:	b8 00 00 00 00       	mov    $0x0,%eax
  402e7b:	48 83 c4 10          	add    $0x10,%rsp
  402e7f:	5b                   	pop    %rbx
  402e80:	c3                   	retq   

0000000000402e81 <check>:
  402e81:	89 f8                	mov    %edi,%eax
  402e83:	c1 e8 1c             	shr    $0x1c,%eax
  402e86:	85 c0                	test   %eax,%eax
  402e88:	74 1d                	je     402ea7 <check+0x26>
  402e8a:	b9 00 00 00 00       	mov    $0x0,%ecx
  402e8f:	eb 0b                	jmp    402e9c <check+0x1b>
  402e91:	89 f8                	mov    %edi,%eax
  402e93:	d3 e8                	shr    %cl,%eax
  402e95:	3c 0a                	cmp    $0xa,%al
  402e97:	74 14                	je     402ead <check+0x2c>
  402e99:	83 c1 08             	add    $0x8,%ecx
  402e9c:	83 f9 1f             	cmp    $0x1f,%ecx
  402e9f:	7e f0                	jle    402e91 <check+0x10>
  402ea1:	b8 01 00 00 00       	mov    $0x1,%eax
  402ea6:	c3                   	retq   
  402ea7:	b8 00 00 00 00       	mov    $0x0,%eax
  402eac:	c3                   	retq   
  402ead:	b8 00 00 00 00       	mov    $0x0,%eax
  402eb2:	c3                   	retq   

0000000000402eb3 <gencookie>:
  402eb3:	53                   	push   %rbx
  402eb4:	83 c7 01             	add    $0x1,%edi
  402eb7:	e8 f4 dd ff ff       	callq  400cb0 <srandom@plt>
  402ebc:	e8 1f df ff ff       	callq  400de0 <random@plt>
  402ec1:	89 c3                	mov    %eax,%ebx
  402ec3:	89 c7                	mov    %eax,%edi
  402ec5:	e8 b7 ff ff ff       	callq  402e81 <check>
  402eca:	85 c0                	test   %eax,%eax
  402ecc:	74 ee                	je     402ebc <gencookie+0x9>
  402ece:	89 d8                	mov    %ebx,%eax
  402ed0:	5b                   	pop    %rbx
  402ed1:	c3                   	retq   
  402ed2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ed9:	00 00 00 
  402edc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402ee0 <__libc_csu_init>:
  402ee0:	41 57                	push   %r15
  402ee2:	41 89 ff             	mov    %edi,%r15d
  402ee5:	41 56                	push   %r14
  402ee7:	49 89 f6             	mov    %rsi,%r14
  402eea:	41 55                	push   %r13
  402eec:	49 89 d5             	mov    %rdx,%r13
  402eef:	41 54                	push   %r12
  402ef1:	4c 8d 25 18 1f 20 00 	lea    0x201f18(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402ef8:	55                   	push   %rbp
  402ef9:	48 8d 2d 18 1f 20 00 	lea    0x201f18(%rip),%rbp        # 604e18 <__init_array_end>
  402f00:	53                   	push   %rbx
  402f01:	4c 29 e5             	sub    %r12,%rbp
  402f04:	31 db                	xor    %ebx,%ebx
  402f06:	48 c1 fd 03          	sar    $0x3,%rbp
  402f0a:	48 83 ec 08          	sub    $0x8,%rsp
  402f0e:	e8 4d dd ff ff       	callq  400c60 <_init>
  402f13:	48 85 ed             	test   %rbp,%rbp
  402f16:	74 1e                	je     402f36 <__libc_csu_init+0x56>
  402f18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f1f:	00 
  402f20:	4c 89 ea             	mov    %r13,%rdx
  402f23:	4c 89 f6             	mov    %r14,%rsi
  402f26:	44 89 ff             	mov    %r15d,%edi
  402f29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402f2d:	48 83 c3 01          	add    $0x1,%rbx
  402f31:	48 39 eb             	cmp    %rbp,%rbx
  402f34:	75 ea                	jne    402f20 <__libc_csu_init+0x40>
  402f36:	48 83 c4 08          	add    $0x8,%rsp
  402f3a:	5b                   	pop    %rbx
  402f3b:	5d                   	pop    %rbp
  402f3c:	41 5c                	pop    %r12
  402f3e:	41 5d                	pop    %r13
  402f40:	41 5e                	pop    %r14
  402f42:	41 5f                	pop    %r15
  402f44:	c3                   	retq   
  402f45:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  402f4c:	00 00 00 00 

0000000000402f50 <__libc_csu_fini>:
  402f50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402f54 <_fini>:
  402f54:	48 83 ec 08          	sub    $0x8,%rsp
  402f58:	48 83 c4 08          	add    $0x8,%rsp
  402f5c:	c3                   	retq   
