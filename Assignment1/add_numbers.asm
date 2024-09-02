
add_numbers:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 cd 2f 00 00 	mov    0x2fcd(%rip),%rax        # 3fd8 <__gmon_start__@Base>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <_ZNSirsERi@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <_ZNSirsERi@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <_ZNSirsERi@GLIBCXX_3.4>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <_ZNSolsEPFRSoS_E@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <_ZNSolsEi@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <_ZNSolsEi@GLIBCXX_3.4>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	ff 25 52 2f 00 00    	jmp    *0x2f52(%rip)        # 3fb8 <__cxa_finalize@GLIBC_2.2.5>
    1066:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001070 <_start>:
    1070:	31 ed                	xor    %ebp,%ebp
    1072:	49 89 d1             	mov    %rdx,%r9
    1075:	5e                   	pop    %rsi
    1076:	48 89 e2             	mov    %rsp,%rdx
    1079:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    107d:	50                   	push   %rax
    107e:	54                   	push   %rsp
    107f:	45 31 c0             	xor    %r8d,%r8d
    1082:	31 c9                	xor    %ecx,%ecx
    1084:	48 8d 3d ce 00 00 00 	lea    0xce(%rip),%rdi        # 1159 <main>
    108b:	ff 15 37 2f 00 00    	call   *0x2f37(%rip)        # 3fc8 <__libc_start_main@GLIBC_2.34>
    1091:	f4                   	hlt
    1092:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1099:	00 00 00 
    109c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000010a0 <deregister_tm_clones>:
    10a0:	48 8d 3d 81 2f 00 00 	lea    0x2f81(%rip),%rdi        # 4028 <__TMC_END__>
    10a7:	48 8d 05 7a 2f 00 00 	lea    0x2f7a(%rip),%rax        # 4028 <__TMC_END__>
    10ae:	48 39 f8             	cmp    %rdi,%rax
    10b1:	74 15                	je     10c8 <deregister_tm_clones+0x28>
    10b3:	48 8b 05 16 2f 00 00 	mov    0x2f16(%rip),%rax        # 3fd0 <_ITM_deregisterTMCloneTable@Base>
    10ba:	48 85 c0             	test   %rax,%rax
    10bd:	74 09                	je     10c8 <deregister_tm_clones+0x28>
    10bf:	ff e0                	jmp    *%rax
    10c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10c8:	c3                   	ret
    10c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010d0 <register_tm_clones>:
    10d0:	48 8d 3d 51 2f 00 00 	lea    0x2f51(%rip),%rdi        # 4028 <__TMC_END__>
    10d7:	48 8d 35 4a 2f 00 00 	lea    0x2f4a(%rip),%rsi        # 4028 <__TMC_END__>
    10de:	48 29 fe             	sub    %rdi,%rsi
    10e1:	48 89 f0             	mov    %rsi,%rax
    10e4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10e8:	48 c1 f8 03          	sar    $0x3,%rax
    10ec:	48 01 c6             	add    %rax,%rsi
    10ef:	48 d1 fe             	sar    %rsi
    10f2:	74 14                	je     1108 <register_tm_clones+0x38>
    10f4:	48 8b 05 e5 2e 00 00 	mov    0x2ee5(%rip),%rax        # 3fe0 <_ITM_registerTMCloneTable@Base>
    10fb:	48 85 c0             	test   %rax,%rax
    10fe:	74 08                	je     1108 <register_tm_clones+0x38>
    1100:	ff e0                	jmp    *%rax
    1102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1108:	c3                   	ret
    1109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001110 <__do_global_dtors_aux>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	80 3d 5d 31 00 00 00 	cmpb   $0x0,0x315d(%rip)        # 4278 <completed.0>
    111b:	75 2b                	jne    1148 <__do_global_dtors_aux+0x38>
    111d:	55                   	push   %rbp
    111e:	48 83 3d 92 2e 00 00 	cmpq   $0x0,0x2e92(%rip)        # 3fb8 <__cxa_finalize@GLIBC_2.2.5>
    1125:	00 
    1126:	48 89 e5             	mov    %rsp,%rbp
    1129:	74 0c                	je     1137 <__do_global_dtors_aux+0x27>
    112b:	48 8b 3d ee 2e 00 00 	mov    0x2eee(%rip),%rdi        # 4020 <__dso_handle>
    1132:	e8 29 ff ff ff       	call   1060 <__cxa_finalize@plt>
    1137:	e8 64 ff ff ff       	call   10a0 <deregister_tm_clones>
    113c:	c6 05 35 31 00 00 01 	movb   $0x1,0x3135(%rip)        # 4278 <completed.0>
    1143:	5d                   	pop    %rbp
    1144:	c3                   	ret
    1145:	0f 1f 00             	nopl   (%rax)
    1148:	c3                   	ret
    1149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001150 <frame_dummy>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	e9 77 ff ff ff       	jmp    10d0 <register_tm_clones>

0000000000001159 <main>:
    1159:	55                   	push   %rbp
    115a:	48 89 e5             	mov    %rsp,%rbp
    115d:	48 83 ec 10          	sub    $0x10,%rsp
    1161:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
    1165:	48 89 c6             	mov    %rax,%rsi
    1168:	48 8d 05 f1 2f 00 00 	lea    0x2ff1(%rip),%rax        # 4160 <_ZSt3cin@GLIBCXX_3.4>
    116f:	48 89 c7             	mov    %rax,%rdi
    1172:	e8 b9 fe ff ff       	call   1030 <_ZNSirsERi@plt>
    1177:	48 89 c2             	mov    %rax,%rdx
    117a:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    117e:	48 89 c6             	mov    %rax,%rsi
    1181:	48 89 d7             	mov    %rdx,%rdi
    1184:	e8 a7 fe ff ff       	call   1030 <_ZNSirsERi@plt>
    1189:	8b 55 fc             	mov    -0x4(%rbp),%edx
    118c:	8b 45 f8             	mov    -0x8(%rbp),%eax
    118f:	01 d0                	add    %edx,%eax
    1191:	89 c6                	mov    %eax,%esi
    1193:	48 8d 05 a6 2e 00 00 	lea    0x2ea6(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    119a:	48 89 c7             	mov    %rax,%rdi
    119d:	e8 ae fe ff ff       	call   1050 <_ZNSolsEi@plt>
    11a2:	48 8b 15 17 2e 00 00 	mov    0x2e17(%rip),%rdx        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    11a9:	48 89 d6             	mov    %rdx,%rsi
    11ac:	48 89 c7             	mov    %rax,%rdi
    11af:	e8 8c fe ff ff       	call   1040 <_ZNSolsEPFRSoS_E@plt>
    11b4:	b8 00 00 00 00       	mov    $0x0,%eax
    11b9:	c9                   	leave
    11ba:	c3                   	ret

Disassembly of section .fini:

00000000000011bc <_fini>:
    11bc:	48 83 ec 08          	sub    $0x8,%rsp
    11c0:	48 83 c4 08          	add    $0x8,%rsp
    11c4:	c3                   	ret
