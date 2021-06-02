	.arch armv8-a
	.file	"asm-offsets.c"
// GNU C89 (Debian 10.2.1-6) version 10.2.1 20210110 (aarch64-linux-gnu)
//	compiled by GNU C version 10.2.1 20210110, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.0, isl version isl-0.23-GMP

// warning: GMP header version 6.2.1 differs from library version 6.2.0.
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -nostdinc -I ./arch/arm64/include
// -I ./arch/arm64/include/generated/uapi -I ./arch/arm64/include/generated
// -I ./include -I ./arch/arm64/include/uapi -I ./include/uapi
// -I ./include/generated/uapi -imultiarch aarch64-linux-gnu -D __KERNEL__
// -D CONFIG_AS_LSE=1 -D CC_HAVE_ASM_GOTO -D KBUILD_BASENAME="asm_offsets"
// -D KBUILD_MODNAME="asm_offsets"
// -isystem /usr/lib/gcc/aarch64-linux-gnu/10/include
// -include ./include/linux/kconfig.h
// -MD arch/arm64/kernel/.asm-offsets.s.d arch/arm64/kernel/asm-offsets.c
// -mlittle-endian -mgeneral-regs-only -mpc-relative-literal-loads
// -mabi=lp64 -auxbase-strip arch/arm64/kernel/asm-offsets.s -g -Os -Wall
// -Wundef -Wstrict-prototypes -Wno-trigraphs
// -Werror=implicit-function-declaration -Wno-format-security
// -Wunused-const-variable=0 -Wno-frame-address -Wformat-truncation=0
// -Wformat-overflow=0 -Wno-int-in-bool-context
// -Wno-address-of-packed-member -Wattribute-alias=0
// -Wframe-larger-than=2048 -Wno-unused-but-set-variable
// -Wunused-const-variable=0 -Wdeclaration-after-statement
// -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds
// -Wno-array-bounds -Wstringop-overflow=0 -Wno-restrict
// -Wno-maybe-uninitialized -Werror=implicit-int -Werror=strict-prototypes
// -Werror=date-time -Werror=designated-init -Wno-packed-not-aligned
// -std=gnu90 -fno-strict-aliasing -fno-common -fshort-wchar
// -fno-asynchronous-unwind-tables -fno-pic -fno-delete-null-pointer-checks
// -fno-allow-store-data-races -fstack-protector-strong
// -fno-omit-frame-pointer -fno-optimize-sibling-calls
// -fno-var-tracking-assignments -fno-strict-overflow
// -fno-merge-all-constants -fmerge-constants -fstack-check=no
// -fconserve-stack -fmacro-prefix-map=./= -fverbose-asm
// options enabled:  -faggressive-loop-optimizations -fallocation-dce
// -fauto-inc-dec -fbranch-count-reg -fcaller-saves -fcode-hoisting
// -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
// -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
// -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
// -feliminate-unused-debug-symbols -feliminate-unused-debug-types
// -fexpensive-optimizations -fforward-propagate -ffp-int-builtin-inexact
// -ffunction-cse -fgcse -fgcse-lm -fgnu-unique -fguess-branch-probability
// -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
// -findirect-inlining -finline -finline-atomics -finline-functions
// -finline-functions-called-once -finline-small-functions -fipa-bit-cp
// -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
// -fipa-pure-const -fipa-ra -fipa-reference -fipa-reference-addressable
// -fipa-sra -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
// -fira-share-save-slots -fira-share-spill-slots
// -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -flra-remat -fmath-errno
// -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
// -fomit-frame-pointer -fpartial-inlining -fpeephole -fpeephole2 -fplt
// -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
// -freorder-functions -frerun-cse-after-loop
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-pressure -fsched-rank-heuristic -fsched-spec
// -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
// -fschedule-insns2 -fsection-anchors -fsemantic-interposition
// -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
// -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-backprop -fssa-phiopt
// -fstack-protector-strong -fstdarg-opt -fstore-merging
// -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
// -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
// -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
// -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
// -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
// -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
// -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
// -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
// -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
// -ftree-vrp -funit-at-a-time -funwind-tables -fvar-tracking -fverbose-asm
// -fwrapv -fwrapv-pointer -fzero-initialized-in-bss
// -mfix-cortex-a53-835769 -mfix-cortex-a53-843419 -mgeneral-regs-only
// -mglibc -mlittle-endian -momit-leaf-frame-pointer -moutline-atomics
// -mpc-relative-literal-loads

	.text
