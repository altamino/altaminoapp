package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes11.dex */
public class HelperWidget extends ConstraintWidget implements Helper {
    public ConstraintWidget[] mWidgets = new ConstraintWidget[4];
    public int mWidgetsCount = 0;

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void b() {
        this.mWidgetsCount = 0;
        Arrays.fill(this.mWidgets, (Object) null);
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void c(ConstraintWidgetContainer constraintWidgetContainer) {
    }

    public void v1(ArrayList<WidgetGroup> arrayList, int i10, WidgetGroup widgetGroup) {
        for (int i11 = 0; i11 < this.mWidgetsCount; i11++) {
            widgetGroup.a(this.mWidgets[i11]);
        }
        for (int i12 = 0; i12 < this.mWidgetsCount; i12++) {
            Grouping.a(this.mWidgets[i12], i10, arrayList, widgetGroup);
        }
    }

    public int w1(int i10) {
        int i11;
        int i12;
        for (int i13 = 0; i13 < this.mWidgetsCount; i13++) {
            ConstraintWidget constraintWidget = this.mWidgets[i13];
            if (i10 == 0 && (i12 = constraintWidget.horizontalGroup) != -1) {
                return i12;
            }
            if (i10 == 1 && (i11 = constraintWidget.verticalGroup) != -1) {
                return i11;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void a(ConstraintWidget constraintWidget) {
        if (constraintWidget == this || constraintWidget == null) {
            return;
        }
        int i10 = this.mWidgetsCount + 1;
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        if (i10 > constraintWidgetArr.length) {
            this.mWidgets = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.mWidgets;
        int i11 = this.mWidgetsCount;
        constraintWidgetArr2[i11] = constraintWidget;
        this.mWidgetsCount = i11 + 1;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void n(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.n(constraintWidget, map);
        HelperWidget helperWidget = (HelperWidget) constraintWidget;
        this.mWidgetsCount = 0;
        int i10 = helperWidget.mWidgetsCount;
        for (int i11 = 0; i11 < i10; i11++) {
            a(map.get(helperWidget.mWidgets[i11]));
        }
    }
}
