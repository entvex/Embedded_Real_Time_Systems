; ModuleID = 'D:/Xilinx/Assignment_2/HLS_labs/lab1/matrixmul.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@matrixmul.str = internal unnamed_addr constant [10 x i8] c"matrixmul\00" ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"Product\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=3 type=[4 x i8]*]
@.str = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=3 type=[4 x i8]*]

; [#uses=0]
define void @matrixmul([3 x [3 x i8]]* %a, [3 x [3 x i8]]* %b, [3 x [3 x i16]]* %res) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x i8]]* %a) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x i8]]* %b) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x i16]]* %res) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x [3 x i8]]* %a}, i64 0, metadata !45), !dbg !48 ; [debug line = 70:15] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[3 x [3 x i8]]* %b}, i64 0, metadata !49), !dbg !51 ; [debug line = 71:15] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[3 x [3 x i16]]* %res}, i64 0, metadata !52), !dbg !54 ; [debug line = 72:16] [debug variable = res]
  br label %1, !dbg !55                           ; [debug line = 75:21]

; <label>:1                                       ; preds = %12, %0
  %i = phi i2 [ 0, %0 ], [ %i.1, %12 ]            ; [#uses=3 type=i2]
  %i.cast3 = zext i2 %i to i32, !dbg !55          ; [#uses=2 type=i32] [debug line = 75:21]
  %exitcond2 = icmp eq i2 %i, -1, !dbg !55        ; [#uses=1 type=i1] [debug line = 75:21]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %14, label %3, !dbg !55 ; [debug line = 75:21]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str) nounwind, !dbg !58 ; [debug line = 75:36]
  %tmp.4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str) nounwind, !dbg !58 ; [#uses=1 type=i32] [debug line = 75:36]
  br label %4, !dbg !60                           ; [debug line = 77:23]

; <label>:4                                       ; preds = %10, %3
  %j = phi i2 [ 0, %3 ], [ %j.1, %10 ]            ; [#uses=3 type=i2]
  %j.cast2 = zext i2 %j to i32, !dbg !60          ; [#uses=2 type=i32] [debug line = 77:23]
  %exitcond1 = icmp eq i2 %j, -1, !dbg !60        ; [#uses=1 type=i1] [debug line = 77:23]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %12, label %6, !dbg !60 ; [debug line = 77:23]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str1) nounwind, !dbg !62 ; [debug line = 77:38]
  %tmp.5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str1) nounwind, !dbg !62 ; [#uses=1 type=i32] [debug line = 77:38]
  %res.addr = getelementptr [3 x [3 x i16]]* %res, i32 0, i32 %i.cast3, i32 %j.cast2, !dbg !64 ; [#uses=3 type=i16*] [debug line = 79:7]
  store i16 0, i16* %res.addr, align 2, !dbg !64  ; [debug line = 79:7]
  br label %7, !dbg !65                           ; [debug line = 80:29]

; <label>:7                                       ; preds = %9, %6
  %k = phi i2 [ 0, %6 ], [ %k.1, %9 ]             ; [#uses=3 type=i2]
  %k.cast1 = zext i2 %k to i32, !dbg !65          ; [#uses=2 type=i32] [debug line = 80:29]
  %exitcond = icmp eq i2 %k, -1, !dbg !65         ; [#uses=1 type=i1] [debug line = 80:29]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %10, label %9, !dbg !65  ; [debug line = 80:29]

; <label>:9                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @.str2) nounwind, !dbg !67 ; [debug line = 80:44]
  %a.addr = getelementptr [3 x [3 x i8]]* %a, i32 0, i32 %i.cast3, i32 %k.cast1, !dbg !69 ; [#uses=1 type=i8*] [debug line = 81:9]
  %a.load = load i8* %a.addr, align 1, !dbg !69   ; [#uses=1 type=i8] [debug line = 81:9]
  %tmp = sext i8 %a.load to i16, !dbg !69         ; [#uses=1 type=i16] [debug line = 81:9]
  %b.addr = getelementptr [3 x [3 x i8]]* %b, i32 0, i32 %k.cast1, i32 %j.cast2, !dbg !69 ; [#uses=1 type=i8*] [debug line = 81:9]
  %b.load = load i8* %b.addr, align 1, !dbg !69   ; [#uses=1 type=i8] [debug line = 81:9]
  %tmp.1 = sext i8 %b.load to i16, !dbg !69       ; [#uses=1 type=i16] [debug line = 81:9]
  %tmp.2 = mul i16 %tmp, %tmp.1, !dbg !69         ; [#uses=1 type=i16] [debug line = 81:9]
  %res.load = load i16* %res.addr, align 2, !dbg !69 ; [#uses=1 type=i16] [debug line = 81:9]
  %tmp.3 = add i16 %tmp.2, %res.load, !dbg !69    ; [#uses=1 type=i16] [debug line = 81:9]
  store i16 %tmp.3, i16* %res.addr, align 2, !dbg !69 ; [debug line = 81:9]
  %k.1 = add i2 %k, 1, !dbg !70                   ; [#uses=1 type=i2] [debug line = 80:38]
  call void @llvm.dbg.value(metadata !{i2 %k.1}, i64 0, metadata !71), !dbg !70 ; [debug line = 80:38] [debug variable = k]
  br label %7, !dbg !70                           ; [debug line = 80:38]

; <label>:10                                      ; preds = %7
  %11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str1, i32 %tmp.5) nounwind, !dbg !73 ; [#uses=0 type=i32] [debug line = 83:5]
  %j.1 = add i2 %j, 1, !dbg !74                   ; [#uses=1 type=i2] [debug line = 77:32]
  call void @llvm.dbg.value(metadata !{i2 %j.1}, i64 0, metadata !75), !dbg !74 ; [debug line = 77:32] [debug variable = j]
  br label %4, !dbg !74                           ; [debug line = 77:32]

; <label>:12                                      ; preds = %4
  %13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str, i32 %tmp.4) nounwind, !dbg !76 ; [#uses=0 type=i32] [debug line = 84:3]
  %i.1 = add i2 %i, 1, !dbg !77                   ; [#uses=1 type=i2] [debug line = 75:30]
  call void @llvm.dbg.value(metadata !{i2 %i.1}, i64 0, metadata !78), !dbg !77 ; [debug line = 75:30] [debug variable = i]
  br label %1, !dbg !77                           ; [debug line = 75:30]

; <label>:14                                      ; preds = %1
  ret void, !dbg !79                              ; [debug line = 85:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!24}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Xilinx/Assignment_2/HLS_labs/lab1/matrixmul.prj/solution1/.autopilot/db/matrixmul.pragma.2.cpp", metadata !"D:\5CXilinx\5CAssignment_2\5CHLS_labs\5Clab1", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !6, i32 69, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 73} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"matrixmul.cpp", metadata !"D:\5CXilinx\5CAssignment_2\5CHLS_labs\5Clab1", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !15, metadata !18}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786454, null, metadata !"mat_a_t", metadata !6, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !17, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{i32 786454, null, metadata !"mat_b_t", metadata !6, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 48, i64 16, i32 0, i32 0, metadata !20, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{i32 786454, null, metadata !"result_t", metadata !6, i32 82, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"mat_a_t [3]*", metadata !"mat_b_t [3]*", metadata !"result_t [3]*"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"res"}
!30 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 7, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"a", metadata !35, metadata !"char", i32 0, i32 7}
!35 = metadata !{metadata !36, metadata !36}
!36 = metadata !{i32 0, i32 2, i32 1}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 7, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"b", metadata !35, metadata !"char", i32 0, i32 7}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 15, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"res", metadata !35, metadata !"short", i32 0, i32 15}
!45 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 70, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{metadata !14, metadata !14}
!48 = metadata !{i32 70, i32 15, metadata !5, null}
!49 = metadata !{i32 786689, metadata !5, metadata !"b", null, i32 71, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !17, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{i32 71, i32 15, metadata !5, null}
!52 = metadata !{i32 786689, metadata !5, metadata !"res", null, i32 72, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !20, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!54 = metadata !{i32 72, i32 16, metadata !5, null}
!55 = metadata !{i32 75, i32 21, metadata !56, null}
!56 = metadata !{i32 786443, metadata !57, i32 75, i32 8, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786443, metadata !5, i32 73, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 75, i32 36, metadata !59, null}
!59 = metadata !{i32 786443, metadata !56, i32 75, i32 35, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 77, i32 23, metadata !61, null}
!61 = metadata !{i32 786443, metadata !59, i32 77, i32 10, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 77, i32 38, metadata !63, null}
!63 = metadata !{i32 786443, metadata !61, i32 77, i32 37, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 79, i32 7, metadata !63, null}
!65 = metadata !{i32 80, i32 29, metadata !66, null}
!66 = metadata !{i32 786443, metadata !63, i32 80, i32 16, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 80, i32 44, metadata !68, null}
!68 = metadata !{i32 786443, metadata !66, i32 80, i32 43, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 81, i32 9, metadata !68, null}
!70 = metadata !{i32 80, i32 38, metadata !66, null}
!71 = metadata !{i32 786688, metadata !66, metadata !"k", metadata !6, i32 80, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 83, i32 5, metadata !63, null}
!74 = metadata !{i32 77, i32 32, metadata !61, null}
!75 = metadata !{i32 786688, metadata !61, metadata !"j", metadata !6, i32 77, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 84, i32 3, metadata !59, null}
!77 = metadata !{i32 75, i32 30, metadata !56, null}
!78 = metadata !{i32 786688, metadata !56, metadata !"i", metadata !6, i32 75, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 85, i32 1, metadata !57, null}