.Ltext0:
	.section	.text.startup,"ax",@progbits
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2938:
	.file 1 "arch/arm64/kernel/asm-offsets.c"
	.loc 1 38 1 view -0
	.cfi_startproc
	.loc 1 39 3 view .LVU1
#APP
// 39 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_ACTIVE_MM 1488 offsetof(struct task_struct, active_mm)"	//
// 0 "" 2
	.loc 1 40 3 view .LVU2
// 40 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 41 3 view .LVU3
// 41 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_FLAGS 0 offsetof(struct task_struct, thread_info.flags)"	//
// 0 "" 2
	.loc 1 42 3 view .LVU4
// 42 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_PREEMPT 72 offsetof(struct task_struct, thread_info.preempt_count)"	//
// 0 "" 2
	.loc 1 43 3 view .LVU5
// 43 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_ADDR_LIMIT 64 offsetof(struct task_struct, thread_info.addr_limit)"	//
// 0 "" 2
	.loc 1 47 3 view .LVU6
// 47 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_STACK 88 offsetof(struct task_struct, stack)"	//
// 0 "" 2
	.loc 1 48 3 view .LVU7
// 48 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 49 3 view .LVU8
// 49 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->THREAD_CPU_CONTEXT 2784 offsetof(struct task_struct, thread.cpu_context)"	//
// 0 "" 2
	.loc 1 50 3 view .LVU9
// 50 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 51 3 view .LVU10
// 51 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X0 0 offsetof(struct pt_regs, regs[0])"	//
// 0 "" 2
	.loc 1 52 3 view .LVU11
// 52 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X1 8 offsetof(struct pt_regs, regs[1])"	//
// 0 "" 2
	.loc 1 53 3 view .LVU12
// 53 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X2 16 offsetof(struct pt_regs, regs[2])"	//
// 0 "" 2
	.loc 1 54 3 view .LVU13
// 54 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X3 24 offsetof(struct pt_regs, regs[3])"	//
// 0 "" 2
	.loc 1 55 3 view .LVU14
// 55 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X4 32 offsetof(struct pt_regs, regs[4])"	//
// 0 "" 2
	.loc 1 56 3 view .LVU15
// 56 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X5 40 offsetof(struct pt_regs, regs[5])"	//
// 0 "" 2
	.loc 1 57 3 view .LVU16
// 57 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X6 48 offsetof(struct pt_regs, regs[6])"	//
// 0 "" 2
	.loc 1 58 3 view .LVU17
// 58 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X7 56 offsetof(struct pt_regs, regs[7])"	//
// 0 "" 2
	.loc 1 59 3 view .LVU18
// 59 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X8 64 offsetof(struct pt_regs, regs[8])"	//
// 0 "" 2
	.loc 1 60 3 view .LVU19
// 60 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X10 80 offsetof(struct pt_regs, regs[10])"	//
// 0 "" 2
	.loc 1 61 3 view .LVU20
// 61 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X12 96 offsetof(struct pt_regs, regs[12])"	//
// 0 "" 2
	.loc 1 62 3 view .LVU21
// 62 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X14 112 offsetof(struct pt_regs, regs[14])"	//
// 0 "" 2
	.loc 1 63 3 view .LVU22
// 63 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X16 128 offsetof(struct pt_regs, regs[16])"	//
// 0 "" 2
	.loc 1 64 3 view .LVU23
// 64 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X18 144 offsetof(struct pt_regs, regs[18])"	//
// 0 "" 2
	.loc 1 65 3 view .LVU24
// 65 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X20 160 offsetof(struct pt_regs, regs[20])"	//
// 0 "" 2
	.loc 1 66 3 view .LVU25
// 66 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X22 176 offsetof(struct pt_regs, regs[22])"	//
// 0 "" 2
	.loc 1 67 3 view .LVU26
// 67 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X24 192 offsetof(struct pt_regs, regs[24])"	//
// 0 "" 2
	.loc 1 68 3 view .LVU27
// 68 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X26 208 offsetof(struct pt_regs, regs[26])"	//
// 0 "" 2
	.loc 1 69 3 view .LVU28
// 69 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X28 224 offsetof(struct pt_regs, regs[28])"	//
// 0 "" 2
	.loc 1 70 3 view .LVU29
// 70 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_LR 240 offsetof(struct pt_regs, regs[30])"	//
// 0 "" 2
	.loc 1 71 3 view .LVU30
