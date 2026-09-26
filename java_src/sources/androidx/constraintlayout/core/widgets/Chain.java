package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    public static void b(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i10) {
        int i11;
        ChainHead[] chainHeadArr;
        int i12;
        if (i10 == 0) {
            i11 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i12 = 0;
        } else {
            i11 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
            i12 = 2;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            ChainHead chainHead = chainHeadArr[i13];
            chainHead.a();
            if (arrayList == null || arrayList.contains(chainHead.mFirst)) {
                a(constraintWidgetContainer, linearSystem, i10, i12, chainHead);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x016d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0173  */
    /* JADX WARN: Code duplicated, block: B:104:0x0194  */
    /* JADX WARN: Code duplicated, block: B:16:0x0033 A[PHI: r8 r16
      0x0033: PHI (r8v39 boolean) = (r8v1 boolean), (r8v41 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
      0x0033: PHI (r16v6 boolean) = (r16v1 boolean), (r16v8 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:17:0x0035 A[PHI: r8 r16
      0x0035: PHI (r8v3 boolean) = (r8v1 boolean), (r8v41 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
      0x0035: PHI (r16v3 boolean) = (r16v1 boolean), (r16v8 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:202:0x034e  */
    /* JADX WARN: Code duplicated, block: B:222:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:323:0x03a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x016a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r38v0, types: [androidx.constraintlayout.core.LinearSystem] */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29, types: [androidx.constraintlayout.core.SolverVariable] */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    static void a(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i10, int i11, ChainHead chainHead) {
        boolean z6;
        boolean z10;
        boolean z11;
        Object obj;
        int i12;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        ?? r5;
        SolverVariable solverVariable4;
        int size;
        ConstraintAnchor constraintAnchor3;
        int i13;
        int i14 = i10;
        ConstraintWidget constraintWidget = chainHead.mFirst;
        ConstraintWidget constraintWidget2 = chainHead.mLast;
        ConstraintWidget constraintWidget3 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget4 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget5 = chainHead.mHead;
        float f = chainHead.mTotalWeight;
        boolean z12 = constraintWidgetContainer.mListDimensionBehaviors[i14] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i14 == 0) {
            int i15 = constraintWidget5.mHorizontalChainStyle;
            z6 = i15 == 0;
            z10 = i15 == 1;
            if (i15 == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            int i16 = constraintWidget5.mVerticalChainStyle;
            z6 = i16 == 0;
            z10 = i16 == 1;
            if (i16 == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
        }
        boolean z13 = z10;
        boolean z14 = false;
        boolean z15 = z6;
        ?? r10 = constraintWidget;
        while (true) {
            obj = null;
            if (z14) {
                break;
            }
            ConstraintAnchor constraintAnchor4 = r10.mListAnchors[i11];
            int i17 = z11 ? 1 : 4;
            int iF = constraintAnchor4.f();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = r10.mListDimensionBehaviors[i14];
            float f6 = f;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z16 = dimensionBehaviour == dimensionBehaviour2 && r10.mResolvedMatchConstraintDefault[i14] == 0;
            ConstraintAnchor constraintAnchor5 = constraintAnchor4.mTarget;
            if (constraintAnchor5 != null && r10 != constraintWidget) {
                iF += constraintAnchor5.f();
            }
            int i18 = iF;
            if (z11 && r10 != constraintWidget && r10 != constraintWidget3) {
                i17 = 8;
            }
            ConstraintAnchor constraintAnchor6 = constraintAnchor4.mTarget;
            if (constraintAnchor6 != null) {
                if (r10 == constraintWidget3) {
                    linearSystem.h(constraintAnchor4.mSolverVariable, constraintAnchor6.mSolverVariable, i18, 6);
                } else {
                    linearSystem.h(constraintAnchor4.mSolverVariable, constraintAnchor6.mSolverVariable, i18, 8);
                }
                if (z16 && !z11) {
                    i17 = 5;
                }
                linearSystem.e(constraintAnchor4.mSolverVariable, constraintAnchor4.mTarget.mSolverVariable, i18, (r10 == constraintWidget3 && z11 && r10.j0(i14)) ? 5 : i17);
            } else {
                constraintWidget = constraintWidget;
            }
            if (z12) {
                if (r10.X() == 8 || r10.mListDimensionBehaviors[i14] != dimensionBehaviour2) {
                    i13 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr = r10.mListAnchors;
                    i13 = 0;
                    linearSystem.h(constraintAnchorArr[i11 + 1].mSolverVariable, constraintAnchorArr[i11].mSolverVariable, 0, 5);
                }
                linearSystem.h(r10.mListAnchors[i11].mSolverVariable, constraintWidgetContainer.mListAnchors[i11].mSolverVariable, i13, 8);
            }
            ConstraintAnchor constraintAnchor7 = r10.mListAnchors[i11 + 1].mTarget;
            if (constraintAnchor7 != null) {
                ConstraintWidget constraintWidget6 = constraintAnchor7.mOwner;
                ConstraintAnchor constraintAnchor8 = constraintWidget6.mListAnchors[i11].mTarget;
                if (constraintAnchor8 != null && constraintAnchor8.mOwner == r10) {
                    obj = constraintWidget6;
                }
            }
            if (obj != null) {
                r10 = obj;
                z14 = z14;
            } else {
                z14 = true;
            }
            constraintWidget5 = constraintWidget5;
            f = f6;
            constraintWidget = constraintWidget;
            r10 = r10;
        }
        ConstraintWidget constraintWidget7 = constraintWidget5;
        float f7 = f;
        ConstraintWidget constraintWidget8 = constraintWidget;
        if (constraintWidget4 != null) {
            int i19 = i11 + 1;
            if (constraintWidget2.mListAnchors[i19].mTarget != null) {
                ConstraintAnchor constraintAnchor9 = constraintWidget4.mListAnchors[i19];
                if (constraintWidget4.mListDimensionBehaviors[i14] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget4.mResolvedMatchConstraintDefault[i14] == 0 && !z11) {
                    ConstraintAnchor constraintAnchor10 = constraintAnchor9.mTarget;
                    if (constraintAnchor10.mOwner == constraintWidgetContainer) {
                        linearSystem.e(constraintAnchor9.mSolverVariable, constraintAnchor10.mSolverVariable, -constraintAnchor9.f(), 5);
                    } else if (z11) {
                        constraintAnchor3 = constraintAnchor9.mTarget;
                        if (constraintAnchor3.mOwner == constraintWidgetContainer) {
                            linearSystem.e(constraintAnchor9.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor9.f(), 4);
                        }
                    }
                } else if (z11) {
                    constraintAnchor3 = constraintAnchor9.mTarget;
                    if (constraintAnchor3.mOwner == constraintWidgetContainer) {
                        linearSystem.e(constraintAnchor9.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor9.f(), 4);
                    }
                }
                linearSystem.j(constraintAnchor9.mSolverVariable, constraintWidget2.mListAnchors[i19].mTarget.mSolverVariable, -constraintAnchor9.f(), 6);
            }
        }
        if (z12) {
            int i20 = i11 + 1;
            SolverVariable solverVariable5 = constraintWidgetContainer.mListAnchors[i20].mSolverVariable;
            ConstraintAnchor constraintAnchor11 = constraintWidget2.mListAnchors[i20];
            linearSystem.h(solverVariable5, constraintAnchor11.mSolverVariable, constraintAnchor11.f(), 8);
        }
        ArrayList<ConstraintWidget> arrayList = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            float f10 = (!chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f7 : chainHead.mWidgetsMatchCount;
            float f11 = 0.0f;
            float f12 = 0.0f;
            ConstraintWidget constraintWidget9 = null;
            int i21 = 0;
            while (i21 < size) {
                ConstraintWidget constraintWidget10 = arrayList.get(i21);
                float f13 = constraintWidget10.mWeight[i14];
                if (f13 < f11) {
                    if (chainHead.mHasComplexMatchWeights) {
                        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget10.mListAnchors;
                        linearSystem.e(constraintAnchorArr2[i11 + 1].mSolverVariable, constraintAnchorArr2[i11].mSolverVariable, 0, 4);
                    } else {
                        f13 = 1.0f;
                    }
                    arrayList = arrayList;
                    size = size;
                    i21++;
                    size = size;
                    arrayList = arrayList;
                    f11 = 0.0f;
                }
                if (f13 == 0.0f) {
                    ConstraintAnchor[] constraintAnchorArr3 = constraintWidget10.mListAnchors;
                    linearSystem.e(constraintAnchorArr3[i11 + 1].mSolverVariable, constraintAnchorArr3[i11].mSolverVariable, 0, 8);
                    arrayList = arrayList;
                    size = size;
                } else {
                    if (constraintWidget9 != null) {
                        ConstraintAnchor[] constraintAnchorArr4 = constraintWidget9.mListAnchors;
                        SolverVariable solverVariable6 = constraintAnchorArr4[i11].mSolverVariable;
                        int i22 = i11 + 1;
                        SolverVariable solverVariable7 = constraintAnchorArr4[i22].mSolverVariable;
                        ConstraintAnchor[] constraintAnchorArr5 = constraintWidget10.mListAnchors;
                        SolverVariable solverVariable8 = constraintAnchorArr5[i11].mSolverVariable;
                        SolverVariable solverVariable9 = constraintAnchorArr5[i22].mSolverVariable;
                        ArrayRow arrayRowR = linearSystem.r();
                        arrayRowR.l(f12, f10, f13, solverVariable6, solverVariable7, solverVariable8, solverVariable9);
                        linearSystem.d(arrayRowR);
                    }
                    constraintWidget9 = constraintWidget10;
                    f12 = f13;
                }
                i21++;
                size = size;
                arrayList = arrayList;
                f11 = 0.0f;
            }
        }
        if (constraintWidget3 != null && (constraintWidget3 == constraintWidget4 || z11)) {
            ConstraintAnchor constraintAnchor12 = constraintWidget8.mListAnchors[i11];
            int i23 = i11 + 1;
            ConstraintAnchor constraintAnchor13 = constraintWidget2.mListAnchors[i23];
            ConstraintAnchor constraintAnchor14 = constraintAnchor12.mTarget;
            SolverVariable solverVariable10 = constraintAnchor14 != null ? constraintAnchor14.mSolverVariable : null;
            ConstraintAnchor constraintAnchor15 = constraintAnchor13.mTarget;
            SolverVariable solverVariable11 = constraintAnchor15 != null ? constraintAnchor15.mSolverVariable : null;
            ConstraintAnchor constraintAnchor16 = constraintWidget3.mListAnchors[i11];
            if (constraintWidget4 != null) {
                constraintAnchor13 = constraintWidget4.mListAnchors[i23];
            }
            if (solverVariable10 != null && solverVariable11 != null) {
                linearSystem.c(constraintAnchor16.mSolverVariable, solverVariable10, constraintAnchor16.f(), i14 == 0 ? constraintWidget7.mHorizontalBiasPercent : constraintWidget7.mVerticalBiasPercent, solverVariable11, constraintAnchor13.mSolverVariable, constraintAnchor13.f(), 7);
            }
        } else if (!z15 || constraintWidget3 == null) {
            int i24 = 8;
            if (z13 && constraintWidget3 != null) {
                int i25 = chainHead.mWidgetsMatchCount;
                boolean z17 = i25 > 0 && chainHead.mWidgetsCount == i25;
                ConstraintWidget constraintWidget11 = constraintWidget3;
                ConstraintWidget constraintWidget12 = constraintWidget11;
                while (constraintWidget12 != null) {
                    ConstraintWidget constraintWidget13 = constraintWidget12.mNextChainWidget[i14];
                    while (constraintWidget13 != null && constraintWidget13.X() == i24) {
                        constraintWidget13 = constraintWidget13.mNextChainWidget[i14];
                    }
                    if (constraintWidget12 == constraintWidget3 || constraintWidget12 == constraintWidget4 || constraintWidget13 == null) {
                        constraintWidget11 = constraintWidget11;
                        i12 = i24;
                    } else {
                        ConstraintWidget constraintWidget14 = constraintWidget13 == constraintWidget4 ? null : constraintWidget13;
                        ConstraintAnchor constraintAnchor17 = constraintWidget12.mListAnchors[i11];
                        SolverVariable solverVariable12 = constraintAnchor17.mSolverVariable;
                        ConstraintAnchor constraintAnchor18 = constraintAnchor17.mTarget;
                        if (constraintAnchor18 != null) {
                            SolverVariable solverVariable13 = constraintAnchor18.mSolverVariable;
                        }
                        int i26 = i11 + 1;
                        SolverVariable solverVariable14 = constraintWidget11.mListAnchors[i26].mSolverVariable;
                        int iF2 = constraintAnchor17.f();
                        int iF3 = constraintWidget12.mListAnchors[i26].f();
                        if (constraintWidget14 != null) {
                            constraintAnchor = constraintWidget14.mListAnchors[i11];
                            SolverVariable solverVariable15 = constraintAnchor.mSolverVariable;
                            ConstraintAnchor constraintAnchor19 = constraintAnchor.mTarget;
                            solverVariable2 = constraintAnchor19 != null ? constraintAnchor19.mSolverVariable : null;
                            solverVariable = solverVariable15;
                        } else {
                            constraintAnchor = constraintWidget4.mListAnchors[i11];
                            solverVariable = constraintAnchor != null ? constraintAnchor.mSolverVariable : null;
                            solverVariable2 = constraintWidget12.mListAnchors[i26].mSolverVariable;
                        }
                        if (constraintAnchor != null) {
                            iF3 += constraintAnchor.f();
                        }
                        int i27 = iF3;
                        int iF4 = constraintWidget11.mListAnchors[i26].f() + iF2;
                        int i28 = z17 ? 8 : 4;
                        if (solverVariable12 == null || solverVariable14 == null || solverVariable == null || solverVariable2 == null) {
                            i12 = 8;
                        } else {
                            i12 = 8;
                            linearSystem.c(solverVariable12, solverVariable14, iF4, 0.5f, solverVariable, solverVariable2, i27, i28);
                        }
                        constraintWidget13 = constraintWidget14;
                    }
                    constraintWidget11 = constraintWidget12.X() != i12 ? constraintWidget12 : constraintWidget11;
                    constraintWidget12 = constraintWidget13;
                    i24 = i12;
                    i14 = i10;
                }
                ConstraintAnchor constraintAnchor20 = constraintWidget3.mListAnchors[i11];
                ConstraintAnchor constraintAnchor21 = constraintWidget8.mListAnchors[i11].mTarget;
                int i29 = i11 + 1;
                ConstraintAnchor constraintAnchor22 = constraintWidget4.mListAnchors[i29];
                ConstraintAnchor constraintAnchor23 = constraintWidget2.mListAnchors[i29].mTarget;
                if (constraintAnchor21 != null) {
                    if (constraintWidget3 != constraintWidget4) {
                        linearSystem.e(constraintAnchor20.mSolverVariable, constraintAnchor21.mSolverVariable, constraintAnchor20.f(), 5);
                    } else if (constraintAnchor23 != null) {
                        linearSystem.c(constraintAnchor20.mSolverVariable, constraintAnchor21.mSolverVariable, constraintAnchor20.f(), 0.5f, constraintAnchor22.mSolverVariable, constraintAnchor23.mSolverVariable, constraintAnchor22.f(), 5);
                    }
                }
                if (constraintAnchor23 != null && constraintWidget3 != constraintWidget4) {
                    linearSystem.e(constraintAnchor22.mSolverVariable, constraintAnchor23.mSolverVariable, -constraintAnchor22.f(), 5);
                }
            }
        } else {
            int i30 = chainHead.mWidgetsMatchCount;
            boolean z18 = i30 > 0 && chainHead.mWidgetsCount == i30;
            ConstraintWidget constraintWidget15 = constraintWidget3;
            ConstraintWidget constraintWidget16 = constraintWidget15;
            while (constraintWidget16 != null) {
                ConstraintWidget constraintWidget17 = constraintWidget16.mNextChainWidget[i14];
                while (constraintWidget17 != null && constraintWidget17.X() == 8) {
                    constraintWidget17 = constraintWidget17.mNextChainWidget[i14];
                }
                if (constraintWidget17 != null || constraintWidget16 == constraintWidget4) {
                    ConstraintAnchor constraintAnchor24 = constraintWidget16.mListAnchors[i11];
                    SolverVariable solverVariable16 = constraintAnchor24.mSolverVariable;
                    ConstraintAnchor constraintAnchor25 = constraintAnchor24.mTarget;
                    SolverVariable solverVariable17 = constraintAnchor25 != null ? constraintAnchor25.mSolverVariable : null;
                    if (constraintWidget15 != constraintWidget16) {
                        solverVariable17 = constraintWidget15.mListAnchors[i11 + 1].mSolverVariable;
                    } else if (constraintWidget16 == constraintWidget3) {
                        ConstraintAnchor constraintAnchor26 = constraintWidget8.mListAnchors[i11].mTarget;
                        solverVariable17 = constraintAnchor26 != null ? constraintAnchor26.mSolverVariable : null;
                    }
                    int iF5 = constraintAnchor24.f();
                    int i31 = i11 + 1;
                    int iF6 = constraintWidget16.mListAnchors[i31].f();
                    if (constraintWidget17 != null) {
                        constraintAnchor2 = constraintWidget17.mListAnchors[i11];
                        solverVariable3 = constraintAnchor2.mSolverVariable;
                    } else {
                        constraintAnchor2 = constraintWidget2.mListAnchors[i31].mTarget;
                        if (constraintAnchor2 != null) {
                            solverVariable3 = constraintAnchor2.mSolverVariable;
                        } else {
                            solverVariable3 = null;
                        }
                        SolverVariable solverVariable18 = constraintWidget16.mListAnchors[i31].mSolverVariable;
                        if (constraintAnchor2 != null) {
                            iF6 += constraintAnchor2.f();
                        }
                        int iF7 = iF5 + constraintWidget15.mListAnchors[i31].f();
                        if (solverVariable16 == null && solverVariable17 != null && solverVariable3 != null && solverVariable18 != null) {
                            if (constraintWidget16 == constraintWidget3) {
                                iF7 = constraintWidget3.mListAnchors[i11].f();
                            }
                            constraintWidget17 = constraintWidget17;
                            linearSystem.c(solverVariable16, solverVariable17, iF7, 0.5f, solverVariable3, solverVariable18, constraintWidget16 == constraintWidget4 ? constraintWidget4.mListAnchors[i31].f() : iF6, z18 ? 8 : 5);
                        }
                        if (constraintWidget16.X() != 8) {
                            constraintWidget16 = constraintWidget15;
                        }
                        constraintWidget15 = constraintWidget16;
                        constraintWidget16 = constraintWidget17;
                    }
                    SolverVariable solverVariable19 = constraintWidget16.mListAnchors[i31].mSolverVariable;
                    if (constraintAnchor2 != null) {
                        iF6 += constraintAnchor2.f();
                    }
                    int iF8 = iF5 + constraintWidget15.mListAnchors[i31].f();
                    if (solverVariable16 == null) {
                    }
                }
                if (constraintWidget16.X() != 8) {
                    constraintWidget16 = constraintWidget15;
                }
                constraintWidget15 = constraintWidget16;
                constraintWidget16 = constraintWidget17;
            }
        }
        if ((!z15 && !z13) || constraintWidget3 == null || constraintWidget3 == constraintWidget4) {
            return;
        }
        ConstraintAnchor[] constraintAnchorArr6 = constraintWidget3.mListAnchors;
        ConstraintAnchor constraintAnchor27 = constraintAnchorArr6[i11];
        if (constraintWidget4 == null) {
            constraintWidget4 = constraintWidget3;
        }
        int i32 = i11 + 1;
        ConstraintAnchor constraintAnchor28 = constraintWidget4.mListAnchors[i32];
        ConstraintAnchor constraintAnchor29 = constraintAnchor27.mTarget;
        SolverVariable solverVariable20 = constraintAnchor29 != null ? constraintAnchor29.mSolverVariable : null;
        ConstraintAnchor constraintAnchor30 = constraintAnchor28.mTarget;
        if (constraintAnchor30 != null) {
            solverVariable4 = constraintAnchor30.mSolverVariable;
        } else {
            r5 = 0;
        }
        if (constraintWidget2 != constraintWidget4) {
            ConstraintAnchor constraintAnchor31 = constraintWidget2.mListAnchors[i32].mTarget;
            if (constraintAnchor31 != null) {
                r5 = solverVariable4;
                obj = constraintAnchor31.mSolverVariable;
            }
            r5 = solverVariable4;
            r5 = obj;
        }
        if (constraintWidget3 == constraintWidget4) {
            constraintAnchor28 = constraintAnchorArr6[i32];
        }
        if (solverVariable20 == null || r5 == 0) {
            return;
        }
        linearSystem.c(constraintAnchor27.mSolverVariable, solverVariable20, constraintAnchor27.f(), 0.5f, r5, constraintAnchor28.mSolverVariable, constraintWidget4.mListAnchors[i32].f(), 5);
    }
}
