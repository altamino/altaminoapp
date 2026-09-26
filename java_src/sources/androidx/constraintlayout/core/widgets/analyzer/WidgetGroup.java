package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class WidgetGroup {
    private static final boolean DEBUG = false;
    static int count;
    int id;
    int orientation;
    ArrayList<ConstraintWidget> widgets = new ArrayList<>();
    boolean authoritative = false;
    ArrayList<MeasureResult> results = null;
    private int moveTo = -1;

    class MeasureResult {
        int baseline;
        int bottom;
        int left;
        int orientation;
        int right;
        int top;
        WeakReference<ConstraintWidget> widgetRef;

        public MeasureResult(ConstraintWidget constraintWidget, LinearSystem linearSystem, int i10) {
            this.widgetRef = new WeakReference<>(constraintWidget);
            this.left = linearSystem.y(constraintWidget.mLeft);
            this.top = linearSystem.y(constraintWidget.mTop);
            this.right = linearSystem.y(constraintWidget.mRight);
            this.bottom = linearSystem.y(constraintWidget.mBottom);
            this.baseline = linearSystem.y(constraintWidget.mBaseline);
            this.orientation = i10;
        }
    }

    private String e() {
        int i10 = this.orientation;
        if (i10 == 0) {
            return "Horizontal";
        }
        if (i10 == 1) {
            return "Vertical";
        }
        return i10 == 2 ? "Both" : "Unknown";
    }

    private int j(LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i10) {
        int iY;
        int iY2;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) arrayList.get(0).M();
        linearSystem.E();
        constraintWidgetContainer.g(linearSystem, false);
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList.get(i11).g(linearSystem, false);
        }
        if (i10 == 0 && constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.b(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i10 == 1 && constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.b(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.A();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.results = new ArrayList<>();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            this.results.add(new MeasureResult(arrayList.get(i12), linearSystem, i10));
        }
        if (i10 == 0) {
            iY = linearSystem.y(constraintWidgetContainer.mLeft);
            iY2 = linearSystem.y(constraintWidgetContainer.mRight);
            linearSystem.E();
        } else {
            iY = linearSystem.y(constraintWidgetContainer.mTop);
            iY2 = linearSystem.y(constraintWidgetContainer.mBottom);
            linearSystem.E();
        }
        return iY2 - iY;
    }

    public int c() {
        return this.id;
    }

    public int d() {
        return this.orientation;
    }

    public void h(boolean z6) {
        this.authoritative = z6;
    }

    public void i(int i10) {
        this.orientation = i10;
    }

    public boolean a(ConstraintWidget constraintWidget) {
        if (this.widgets.contains(constraintWidget)) {
            return false;
        }
        this.widgets.add(constraintWidget);
        return true;
    }

    public void b(ArrayList<WidgetGroup> arrayList) {
        int size = this.widgets.size();
        if (this.moveTo != -1 && size > 0) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                WidgetGroup widgetGroup = arrayList.get(i10);
                if (this.moveTo == widgetGroup.id) {
                    g(this.orientation, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public int f(LinearSystem linearSystem, int i10) {
        if (this.widgets.size() == 0) {
            return 0;
        }
        return j(linearSystem, this.widgets, i10);
    }

    public void g(int i10, WidgetGroup widgetGroup) {
        for (ConstraintWidget constraintWidget : this.widgets) {
            widgetGroup.a(constraintWidget);
            if (i10 == 0) {
                constraintWidget.horizontalGroup = widgetGroup.c();
            } else {
                constraintWidget.verticalGroup = widgetGroup.c();
            }
        }
        this.moveTo = widgetGroup.id;
    }

    public String toString() {
        String str = e() + " [" + this.id + "] <";
        Iterator<ConstraintWidget> it = this.widgets.iterator();
        while (it.hasNext()) {
            str = str + " " + it.next().v();
        }
        return str + " >";
    }

    public WidgetGroup(int i10) {
        int i11 = count;
        count = i11 + 1;
        this.id = i11;
        this.orientation = i10;
    }
}
