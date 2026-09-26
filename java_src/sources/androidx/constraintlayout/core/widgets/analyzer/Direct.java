package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes9.dex */
public class Direct {
    private static final boolean APPLY_MATCH_PARENT = false;
    private static final boolean DEBUG = false;
    private static final boolean EARLY_TERMINATION = true;
    private static BasicMeasure.Measure measure = new BasicMeasure.Measure();
    private static int hcount = 0;
    private static int vcount = 0;

    private static void b(int i10, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, boolean z6) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.i0()) {
            return;
        }
        boolean z10 = true;
        hcount++;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.o0()) {
            int i11 = i10 + 1;
            if (a(i11, constraintWidget)) {
                ConstraintWidgetContainer.X1(i11, constraintWidget, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
            }
        }
        ConstraintAnchor constraintAnchorQ = constraintWidget.q(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor constraintAnchorQ2 = constraintWidget.q(ConstraintAnchor.Type.RIGHT);
        int iE = constraintAnchorQ.e();
        int iE2 = constraintAnchorQ2.e();
        if (constraintAnchorQ.d() != null && constraintAnchorQ.n()) {
            Iterator<ConstraintAnchor> it = constraintAnchorQ.d().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.mOwner;
                int i12 = i10 + 1;
                boolean zA = a(i12, constraintWidget2);
                if (constraintWidget2.o0() && zA) {
                    ConstraintWidgetContainer.X1(i12, constraintWidget2, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z11 = ((next == constraintWidget2.mLeft && (constraintAnchor4 = constraintWidget2.mRight.mTarget) != null && constraintAnchor4.n()) || (next == constraintWidget2.mRight && (constraintAnchor3 = constraintWidget2.mLeft.mTarget) != null && constraintAnchor3.n())) ? z10 : false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget2.C();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourC != dimensionBehaviour || zA) {
                    if (!constraintWidget2.o0()) {
                        ConstraintAnchor constraintAnchor5 = constraintWidget2.mLeft;
                        if (next == constraintAnchor5 && constraintWidget2.mRight.mTarget == null) {
                            int iF = constraintAnchor5.f() + iE;
                            constraintWidget2.J0(iF, constraintWidget2.Y() + iF);
                            b(i12, constraintWidget2, measurer, z6);
                        } else {
                            ConstraintAnchor constraintAnchor6 = constraintWidget2.mRight;
                            if (next == constraintAnchor6 && constraintAnchor5.mTarget == null) {
                                int iF2 = iE - constraintAnchor6.f();
                                constraintWidget2.J0(iF2 - constraintWidget2.Y(), iF2);
                                b(i12, constraintWidget2, measurer, z6);
                            } else if (z11 && !constraintWidget2.k0()) {
                                d(i12, measurer, constraintWidget2, z6);
                            }
                        }
                    }
                } else if (constraintWidget2.C() == dimensionBehaviour && constraintWidget2.mMatchConstraintMaxWidth >= 0 && constraintWidget2.mMatchConstraintMinWidth >= 0 && ((constraintWidget2.X() == 8 || (constraintWidget2.mMatchConstraintDefaultWidth == 0 && constraintWidget2.x() == 0.0f)) && !constraintWidget2.k0() && !constraintWidget2.n0() && z11 && !constraintWidget2.k0())) {
                    e(i12, constraintWidget, measurer, constraintWidget2, z6);
                }
                z10 = true;
            }
        }
        if (constraintWidget instanceof Guideline) {
            return;
        }
        if (constraintAnchorQ2.d() != null && constraintAnchorQ2.n()) {
            Iterator<ConstraintAnchor> it2 = constraintAnchorQ2.d().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.mOwner;
                int i13 = i10 + 1;
                boolean zA2 = a(i13, constraintWidget3);
                if (constraintWidget3.o0() && zA2) {
                    ConstraintWidgetContainer.X1(i13, constraintWidget3, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z12 = (next2 == constraintWidget3.mLeft && (constraintAnchor2 = constraintWidget3.mRight.mTarget) != null && constraintAnchor2.n()) || (next2 == constraintWidget3.mRight && (constraintAnchor = constraintWidget3.mLeft.mTarget) != null && constraintAnchor.n());
                ConstraintWidget.DimensionBehaviour dimensionBehaviourC2 = constraintWidget3.C();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourC2 != dimensionBehaviour2 || zA2) {
                    if (!constraintWidget3.o0()) {
                        ConstraintAnchor constraintAnchor7 = constraintWidget3.mLeft;
                        if (next2 == constraintAnchor7 && constraintWidget3.mRight.mTarget == null) {
                            int iF3 = constraintAnchor7.f() + iE2;
                            constraintWidget3.J0(iF3, constraintWidget3.Y() + iF3);
                            b(i13, constraintWidget3, measurer, z6);
                        } else {
                            ConstraintAnchor constraintAnchor8 = constraintWidget3.mRight;
                            if (next2 == constraintAnchor8 && constraintAnchor7.mTarget == null) {
                                int iF4 = iE2 - constraintAnchor8.f();
                                constraintWidget3.J0(iF4 - constraintWidget3.Y(), iF4);
                                b(i13, constraintWidget3, measurer, z6);
                            } else if (z12 && !constraintWidget3.k0()) {
                                d(i13, measurer, constraintWidget3, z6);
                            }
                        }
                    }
                } else if (constraintWidget3.C() == dimensionBehaviour2 && constraintWidget3.mMatchConstraintMaxWidth >= 0 && constraintWidget3.mMatchConstraintMinWidth >= 0 && (constraintWidget3.X() == 8 || (constraintWidget3.mMatchConstraintDefaultWidth == 0 && constraintWidget3.x() == 0.0f))) {
                    if (!constraintWidget3.k0() && !constraintWidget3.n0() && z12 && !constraintWidget3.k0()) {
                        e(i13, constraintWidget, measurer, constraintWidget3, z6);
                    }
                }
            }
        }
        constraintWidget.s0();
    }

    private static void i(int i10, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.r0()) {
            return;
        }
        vcount++;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.o0()) {
            int i11 = i10 + 1;
            if (a(i11, constraintWidget)) {
                ConstraintWidgetContainer.X1(i11, constraintWidget, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
            }
        }
        ConstraintAnchor constraintAnchorQ = constraintWidget.q(ConstraintAnchor.Type.TOP);
        ConstraintAnchor constraintAnchorQ2 = constraintWidget.q(ConstraintAnchor.Type.BOTTOM);
        int iE = constraintAnchorQ.e();
        int iE2 = constraintAnchorQ2.e();
        if (constraintAnchorQ.d() != null && constraintAnchorQ.n()) {
            Iterator<ConstraintAnchor> it = constraintAnchorQ.d().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.mOwner;
                int i12 = i10 + 1;
                boolean zA = a(i12, constraintWidget2);
                if (constraintWidget2.o0() && zA) {
                    ConstraintWidgetContainer.X1(i12, constraintWidget2, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z6 = (next == constraintWidget2.mTop && (constraintAnchor4 = constraintWidget2.mBottom.mTarget) != null && constraintAnchor4.n()) || (next == constraintWidget2.mBottom && (constraintAnchor3 = constraintWidget2.mTop.mTarget) != null && constraintAnchor3.n());
                ConstraintWidget.DimensionBehaviour dimensionBehaviourV = constraintWidget2.V();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourV != dimensionBehaviour || zA) {
                    if (!constraintWidget2.o0()) {
                        ConstraintAnchor constraintAnchor5 = constraintWidget2.mTop;
                        if (next == constraintAnchor5 && constraintWidget2.mBottom.mTarget == null) {
                            int iF = constraintAnchor5.f() + iE;
                            constraintWidget2.M0(iF, constraintWidget2.z() + iF);
                            i(i12, constraintWidget2, measurer);
                        } else {
                            ConstraintAnchor constraintAnchor6 = constraintWidget2.mBottom;
                            if (next == constraintAnchor6 && constraintAnchor5.mTarget == null) {
                                int iF2 = iE - constraintAnchor6.f();
                                constraintWidget2.M0(iF2 - constraintWidget2.z(), iF2);
                                i(i12, constraintWidget2, measurer);
                            } else if (z6 && !constraintWidget2.m0()) {
                                f(i12, measurer, constraintWidget2);
                            }
                        }
                    }
                } else if (constraintWidget2.V() == dimensionBehaviour && constraintWidget2.mMatchConstraintMaxHeight >= 0 && constraintWidget2.mMatchConstraintMinHeight >= 0 && (constraintWidget2.X() == 8 || (constraintWidget2.mMatchConstraintDefaultHeight == 0 && constraintWidget2.x() == 0.0f))) {
                    if (!constraintWidget2.m0() && !constraintWidget2.n0() && z6 && !constraintWidget2.m0()) {
                        g(i12, constraintWidget, measurer, constraintWidget2);
                    }
                }
            }
        }
        if (constraintWidget instanceof Guideline) {
            return;
        }
        if (constraintAnchorQ2.d() != null && constraintAnchorQ2.n()) {
            Iterator<ConstraintAnchor> it2 = constraintAnchorQ2.d().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.mOwner;
                int i13 = i10 + 1;
                boolean zA2 = a(i13, constraintWidget3);
                if (constraintWidget3.o0() && zA2) {
                    ConstraintWidgetContainer.X1(i13, constraintWidget3, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                boolean z10 = (next2 == constraintWidget3.mTop && (constraintAnchor2 = constraintWidget3.mBottom.mTarget) != null && constraintAnchor2.n()) || (next2 == constraintWidget3.mBottom && (constraintAnchor = constraintWidget3.mTop.mTarget) != null && constraintAnchor.n());
                ConstraintWidget.DimensionBehaviour dimensionBehaviourV2 = constraintWidget3.V();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourV2 != dimensionBehaviour2 || zA2) {
                    if (!constraintWidget3.o0()) {
                        ConstraintAnchor constraintAnchor7 = constraintWidget3.mTop;
                        if (next2 == constraintAnchor7 && constraintWidget3.mBottom.mTarget == null) {
                            int iF3 = constraintAnchor7.f() + iE2;
                            constraintWidget3.M0(iF3, constraintWidget3.z() + iF3);
                            i(i13, constraintWidget3, measurer);
                        } else {
                            ConstraintAnchor constraintAnchor8 = constraintWidget3.mBottom;
                            if (next2 == constraintAnchor8 && constraintAnchor7.mTarget == null) {
                                int iF4 = iE2 - constraintAnchor8.f();
                                constraintWidget3.M0(iF4 - constraintWidget3.z(), iF4);
                                i(i13, constraintWidget3, measurer);
                            } else if (z10 && !constraintWidget3.m0()) {
                                f(i13, measurer, constraintWidget3);
                            }
                        }
                    }
                } else if (constraintWidget3.V() == dimensionBehaviour2 && constraintWidget3.mMatchConstraintMaxHeight >= 0 && constraintWidget3.mMatchConstraintMinHeight >= 0 && (constraintWidget3.X() == 8 || (constraintWidget3.mMatchConstraintDefaultHeight == 0 && constraintWidget3.x() == 0.0f))) {
                    if (!constraintWidget3.m0() && !constraintWidget3.n0() && z10 && !constraintWidget3.m0()) {
                        g(i13, constraintWidget, measurer, constraintWidget3);
                    }
                }
            }
        }
        ConstraintAnchor constraintAnchorQ3 = constraintWidget.q(ConstraintAnchor.Type.BASELINE);
        if (constraintAnchorQ3.d() != null && constraintAnchorQ3.n()) {
            int iE3 = constraintAnchorQ3.e();
            for (ConstraintAnchor constraintAnchor9 : constraintAnchorQ3.d()) {
                ConstraintWidget constraintWidget4 = constraintAnchor9.mOwner;
                int i14 = i10 + 1;
                boolean zA3 = a(i14, constraintWidget4);
                if (constraintWidget4.o0() && zA3) {
                    ConstraintWidgetContainer.X1(i14, constraintWidget4, measurer, new BasicMeasure.Measure(), BasicMeasure.Measure.SELF_DIMENSIONS);
                }
                if (constraintWidget4.V() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || zA3) {
                    if (!constraintWidget4.o0() && constraintAnchor9 == constraintWidget4.mBaseline) {
                        constraintWidget4.I0(constraintAnchor9.f() + iE3);
                        i(i14, constraintWidget4, measurer);
                    }
                }
            }
        }
        constraintWidget.t0();
    }

    private static boolean a(int i10, ConstraintWidget constraintWidget) {
        ConstraintWidgetContainer constraintWidgetContainer;
        boolean z6;
        boolean z10;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidget.C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourV = constraintWidget.V();
        if (constraintWidget.M() != null) {
            constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget.M();
        } else {
            constraintWidgetContainer = null;
        }
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.C();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.V();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviourC != dimensionBehaviour5 && !constraintWidget.p0() && dimensionBehaviourC != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && ((dimensionBehaviourC != (dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) || constraintWidget.mMatchConstraintDefaultWidth != 0 || constraintWidget.mDimensionRatio != 0.0f || !constraintWidget.c0(0)) && (dimensionBehaviourC != dimensionBehaviour2 || constraintWidget.mMatchConstraintDefaultWidth != 1 || !constraintWidget.f0(0, constraintWidget.Y())))) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (dimensionBehaviourV != dimensionBehaviour5 && !constraintWidget.q0() && dimensionBehaviourV != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && ((dimensionBehaviourV != (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) || constraintWidget.mMatchConstraintDefaultHeight != 0 || constraintWidget.mDimensionRatio != 0.0f || !constraintWidget.c0(1)) && (dimensionBehaviourV != dimensionBehaviour || constraintWidget.mMatchConstraintDefaultHeight != 1 || !constraintWidget.f0(1, constraintWidget.z())))) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (constraintWidget.mDimensionRatio > 0.0f && (z6 || z10)) {
            return true;
        }
        if (!z6 || !z10) {
            return false;
        }
        return true;
    }

    private static void c(int i10, Barrier barrier, BasicMeasure.Measurer measurer, int i11, boolean z6) {
        if (barrier.x1()) {
            if (i11 == 0) {
                b(i10 + 1, barrier, measurer, z6);
            } else {
                i(i10 + 1, barrier, measurer);
            }
        }
    }

    private static void d(int i10, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget, boolean z6) {
        float f;
        float fA = constraintWidget.A();
        int iE = constraintWidget.mLeft.mTarget.e();
        int iE2 = constraintWidget.mRight.mTarget.e();
        int iF = constraintWidget.mLeft.f() + iE;
        int iF2 = iE2 - constraintWidget.mRight.f();
        if (iE == iE2) {
            fA = 0.5f;
        } else {
            iE = iF;
            iE2 = iF2;
        }
        int iY = constraintWidget.Y();
        int i11 = (iE2 - iE) - iY;
        if (iE > iE2) {
            i11 = (iE - iE2) - iY;
        }
        if (i11 > 0) {
            f = (fA * i11) + 0.5f;
        } else {
            f = fA * i11;
        }
        int i12 = ((int) f) + iE;
        int i13 = i12 + iY;
        if (iE > iE2) {
            i13 = i12 - iY;
        }
        constraintWidget.J0(i12, i13);
        b(i10 + 1, constraintWidget, measurer, z6);
    }

    private static void e(int i10, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2, boolean z6) {
        int iY;
        float fA = constraintWidget2.A();
        int iE = constraintWidget2.mLeft.mTarget.e() + constraintWidget2.mLeft.f();
        int iE2 = constraintWidget2.mRight.mTarget.e() - constraintWidget2.mRight.f();
        if (iE2 >= iE) {
            int iY2 = constraintWidget2.Y();
            if (constraintWidget2.X() != 8) {
                int i11 = constraintWidget2.mMatchConstraintDefaultWidth;
                if (i11 == 2) {
                    if (constraintWidget instanceof ConstraintWidgetContainer) {
                        iY = constraintWidget.Y();
                    } else {
                        iY = constraintWidget.M().Y();
                    }
                    iY2 = (int) (constraintWidget2.A() * 0.5f * iY);
                } else if (i11 == 0) {
                    iY2 = iE2 - iE;
                }
                iY2 = Math.max(constraintWidget2.mMatchConstraintMinWidth, iY2);
                int i12 = constraintWidget2.mMatchConstraintMaxWidth;
                if (i12 > 0) {
                    iY2 = Math.min(i12, iY2);
                }
            }
            int i13 = iE + ((int) ((fA * ((iE2 - iE) - iY2)) + 0.5f));
            constraintWidget2.J0(i13, iY2 + i13);
            b(i10 + 1, constraintWidget2, measurer, z6);
        }
    }

    private static void f(int i10, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget) {
        float f;
        float fT = constraintWidget.T();
        int iE = constraintWidget.mTop.mTarget.e();
        int iE2 = constraintWidget.mBottom.mTarget.e();
        int iF = constraintWidget.mTop.f() + iE;
        int iF2 = iE2 - constraintWidget.mBottom.f();
        if (iE == iE2) {
            fT = 0.5f;
        } else {
            iE = iF;
            iE2 = iF2;
        }
        int iZ = constraintWidget.z();
        int i11 = (iE2 - iE) - iZ;
        if (iE > iE2) {
            i11 = (iE - iE2) - iZ;
        }
        if (i11 > 0) {
            f = (fT * i11) + 0.5f;
        } else {
            f = fT * i11;
        }
        int i12 = (int) f;
        int i13 = iE + i12;
        int i14 = i13 + iZ;
        if (iE > iE2) {
            i13 = iE - i12;
            i14 = i13 - iZ;
        }
        constraintWidget.M0(i13, i14);
        i(i10 + 1, constraintWidget, measurer);
    }

    private static void g(int i10, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2) {
        int iZ;
        float fT = constraintWidget2.T();
        int iE = constraintWidget2.mTop.mTarget.e() + constraintWidget2.mTop.f();
        int iE2 = constraintWidget2.mBottom.mTarget.e() - constraintWidget2.mBottom.f();
        if (iE2 >= iE) {
            int iZ2 = constraintWidget2.z();
            if (constraintWidget2.X() != 8) {
                int i11 = constraintWidget2.mMatchConstraintDefaultHeight;
                if (i11 == 2) {
                    if (constraintWidget instanceof ConstraintWidgetContainer) {
                        iZ = constraintWidget.z();
                    } else {
                        iZ = constraintWidget.M().z();
                    }
                    iZ2 = (int) (fT * 0.5f * iZ);
                } else if (i11 == 0) {
                    iZ2 = iE2 - iE;
                }
                iZ2 = Math.max(constraintWidget2.mMatchConstraintMinHeight, iZ2);
                int i12 = constraintWidget2.mMatchConstraintMaxHeight;
                if (i12 > 0) {
                    iZ2 = Math.min(i12, iZ2);
                }
            }
            int i13 = iE + ((int) ((fT * ((iE2 - iE) - iZ2)) + 0.5f));
            constraintWidget2.M0(i13, iZ2 + i13);
            i(i10 + 1, constraintWidget2, measurer);
        }
    }

    public static void h(ConstraintWidgetContainer constraintWidgetContainer, BasicMeasure.Measurer measurer) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = constraintWidgetContainer.C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourV = constraintWidgetContainer.V();
        hcount = 0;
        vcount = 0;
        constraintWidgetContainer.y0();
        ArrayList<ConstraintWidget> arrayListV1 = constraintWidgetContainer.v1();
        int size = arrayListV1.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayListV1.get(i10).y0();
        }
        boolean zU1 = constraintWidgetContainer.U1();
        if (dimensionBehaviourC == ConstraintWidget.DimensionBehaviour.FIXED) {
            constraintWidgetContainer.J0(0, constraintWidgetContainer.Y());
        } else {
            constraintWidgetContainer.K0(0);
        }
        boolean z6 = false;
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget = arrayListV1.get(i11);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.w1() == 1) {
                    if (guideline.x1() != -1) {
                        guideline.A1(guideline.x1());
                    } else if (guideline.y1() != -1 && constraintWidgetContainer.p0()) {
                        guideline.A1(constraintWidgetContainer.Y() - guideline.y1());
                    } else if (constraintWidgetContainer.p0()) {
                        guideline.A1((int) ((guideline.z1() * constraintWidgetContainer.Y()) + 0.5f));
                    }
                    z6 = true;
                }
            } else if ((constraintWidget instanceof Barrier) && ((Barrier) constraintWidget).B1() == 0) {
                z10 = true;
            }
        }
        if (z6) {
            for (int i12 = 0; i12 < size; i12++) {
                ConstraintWidget constraintWidget2 = arrayListV1.get(i12);
                if (constraintWidget2 instanceof Guideline) {
                    Guideline guideline2 = (Guideline) constraintWidget2;
                    if (guideline2.w1() == 1) {
                        b(0, guideline2, measurer, zU1);
                    }
                }
            }
        }
        b(0, constraintWidgetContainer, measurer, zU1);
        if (z10) {
            for (int i13 = 0; i13 < size; i13++) {
                ConstraintWidget constraintWidget3 = arrayListV1.get(i13);
                if (constraintWidget3 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget3;
                    if (barrier.B1() == 0) {
                        c(0, barrier, measurer, 0, zU1);
                    }
                }
            }
        }
        if (dimensionBehaviourV == ConstraintWidget.DimensionBehaviour.FIXED) {
            constraintWidgetContainer.M0(0, constraintWidgetContainer.z());
        } else {
            constraintWidgetContainer.L0(0);
        }
        boolean z11 = false;
        boolean z12 = false;
        for (int i14 = 0; i14 < size; i14++) {
            ConstraintWidget constraintWidget4 = arrayListV1.get(i14);
            if (constraintWidget4 instanceof Guideline) {
                Guideline guideline3 = (Guideline) constraintWidget4;
                if (guideline3.w1() == 0) {
                    if (guideline3.x1() != -1) {
                        guideline3.A1(guideline3.x1());
                    } else if (guideline3.y1() != -1 && constraintWidgetContainer.q0()) {
                        guideline3.A1(constraintWidgetContainer.z() - guideline3.y1());
                    } else if (constraintWidgetContainer.q0()) {
                        guideline3.A1((int) ((guideline3.z1() * constraintWidgetContainer.z()) + 0.5f));
                    }
                    z11 = true;
                }
            } else if ((constraintWidget4 instanceof Barrier) && ((Barrier) constraintWidget4).B1() == 1) {
                z12 = true;
            }
        }
        if (z11) {
            for (int i15 = 0; i15 < size; i15++) {
                ConstraintWidget constraintWidget5 = arrayListV1.get(i15);
                if (constraintWidget5 instanceof Guideline) {
                    Guideline guideline4 = (Guideline) constraintWidget5;
                    if (guideline4.w1() == 0) {
                        i(1, guideline4, measurer);
                    }
                }
            }
        }
        i(0, constraintWidgetContainer, measurer);
        if (z12) {
            for (int i16 = 0; i16 < size; i16++) {
                ConstraintWidget constraintWidget6 = arrayListV1.get(i16);
                if (constraintWidget6 instanceof Barrier) {
                    Barrier barrier2 = (Barrier) constraintWidget6;
                    if (barrier2.B1() == 1) {
                        c(0, barrier2, measurer, 1, zU1);
                    }
                }
            }
        }
        for (int i17 = 0; i17 < size; i17++) {
            ConstraintWidget constraintWidget7 = arrayListV1.get(i17);
            if (constraintWidget7.o0() && a(0, constraintWidget7)) {
                ConstraintWidgetContainer.X1(0, constraintWidget7, measurer, measure, BasicMeasure.Measure.SELF_DIMENSIONS);
                if (constraintWidget7 instanceof Guideline) {
                    if (((Guideline) constraintWidget7).w1() == 0) {
                        i(0, constraintWidget7, measurer);
                    } else {
                        b(0, constraintWidget7, measurer, zU1);
                    }
                } else {
                    b(0, constraintWidget7, measurer, zU1);
                    i(0, constraintWidget7, measurer);
                }
            }
        }
    }
}
