; ModuleID = 'D:/Xilinx/Assignment_2/HLS_labs/lab1/matrixmul.prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@matrixmul.str = internal unnamed_addr constant [10 x i8] c"matrixmul\00" ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"Product\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=1 type=[4 x i8]*]

; [#uses=0]
define void @matrixmul([3 x i8]* %a, [3 x i8]* %b, [3 x i16]* %res) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i8]* %a}, i64 0, metadata !31), !dbg !32 ; [debug line = 70:15] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %b}, i64 0, metadata !33), !dbg !34 ; [debug line = 71:15] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[3 x i16]* %res}, i64 0, metadata !35), !dbg !36 ; [debug line = 72:16] [debug variable = res]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %a, i32 3) nounwind, !dbg !37 ; [debug line = 73:2]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i16]* %res, i32 3) nounwind, !dbg !39 ; [debug line = 73:30]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %b, i32 3) nounwind, !dbg !40 ; [debug line = 73:60]
  br label %1, !dbg !41                           ; [debug line = 75:21]

; <label>:1                                       ; preds = %8, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %8 ]            ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %i, 3, !dbg !41        ; [#uses=1 type=i1] [debug line = 75:21]
  br i1 %exitcond2, label %9, label %2, !dbg !41  ; [debug line = 75:21]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !43 ; [debug line = 75:36]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !43 ; [#uses=1 type=i32] [debug line = 75:36]
  br label %3, !dbg !45                           ; [debug line = 77:23]

; <label>:3                                       ; preds = %7, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %7 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %j, 3, !dbg !45        ; [#uses=1 type=i1] [debug line = 77:23]
  br i1 %exitcond1, label %8, label %4, !dbg !45  ; [debug line = 77:23]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !47 ; [debug line = 77:38]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !47 ; [#uses=1 type=i32] [debug line = 77:38]
  %res.addr = getelementptr inbounds [3 x i16]* %res, i32 %i, i32 %j, !dbg !49 ; [#uses=3 type=i16*] [debug line = 79:7]
  store i16 0, i16* %res.addr, align 2, !dbg !49  ; [debug line = 79:7]
  br label %5, !dbg !50                           ; [debug line = 80:29]

; <label>:5                                       ; preds = %6, %4
  %k = phi i32 [ 0, %4 ], [ %k.1, %6 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %k, 3, !dbg !50         ; [#uses=1 type=i1] [debug line = 80:29]
  br i1 %exitcond, label %7, label %6, !dbg !50   ; [debug line = 80:29]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !52 ; [debug line = 80:44]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !52 ; [#uses=1 type=i32] [debug line = 80:44]
  %a.addr = getelementptr inbounds [3 x i8]* %a, i32 %i, i32 %k, !dbg !54 ; [#uses=1 type=i8*] [debug line = 81:9]
  %a.load = load i8* %a.addr, align 1, !dbg !54   ; [#uses=2 type=i8] [debug line = 81:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a.load) nounwind
  %tmp = sext i8 %a.load to i16, !dbg !54         ; [#uses=1 type=i16] [debug line = 81:9]
  %b.addr = getelementptr inbounds [3 x i8]* %b, i32 %k, i32 %j, !dbg !54 ; [#uses=1 type=i8*] [debug line = 81:9]
  %b.load = load i8* %b.addr, align 1, !dbg !54   ; [#uses=2 type=i8] [debug line = 81:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b.load) nounwind
  %tmp.1 = sext i8 %b.load to i16, !dbg !54       ; [#uses=1 type=i16] [debug line = 81:9]
  %tmp.2 = mul i16 %tmp.1, %tmp, !dbg !54         ; [#uses=1 type=i16] [debug line = 81:9]
  %res.load = load i16* %res.addr, align 2, !dbg !54 ; [#uses=2 type=i16] [debug line = 81:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %res.load) nounwind
  %tmp.3 = add i16 %res.load, %tmp.2, !dbg !54    ; [#uses=1 type=i16] [debug line = 81:9]
  store i16 %tmp.3, i16* %res.addr, align 2, !dbg !54 ; [debug line = 81:9]
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 %rbegin3) nounwind, !dbg !55 ; [#uses=0 type=i32] [debug line = 82:7]
  %k.1 = add nsw i32 %k, 1, !dbg !56              ; [#uses=1 type=i32] [debug line = 80:38]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !57), !dbg !56 ; [debug line = 80:38] [debug variable = k]
  br label %5, !dbg !56                           ; [debug line = 80:38]

; <label>:7                                       ; preds = %5
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !59 ; [#uses=0 type=i32] [debug line = 83:5]
  %j.1 = add nsw i32 %j, 1, !dbg !60              ; [#uses=1 type=i32] [debug line = 77:32]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !61), !dbg !60 ; [debug line = 77:32] [debug variable = j]
  br label %3, !dbg !60                           ; [debug line = 77:32]

; <label>:8                                       ; preds = %3
  %rend6 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %rbegin5) nounwind, !dbg !62 ; [#uses=0 type=i32] [debug line = 84:3]
  %i.1 = add nsw i32 %i, 1, !dbg !63              ; [#uses=1 type=i32] [debug line = 75:30]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !64), !dbg !63 ; [debug line = 75:30] [debug variable = i]
  br label %1, !dbg !63                           ; [debug line = 75:30]

; <label>:9                                       ; preds = %1
  ret void, !dbg !65                              ; [debug line = 85:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!24}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Xilinx/Assignment_2/HLS_labs/lab1/matrixmul.prj/solution1/.autopilot/db/matrixmul.pragma.2.cpp", metadata !"D:\5CXilinx\5CAssignment_2\5CHLS_labs\5Clab1", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !6, i32 69, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*, [3 x i8]*, [3 x i16]*)* @matrixmul, null, null, metadata !22, i32 73} ; [ DW_TAG_subprogram ]
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
!24 = metadata !{void ([3 x i8]*, [3 x i8]*, [3 x i16]*)* @matrixmul, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"mat_a_t [3]*", metadata !"mat_b_t [3]*", metadata !"result_t [3]*"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"res"}
!30 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!31 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777286, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 70, i32 15, metadata !5, null}
!33 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554503, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 71, i32 15, metadata !5, null}
!35 = metadata !{i32 786689, metadata !5, metadata !"res", metadata !6, i32 50331720, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 72, i32 16, metadata !5, null}
!37 = metadata !{i32 73, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, i32 73, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 73, i32 30, metadata !38, null}
!40 = metadata !{i32 73, i32 60, metadata !38, null}
!41 = metadata !{i32 75, i32 21, metadata !42, null}
!42 = metadata !{i32 786443, metadata !38, i32 75, i32 8, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 75, i32 36, metadata !44, null}
!44 = metadata !{i32 786443, metadata !42, i32 75, i32 35, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 77, i32 23, metadata !46, null}
!46 = metadata !{i32 786443, metadata !44, i32 77, i32 10, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 77, i32 38, metadata !48, null}
!48 = metadata !{i32 786443, metadata !46, i32 77, i32 37, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 79, i32 7, metadata !48, null}
!50 = metadata !{i32 80, i32 29, metadata !51, null}
!51 = metadata !{i32 786443, metadata !48, i32 80, i32 16, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 80, i32 44, metadata !53, null}
!53 = metadata !{i32 786443, metadata !51, i32 80, i32 43, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 81, i32 9, metadata !53, null}
!55 = metadata !{i32 82, i32 7, metadata !53, null}
!56 = metadata !{i32 80, i32 38, metadata !51, null}
!57 = metadata !{i32 786688, metadata !51, metadata !"k", metadata !6, i32 80, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!59 = metadata !{i32 83, i32 5, metadata !48, null}
!60 = metadata !{i32 77, i32 32, metadata !46, null}
!61 = metadata !{i32 786688, metadata !46, metadata !"j", metadata !6, i32 77, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 84, i32 3, metadata !44, null}
!63 = metadata !{i32 75, i32 30, metadata !42, null}
!64 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !6, i32 75, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 85, i32 1, metadata !38, null}
