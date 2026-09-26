package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph;
import androidx.constraintlayout.core.widgets.analyzer.Direct;
import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    private static final boolean DEBUG = false;
    static final boolean DEBUG_GRAPH = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final int MAX_ITERATIONS = 8;
    static int myCounter;
    private WeakReference<ConstraintAnchor> horizontalWrapMax;
    private WeakReference<ConstraintAnchor> horizontalWrapMin;
    BasicMeasure mBasicMeasureSolver;
    int mDebugSolverPassCount;
    public DependencyGraph mDependencyGraph;
    public boolean mGroupsWrapOptimized;
    private boolean mHeightMeasuredTooSmall;
    ChainHead[] mHorizontalChainsArray;
    public int mHorizontalChainsSize;
    public boolean mHorizontalWrapOptimized;
    private boolean mIsRtl;
    public BasicMeasure.Measure mMeasure;
    protected BasicMeasure.Measurer mMeasurer;
    public Metrics mMetrics;
    private int mOptimizationLevel;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    public boolean mSkipSolver;
    protected LinearSystem mSystem;
    ChainHead[] mVerticalChainsArray;
    public int mVerticalChainsSize;
    public boolean mVerticalWrapOptimized;
    private boolean mWidthMeasuredTooSmall;
    public int mWrapFixedHeight;
    public int mWrapFixedWidth;
    private int pass;
    private WeakReference<ConstraintAnchor> verticalWrapMax;
    private WeakReference<ConstraintAnchor> verticalWrapMin;
    HashSet<ConstraintWidget> widgetsToAdd;

    public ConstraintWidgetContainer() {
        this.mBasicMeasureSolver = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 257;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
        this.verticalWrapMin = null;
        this.horizontalWrapMin = null;
        this.verticalWrapMax = null;
        this.horizontalWrapMax = null;
        this.widgetsToAdd = new HashSet<>();
        this.mMeasure = new BasicMeasure.Measure();
    }

    public static boolean X1(int i10, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, BasicMeasure.Measure measure, int i11) {
        int i12;
        int i13;
        if (measurer == null) {
            return false;
        }
        if (constraintWidget.X() == 8 || (constraintWidget instanceof Guideline) || (constraintWidget instanceof Barrier)) {
            measure.measuredWidth = 0;
            measure.measuredHeight = 0;
            return false;
        }
        measure.horizontalBehavior = constraintWidget.C();
        measure.verticalBehavior = constraintWidget.V();
        measure.horizontalDimension = constraintWidget.Y();
        measure.verticalDimension = constraintWidget.z();
        measure.measuredNeedsSolverPass = false;
        measure.measureStrategy = i11;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z6 = dimensionBehaviour == dimensionBehaviour2;
        boolean z10 = measure.verticalBehavior == dimensionBehaviour2;
        boolean z11 = z6 && constraintWidget.mDimensionRatio > 0.0f;
        boolean z12 = z10 && constraintWidget.mDimensionRatio > 0.0f;
        if (z6 && constraintWidget.c0(0) && constraintWidget.mMatchConstraintDefaultWidth == 0 && !z11) {
            measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z10 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z6 = false;
        }
        if (z10 && constraintWidget.c0(1) && constraintWidget.mMatchConstraintDefaultHeight == 0 && !z12) {
            measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z6 && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z10 = false;
        }
        if (constraintWidget.p0()) {
            measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            z6 = false;
        }
        if (constraintWidget.q0()) {
            measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            z10 = false;
        }
        if (z11) {
            if (constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
                measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z10) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = measure.verticalBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour3 == dimensionBehaviour4) {
                    i13 = measure.verticalDimension;
                } else {
                    measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    measurer.b(constraintWidget, measure);
                    i13 = measure.measuredHeight;
                }
                measure.horizontalBehavior = dimensionBehaviour4;
                measure.horizontalDimension = (int) (constraintWidget.x() * i13);
            }
        }
        if (z12) {
            if (constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
                measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z6) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = measure.horizontalBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour5 == dimensionBehaviour6) {
                    i12 = measure.horizontalDimension;
                } else {
                    measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    measurer.b(constraintWidget, measure);
                    i12 = measure.measuredWidth;
                }
                measure.verticalBehavior = dimensionBehaviour6;
                if (constraintWidget.y() == -1) {
                    measure.verticalDimension = (int) (i12 / constraintWidget.x());
                } else {
                    measure.verticalDimension = (int) (constraintWidget.x() * i12);
                }
            }
        }
        measurer.b(constraintWidget, measure);
        constraintWidget.o1(measure.measuredWidth);
        constraintWidget.P0(measure.measuredHeight);
        constraintWidget.O0(measure.measuredHasBaseline);
        constraintWidget.E0(measure.measuredBaseline);
        measure.measureStrategy = BasicMeasure.Measure.SELF_DIMENSIONS;
        return measure.measuredNeedsSolverPass;
    }

    private void Z1() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    public BasicMeasure.Measurer N1() {
        return this.mMeasurer;
    }

    public int O1() {
        return this.mOptimizationLevel;
    }

    public LinearSystem P1() {
        return this.mSystem;
    }

    public boolean Q1() {
        return false;
    }

    public boolean T1() {
        return this.mHeightMeasuredTooSmall;
    }

    public boolean U1() {
        return this.mIsRtl;
    }

    public boolean V1() {
        return this.mWidthMeasuredTooSmall;
    }

    public long W1(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.mPaddingLeft = i17;
        this.mPaddingTop = i18;
        return this.mBasicMeasureSolver.d(this, i10, i17, i18, i11, i12, i13, i14, i15, i16);
    }

    public boolean Y1(int i10) {
        return (this.mOptimizationLevel & i10) == i10;
    }

    public void c2(int i10) {
        this.pass = i10;
    }

    public void d2(boolean z6) {
        this.mIsRtl = z6;
    }

    public boolean e2(LinearSystem linearSystem, boolean[] zArr) {
        zArr[2] = false;
        boolean zY1 = Y1(64);
        u1(linearSystem, zY1);
        int size = this.mChildren.size();
        boolean z6 = false;
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i10);
            constraintWidget.u1(linearSystem, zY1);
            if (constraintWidget.e0()) {
                z6 = true;
            }
        }
        return z6;
    }

    /* JADX WARN: Code duplicated, block: B:154:0x0312 A[PHI: r2 r16
      0x0312: PHI (r2v15 ??) = (r2v14 ??), (r2v19 ??), (r2v19 ??), (r2v19 ??) binds: [B:141:0x02d3, B:149:0x02f8, B:150:0x02fa, B:152:0x0300] A[DONT_GENERATE, DONT_INLINE]
      0x0312: PHI (r16v4 boolean) = (r16v3 boolean), (r16v5 boolean), (r16v5 boolean), (r16v5 boolean) binds: [B:141:0x02d3, B:149:0x02f8, B:150:0x02fa, B:152:0x0300] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // androidx.constraintlayout.core.widgets.WidgetContainer
    public void w1() {
        int i10;
        int i11;
        boolean z6;
        boolean zE2;
        boolean z10;
        ?? r10;
        ?? r5;
        ?? r13;
        boolean z11;
        int i12;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int i13 = 0;
        this.mX = 0;
        this.mY = 0;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        int size = this.mChildren.size();
        int iMax = Math.max(0, Y());
        int iMax2 = Math.max(0, z());
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[0];
        Metrics metrics = this.mMetrics;
        if (metrics != null) {
            metrics.layouts++;
        }
        if (this.pass == 0 && Optimizer.b(this.mOptimizationLevel, 1)) {
            Direct.h(this, N1());
            for (int i14 = 0; i14 < size; i14++) {
                ConstraintWidget constraintWidget = this.mChildren.get(i14);
                if (constraintWidget.o0() && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Barrier) && !(constraintWidget instanceof VirtualLayout) && !constraintWidget.n0()) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget.w(0);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = constraintWidget.w(1);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviourW != dimensionBehaviour4 || constraintWidget.mMatchConstraintDefaultWidth == 1 || dimensionBehaviourW2 != dimensionBehaviour4 || constraintWidget.mMatchConstraintDefaultHeight == 1) {
                        X1(0, constraintWidget, this.mMeasurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                    }
                }
            }
        }
        if (size <= 2 || !((dimensionBehaviour3 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour2 == dimensionBehaviour) && Optimizer.b(this.mOptimizationLevel, 1024) && Grouping.c(this, N1()))) {
            i10 = iMax2;
            i11 = iMax;
            z6 = false;
        } else {
            if (dimensionBehaviour3 == dimensionBehaviour) {
                if (iMax >= Y() || iMax <= 0) {
                    iMax = Y();
                } else {
                    o1(iMax);
                    this.mWidthMeasuredTooSmall = true;
                }
            }
            if (dimensionBehaviour2 == dimensionBehaviour) {
                if (iMax2 >= z() || iMax2 <= 0) {
                    iMax2 = z();
                } else {
                    P0(iMax2);
                    this.mHeightMeasuredTooSmall = true;
                }
            }
            i10 = iMax2;
            i11 = iMax;
            z6 = true;
        }
        boolean z12 = Y1(64) || Y1(128);
        LinearSystem linearSystem = this.mSystem;
        linearSystem.graphOptimizer = false;
        linearSystem.newgraphOptimizer = false;
        if (this.mOptimizationLevel != 0 && z12) {
            linearSystem.newgraphOptimizer = true;
        }
        ArrayList<ConstraintWidget> arrayList = this.mChildren;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z13 = dimensionBehaviourC == dimensionBehaviour5 || V() == dimensionBehaviour5;
        Z1();
        for (int i15 = 0; i15 < size; i15++) {
            ConstraintWidget constraintWidget2 = this.mChildren.get(i15);
            if (constraintWidget2 instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget2).w1();
            }
        }
        boolean zY1 = Y1(64);
        ?? r14 = z6;
        int i16 = 0;
        boolean zA1 = true;
        while (zA1) {
            int i17 = i16 + 1;
            try {
                this.mSystem.E();
                Z1();
                o(this.mSystem);
                for (int i18 = i13; i18 < size; i18++) {
                    this.mChildren.get(i18).o(this.mSystem);
                }
                zA1 = A1(this.mSystem);
                WeakReference<ConstraintAnchor> weakReference = this.verticalWrapMin;
                if (weakReference != null && weakReference.get() != null) {
                    F1(this.verticalWrapMin.get(), this.mSystem.q(this.mTop));
                    this.verticalWrapMin = null;
                }
                WeakReference<ConstraintAnchor> weakReference2 = this.verticalWrapMax;
                if (weakReference2 != null && weakReference2.get() != null) {
                    E1(this.verticalWrapMax.get(), this.mSystem.q(this.mBottom));
                    this.verticalWrapMax = null;
                }
                WeakReference<ConstraintAnchor> weakReference3 = this.horizontalWrapMin;
                if (weakReference3 != null && weakReference3.get() != null) {
                    F1(this.horizontalWrapMin.get(), this.mSystem.q(this.mLeft));
                    this.horizontalWrapMin = null;
                }
                WeakReference<ConstraintAnchor> weakReference4 = this.horizontalWrapMax;
                if (weakReference4 != null && weakReference4.get() != null) {
                    E1(this.horizontalWrapMax.get(), this.mSystem.q(this.mRight));
                    this.horizontalWrapMax = null;
                }
                if (zA1) {
                    this.mSystem.A();
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("EXCEPTION : " + e);
            }
            if (zA1) {
                zE2 = e2(this.mSystem, Optimizer.flags);
            } else {
                u1(this.mSystem, zY1);
                for (int i19 = 0; i19 < size; i19++) {
                    this.mChildren.get(i19).u1(this.mSystem, zY1);
                }
                zE2 = false;
            }
            if (z13 && i17 < 8 && Optimizer.flags[2]) {
                int i20 = 0;
                int iMax3 = 0;
                int iMax4 = 0;
                while (i20 < size) {
                    ConstraintWidget constraintWidget3 = this.mChildren.get(i20);
                    iMax4 = Math.max(iMax4, constraintWidget3.mX + constraintWidget3.Y());
                    iMax3 = Math.max(iMax3, constraintWidget3.mY + constraintWidget3.z());
                    i20++;
                    zE2 = zE2;
                }
                z10 = zE2;
                int iMax5 = Math.max(this.mMinWidth, iMax4);
                int iMax6 = Math.max(this.mMinHeight, iMax3);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                r14 = r14;
                if (dimensionBehaviour3 == dimensionBehaviour6 && Y() < iMax5) {
                    r14 = r14;
                    o1(iMax5);
                    this.mListDimensionBehaviors[0] = dimensionBehaviour6;
                    r14 = 1;
                    z10 = true;
                }
                if (dimensionBehaviour2 == dimensionBehaviour6 && z() < iMax6) {
                    P0(iMax6);
                    this.mListDimensionBehaviors[1] = dimensionBehaviour6;
                    r14 = 1;
                    z10 = true;
                }
            } else {
                z10 = zE2;
            }
            int iMax7 = Math.max(this.mMinWidth, Y());
            ?? r15 = r14;
            if (iMax7 > Y()) {
                o1(iMax7);
                this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                r15 = 1;
                z10 = true;
            }
            int iMax8 = Math.max(this.mMinHeight, z());
            if (iMax8 > z()) {
                P0(iMax8);
                r10 = 1;
                this.mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                r5 = 1;
                z10 = true;
            } else {
                r10 = 1;
                r5 = r15;
            }
            if (r5 == 0) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = this.mListDimensionBehaviors[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour7 == dimensionBehaviour8 && i11 > 0) {
                    r5 = r5;
                    if (Y() > i11) {
                        this.mWidthMeasuredTooSmall = r10;
                        this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                        o1(i11);
                        ?? r11 = r10;
                        z10 = r11 == true ? 1 : 0;
                        r5 = r11;
                    }
                }
                r5 = r5;
                r5 = r5;
                if (this.mListDimensionBehaviors[r10] != dimensionBehaviour8 || i10 <= 0 || z() <= i10) {
                    r13 = r5;
                    z11 = z10;
                    i12 = 8;
                } else {
                    this.mHeightMeasuredTooSmall = r10;
                    this.mListDimensionBehaviors[r10] = ConstraintWidget.DimensionBehaviour.FIXED;
                    P0(i10);
                    i12 = 8;
                    z11 = true;
                    r13 = 1;
                }
            } else {
                r13 = r5;
                z11 = z10;
                i12 = 8;
            }
            zA1 = i17 > i12 ? false : z11;
            i16 = i17;
            i13 = 0;
            r14 = r13;
        }
        this.mChildren = arrayList;
        if (r14 != 0) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.mListDimensionBehaviors;
            dimensionBehaviourArr2[0] = dimensionBehaviour3;
            dimensionBehaviourArr2[1] = dimensionBehaviour2;
        }
        z0(this.mSystem.w());
    }

    private void B1(ConstraintWidget constraintWidget) {
        int i10 = this.mHorizontalChainsSize + 1;
        ChainHead[] chainHeadArr = this.mHorizontalChainsArray;
        if (i10 >= chainHeadArr.length) {
            this.mHorizontalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.mHorizontalChainsArray[this.mHorizontalChainsSize] = new ChainHead(constraintWidget, 0, U1());
        this.mHorizontalChainsSize++;
    }

    private void E1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.mSystem.h(solverVariable, this.mSystem.q(constraintAnchor), 0, 5);
    }

    private void F1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.mSystem.h(this.mSystem.q(constraintAnchor), solverVariable, 0, 5);
    }

    private void G1(ConstraintWidget constraintWidget) {
        int i10 = this.mVerticalChainsSize + 1;
        ChainHead[] chainHeadArr = this.mVerticalChainsArray;
        if (i10 >= chainHeadArr.length) {
            this.mVerticalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.mVerticalChainsArray[this.mVerticalChainsSize] = new ChainHead(constraintWidget, 1, U1());
        this.mVerticalChainsSize++;
    }

    public boolean A1(LinearSystem linearSystem) {
        boolean zY1 = Y1(64);
        g(linearSystem, zY1);
        int size = this.mChildren.size();
        boolean z6 = false;
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i10);
            constraintWidget.W0(0, false);
            constraintWidget.W0(1, false);
            if (constraintWidget instanceof Barrier) {
                z6 = true;
            }
        }
        if (z6) {
            for (int i11 = 0; i11 < size; i11++) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i11);
                if (constraintWidget2 instanceof Barrier) {
                    ((Barrier) constraintWidget2).C1();
                }
            }
        }
        this.widgetsToAdd.clear();
        for (int i12 = 0; i12 < size; i12++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i12);
            if (constraintWidget3.f()) {
                if (constraintWidget3 instanceof VirtualLayout) {
                    this.widgetsToAdd.add(constraintWidget3);
                } else {
                    constraintWidget3.g(linearSystem, zY1);
                }
            }
        }
        while (this.widgetsToAdd.size() > 0) {
            int size2 = this.widgetsToAdd.size();
            Iterator<ConstraintWidget> it = this.widgetsToAdd.iterator();
            while (it.hasNext()) {
                VirtualLayout virtualLayout = (VirtualLayout) it.next();
                if (virtualLayout.z1(this.widgetsToAdd)) {
                    virtualLayout.g(linearSystem, zY1);
                    this.widgetsToAdd.remove(virtualLayout);
                    break;
                }
            }
            if (size2 == this.widgetsToAdd.size()) {
                Iterator<ConstraintWidget> it2 = this.widgetsToAdd.iterator();
                while (it2.hasNext()) {
                    it2.next().g(linearSystem, zY1);
                }
                this.widgetsToAdd.clear();
            }
        }
        if (LinearSystem.USE_DEPENDENCY_ORDERING) {
            HashSet<ConstraintWidget> hashSet = new HashSet<>();
            for (int i13 = 0; i13 < size; i13++) {
                ConstraintWidget constraintWidget4 = this.mChildren.get(i13);
                if (!constraintWidget4.f()) {
                    hashSet.add(constraintWidget4);
                }
            }
            e(this, linearSystem, hashSet, C() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 0 : 1, false);
            for (ConstraintWidget constraintWidget5 : hashSet) {
                Optimizer.a(this, linearSystem, constraintWidget5);
                constraintWidget5.g(linearSystem, zY1);
            }
        } else {
            for (int i14 = 0; i14 < size; i14++) {
                ConstraintWidget constraintWidget6 = this.mChildren.get(i14);
                if (constraintWidget6 instanceof ConstraintWidgetContainer) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget6.mListDimensionBehaviors;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget6.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget6.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    constraintWidget6.g(linearSystem, zY1);
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget6.T0(dimensionBehaviour);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget6.k1(dimensionBehaviour2);
                    }
                } else {
                    Optimizer.a(this, linearSystem, constraintWidget6);
                    if (!constraintWidget6.f()) {
                        constraintWidget6.g(linearSystem, zY1);
                    }
                }
            }
        }
        if (this.mHorizontalChainsSize > 0) {
            Chain.b(this, linearSystem, null, 0);
        }
        if (this.mVerticalChainsSize > 0) {
            Chain.b(this, linearSystem, null, 1);
        }
        return true;
    }

    public void C1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.horizontalWrapMax;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.e() > this.horizontalWrapMax.get().e()) {
            this.horizontalWrapMax = new WeakReference<>(constraintAnchor);
        }
    }

    public void D1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.horizontalWrapMin;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.e() > this.horizontalWrapMin.get().e()) {
            this.horizontalWrapMin = new WeakReference<>(constraintAnchor);
        }
    }

    void H1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.verticalWrapMax;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.e() > this.verticalWrapMax.get().e()) {
            this.verticalWrapMax = new WeakReference<>(constraintAnchor);
        }
    }

    void I1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.verticalWrapMin;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.e() > this.verticalWrapMin.get().e()) {
            this.verticalWrapMin = new WeakReference<>(constraintAnchor);
        }
    }

    public boolean J1(boolean z6) {
        return this.mDependencyGraph.f(z6);
    }

    public boolean K1(boolean z6) {
        return this.mDependencyGraph.g(z6);
    }

    public boolean L1(boolean z6, int i10) {
        return this.mDependencyGraph.h(z6, i10);
    }

    public void M1(Metrics metrics) {
        this.mMetrics = metrics;
        this.mSystem.v(metrics);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void Q(StringBuilder sb) {
        sb.append(this.stringId + ":{\n");
        sb.append("  actualWidth:" + this.mWidth);
        sb.append("\n");
        sb.append("  actualHeight:" + this.mHeight);
        sb.append("\n");
        Iterator<ConstraintWidget> it = v1().iterator();
        while (it.hasNext()) {
            it.next().Q(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    public void R1() {
        this.mDependencyGraph.j();
    }

    public void S1() {
        this.mDependencyGraph.k();
    }

    public void a2(BasicMeasure.Measurer measurer) {
        this.mMeasurer = measurer;
        this.mDependencyGraph.n(measurer);
    }

    public void b2(int i10) {
        this.mOptimizationLevel = i10;
        LinearSystem.USE_DEPENDENCY_ORDERING = Y1(512);
    }

    public void f2() {
        this.mBasicMeasureSolver.e(this);
    }

    @Override // androidx.constraintlayout.core.widgets.WidgetContainer, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void v0() {
        this.mSystem.E();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        this.mSkipSolver = false;
        super.v0();
    }

    void z1(ConstraintWidget constraintWidget, int i10) {
        if (i10 == 0) {
            B1(constraintWidget);
        } else if (i10 == 1) {
            G1(constraintWidget);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void t1(boolean z6, boolean z10) {
        super.t1(z6, z10);
        int size = this.mChildren.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mChildren.get(i10).t1(z6, z10);
        }
    }

    public ConstraintWidgetContainer(int i10, int i11, int i12, int i13) {
        super(i10, i11, i12, i13);
        this.mBasicMeasureSolver = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 257;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
        this.verticalWrapMin = null;
        this.horizontalWrapMin = null;
        this.verticalWrapMax = null;
        this.horizontalWrapMax = null;
        this.widgetsToAdd = new HashSet<>();
        this.mMeasure = new BasicMeasure.Measure();
    }

    public ConstraintWidgetContainer(int i10, int i11) {
        super(i10, i11);
        this.mBasicMeasureSolver = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 257;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
        this.verticalWrapMin = null;
        this.horizontalWrapMin = null;
        this.verticalWrapMax = null;
        this.horizontalWrapMax = null;
        this.widgetsToAdd = new HashSet<>();
        this.mMeasure = new BasicMeasure.Measure();
    }

    public ConstraintWidgetContainer(String str, int i10, int i11) {
        super(i10, i11);
        this.mBasicMeasureSolver = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 257;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
        this.verticalWrapMin = null;
        this.horizontalWrapMin = null;
        this.verticalWrapMax = null;
        this.horizontalWrapMax = null;
        this.widgetsToAdd = new HashSet<>();
        this.mMeasure = new BasicMeasure.Measure();
        G0(str);
    }
}
