; ModuleID = 'D:/Xilinx/Assignment_2/HLS_labs/lab7/HLSexerciseWithSystemC/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@ssdm_ins_iosc_0_0_sw = constant i8 0
@ssdm_ins_iosc_0_0_re = constant i1 false
@ssdm_ins_iosc_0_0_ou = constant i4 0
@ssdm_ins_iosc_0_0_in_1 = constant i4 0
@ssdm_ins_iosc_0_0_in = constant i1 false
@ssdm_ins_iosc_0_0_ct = constant i4 0
@ssdm_ins_iosc_0_0_cl = constant i1 false
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@iosc_ssdm_thread_M_pulse = external global i1
@iosc_ssdm_thread_M_controlOutLeds = external global i1
@p_str9 = private unnamed_addr constant [15 x i8] c"__ssdm_reset__\00", align 1
@p_str8 = private unnamed_addr constant [15 x i8] c"controlOutLeds\00", align 1
@p_str7 = private unnamed_addr constant [8 x i8] c"outLeds\00", align 1
@p_str6 = private unnamed_addr constant [9 x i8] c"inSwitch\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@p_str4 = private unnamed_addr constant [13 x i8] c"\22sc_uint<4>\22\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@p_str2 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@p_str16 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@p_str15 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1
@p_str14 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str12 = private unnamed_addr constant [14 x i8] c"internalPulse\00", align 1
@p_str10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [7 x i8] c"\22bool\22\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"iosc\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @"iosc::pulse"(i1* %clk, i1* %reset, i4* %ctrl, i4* %inSwitch, i4* %outLeds, i1* %internalPulse, i8* %iosc_switchs_V) {
_ZN7_ap_sc_7sc_core4waitEi.exit2:
  %clockCounter_V_1 = alloca i10
  call void (...)* @_ssdm_op_SpecIFCore(i4* %ctrl, [1 x i8]* @p_str10, [10 x i8]* @p_str14, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [17 x i8]* @p_str15)
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clk), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !88
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %ctrl), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inSwitch), !map !96
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outLeds), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %internalPulse), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %iosc_switchs_V), !map !108
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [4 x i8]* @p_str2, i32 0, i32 0, i1* %clk) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [13 x i8]* @p_str4, [5 x i8]* @p_str5, i32 0, i32 0, i4* %ctrl) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [13 x i8]* @p_str4, [9 x i8]* @p_str6, i32 0, i32 0, i4* %inSwitch) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 1, [13 x i8]* @p_str4, [8 x i8]* @p_str7, i32 0, i32 0, i4* %outLeds) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([5 x i8]* @p_str, i32 2, [6 x i8]* @p_str16) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str10) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %internalPulse, i1 false)
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str9, i32 %tmp_1)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  store i10 0, i10* %clockCounter_V_1
  br label %0

; <label>:0                                       ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit, %_ZN7_ap_sc_7sc_core4waitEi.exit2
  %clockCounter_V_1_loa = load i10* %clockCounter_V_1
  %tmp = icmp ugt i10 %clockCounter_V_1_loa, -24
  br i1 %tmp, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %internalPulse, i1 true)
  store i10 0, i10* %clockCounter_V_1
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit

; <label>:2                                       ; preds = %0
  %clockCounter_V = add i10 %clockCounter_V_1_loa, 1
  call void @_ssdm_op_Write.ap_auto.volatile.i1P(i1* %internalPulse, i1 false)
  store i10 %clockCounter_V, i10* %clockCounter_V_1
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit

_ZN7_ap_sc_7sc_core4waitEi.exit:                  ; preds = %2, %1
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %0
}

