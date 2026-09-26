package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;

/* JADX INFO: loaded from: classes5.dex */
public class Optimizer {
    static final int FLAG_CHAIN_DANGLING = 1;
    static final int FLAG_RECOMPUTE_BOUNDS = 2;
    static final int FLAG_USE_OPTIMIZE = 0;
    public static final int OPTIMIZATION_BARRIER = 2;
    public static final int OPTIMIZATION_CACHE_MEASURES = 256;
    public static final int OPTIMIZATION_CHAIN = 4;
    public static final int OPTIMIZATION_DEPENDENCY_ORDERING = 512;
    public static final int OPTIMIZATION_DIMENSIONS = 8;
    public static final int OPTIMIZATION_DIRECT = 1;
    public static final int OPTIMIZATION_GRAPH = 64;
    public static final int OPTIMIZATION_GRAPH_WRAP = 128;
    public static final int OPTIMIZATION_GROUPING = 1024;
    public static final int OPTIMIZATION_GROUPS = 32;
    public static final int OPTIMIZATION_NONE = 0;
    public static final int OPTIMIZATION_RATIO = 16;
    public static final int OPTIMIZATION_STANDARD = 257;
    static boolean[] flags = new boolean[3];

    static void a(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        constraintWidget.mHorizontalResolution = -1;
        constraintWidget.mVerticalResolution = -1;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidgetContainer.mListDimensionBehaviors[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2 && constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i10 = constraintWidget.mLeft.mMargin;
            int iY = constraintWidgetContainer.Y() - constraintWidget.mRight.mMargin;
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            constraintAnchor.mSolverVariable = linearSystem.q(constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.mRight;
            constraintAnchor2.mSolverVariable = linearSystem.q(constraintAnchor2);
            linearSystem.f(constraintWidget.mLeft.mSolverVariable, i10);
            linearSystem.f(constraintWidget.mRight.mSolverVariable, iY);
            constraintWidget.mHorizontalResolution = 2;
            constraintWidget.S0(i10, iY);
        }
        if (constraintWidgetContainer.mListDimensionBehaviors[1] == dimensionBehaviour2 || constraintWidget.mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            return;
        }
        int i11 = constraintWidget.mTop.mMargin;
        int iZ = constraintWidgetContainer.z() - constraintWidget.mBottom.mMargin;
        ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
        constraintAnchor3.mSolverVariable = linearSystem.q(constraintAnchor3);
        ConstraintAnchor constraintAnchor4 = constraintWidget.mBottom;
        constraintAnchor4.mSolverVariable = linearSystem.q(constraintAnchor4);
        linearSystem.f(constraintWidget.mTop.mSolverVariable, i11);
        linearSystem.f(constraintWidget.mBottom.mSolverVariable, iZ);
        if (constraintWidget.mBaselineDistance > 0 || constraintWidget.X() == 8) {
            ConstraintAnchor constraintAnchor5 = constraintWidget.mBaseline;
            constraintAnchor5.mSolverVariable = linearSystem.q(constraintAnchor5);
            linearSystem.f(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + i11);
        }
        constraintWidget.mVerticalResolution = 2;
        constraintWidget.j1(i11, iZ);
    }

    public static final boolean b(int i10, int i11) {
        return (i10 & i11) == i11;
    }
}
