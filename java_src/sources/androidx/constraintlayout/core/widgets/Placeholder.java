package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;

/* JADX INFO: loaded from: classes6.dex */
public class Placeholder extends VirtualLayout {
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void G1(int i10, int i11, int i12, int i13) {
        int iD1 = D1() + E1();
        int iF1 = F1() + C1();
        boolean z6 = false;
        if (this.mWidgetsCount > 0) {
            iD1 += this.mWidgets[0].Y();
            iF1 += this.mWidgets[0].z();
        }
        int iMax = Math.max(K(), iD1);
        int iMax2 = Math.max(J(), iF1);
        if (i10 != 1073741824) {
            if (i10 == Integer.MIN_VALUE) {
                i11 = Math.min(iMax, i11);
            } else if (i10 == 0) {
                i11 = iMax;
            } else {
                i11 = 0;
            }
        }
        if (i12 != 1073741824) {
            if (i12 == Integer.MIN_VALUE) {
                i13 = Math.min(iMax2, i13);
            } else if (i12 == 0) {
                i13 = iMax2;
            } else {
                i13 = 0;
            }
        }
        L1(i11, i13);
        o1(i11);
        P0(i13);
        if (this.mWidgetsCount > 0) {
            z6 = true;
        }
        K1(z6);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g(LinearSystem linearSystem, boolean z6) {
        super.g(linearSystem, z6);
        if (this.mWidgetsCount > 0) {
            ConstraintWidget constraintWidget = this.mWidgets[0];
            constraintWidget.w0();
            ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
            constraintWidget.j(type, this, type);
            ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
            constraintWidget.j(type2, this, type2);
            ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
            constraintWidget.j(type3, this, type3);
            ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
            constraintWidget.j(type4, this, type4);
        }
    }
}