define weak void @"iosc::iosc"(i1* %clk, i1* %reset, i4* %ctrl, i4* %inSwitch, i4* %outLeds, i1* %internalPulse, i8* %iosc_switchs_V) {
  call void (...)* @_ssdm_op_SpecIFCore(i4* %ctrl, [1 x i8]* @p_str10, [10 x i8]* @p_str14, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [17 x i8]* @p_str15)
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clk), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !88
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %ctrl), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inSwitch), !map !96
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outLeds), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %internalPulse), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %iosc_switchs_V), !map !108
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @p_str, [5 x i8]* @p_str) nounwind
  %iosc_ssdm_thread_s = load i1* @iosc_ssdm_thread_M_controlOutLeds, align 1
  br i1 %iosc_ssdm_thread_s, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"iosc::controlOutLeds"(i1* %clk, i1* %reset, i4* %ctrl, i4* %inSwitch, i4* %outLeds, i1* %internalPulse, i8* %iosc_switchs_V)
  br label %UnifiedUnreachableBlock

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([5 x i8]* @p_str, i32 2, [15 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([15 x i8]* @p_str8, [4 x i8]* @p_str2, i1* %clk, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([15 x i8]* @p_str8, [6 x i8]* @p_str3, i1* %reset, i32 3) nounwind
  %iosc_ssdm_thread_1 = load i1* @iosc_ssdm_thread_M_pulse, align 1
  br i1 %iosc_ssdm_thread_1, label %3, label %4

; <label>:3                                       ; preds = %2
  call void @"iosc::pulse"(i1* %clk, i1* %reset, i4* %ctrl, i4* %inSwitch, i4* %outLeds, i1* %internalPulse, i8* %iosc_switchs_V)
  br label %UnifiedUnreachableBlock

; <label>:4                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecProcessDecl([5 x i8]* @p_str, i32 2, [6 x i8]* @p_str16) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([6 x i8]* @p_str16, [4 x i8]* @p_str2, i1* %clk, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([6 x i8]* @p_str16, [6 x i8]* @p_str3, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [4 x i8]* @p_str2, i32 0, i32 0, i1* %clk) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [13 x i8]* @p_str4, [5 x i8]* @p_str5, i32 0, i32 0, i4* %ctrl) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [13 x i8]* @p_str4, [9 x i8]* @p_str6, i32 0, i32 0, i4* %inSwitch) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 1, [13 x i8]* @p_str4, [8 x i8]* @p_str7, i32 0, i32 0, i4* %outLeds) nounwind
  call void (...)* @_ssdm_op_SpecChannel([5 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [14 x i8]* @p_str12, i32 1, i32 0, i1* %internalPulse) nounwind
  ret void

UnifiedUnreachableBlock:                          ; preds = %3, %1
  unreachable
}

define void @"iosc::controlOutLeds"(i1* %clk, i1* %reset, i4* %ctrl, i4* %inSwitch, i4* %outLeds, i1* %internalPulse, i8* %iosc_switchs_V) {
_ZN7_ap_sc_7sc_core4waitEi.exit:
  %v_assign = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clk), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !88
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %ctrl), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inSwitch), !map !96
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outLeds), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %internalPulse), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %iosc_switchs_V), !map !108
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [4 x i8]* @p_str2, i32 0, i32 0, i1* %clk) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [13 x i8]* @p_str4, [5 x i8]* @p_str5, i32 0, i32 0, i4* %ctrl) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 0, [13 x i8]* @p_str4, [9 x i8]* @p_str6, i32 0, i32 0, i4* %inSwitch) nounwind
  call void (...)* @_ssdm_op_SpecPort([5 x i8]* @p_str, i32 1, [13 x i8]* @p_str4, [8 x i8]* @p_str7, i32 0, i32 0, i4* %outLeds) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([5 x i8]* @p_str, i32 2, [15 x i8]* @p_str8) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str10) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i4* %ctrl, [1 x i8]* @p_str10, [10 x i8]* @p_str14, [1 x i8]* @p_str10, i32 -1, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [1 x i8]* @p_str10, [17 x i8]* @p_str15)
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str9, i32 %tmp_2)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  store i32 0, i32* %v_assign
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit2

_ZN7_ap_sc_7sc_core4waitEi.exit2:                 ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2.backedge, %_ZN7_ap_sc_7sc_core4waitEi.exit
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %val_V = call i4 @_ssdm_op_Read.ap_auto.volatile.i4P(i4* %ctrl)
  switch i4 %val_V, label %_ZN7_ap_sc_7sc_core4waitEi.exit2.backedge [
    i4 0, label %0
    i4 1, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 2, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 3, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 4, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 5, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 6, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 7, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 -8, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 -7, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 -6, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 -5, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 -4, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 -3, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 -2, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
    i4 -1, label %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150
  ]

; <label>:0                                       ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2
  %val_V_1 = call i4 @_ssdm_op_Read.ap_auto.volatile.i4P(i4* %inSwitch)
  %tmp = icmp eq i4 %val_V_1, -8
  br i1 %tmp, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_auto.volatile.i4P(i4* %outLeds, i4 0)
  store i32 0, i32* %v_assign
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit2.backedge

; <label>:2                                       ; preds = %0
  %tmp_1 = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %internalPulse)
  br i1 %tmp_1, label %3, label %_ZN7_ap_sc_7sc_core4waitEi.exit2.backedge

; <label>:3                                       ; preds = %2
  %v_assign_load = load i32* %v_assign
  %internalLEDValue = add nsw i32 1, %v_assign_load
  %v_V_1 = trunc i32 %v_assign_load to i4
  call void @_ssdm_op_Write.ap_auto.volatile.i4P(i4* %outLeds, i4 %v_V_1)
  store i32 %internalLEDValue, i32* %v_assign
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit2.backedge