// 71 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_SP 248 offsetof(struct pt_regs, sp)"	//
// 0 "" 2
	.loc 1 73 3 view .LVU31
// 73 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_COMPAT_SP 104 offsetof(struct pt_regs, compat_sp)"	//
// 0 "" 2
	.loc 1 75 3 view .LVU32
// 75 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_PSTATE 264 offsetof(struct pt_regs, pstate)"	//
// 0 "" 2
	.loc 1 76 3 view .LVU33
// 76 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_PC 256 offsetof(struct pt_regs, pc)"	//
// 0 "" 2
	.loc 1 77 3 view .LVU34
// 77 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_ORIG_X0 272 offsetof(struct pt_regs, orig_x0)"	//
// 0 "" 2
	.loc 1 78 3 view .LVU35
// 78 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_SYSCALLNO 280 offsetof(struct pt_regs, syscallno)"	//
// 0 "" 2
	.loc 1 79 3 view .LVU36
// 79 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_ORIG_ADDR_LIMIT 288 offsetof(struct pt_regs, orig_addr_limit)"	//
// 0 "" 2
	.loc 1 80 3 view .LVU37
// 80 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_FRAME_SIZE 304 sizeof(struct pt_regs)"	//
// 0 "" 2
	.loc 1 81 3 view .LVU38
// 81 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 83 3 view .LVU39
// 83 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->COMPAT_SIGFRAME_REGS_OFFSET 32 offsetof(struct compat_sigframe, uc) + offsetof(struct compat_ucontext, uc_mcontext) + offsetof(struct compat_sigcontext, arm_r0)"	//
// 0 "" 2
	.loc 1 87 3 view .LVU40
// 87 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->COMPAT_RT_SIGFRAME_REGS_OFFSET 160 offsetof(struct compat_rt_sigframe, sig) + offsetof(struct compat_sigframe, uc) + offsetof(struct compat_ucontext, uc_mcontext) + offsetof(struct compat_sigcontext, arm_r0)"	//
// 0 "" 2
	.loc 1 92 3 view .LVU41
// 92 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 94 3 view .LVU42
// 94 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MM_CONTEXT_ID 736 offsetof(struct mm_struct, context.id.counter)"	//
// 0 "" 2
	.loc 1 95 3 view .LVU43
// 95 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 96 3 view .LVU44
// 96 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VMA_VM_MM 64 offsetof(struct vm_area_struct, vm_mm)"	//
// 0 "" 2
	.loc 1 97 3 view .LVU45
// 97 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VMA_VM_FLAGS 80 offsetof(struct vm_area_struct, vm_flags)"	//
// 0 "" 2
	.loc 1 98 3 view .LVU46
// 98 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 99 3 view .LVU47
// 99 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VM_EXEC 4 VM_EXEC"	//
// 0 "" 2
	.loc 1 100 3 view .LVU48
// 100 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 101 3 view .LVU49
// 101 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->PAGE_SZ 4096 PAGE_SIZE"	//
// 0 "" 2
	.loc 1 102 3 view .LVU50
// 102 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 103 3 view .LVU51
// 103 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_BIDIRECTIONAL 0 DMA_BIDIRECTIONAL"	//
// 0 "" 2
	.loc 1 104 3 view .LVU52
// 104 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_TO_DEVICE 1 DMA_TO_DEVICE"	//
// 0 "" 2
	.loc 1 105 3 view .LVU53
// 105 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_FROM_DEVICE 2 DMA_FROM_DEVICE"	//
// 0 "" 2
	.loc 1 106 3 view .LVU54
// 106 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 107 3 view .LVU55
// 107 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_BOOT_STACK 0 offsetof(struct secondary_data, stack)"	//
// 0 "" 2
	.loc 1 108 3 view .LVU56
// 108 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_BOOT_TASK 8 offsetof(struct secondary_data, task)"	//
// 0 "" 2
	.loc 1 109 3 view .LVU57
// 109 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 121 3 view .LVU58
// 121 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_SUSPEND_SZ 112 sizeof(struct cpu_suspend_ctx)"	//
// 0 "" 2
	.loc 1 122 3 view .LVU59
// 122 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_CTX_SP 96 offsetof(struct cpu_suspend_ctx, sp)"	//
// 0 "" 2
	.loc 1 123 3 view .LVU60
// 123 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MPIDR_HASH_MASK 0 offsetof(struct mpidr_hash, mask)"	//
// 0 "" 2
	.loc 1 124 3 view .LVU61
