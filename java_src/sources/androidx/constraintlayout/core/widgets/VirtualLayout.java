package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.HashSet;

/* JADX INFO: loaded from: classes11.dex */
public class VirtualLayout extends HelperWidget {
    private int mPaddingTop = 0;
    private int mPaddingBottom = 0;
    private int mPaddingLeft = 0;
    private int mPaddingRight = 0;
    private int mPaddingStart = 0;
    private int mPaddingEnd = 0;
    private int mResolvedPaddingLeft = 0;
    private int mResolvedPaddingRight = 0;
    private boolean mNeedsCallFromSolver = false;
    private int mMeasuredWidth = 0;
    private int mMeasuredHeight = 0;
    protected BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();
    BasicMeasure.Measurer mMeasurer = null;

    public int A1() {
        return this.mMeasuredHeight;
    }

    public int B1() {
        return this.mMeasuredWidth;
    }

    public int C1() {
        return this.mPaddingBottom;
    }

    public int D1() {
        return this.mResolvedPaddingLeft;
    }

    public int E1() {
        return this.mResolvedPaddingRight;
    }

    public int F1() {
        return this.mPaddingTop;
    }

    public void G1(int i10, int i11, int i12, int i13) {
    }

    public boolean J1() {
        return this.mNeedsCallFromSolver;
    }

    protected void K1(boolean z6) {
        this.mNeedsCallFromSolver = z6;
    }

    public void L1(int i10, int i11) {
        this.mMeasuredWidth = i10;
        this.mMeasuredHeight = i11;
    }

    public void M1(int i10) {
        this.mPaddingLeft = i10;
        this.mPaddingTop = i10;
        this.mPaddingRight = i10;
        this.mPaddingBottom = i10;
        this.mPaddingStart = i10;
        this.mPaddingEnd = i10;
    }

    public void N1(int i10) {
        this.mPaddingBottom = i10;
    }

    public void O1(int i10) {
        this.mPaddingEnd = i10;
    }

    public void P1(int i10) {
        this.mPaddingLeft = i10;
        this.mResolvedPaddingLeft = i10;
    }

    public void Q1(int i10) {
        this.mPaddingRight = i10;
        this.mResolvedPaddingRight = i10;
    }

    public void R1(int i10) {
        this.mPaddingStart = i10;
        this.mResolvedPaddingLeft = i10;
        this.mResolvedPaddingRight = i10;
    }

    public void S1(int i10) {
        this.mPaddingTop = i10;
    }

    public void x1(boolean z6) {
        int i10 = this.mPaddingStart;
        if (i10 > 0 || this.mPaddingEnd > 0) {
            if (z6) {
                this.mResolvedPaddingLeft = this.mPaddingEnd;
                this.mResolvedPaddingRight = i10;
            } else {
                this.mResolvedPaddingLeft = i10;
                this.mResolvedPaddingRight = this.mPaddingEnd;
            }
        }
    }

    public void y1() {
        for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
            ConstraintWidget constraintWidget = this.mWidgets[i10];
            if (constraintWidget != null) {
                constraintWidget.Y0(true);
            }
        }
    }

    public boolean z1(HashSet<ConstraintWidget> hashSet) {
        for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
            if (hashSet.contains(this.mWidgets[i10])) {
                return true;
            }
        }
        return false;
    }

    protected void H1(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i10, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i11) {
        while (this.mMeasurer == null && M() != null) {
            this.mMeasurer = ((ConstraintWidgetContainer) M()).N1();
        }
        BasicMeasure.Measure measure = this.mMeasure;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i10;
        measure.verticalDimension = i11;
        this.mMeasurer.b(constraintWidget, measure);
        constraintWidget.o1(this.mMeasure.measuredWidth);
        constraintWidget.P0(this.mMeasure.measuredHeight);
        constraintWidget.O0(this.mMeasure.measuredHasBaseline);
        constraintWidget.E0(this.mMeasure.measuredBaseline);
    }

    protected boolean I1() {
        ConstraintWidget constraintWidget = this.mParent;
        BasicMeasure.Measurer measurerN1 = constraintWidget != null ? ((ConstraintWidgetContainer) constraintWidget).N1() : null;
        if (measurerN1 == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i10];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof Guideline)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW = constraintWidget2.w(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = constraintWidget2.w(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourW != dimensionBehaviour || constraintWidget2.mMatchConstraintDefaultWidth == 1 || dimensionBehaviourW2 != dimensionBehaviour || constraintWidget2.mMatchConstraintDefaultHeight == 1) {
                    if (dimensionBehaviourW == dimensionBehaviour) {
                        dimensionBehaviourW = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    if (dimensionBehaviourW2 == dimensionBehaviour) {
                        dimensionBehaviourW2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    BasicMeasure.Measure measure = this.mMeasure;
                    measure.horizontalBehavior = dimensionBehaviourW;
                    measure.verticalBehavior = dimensionBehaviourW2;
                    measure.horizontalDimension = constraintWidget2.Y();
                    this.mMeasure.verticalDimension = constraintWidget2.z();
                    measurerN1.b(constraintWidget2, this.mMeasure);
                    constraintWidget2.o1(this.mMeasure.measuredWidth);
                    constraintWidget2.P0(this.mMeasure.measuredHeight);
                    constraintWidget2.E0(this.mMeasure.measuredBaseline);
                }
            }
        }
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.Helper
    public void c(ConstraintWidgetContainer constraintWidgetContainer) {
        y1();
    }
}
