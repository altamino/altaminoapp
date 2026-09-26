package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.Cache;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class WidgetContainer extends ConstraintWidget {
    public ArrayList<ConstraintWidget> mChildren;

    public WidgetContainer() {
        this.mChildren = new ArrayList<>();
    }

    public ArrayList<ConstraintWidget> v1() {
        return this.mChildren;
    }

    public void a(ConstraintWidget constraintWidget) {
        this.mChildren.add(constraintWidget);
        if (constraintWidget.M() != null) {
            ((WidgetContainer) constraintWidget.M()).x1(constraintWidget);
        }
        constraintWidget.g1(this);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void v0() {
        this.mChildren.clear();
        super.v0();
    }

    public void w1() {
        ArrayList<ConstraintWidget> arrayList = this.mChildren;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i10);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).w1();
            }
        }
    }

    public void x1(ConstraintWidget constraintWidget) {
        this.mChildren.remove(constraintWidget);
        constraintWidget.v0();
    }

    public void y1() {
        this.mChildren.clear();
    }

    public WidgetContainer(int i10, int i11, int i12, int i13) {
        super(i10, i11, i12, i13);
        this.mChildren = new ArrayList<>();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void z0(Cache cache) {
        super.z0(cache);
        int size = this.mChildren.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mChildren.get(i10).z0(cache);
        }
    }

    public WidgetContainer(int i10, int i11) {
        super(i10, i11);
        this.mChildren = new ArrayList<>();
    }
}
