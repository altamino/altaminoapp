package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ChainRun extends WidgetRun {
    private int chainStyle;
    ArrayList<WidgetRun> widgets;

    private ConstraintWidget r() {
        for (int i10 = 0; i10 < this.widgets.size(); i10++) {
            WidgetRun widgetRun = this.widgets.get(i10);
            if (widgetRun.widget.X() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        for (int i10 = 0; i10 < this.widgets.size(); i10++) {
            this.widgets.get(i10).e();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.runGroup = null;
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
    }

    private void q() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.widget;
        ConstraintWidget constraintWidgetN = constraintWidget2.N(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = constraintWidgetN;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                constraintWidgetN = constraintWidget2.N(this.orientation);
            }
        }
        this.widget = constraintWidget;
        this.widgets.add(constraintWidget.P(this.orientation));
        ConstraintWidget constraintWidgetL = constraintWidget.L(this.orientation);
        while (constraintWidgetL != null) {
            this.widgets.add(constraintWidgetL.P(this.orientation));
            constraintWidgetL = constraintWidgetL.L(this.orientation);
        }
        for (WidgetRun widgetRun : this.widgets) {
            int i10 = this.orientation;
            if (i10 == 0) {
                widgetRun.widget.horizontalChainRun = this;
            } else if (i10 == 1) {
                widgetRun.widget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.widget.M()).U1() && this.widgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.widgets;
            this.widget = arrayList.get(arrayList.size() - 1).widget;
        }
        this.chainStyle = this.orientation == 0 ? this.widget.B() : this.widget.U();
    }

    private ConstraintWidget s() {
        for (int size = this.widgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.widgets.get(size);
            if (widgetRun.widget.X() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:293:0x00f4 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:90:0x0153  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void a(Dependency dependency) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float f;
        boolean z6;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        float f6;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget constraintWidgetM = this.widget.M();
            boolean zU1 = constraintWidgetM instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) constraintWidgetM).U1() : false;
            int i23 = this.end.value - this.start.value;
            int size = this.widgets.size();
            int i24 = 0;
            while (true) {
                i10 = -1;
                i11 = 8;
                if (i24 >= size) {
                    i24 = -1;
                    break;
                } else if (this.widgets.get(i24).widget.X() != 8) {
                    break;
                } else {
                    i24++;
                }
            }
            int i25 = size - 1;
            for (int i26 = i25; i26 >= 0; i26--) {
                if (this.widgets.get(i26).widget.X() != 8) {
                    i10 = i26;
                    break;
                }
            }
            int i27 = 0;
            while (true) {
                if (i27 >= 2) {
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                    f = 0.0f;
                    break;
                }
                int i28 = 0;
                i13 = 0;
                i14 = 0;
                int i29 = 0;
                f = 0.0f;
                while (i28 < size) {
                    WidgetRun widgetRun = this.widgets.get(i28);
                    if (widgetRun.widget.X() != i11) {
                        i29++;
                        if (i28 > 0 && i28 >= i24) {
                            i13 += widgetRun.start.margin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.dimension;
                        int i30 = dimensionDependency.value;
                        boolean z10 = widgetRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z10) {
                            int i31 = this.orientation;
                            if (i31 == 0 && !widgetRun.widget.horizontalRun.dimension.resolved) {
                                return;
                            }
                            if (i31 == 1 && !widgetRun.widget.verticalRun.dimension.resolved) {
                                return;
                            } else {
                                i21 = i30;
                            }
                        } else {
                            i21 = i30;
                            if (widgetRun.matchConstraintsType == 1 && i27 == 0) {
                                i22 = dimensionDependency.wrapValue;
                                i14++;
                            } else {
                                if (dimensionDependency.resolved) {
                                    i22 = i21;
                                }
                                if (z10) {
                                    i13 += i22;
                                } else {
                                    i14++;
                                    f6 = widgetRun.widget.mWeight[this.orientation];
                                    if (f6 >= 0.0f) {
                                        f += f6;
                                    }
                                }
                                if (i28 >= i25 && i28 < i10) {
                                    i13 += -widgetRun.end.margin;
                                }
                            }
                            z10 = true;
                            if (z10) {
                                i14++;
                                f6 = widgetRun.widget.mWeight[this.orientation];
                                if (f6 >= 0.0f) {
                                    f += f6;
                                }
                            } else {
                                i13 += i22;
                            }
                            if (i28 >= i25) {
                            }
                        }
                        i22 = i21;
                        if (z10) {
                            i14++;
                            f6 = widgetRun.widget.mWeight[this.orientation];
                            if (f6 >= 0.0f) {
                                f += f6;
                            }
                        } else {
                            i13 += i22;
                        }
                        if (i28 >= i25) {
                        }
                    }
                    i28++;
                    i11 = 8;
                }
                if (i13 < i23 || i14 == 0) {
                    i12 = i29;
                    break;
                } else {
                    i27++;
                    i11 = 8;
                }
            }
            int i32 = this.start.value;
            if (zU1) {
                i32 = this.end.value;
            }
            if (i13 > i23) {
                i32 = zU1 ? i32 + ((int) (((i13 - i23) / 2.0f) + 0.5f)) : i32 - ((int) (((i13 - i23) / 2.0f) + 0.5f));
            }
            if (i14 > 0) {
                float f7 = i23 - i13;
                int i33 = (int) ((f7 / i14) + 0.5f);
                int i34 = 0;
                int i35 = 0;
                while (i34 < size) {
                    WidgetRun widgetRun2 = this.widgets.get(i34);
                    int i36 = i33;
                    int i37 = i13;
                    if (widgetRun2.widget.X() != 8 && widgetRun2.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.dimension;
                        if (dimensionDependency2.resolved) {
                            zU1 = zU1;
                            i32 = i32;
                            f7 = f7;
                        } else {
                            int i38 = f > 0.0f ? (int) (((widgetRun2.widget.mWeight[this.orientation] * f7) / f) + 0.5f) : i36;
                            if (this.orientation == 0) {
                                ConstraintWidget constraintWidget = widgetRun2.widget;
                                i20 = constraintWidget.mMatchConstraintMaxWidth;
                                i19 = constraintWidget.mMatchConstraintMinWidth;
                            } else {
                                ConstraintWidget constraintWidget2 = widgetRun2.widget;
                                int i39 = constraintWidget2.mMatchConstraintMaxHeight;
                                i19 = constraintWidget2.mMatchConstraintMinHeight;
                                i20 = i39;
                            }
                            int iMax = Math.max(i19, widgetRun2.matchConstraintsType == 1 ? Math.min(i38, dimensionDependency2.wrapValue) : i38);
                            if (i20 > 0) {
                                iMax = Math.min(i20, iMax);
                            }
                            if (iMax != i38) {
                                i35++;
                                i38 = iMax;
                            }
                            widgetRun2.dimension.d(i38);
                        }
                    } else {
                        zU1 = zU1;
                        i32 = i32;
                        f7 = f7;
                    }
                    i34++;
                    i33 = i36;
                    i13 = i37;
                    i32 = i32;
                    f7 = f7;
                    zU1 = zU1;
                    i12 = i12;
                }
                z6 = zU1;
                i15 = i12;
                i16 = i32;
                int i40 = i13;
                if (i35 > 0) {
                    i14 -= i35;
                    i13 = 0;
                    for (int i41 = 0; i41 < size; i41++) {
                        WidgetRun widgetRun3 = this.widgets.get(i41);
                        if (widgetRun3.widget.X() != 8) {
                            if (i41 > 0 && i41 >= i24) {
                                i13 += widgetRun3.start.margin;
                            }
                            i13 += widgetRun3.dimension.value;
                            if (i41 < i25 && i41 < i10) {
                                i13 += -widgetRun3.end.margin;
                            }
                        }
                    }
                } else {
                    i13 = i40;
                }
                i18 = 2;
                if (this.chainStyle == 2 && i35 == 0) {
                    i17 = 0;
                    this.chainStyle = 0;
                } else {
                    i17 = 0;
                }
            } else {
                z6 = zU1;
                i15 = i12;
                i16 = i32;
                i17 = 0;
                i18 = 2;
            }
            if (i13 > i23) {
                this.chainStyle = i18;
            }
            if (i15 > 0 && i14 == 0 && i24 == i10) {
                this.chainStyle = i18;
            }
            int i42 = this.chainStyle;
            if (i42 == 1) {
                int i43 = i15;
                int i44 = i43 > 1 ? (i23 - i13) / (i43 - 1) : i43 == 1 ? (i23 - i13) / 2 : i17;
                if (i14 > 0) {
                    i44 = i17;
                }
                int i45 = i16;
                for (int i46 = i17; i46 < size; i46++) {
                    WidgetRun widgetRun4 = this.widgets.get(z6 ? size - (i46 + 1) : i46);
                    if (widgetRun4.widget.X() == 8) {
                        widgetRun4.start.d(i45);
                        widgetRun4.end.d(i45);
                    } else {
                        if (i46 > 0) {
                            i45 = z6 ? i45 - i44 : i45 + i44;
                        }
                        if (i46 > 0 && i46 >= i24) {
                            i45 = z6 ? i45 - widgetRun4.start.margin : i45 + widgetRun4.start.margin;
                        }
                        if (z6) {
                            widgetRun4.end.d(i45);
                        } else {
                            widgetRun4.start.d(i45);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.dimension;
                        int i47 = dimensionDependency3.value;
                        if (widgetRun4.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i47 = dimensionDependency3.wrapValue;
                        }
                        i45 = z6 ? i45 - i47 : i45 + i47;
                        if (z6) {
                            widgetRun4.start.d(i45);
                        } else {
                            widgetRun4.end.d(i45);
                        }
                        widgetRun4.resolved = true;
                        if (i46 < i25 && i46 < i10) {
                            i45 = z6 ? i45 - (-widgetRun4.end.margin) : i45 + (-widgetRun4.end.margin);
                        }
                    }
                }
                return;
            }
            int i48 = i15;
            if (i42 == 0) {
                int i49 = (i23 - i13) / (i48 + 1);
                if (i14 > 0) {
                    i49 = i17;
                }
                int i50 = i16;
                for (int i51 = i17; i51 < size; i51++) {
                    WidgetRun widgetRun5 = this.widgets.get(z6 ? size - (i51 + 1) : i51);
                    if (widgetRun5.widget.X() == 8) {
                        widgetRun5.start.d(i50);
                        widgetRun5.end.d(i50);
                    } else {
                        int i52 = z6 ? i50 - i49 : i50 + i49;
                        if (i51 > 0 && i51 >= i24) {
                            i52 = z6 ? i52 - widgetRun5.start.margin : i52 + widgetRun5.start.margin;
                        }
                        if (z6) {
                            widgetRun5.end.d(i52);
                        } else {
                            widgetRun5.start.d(i52);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.dimension;
                        int iMin = dimensionDependency4.value;
                        if (widgetRun5.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, dimensionDependency4.wrapValue);
                        }
                        i50 = z6 ? i52 - iMin : i52 + iMin;
                        if (z6) {
                            widgetRun5.start.d(i50);
                        } else {
                            widgetRun5.end.d(i50);
                        }
                        if (i51 < i25 && i51 < i10) {
                            i50 = z6 ? i50 - (-widgetRun5.end.margin) : i50 + (-widgetRun5.end.margin);
                        }
                    }
                }
                return;
            }
            if (i42 == 2) {
                float fA = this.orientation == 0 ? this.widget.A() : this.widget.T();
                if (z6) {
                    fA = 1.0f - fA;
                }
                int i53 = (int) (((i23 - i13) * fA) + 0.5f);
                if (i53 < 0 || i14 > 0) {
                    i53 = i17;
                }
                int i54 = z6 ? i16 - i53 : i16 + i53;
                for (int i55 = i17; i55 < size; i55++) {
                    WidgetRun widgetRun6 = this.widgets.get(z6 ? size - (i55 + 1) : i55);
                    if (widgetRun6.widget.X() == 8) {
                        widgetRun6.start.d(i54);
                        widgetRun6.end.d(i54);
                    } else {
                        if (i55 > 0 && i55 >= i24) {
                            i54 = z6 ? i54 - widgetRun6.start.margin : i54 + widgetRun6.start.margin;
                        }
                        if (z6) {
                            widgetRun6.end.d(i54);
                        } else {
                            widgetRun6.start.d(i54);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.dimension;
                        int i56 = dimensionDependency5.value;
                        if (widgetRun6.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i56 = dimensionDependency5.wrapValue;
                        }
                        i54 = z6 ? i54 - i56 : i54 + i56;
                        if (z6) {
                            widgetRun6.start.d(i54);
                        } else {
                            widgetRun6.end.d(i54);
                        }
                        if (i55 < i25 && i55 < i10) {
                            i54 = z6 ? i54 - (-widgetRun6.end.margin) : i54 + (-widgetRun6.end.margin);
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
        int size = this.widgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.widgets.get(0).widget;
        ConstraintWidget constraintWidget2 = this.widgets.get(size - 1).widget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode dependencyNodeI = i(constraintAnchor, 0);
            int iF = constraintAnchor.f();
            ConstraintWidget constraintWidgetR = r();
            if (constraintWidgetR != null) {
                iF = constraintWidgetR.mLeft.f();
            }
            if (dependencyNodeI != null) {
                b(this.start, dependencyNodeI, iF);
            }
            DependencyNode dependencyNodeI2 = i(constraintAnchor2, 0);
            int iF2 = constraintAnchor2.f();
            ConstraintWidget constraintWidgetS = s();
            if (constraintWidgetS != null) {
                iF2 = constraintWidgetS.mRight.f();
            }
            if (dependencyNodeI2 != null) {
                b(this.end, dependencyNodeI2, -iF2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode dependencyNodeI3 = i(constraintAnchor3, 1);
            int iF3 = constraintAnchor3.f();
            ConstraintWidget constraintWidgetR2 = r();
            if (constraintWidgetR2 != null) {
                iF3 = constraintWidgetR2.mTop.f();
            }
            if (dependencyNodeI3 != null) {
                b(this.start, dependencyNodeI3, iF3);
            }
            DependencyNode dependencyNodeI4 = i(constraintAnchor4, 1);
            int iF4 = constraintAnchor4.f();
            ConstraintWidget constraintWidgetS2 = s();
            if (constraintWidgetS2 != null) {
                iF4 = constraintWidgetS2.mBottom.f();
            }
            if (dependencyNodeI4 != null) {
                b(this.end, dependencyNodeI4, -iF4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long j() {
        int size = this.widgets.size();
        long j6 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            WidgetRun widgetRun = this.widgets.get(i10);
            j6 = j6 + ((long) widgetRun.start.margin) + widgetRun.j() + ((long) widgetRun.end.margin);
        }
        return j6;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        int size = this.widgets.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!this.widgets.get(i10).m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.widgets) {
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }

    public ChainRun(ConstraintWidget constraintWidget, int i10) {
        super(constraintWidget);
        this.widgets = new ArrayList<>();
        this.orientation = i10;
        q();
    }
}