// 124 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MPIDR_HASH_SHIFTS 8 offsetof(struct mpidr_hash, shift_aff)"	//
// 0 "" 2
	.loc 1 125 3 view .LVU62
// 125 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->SLEEP_STACK_DATA_SYSTEM_REGS 0 offsetof(struct sleep_stack_data, system_regs)"	//
// 0 "" 2
	.loc 1 126 3 view .LVU63
// 126 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->SLEEP_STACK_DATA_CALLEE_REGS 112 offsetof(struct sleep_stack_data, callee_saved_regs)"	//
// 0 "" 2
	.loc 1 128 3 view .LVU64
// 128 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_RES_X0_OFFS 0 offsetof(struct arm_smccc_res, a0)"	//
// 0 "" 2
	.loc 1 129 3 view .LVU65
// 129 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_RES_X2_OFFS 16 offsetof(struct arm_smccc_res, a2)"	//
// 0 "" 2
	.loc 1 130 3 view .LVU66
// 130 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_QUIRK_ID_OFFS 0 offsetof(struct arm_smccc_quirk, id)"	//
// 0 "" 2
	.loc 1 131 3 view .LVU67
// 131 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_QUIRK_STATE_OFFS 8 offsetof(struct arm_smccc_quirk, state)"	//
// 0 "" 2
	.loc 1 132 3 view .LVU68
// 132 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 133 3 view .LVU69
// 133 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->HIBERN_PBE_ORIG 8 offsetof(struct pbe, orig_address)"	//
// 0 "" 2
	.loc 1 134 3 view .LVU70
// 134 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->HIBERN_PBE_ADDR 0 offsetof(struct pbe, address)"	//
// 0 "" 2
	.loc 1 135 3 view .LVU71
// 135 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->HIBERN_PBE_NEXT 16 offsetof(struct pbe, next)"	//
// 0 "" 2
	.loc 1 136 3 view .LVU72
// 136 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM64_FTR_SYSVAL 16 offsetof(struct arm64_ftr_reg, sys_val)"	//
// 0 "" 2
	.loc 1 137 3 view .LVU73
// 137 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 139 3 view .LVU74
// 139 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TRAMP_VALIAS -279198056448 TRAMP_VALIAS"	//
// 0 "" 2
	.loc 1 141 3 view .LVU75
// arch/arm64/kernel/asm-offsets.c:142: }
	.loc 1 142 1 is_stmt 0 view .LVU76
#NO_APP
	mov	w0, 0	//,
	ret	
	.cfi_endproc
.LFE2938:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "./arch/arm64/include/asm/fixmap.h"
	.file 3 "./include/linux/dma-direction.h"
	.file 4 "./include/uapi/linux/personality.h"
	.file 5 "./arch/arm64/include/asm/stack_pointer.h"
	.file 6 "./include/linux/fs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x1
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.8byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.4byte	0x7a
	.uleb128 0x5
	.4byte	0x68
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	0x73
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x4c
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.4byte	0xff
	.uleb128 0x7
	.4byte	.LASF11
	.4byte	0x20000
	.uleb128 0x7
	.4byte	.LASF12
	.4byte	0x40000
	.uleb128 0x7
	.4byte	.LASF13
	.4byte	0x80000
	.uleb128 0x7
	.4byte	.LASF14
	.4byte	0x100000
	.uleb128 0x7
	.4byte	.LASF15
	.4byte	0x200000
	.uleb128 0x7
	.4byte	.LASF16
	.4byte	0x400000
	.uleb128 0x7
	.4byte	.LASF17
	.4byte	0x800000
	.uleb128 0x7
	.4byte	.LASF18
	.4byte	0x1000000
	.uleb128 0x7
	.4byte	.LASF19
	.4byte	0x2000000
	.uleb128 0x7
	.4byte	.LASF20
	.4byte	0x4000000
	.uleb128 0x7
	.4byte	.LASF21
	.4byte	0x8000000
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x5
	.byte	0x7
	.byte	0x18
	.4byte	0x61
	.uleb128 0x3
	.byte	0x10
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4
	.4byte	0x4c
	.byte	0x2
	.byte	0x24
	.byte	0x6
	.4byte	0x18c
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF25
	.2byte	0x400
	.uleb128 0xb
	.4byte	.LASF26
	.2byte	0x401
	.uleb128 0xb
	.4byte	.LASF27
	.2byte	0x402
	.uleb128 0xb
	.4byte	.LASF28
	.2byte	0x403
	.uleb128 0xb
	.4byte	.LASF29
	.2byte	0x404
	.uleb128 0xb
	.4byte	.LASF30
	.2byte	0x405
	.uleb128 0xb
	.4byte	.LASF31
	.2byte	0x405
	.uleb128 0xb
	.4byte	.LASF32
	.2byte	0x5c4
	.uleb128 0xb
	.4byte	.LASF33
	.2byte	0x5c5
	.uleb128 0xb
	.4byte	.LASF34
	.2byte	0x5c6
	.uleb128 0xb
	.4byte	.LASF35
	.2byte	0x5c7
	.uleb128 0xb
	.4byte	.LASF36
	.2byte	0x5c8
	.uleb128 0xb
	.4byte	.LASF37
	.2byte	0x5c9
	.byte	0
	.uleb128 0xc
	.4byte	0x6e
	.4byte	0x19c
	.uleb128 0xd
	.4byte	0x61
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x18c
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x6
	.2byte	0xabc
	.byte	0x1b
	.4byte	0x19c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4
	.4byte	0x4c
	.byte	0x3
	.byte	0x7
	.byte	0x6
	.4byte	0x1d9
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0x29
	.8byte	.LFB2938
	.8byte	.LFE2938-.LFB2938
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.LFB2938
	.8byte	.LFE2938-.LFB2938
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.8byte	.LFB2938
	.8byte	.LFE2938
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"kernel_read_file_str"
.LASF22:
	.string	"__int128 unsigned"
