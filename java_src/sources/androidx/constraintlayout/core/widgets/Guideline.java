package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class Guideline extends ConstraintWidget {
    public static final int HORIZONTAL = 0;
    public static final int RELATIVE_BEGIN = 1;
    public static final int RELATIVE_END = 2;
    public static final int RELATIVE_PERCENT = 0;
    public static final int RELATIVE_UNKNOWN = -1;
    public static final int VERTICAL = 1;
    private boolean resolved;
    protected float mRelativePercent = -1.0f;
    protected int mRelativeBegin = -1;
    protected int mRelativeEnd = -1;
    protected boolean guidelineUseRtl = true;
    private ConstraintAnchor mAnchor = this.mTop;
    private int mOrientation = 0;
    private int mMinimumPosition = 0;

    public void B1(int i10) {
        if (i10 > -1) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = i10;
            this.mRelativeEnd = -1;
        }
    }

    public void C1(int i10) {
        if (i10 > -1) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = i10;
        }
    }

    public void D1(float f) {
        if (f > -1.0f) {
            this.mRelativePercent = f;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = -1;
        }
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

    public ConstraintAnchor v1() {
        return this.mAnchor;
    }

    public int w1() {
        return this.mOrientation;
    }

    public int x1() {
        return this.mRelativeBegin;
    }

    public int y1() {
        return this.mRelativeEnd;
    }

    public float z1() {
        return this.mRelativePercent;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.Guideline$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public void A1(int i10) {
        this.mAnchor.t(i10);
        this.resolved = true;
    }

    public void E1(int i10) {
        if (this.mOrientation == i10) {
            return;
        }
        this.mOrientation = i10;
        this.mAnchors.clear();
        if (this.mOrientation == 1) {
            this.mAnchor = this.mLeft;
        } else {
            this.mAnchor = this.mTop;
        }
        this.mAnchors.add(this.mAnchor);
        int length = this.mListAnchors.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.mListAnchors[i11] = this.mAnchor;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public ConstraintAnchor q(ConstraintAnchor.Type type) {
        int i10 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[type.ordinal()];
        if (i10 == 1 || i10 == 2) {
            if (this.mOrientation == 1) {
                return this.mAnchor;
            }
            return null;
        }
        if ((i10 == 3 || i10 == 4) && this.mOrientation == 0) {
            return this.mAnchor;
        }
        return null;
    }

    public Guideline() {
        this.mAnchors.clear();
        this.mAnchors.add(this.mAnchor);
        int length = this.mListAnchors.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.mListAnchors[i10] = this.mAnchor;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g(LinearSystem linearSystem, boolean z6) {
        boolean z10;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) M();
        if (constraintWidgetContainer == null) {
            return;
        }
        ConstraintAnchor constraintAnchorQ = constraintWidgetContainer.q(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor constraintAnchorQ2 = constraintWidgetContainer.q(ConstraintAnchor.Type.RIGHT);
        ConstraintWidget constraintWidget = this.mParent;
        boolean z11 = true;
        if (constraintWidget != null && constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.mOrientation == 0) {
            constraintAnchorQ = constraintWidgetContainer.q(ConstraintAnchor.Type.TOP);
            constraintAnchorQ2 = constraintWidgetContainer.q(ConstraintAnchor.Type.BOTTOM);
            ConstraintWidget constraintWidget2 = this.mParent;
            if (constraintWidget2 == null || constraintWidget2.mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                z11 = false;
            }
            z10 = z11;
        }
        if (this.resolved && this.mAnchor.n()) {
            SolverVariable solverVariableQ = linearSystem.q(this.mAnchor);
            linearSystem.f(solverVariableQ, this.mAnchor.e());
            if (this.mRelativeBegin != -1) {
                if (z10) {
                    linearSystem.h(linearSystem.q(constraintAnchorQ2), solverVariableQ, 0, 5);
                }
            } else if (this.mRelativeEnd != -1 && z10) {
                SolverVariable solverVariableQ2 = linearSystem.q(constraintAnchorQ2);
                linearSystem.h(solverVariableQ, linearSystem.q(constraintAnchorQ), 0, 5);
                linearSystem.h(solverVariableQ2, solverVariableQ, 0, 5);
            }
            this.resolved = false;
            return;
        }
        if (this.mRelativeBegin != -1) {
            SolverVariable solverVariableQ3 = linearSystem.q(this.mAnchor);
            linearSystem.e(solverVariableQ3, linearSystem.q(constraintAnchorQ), this.mRelativeBegin, 8);
            if (z10) {
                linearSystem.h(linearSystem.q(constraintAnchorQ2), solverVariableQ3, 0, 5);
                return;
            }
            return;
        }
        if (this.mRelativeEnd != -1) {
            SolverVariable solverVariableQ4 = linearSystem.q(this.mAnchor);
            SolverVariable solverVariableQ5 = linearSystem.q(constraintAnchorQ2);
            linearSystem.e(solverVariableQ4, solverVariableQ5, -this.mRelativeEnd, 8);
            if (z10) {
                linearSystem.h(solverVariableQ4, linearSystem.q(constraintAnchorQ), 0, 5);
                linearSystem.h(solverVariableQ5, solverVariableQ4, 0, 5);
                return;
            }
            return;
        }
        if (this.mRelativePercent != -1.0f) {
            linearSystem.d(LinearSystem.s(linearSystem, linearSystem.q(this.mAnchor), linearSystem.q(constraintAnchorQ2), this.mRelativePercent));
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void n(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.n(constraintWidget, map);
        Guideline guideline = (Guideline) constraintWidget;
        this.mRelativePercent = guideline.mRelativePercent;
        this.mRelativeBegin = guideline.mRelativeBegin;
        this.mRelativeEnd = guideline.mRelativeEnd;
        this.guidelineUseRtl = guideline.guidelineUseRtl;
        E1(guideline.mOrientation);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void u1(LinearSystem linearSystem, boolean z6) {
        if (M() == null) {
            return;
        }
        int iY = linearSystem.y(this.mAnchor);
        if (this.mOrientation == 1) {
            q1(iY);
            r1(0);
            P0(M().z());
            o1(0);
            return;
        }
        q1(0);
        r1(iY);
        o1(M().Y());
        P0(0);
    }
}
