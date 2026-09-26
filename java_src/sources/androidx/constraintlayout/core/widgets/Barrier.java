package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private static final boolean USE_RELAX_GONE = false;
    private static final boolean USE_RESOLUTION = true;
    private int mBarrierType = 0;
    private boolean mAllowsGoneWidget = true;
    private int mMargin = 0;
    boolean resolved = false;

    public Barrier() {
    }

    public int A1() {
        return this.mMargin;
    }

    public int B1() {
        int i10 = this.mBarrierType;
        if (i10 == 0 || i10 == 1) {
            return 0;
        }
        return (i10 == 2 || i10 == 3) ? 1 : -1;
    }

    protected void C1() {
        for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
            ConstraintWidget constraintWidget = this.mWidgets[i10];
            if (this.mAllowsGoneWidget || constraintWidget.h()) {
                int i11 = this.mBarrierType;
                if (i11 == 0 || i11 == 1) {
                    constraintWidget.W0(0, true);
                } else if (i11 == 2 || i11 == 3) {
                    constraintWidget.W0(1, true);
                }
            }
        }
    }

    public void D1(boolean z6) {
        this.mAllowsGoneWidget = z6;
    }

    public void E1(int i10) {
        this.mBarrierType = i10;
    }

    public void F1(int i10) {
        this.mMargin = i10;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean h() {
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean p0() {
        return this.resolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean q0() {
        return this.resolved;
    }

    public boolean x1() {
        int i10;
        int i11;
        int i12;
        boolean z6 = true;
        int i13 = 0;
        while (true) {
            i10 = this.mWidgetsCount;
            if (i13 >= i10) {
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i13];
            if ((this.mAllowsGoneWidget || constraintWidget.h()) && ((((i11 = this.mBarrierType) == 0 || i11 == 1) && !constraintWidget.p0()) || (((i12 = this.mBarrierType) == 2 || i12 == 3) && !constraintWidget.q0()))) {
                z6 = false;
            }
            i13++;
        }
        if (!z6 || i10 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z10 = false;
        for (int i14 = 0; i14 < this.mWidgetsCount; i14++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i14];
            if (this.mAllowsGoneWidget || constraintWidget2.h()) {
                if (!z10) {
                    int i15 = this.mBarrierType;
                    if (i15 == 0) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.LEFT).e();
                    } else if (i15 == 1) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.RIGHT).e();
                    } else if (i15 == 2) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.TOP).e();
                    } else if (i15 == 3) {
                        iMax = constraintWidget2.q(ConstraintAnchor.Type.BOTTOM).e();
                    }
                    z10 = true;
                }
                int i16 = this.mBarrierType;
                if (i16 == 0) {
                    iMax = Math.min(iMax, constraintWidget2.q(ConstraintAnchor.Type.LEFT).e());
                } else if (i16 == 1) {
                    iMax = Math.max(iMax, constraintWidget2.q(ConstraintAnchor.Type.RIGHT).e());
                } else if (i16 == 2) {
                    iMax = Math.min(iMax, constraintWidget2.q(ConstraintAnchor.Type.TOP).e());
                } else if (i16 == 3) {
                    iMax = Math.max(iMax, constraintWidget2.q(ConstraintAnchor.Type.BOTTOM).e());
                }
            }
        }
        int i17 = iMax + this.mMargin;
        int i18 = this.mBarrierType;
        if (i18 == 0 || i18 == 1) {
            J0(i17, i17);
        } else {
            M0(i17, i17);
        }
        this.resolved = true;
        return true;
    }

    public boolean y1() {
        return this.mAllowsGoneWidget;
    }

    public int z1() {
        return this.mBarrierType;
    }

    public Barrier(String str) {
        G0(str);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g(LinearSystem linearSystem, boolean z6) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z10;
        int i10;
        int i11;
        int i12;
        ConstraintAnchor[] constraintAnchorArr2 = this.mListAnchors;
        constraintAnchorArr2[0] = this.mLeft;
        constraintAnchorArr2[2] = this.mTop;
        constraintAnchorArr2[1] = this.mRight;
        constraintAnchorArr2[3] = this.mBottom;
        int i13 = 0;
        while (true) {
            constraintAnchorArr = this.mListAnchors;
            if (i13 >= constraintAnchorArr.length) {
                break;
            }
            ConstraintAnchor constraintAnchor = constraintAnchorArr[i13];
            constraintAnchor.mSolverVariable = linearSystem.q(constraintAnchor);
            i13++;
        }
        int i14 = this.mBarrierType;
        if (i14 < 0 || i14 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i14];
        if (!this.resolved) {
            x1();
        }
        if (this.resolved) {
            this.resolved = false;
            int i15 = this.mBarrierType;
            if (i15 == 0 || i15 == 1) {
                linearSystem.f(this.mLeft.mSolverVariable, this.mX);
                linearSystem.f(this.mRight.mSolverVariable, this.mX);
                return;
            } else {
                if (i15 == 2 || i15 == 3) {
                    linearSystem.f(this.mTop.mSolverVariable, this.mY);
                    linearSystem.f(this.mBottom.mSolverVariable, this.mY);
                    return;
                }
                return;
            }
        }
        int i16 = 0;
        while (true) {
            if (i16 >= this.mWidgetsCount) {
                z10 = false;
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i16];
            if ((this.mAllowsGoneWidget || constraintWidget.h()) && ((((i11 = this.mBarrierType) == 0 || i11 == 1) && constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || (((i12 = this.mBarrierType) == 2 || i12 == 3) && constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                z10 = true;
                break;
            }
            i16++;
        }
        boolean z11 = this.mLeft.l() || this.mRight.l();
        boolean z12 = this.mTop.l() || this.mBottom.l();
        int i17 = !(!z10 && (((i10 = this.mBarrierType) == 0 && z11) || ((i10 == 2 && z12) || ((i10 == 1 && z11) || (i10 == 3 && z12))))) ? 4 : 5;
        for (int i18 = 0; i18 < this.mWidgetsCount; i18++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i18];
            if (this.mAllowsGoneWidget || constraintWidget2.h()) {
                SolverVariable solverVariableQ = linearSystem.q(constraintWidget2.mListAnchors[this.mBarrierType]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.mListAnchors;
                int i19 = this.mBarrierType;
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr3[i19];
                constraintAnchor3.mSolverVariable = solverVariableQ;
                ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
                int i20 = (constraintAnchor4 == null || constraintAnchor4.mOwner != this) ? 0 : constraintAnchor3.mMargin;
                if (i19 == 0 || i19 == 2) {
                    linearSystem.i(constraintAnchor2.mSolverVariable, solverVariableQ, this.mMargin - i20, z10);
                } else {
                    linearSystem.g(constraintAnchor2.mSolverVariable, solverVariableQ, this.mMargin + i20, z10);
                }
                linearSystem.e(constraintAnchor2.mSolverVariable, solverVariableQ, this.mMargin + i20, i17);
            }
        }
        int i21 = this.mBarrierType;
        if (i21 == 0) {
            linearSystem.e(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 8);
            linearSystem.e(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 4);
            linearSystem.e(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 0);
            return;
        }
        if (i21 == 1) {
            linearSystem.e(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 8);
            linearSystem.e(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 4);
            linearSystem.e(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 0);
        } else if (i21 == 2) {
            linearSystem.e(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 8);
            linearSystem.e(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 4);
            linearSystem.e(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 0);
        } else if (i21 == 3) {
            linearSystem.e(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 8);
            linearSystem.e(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 4);
            linearSystem.e(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 0);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String str = "[Barrier] " + v() + " {";
        for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
            ConstraintWidget constraintWidget = this.mWidgets[i10];
            if (i10 > 0) {
                str = str + ", ";
            }
            str = str + constraintWidget.v();
        }
        return str + "}";
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void n(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.n(constraintWidget, map);
        Barrier barrier = (Barrier) constraintWidget;
        this.mBarrierType = barrier.mBarrierType;
        this.mAllowsGoneWidget = barrier.mAllowsGoneWidget;
        this.mMargin = barrier.mMargin;
    }
}