.LASF11:
	.string	"UNAME26"
.LASF34:
	.string	"FIX_PMD"
.LASF41:
	.string	"DMA_TO_DEVICE"
.LASF28:
	.string	"FIX_ENTRY_TRAMP_DATA"
.LASF15:
	.string	"ADDR_COMPAT_LAYOUT"
.LASF40:
	.string	"DMA_BIDIRECTIONAL"
.LASF29:
	.string	"FIX_ENTRY_TRAMP_TEXT"
.LASF19:
	.string	"WHOLE_SECONDS"
.LASF14:
	.string	"MMAP_PAGE_ZERO"
.LASF23:
	.string	"FIX_HOLE"
.LASF6:
	.string	"long long unsigned int"
.LASF35:
	.string	"FIX_PUD"
.LASF12:
	.string	"ADDR_NO_RANDOMIZE"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"FDPIC_FUNCPTRS"
.LASF20:
	.string	"STICKY_TIMEOUTS"
.LASF44:
	.ascii	"GNU C89 10.2.1 20210110 -mlittle-endian -mgeneral-regs-only "
	.ascii	"-mpc-relative-literal-loads -mabi=lp64 -g -Os -std=gnu90 -fn"
	.ascii	"o-strict-aliasing -fno-common -fshort-wchar -fno-asynchronou"
	.ascii	"s-unwind-tables -fno-pic -fno-del"
	.string	"ete-null-pointer-checks -fno-allow-store-data-races -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fstack-check=no -fconserve-stack"
.LASF21:
	.string	"ADDR_LIMIT_3GB"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"__end_of_fixed_addresses"
.LASF42:
	.string	"DMA_FROM_DEVICE"
.LASF47:
	.string	"current_stack_pointer"
.LASF49:
	.string	"main"
.LASF18:
	.string	"SHORT_INODE"
.LASF31:
	.string	"FIX_BTMAP_END"
.LASF7:
	.string	"long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF16:
	.string	"READ_IMPLIES_EXEC"
.LASF46:
	.string	"/root/kernel_xiaomi_vince/out/headers"
.LASF24:
	.string	"FIX_FDT_END"
.LASF27:
	.string	"FIX_TEXT_POKE0"
.LASF5:
	.string	"long long int"
.LASF30:
	.string	"__end_of_permanent_fixed_addresses"
.LASF17:
	.string	"ADDR_LIMIT_32BIT"
.LASF33:
	.string	"FIX_PTE"
.LASF32:
	.string	"FIX_BTMAP_BEGIN"
.LASF2:
	.string	"short int"
.LASF26:
	.string	"FIX_EARLYCON_MEM_BASE"
.LASF45:
	.string	"arch/arm64/kernel/asm-offsets.c"
.LASF43:
	.string	"DMA_NONE"
.LASF9:
	.string	"long int"
.LASF36:
	.string	"FIX_PGD"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"_Bool"
.LASF39:
	.string	"dma_data_direction"
.LASF25:
	.string	"FIX_FDT"
.LASF38:
	.string	"fixed_addresses"
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
