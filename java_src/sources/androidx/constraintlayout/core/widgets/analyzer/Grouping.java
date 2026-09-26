package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes9.dex */
public class Grouping {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_GROUPING = false;

    public static WidgetGroup a(ConstraintWidget constraintWidget, int i10, ArrayList<WidgetGroup> arrayList, WidgetGroup widgetGroup) {
        int iW1;
        int i11 = i10 == 0 ? constraintWidget.horizontalGroup : constraintWidget.verticalGroup;
        if (i11 != -1 && (widgetGroup == null || i11 != widgetGroup.id)) {
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                WidgetGroup widgetGroup2 = arrayList.get(i12);
                if (widgetGroup2.c() == i11) {
                    if (widgetGroup != null) {
                        widgetGroup.g(i10, widgetGroup2);
                        arrayList.remove(widgetGroup);
                    }
                    widgetGroup = widgetGroup2;
                    break;
                }
            }
        } else if (i11 != -1) {
            return widgetGroup;
        }
        if (widgetGroup == null) {
            if ((constraintWidget instanceof HelperWidget) && (iW1 = ((HelperWidget) constraintWidget).w1(i10)) != -1) {
                for (int i13 = 0; i13 < arrayList.size(); i13++) {
                    WidgetGroup widgetGroup3 = arrayList.get(i13);
                    if (widgetGroup3.c() == iW1) {
                        widgetGroup = widgetGroup3;
                        break;
                    }
                }
            }
            if (widgetGroup == null) {
                widgetGroup = new WidgetGroup(i10);
            }
            arrayList.add(widgetGroup);
        }
        if (widgetGroup.a(constraintWidget)) {
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                guideline.v1().c(guideline.w1() == 0 ? 1 : 0, arrayList, widgetGroup);
            }
            if (i10 == 0) {
                constraintWidget.horizontalGroup = widgetGroup.c();
                constraintWidget.mLeft.c(i10, arrayList, widgetGroup);
                constraintWidget.mRight.c(i10, arrayList, widgetGroup);
            } else {
                constraintWidget.verticalGroup = widgetGroup.c();
                constraintWidget.mTop.c(i10, arrayList, widgetGroup);
                constraintWidget.mBaseline.c(i10, arrayList, widgetGroup);
                constraintWidget.mBottom.c(i10, arrayList, widgetGroup);
            }
            constraintWidget.mCenter.c(i10, arrayList, widgetGroup);
        }
        return widgetGroup;
    }

    /* JADX WARN: Code duplicated, block: B:179:0x0353  */
    public static boolean c(ConstraintWidgetContainer constraintWidgetContainer, BasicMeasure.Measurer measurer) {
        WidgetGroup widgetGroup;
        boolean z6;
        boolean z10;
        WidgetGroup widgetGroup2;
        ArrayList<ConstraintWidget> arrayListV1 = constraintWidgetContainer.v1();
        int size = arrayListV1.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget = arrayListV1.get(i11);
            if (!d(constraintWidgetContainer.C(), constraintWidgetContainer.V(), constraintWidget.C(), constraintWidget.V()) || (constraintWidget instanceof Flow)) {
                return false;
            }
        }
        Metrics metrics = constraintWidgetContainer.mMetrics;
        if (metrics != null) {
            metrics.grouping++;
        }
        int i12 = 0;
        ArrayList arrayList = null;
        ArrayList<HelperWidget> arrayList2 = null;
        ArrayList arrayList3 = null;
        ArrayList<HelperWidget> arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        while (i12 < size) {
            ConstraintWidget constraintWidget2 = arrayListV1.get(i12);
            if (!d(constraintWidgetContainer.C(), constraintWidgetContainer.V(), constraintWidget2.C(), constraintWidget2.V())) {
                ConstraintWidgetContainer.X1(i10, constraintWidget2, measurer, constraintWidgetContainer.mMeasure, BasicMeasure.Measure.SELF_DIMENSIONS);
            }
            boolean z11 = constraintWidget2 instanceof Guideline;
            if (z11) {
                Guideline guideline = (Guideline) constraintWidget2;
                if (guideline.w1() == 0) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(guideline);
                }
                if (guideline.w1() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(guideline);
                }
            }
            if (constraintWidget2 instanceof HelperWidget) {
                if (constraintWidget2 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget2;
                    if (barrier.B1() == 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(barrier);
                    }
                    if (barrier.B1() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(barrier);
                    }
                } else {
                    HelperWidget helperWidget = (HelperWidget) constraintWidget2;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(helperWidget);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(helperWidget);
                }
            }
            if (constraintWidget2.mLeft.mTarget == null && constraintWidget2.mRight.mTarget == null && !z11 && !(constraintWidget2 instanceof Barrier)) {
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                arrayList5.add(constraintWidget2);
            }
            if (constraintWidget2.mTop.mTarget == null && constraintWidget2.mBottom.mTarget == null && constraintWidget2.mBaseline.mTarget == null && !z11 && !(constraintWidget2 instanceof Barrier)) {
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList6.add(constraintWidget2);
            }
            i12++;
            i10 = 0;
        }
        ArrayList<WidgetGroup> arrayList7 = new ArrayList<>();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a((Guideline) it.next(), 0, arrayList7, null);
            }
        }
        int i13 = 0;
        WidgetGroup widgetGroup3 = null;
        if (arrayList2 != null) {
            for (HelperWidget helperWidget2 : arrayList2) {
                WidgetGroup widgetGroupA = a(helperWidget2, i13, arrayList7, widgetGroup3);
                helperWidget2.v1(arrayList7, i13, widgetGroupA);
                widgetGroupA.b(arrayList7);
                i13 = 0;
                widgetGroup3 = null;
            }
        }
        ConstraintAnchor constraintAnchorQ = constraintWidgetContainer.q(ConstraintAnchor.Type.LEFT);
        if (constraintAnchorQ.d() != null) {
            Iterator<ConstraintAnchor> it2 = constraintAnchorQ.d().iterator();
            while (it2.hasNext()) {
                a(it2.next().mOwner, 0, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ2 = constraintWidgetContainer.q(ConstraintAnchor.Type.RIGHT);
        if (constraintAnchorQ2.d() != null) {
            Iterator<ConstraintAnchor> it3 = constraintAnchorQ2.d().iterator();
            while (it3.hasNext()) {
                a(it3.next().mOwner, 0, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ3 = constraintWidgetContainer.q(ConstraintAnchor.Type.CENTER);
        if (constraintAnchorQ3.d() != null) {
            Iterator<ConstraintAnchor> it4 = constraintAnchorQ3.d().iterator();
            while (it4.hasNext()) {
                a(it4.next().mOwner, 0, arrayList7, null);
            }
        }
        WidgetGroup widgetGroup4 = null;
        if (arrayList5 != null) {
            Iterator it5 = arrayList5.iterator();
            while (it5.hasNext()) {
                a((ConstraintWidget) it5.next(), 0, arrayList7, null);
            }
        }
        if (arrayList3 != null) {
            Iterator it6 = arrayList3.iterator();
            while (it6.hasNext()) {
                a((Guideline) it6.next(), 1, arrayList7, null);
            }
        }
        int i14 = 1;
        if (arrayList4 != null) {
            for (HelperWidget helperWidget3 : arrayList4) {
                WidgetGroup widgetGroupA2 = a(helperWidget3, i14, arrayList7, widgetGroup4);
                helperWidget3.v1(arrayList7, i14, widgetGroupA2);
                widgetGroupA2.b(arrayList7);
                i14 = 1;
                widgetGroup4 = null;
            }
        }
        ConstraintAnchor constraintAnchorQ4 = constraintWidgetContainer.q(ConstraintAnchor.Type.TOP);
        if (constraintAnchorQ4.d() != null) {
            Iterator<ConstraintAnchor> it7 = constraintAnchorQ4.d().iterator();
            while (it7.hasNext()) {
                a(it7.next().mOwner, 1, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ5 = constraintWidgetContainer.q(ConstraintAnchor.Type.BASELINE);
        if (constraintAnchorQ5.d() != null) {
            Iterator<ConstraintAnchor> it8 = constraintAnchorQ5.d().iterator();
            while (it8.hasNext()) {
                a(it8.next().mOwner, 1, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ6 = constraintWidgetContainer.q(ConstraintAnchor.Type.BOTTOM);
        if (constraintAnchorQ6.d() != null) {
            Iterator<ConstraintAnchor> it9 = constraintAnchorQ6.d().iterator();
            while (it9.hasNext()) {
                a(it9.next().mOwner, 1, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ7 = constraintWidgetContainer.q(ConstraintAnchor.Type.CENTER);
        if (constraintAnchorQ7.d() != null) {
            Iterator<ConstraintAnchor> it10 = constraintAnchorQ7.d().iterator();
            while (it10.hasNext()) {
                a(it10.next().mOwner, 1, arrayList7, null);
            }
        }
        if (arrayList6 != null) {
            Iterator it11 = arrayList6.iterator();
            while (it11.hasNext()) {
                a((ConstraintWidget) it11.next(), 1, arrayList7, null);
            }
        }
        for (int i15 = 0; i15 < size; i15++) {
            ConstraintWidget constraintWidget3 = arrayListV1.get(i15);
            if (constraintWidget3.u0()) {
                WidgetGroup widgetGroupB = b(arrayList7, constraintWidget3.horizontalGroup);
                WidgetGroup widgetGroupB2 = b(arrayList7, constraintWidget3.verticalGroup);
                if (widgetGroupB != null && widgetGroupB2 != null) {
                    widgetGroupB.g(0, widgetGroupB2);
                    widgetGroupB2.i(2);
                    arrayList7.remove(widgetGroupB);
                }
            }
        }
        if (arrayList7.size() <= 1) {
            return false;
        }
        if (constraintWidgetContainer.C() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            widgetGroup = null;
            int i16 = 0;
            for (WidgetGroup widgetGroup5 : arrayList7) {
                if (widgetGroup5.d() != 1) {
                    widgetGroup5.h(false);
                    int iF = widgetGroup5.f(constraintWidgetContainer.P1(), 0);
                    if (iF > i16) {
                        widgetGroup = widgetGroup5;
                        i16 = iF;
                    }
                }
            }
            if (widgetGroup != null) {
                constraintWidgetContainer.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.o1(i16);
                widgetGroup.h(true);
            } else {
                widgetGroup = null;
            }
        } else {
            widgetGroup = null;
        }
        if (constraintWidgetContainer.V() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            WidgetGroup widgetGroup6 = null;
            int i17 = 0;
            for (WidgetGroup widgetGroup7 : arrayList7) {
                if (widgetGroup7.d() != 0) {
                    widgetGroup7.h(false);
                    int iF2 = widgetGroup7.f(constraintWidgetContainer.P1(), 1);
                    if (iF2 > i17) {
                        widgetGroup6 = widgetGroup7;
                        i17 = iF2;
                    }
                }
            }
            z6 = false;
            z10 = true;
            if (widgetGroup6 != null) {
                constraintWidgetContainer.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.P0(i17);
                widgetGroup6.h(true);
                widgetGroup2 = widgetGroup6;
            }
            return (widgetGroup == null || widgetGroup2 != null) ? z10 : z6;
        }
        z6 = false;
        z10 = true;
        widgetGroup2 = null;
        if (widgetGroup == null) {
        }
    }

    public static boolean d(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.FIXED;
        return (dimensionBehaviour3 == dimensionBehaviour7 || dimensionBehaviour3 == (dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour != dimensionBehaviour6)) || (dimensionBehaviour4 == dimensionBehaviour7 || dimensionBehaviour4 == (dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour2 != dimensionBehaviour5));
    }

    private static WidgetGroup b(ArrayList<WidgetGroup> arrayList, int i10) {
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            WidgetGroup widgetGroup = arrayList.get(i11);
            if (i10 == widgetGroup.id) {
                return widgetGroup;
            }
        }
        return null;
    }
}
