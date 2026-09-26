package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BasicMeasure {
    public static final int AT_MOST = Integer.MIN_VALUE;
    private static final boolean DEBUG = false;
    public static final int EXACTLY = 1073741824;
    public static final int FIXED = -3;
    public static final int MATCH_PARENT = -1;
    private static final int MODE_SHIFT = 30;
    public static final int UNSPECIFIED = 0;
    public static final int WRAP_CONTENT = -2;
    private ConstraintWidgetContainer constraintWidgetContainer;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>();
    private Measure mMeasure = new Measure();

    public static class Measure {
        public static int SELF_DIMENSIONS = 0;
        public static int TRY_GIVEN_DIMENSIONS = 1;
        public static int USE_GIVEN_DIMENSIONS = 2;
        public ConstraintWidget.DimensionBehaviour horizontalBehavior;
        public int horizontalDimension;
        public int measureStrategy;
        public int measuredBaseline;
        public boolean measuredHasBaseline;
        public int measuredHeight;
        public boolean measuredNeedsSolverPass;
        public int measuredWidth;
        public ConstraintWidget.DimensionBehaviour verticalBehavior;
        public int verticalDimension;
    }

    public interface Measurer {
        void a();

        void b(ConstraintWidget constraintWidget, Measure measure);
    }

    private boolean a(Measurer measurer, ConstraintWidget constraintWidget, int i10) {
        this.mMeasure.horizontalBehavior = constraintWidget.C();
        this.mMeasure.verticalBehavior = constraintWidget.V();
        this.mMeasure.horizontalDimension = constraintWidget.Y();
        this.mMeasure.verticalDimension = constraintWidget.z();
        Measure measure = this.mMeasure;
        measure.measuredNeedsSolverPass = false;
        measure.measureStrategy = i10;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z6 = dimensionBehaviour == dimensionBehaviour2;
        boolean z10 = measure.verticalBehavior == dimensionBehaviour2;
        boolean z11 = z6 && constraintWidget.mDimensionRatio > 0.0f;
        boolean z12 = z10 && constraintWidget.mDimensionRatio > 0.0f;
        if (z11 && constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
            measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z12 && constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
            measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.b(constraintWidget, measure);
        constraintWidget.o1(this.mMeasure.measuredWidth);
        constraintWidget.P0(this.mMeasure.measuredHeight);
        constraintWidget.O0(this.mMeasure.measuredHasBaseline);
        constraintWidget.E0(this.mMeasure.measuredBaseline);
        Measure measure2 = this.mMeasure;
        measure2.measureStrategy = Measure.SELF_DIMENSIONS;
        return measure2.measuredNeedsSolverPass;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x009d  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00ad A[SYNTHETIC] */
    private void b(ConstraintWidgetContainer constraintWidgetContainer) {
        Metrics metrics;
        HorizontalWidgetRun horizontalWidgetRun;
        VerticalWidgetRun verticalWidgetRun;
        int size = constraintWidgetContainer.mChildren.size();
        boolean zY1 = constraintWidgetContainer.Y1(64);
        Measurer measurerN1 = constraintWidgetContainer.N1();
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i10);
            if (!(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Barrier) && !constraintWidget.n0() && (!zY1 || (horizontalWidgetRun = constraintWidget.horizontalRun) == null || (verticalWidgetRun = constraintWidget.verticalRun) == null || !horizontalWidgetRun.dimension.resolved || !verticalWidgetRun.dimension.resolved)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget.w(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = constraintWidget.w(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z6 = dimensionBehaviourW == dimensionBehaviour && constraintWidget.mMatchConstraintDefaultWidth != 1 && dimensionBehaviourW2 == dimensionBehaviour && constraintWidget.mMatchConstraintDefaultHeight != 1;
                if (!z6 && constraintWidgetContainer.Y1(1) && !(constraintWidget instanceof VirtualLayout)) {
                    if (dimensionBehaviourW == dimensionBehaviour && constraintWidget.mMatchConstraintDefaultWidth == 0 && dimensionBehaviourW2 != dimensionBehaviour && !constraintWidget.k0()) {
                        z6 = true;
                    }
                    boolean z10 = (dimensionBehaviourW2 != dimensionBehaviour || constraintWidget.mMatchConstraintDefaultHeight != 0 || dimensionBehaviourW == dimensionBehaviour || constraintWidget.k0()) ? z6 : true;
                    if ((dimensionBehaviourW != dimensionBehaviour && dimensionBehaviourW2 != dimensionBehaviour) || constraintWidget.mDimensionRatio <= 0.0f) {
                        z6 = z10;
                        if (z6) {
                            a(measurerN1, constraintWidget, Measure.SELF_DIMENSIONS);
                            metrics = constraintWidgetContainer.mMetrics;
                            if (metrics != null) {
                                metrics.measuredWidgets++;
                            }
                        }
                    }
                } else if (z6) {
                    a(measurerN1, constraintWidget, Measure.SELF_DIMENSIONS);
                    metrics = constraintWidgetContainer.mMetrics;
                    if (metrics != null) {
                        metrics.measuredWidgets++;
                    }
                }
            }
        }
        measurerN1.a();
    }

    public long d(ConstraintWidgetContainer constraintWidgetContainer, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        boolean zL1;
        int i19;
        int i20;
        boolean z6;
        int i21;
        Measurer measurer;
        boolean z10;
        Metrics metrics;
        Measurer measurerN1 = constraintWidgetContainer.N1();
        int size = constraintWidgetContainer.mChildren.size();
        int iY = constraintWidgetContainer.Y();
        int iZ = constraintWidgetContainer.z();
        boolean zB = Optimizer.b(i10, 128);
        boolean z11 = zB || Optimizer.b(i10, 64);
        if (z11) {
            for (int i22 = 0; i22 < size; i22++) {
                ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i22);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget.C();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z12 = (dimensionBehaviourC == dimensionBehaviour) && (constraintWidget.V() == dimensionBehaviour) && constraintWidget.x() > 0.0f;
                if ((constraintWidget.k0() && z12) || ((constraintWidget.m0() && z12) || (constraintWidget instanceof VirtualLayout) || constraintWidget.k0() || constraintWidget.m0())) {
                    z11 = false;
                    break;
                }
            }
        }
        if (z11 && (metrics = LinearSystem.sMetrics) != null) {
            metrics.measures++;
        }
        boolean z13 = z11 & ((i13 == 1073741824 && i15 == 1073741824) || zB);
        int i23 = 2;
        if (z13) {
            int iMin = Math.min(constraintWidgetContainer.I(), i14);
            int iMin2 = Math.min(constraintWidgetContainer.H(), i16);
            if (i13 == 1073741824 && constraintWidgetContainer.Y() != iMin) {
                constraintWidgetContainer.o1(iMin);
                constraintWidgetContainer.R1();
            }
            if (i15 == 1073741824 && constraintWidgetContainer.z() != iMin2) {
                constraintWidgetContainer.P0(iMin2);
                constraintWidgetContainer.R1();
            }
            if (i13 == 1073741824 && i15 == 1073741824) {
                zL1 = constraintWidgetContainer.J1(zB);
                i19 = 2;
            } else {
                boolean zK1 = constraintWidgetContainer.K1(zB);
                if (i13 == 1073741824) {
                    zK1 &= constraintWidgetContainer.L1(zB, 0);
                    i19 = 1;
                } else {
                    i19 = 0;
                }
                if (i15 == 1073741824) {
                    zL1 = constraintWidgetContainer.L1(zB, 1) & zK1;
                    i19++;
                } else {
                    zL1 = zK1;
                }
            }
            if (zL1) {
                constraintWidgetContainer.t1(i13 == 1073741824, i15 == 1073741824);
            }
        } else {
            zL1 = false;
            i19 = 0;
        }
        if (zL1 && i19 == 2) {
            return 0L;
        }
        int iO1 = constraintWidgetContainer.O1();
        if (size > 0) {
            b(constraintWidgetContainer);
        }
        e(constraintWidgetContainer);
        int size2 = this.mVariableDimensionsWidgets.size();
        if (size > 0) {
            c(constraintWidgetContainer, "First pass", 0, iY, iZ);
        }
        if (size2 > 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviourC2 = constraintWidgetContainer.C();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z14 = dimensionBehaviourC2 == dimensionBehaviour2;
            boolean z15 = constraintWidgetContainer.V() == dimensionBehaviour2;
            int iMax = Math.max(constraintWidgetContainer.Y(), this.constraintWidgetContainer.K());
            int iMax2 = Math.max(constraintWidgetContainer.z(), this.constraintWidgetContainer.J());
            int i24 = 0;
            boolean zJ1 = false;
            while (i24 < size2) {
                ConstraintWidget constraintWidget2 = this.mVariableDimensionsWidgets.get(i24);
                if (constraintWidget2 instanceof VirtualLayout) {
                    int iY2 = constraintWidget2.Y();
                    int iZ2 = constraintWidget2.z();
                    boolean zA = a(measurerN1, constraintWidget2, Measure.TRY_GIVEN_DIMENSIONS) | zJ1;
                    Metrics metrics2 = constraintWidgetContainer.mMetrics;
                    if (metrics2 != null) {
                        metrics2.measuredMatchWidgets++;
                    }
                    int iY3 = constraintWidget2.Y();
                    int iZ3 = constraintWidget2.z();
                    if (iY3 != iY2) {
                        constraintWidget2.o1(iY3);
                        if (z14 && constraintWidget2.O() > iMax) {
                            iMax = Math.max(iMax, constraintWidget2.O() + constraintWidget2.q(ConstraintAnchor.Type.RIGHT).f());
                        }
                        z10 = true;
                    } else {
                        z10 = zA;
                    }
                    if (iZ3 != iZ2) {
                        constraintWidget2.P0(iZ3);
                        if (z15 && constraintWidget2.t() > iMax2) {
                            iMax2 = Math.max(iMax2, constraintWidget2.t() + constraintWidget2.q(ConstraintAnchor.Type.BOTTOM).f());
                        }
                        z10 = true;
                    }
                    zJ1 = z10 | ((VirtualLayout) constraintWidget2).J1();
                }
                i24++;
                iO1 = iO1;
                iZ = iZ;
                iY = iY;
                i23 = 2;
            }
            int i25 = iO1;
            int i26 = iY;
            int i27 = iZ;
            int i28 = i23;
            int i29 = 0;
            while (i29 < i28) {
                int i30 = 0;
                while (i30 < size2) {
                    ConstraintWidget constraintWidget3 = this.mVariableDimensionsWidgets.get(i30);
                    if (((constraintWidget3 instanceof Helper) && !(constraintWidget3 instanceof VirtualLayout)) || (constraintWidget3 instanceof Guideline) || constraintWidget3.X() == 8 || ((z13 && constraintWidget3.horizontalRun.dimension.resolved && constraintWidget3.verticalRun.dimension.resolved) || (constraintWidget3 instanceof VirtualLayout))) {
                        z6 = z13;
                        i21 = size2;
                        measurer = measurerN1;
                    } else {
                        int iY4 = constraintWidget3.Y();
                        int iZ4 = constraintWidget3.z();
                        int iR = constraintWidget3.r();
                        int i31 = Measure.TRY_GIVEN_DIMENSIONS;
                        z6 = z13;
                        if (i29 == 1) {
                            i31 = Measure.USE_GIVEN_DIMENSIONS;
                        }
                        boolean zA2 = a(measurerN1, constraintWidget3, i31) | zJ1;
                        Metrics metrics3 = constraintWidgetContainer.mMetrics;
                        i21 = size2;
                        measurer = measurerN1;
                        if (metrics3 != null) {
                            metrics3.measuredMatchWidgets++;
                        }
                        int iY5 = constraintWidget3.Y();
                        int iZ5 = constraintWidget3.z();
                        if (iY5 != iY4) {
                            constraintWidget3.o1(iY5);
                            if (z14 && constraintWidget3.O() > iMax) {
                                iMax = Math.max(iMax, constraintWidget3.O() + constraintWidget3.q(ConstraintAnchor.Type.RIGHT).f());
                            }
                            zA2 = true;
                        }
                        if (iZ5 != iZ4) {
                            constraintWidget3.P0(iZ5);
                            if (z15 && constraintWidget3.t() > iMax2) {
                                iMax2 = Math.max(iMax2, constraintWidget3.t() + constraintWidget3.q(ConstraintAnchor.Type.BOTTOM).f());
                            }
                            zA2 = true;
                        }
                        zJ1 = (!constraintWidget3.b0() || iR == constraintWidget3.r()) ? zA2 : true;
                    }
                    i30++;
                    measurerN1 = measurer;
                    z13 = z6;
                    size2 = i21;
                }
                boolean z16 = z13;
                int i32 = size2;
                Measurer measurer2 = measurerN1;
                if (!zJ1) {
                    break;
                }
                i29++;
                c(constraintWidgetContainer, "intermediate pass", i29, i26, i27);
                measurerN1 = measurer2;
                z13 = z16;
                size2 = i32;
                i28 = 2;
                zJ1 = false;
            }
            i20 = i25;
        } else {
            i20 = iO1;
        }
        constraintWidgetContainer.b2(i20);
        return 0L;
    }

    public void e(ConstraintWidgetContainer constraintWidgetContainer) {
        this.mVariableDimensionsWidgets.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i10);
            ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget.C();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviourC == dimensionBehaviour || constraintWidget.V() == dimensionBehaviour) {
                this.mVariableDimensionsWidgets.add(constraintWidget);
            }
        }
        constraintWidgetContainer.R1();
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.constraintWidgetContainer = constraintWidgetContainer;
    }

    private void c(ConstraintWidgetContainer constraintWidgetContainer, String str, int i10, int i11, int i12) {
        int iK = constraintWidgetContainer.K();
        int iJ = constraintWidgetContainer.J();
        constraintWidgetContainer.e1(0);
        constraintWidgetContainer.d1(0);
        constraintWidgetContainer.o1(i11);
        constraintWidgetContainer.P0(i12);
        constraintWidgetContainer.e1(iK);
        constraintWidgetContainer.d1(iJ);
        this.constraintWidgetContainer.c2(i10);
        this.constraintWidgetContainer.w1();
    }
}