_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150:   ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2, %_ZN7_ap_sc_7sc_core4waitEi.exit2
  %val_V_2 = call i4 @_ssdm_op_Read.ap_auto.volatile.i4P(i4* %inSwitch)
  %v_V = and i4 %val_V_2, %val_V
  call void @_ssdm_op_Write.ap_auto.volatile.i4P(i4* %outLeds, i4 %v_V)
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit2.backedge

_ZN7_ap_sc_7sc_core4waitEi.exit2.backedge:        ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2._crit_edge150, %3, %2, %1, %_ZN7_ap_sc_7sc_core4waitEi.exit2
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit2
}

define weak void @_ssdm_op_Write.ap_auto.volatile.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Wait(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecStateEnd(...) nounwind {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecStateBegin(...) nounwind {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecSensitive(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDef(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDecl(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPort(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecChannel(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i4 @_ssdm_op_Read.ap_auto.volatile.i4P(i4*) {
entry:
  %empty = load i4* %0
  ret i4 %empty
}

define weak i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !0, !7, !13, !13, !0, !15, !18, !20, !13, !13, !0, !26, !28, !31, !34, !34, !13, !0, !36, !36, !36, !0, !37, !40, !0, !0, !42, !42, !34, !34, !13, !44, !46, !47, !49, !50, !26, !0, !0, !0, !52, !55, !0, !0, !0, !0, !57, !59, !59, !63, !63, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !65}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!67, !74, !79}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !""}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!18 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !17, metadata !6}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<30> &"}
!20 = metadata !{null, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !6}
!21 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!22 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<30, false> &", metadata !"int"}
!24 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!26 = metadata !{null, metadata !8, metadata !9, metadata !27, metadata !11, metadata !17, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const _Bool &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"v2"}
!31 = metadata !{null, metadata !21, metadata !22, metadata !32, metadata !24, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &", metadata !"const _Bool &"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"P", metadata !"val"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !35, metadata !6}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !27, metadata !11, metadata !14, metadata !6}
!37 = metadata !{null, metadata !21, metadata !22, metadata !38, metadata !24, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<4, false> &"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!40 = metadata !{null, metadata !21, metadata !22, metadata !41, metadata !24, metadata !25, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<4, false> &"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !14, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!44 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !35, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<4> &"}
!46 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !30, metadata !6}
!47 = metadata !{null, metadata !21, metadata !22, metadata !48, metadata !24, metadata !33, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<4> &", metadata !"const struct _ap_sc_::sc_dt::sc_uint<4> &"}
!49 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !17, metadata !6}
!50 = metadata !{null, metadata !21, metadata !22, metadata !51, metadata !24, metadata !25, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"int"}
!52 = metadata !{null, metadata !8, metadata !9, metadata !53, metadata !11, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<4> &"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"P"}
!55 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !17, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile struct _ap_sc_::sc_dt::sc_uint<4> &"}
!57 = metadata !{null, metadata !8, metadata !9, metadata !58, metadata !11, metadata !54, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &"}
!59 = metadata !{null, metadata !60, metadata !9, metadata !61, metadata !62, metadata !12, metadata !6}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!62 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !12, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"::sc_core::sc_module_name"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !66, metadata !6}
!66 = metadata !{metadata !"kernel_arg_name", metadata !"n"}
!67 = metadata !{metadata !68, [1 x i32]* @llvm_global_ctors_0}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 31, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"llvm.global_ctors.0", metadata !72, metadata !"", i32 0, i32 31}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 0, i32 1}
!74 = metadata !{metadata !75, i1* @iosc_ssdm_thread_M_pulse}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 0, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"iosc::__ssdm_thread_M_pulse", metadata !72, metadata !"bool", i32 0, i32 0}
!79 = metadata !{metadata !80, i1* @iosc_ssdm_thread_M_controlOutLeds}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 0, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"iosc::__ssdm_thread_M_controlOutLeds", metadata !72, metadata !"bool", i32 0, i32 0}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 0, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"iosc.clk.m_if.Val", metadata !72, metadata !"bool", i32 0, i32 0}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 0, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"iosc.reset.m_if.Val", metadata !72, metadata !"bool", i32 0, i32 0}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 3, metadata !94}
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !"iosc.ctrl.m_if.Val.V", metadata !72, metadata !"uint4", i32 0, i32 3}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 0, i32 3, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"iosc.inSwitch.m_if.Val.V", metadata !72, metadata !"uint4", i32 0, i32 3}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 3, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"iosc.outLeds.m_if.Val.V", metadata !72, metadata !"uint4", i32 0, i32 3}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 0, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"iosc.internalPulse.Val", metadata !72, metadata !"bool", i32 0, i32 0}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 7, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"iosc.switchs.V", metadata !72, metadata !"uint8", i32 0, i32 7}
