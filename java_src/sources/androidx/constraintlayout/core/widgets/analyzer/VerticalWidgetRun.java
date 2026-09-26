package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;

/* JADX INFO: loaded from: classes9.dex */
public class VerticalWidgetRun extends WidgetRun {
    public DependencyNode baseline;
    DimensionDependency baselineDimension;

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        ConstraintWidget constraintWidgetM;
        ConstraintWidget constraintWidgetM2;
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget.measured) {
            this.dimension.d(constraintWidget.z());
        }
        if (!this.dimension.resolved) {
            this.dimensionBehavior = this.widget.V();
            if (this.widget.b0()) {
                this.baselineDimension = new BaselineDimensionDependency(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.dimensionBehavior;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidgetM2 = this.widget.M()) != null && constraintWidgetM2.V() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int iZ = (constraintWidgetM2.z() - this.widget.mTop.f()) - this.widget.mBottom.f();
                    b(this.start, constraintWidgetM2.verticalRun.start, this.widget.mTop.f());
                    b(this.end, constraintWidgetM2.verticalRun.end, -this.widget.mBottom.f());
                    this.dimension.d(iZ);
                    return;
                }
                if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.dimension.d(this.widget.z());
                }
            }
        } else if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidgetM = this.widget.M()) != null && constraintWidgetM.V() == ConstraintWidget.DimensionBehaviour.FIXED) {
            b(this.start, constraintWidgetM.verticalRun.start, this.widget.mTop.f());
            b(this.end, constraintWidgetM.verticalRun.end, -this.widget.mBottom.f());
            return;
        }
        DimensionDependency dimensionDependency = this.dimension;
        boolean z6 = dimensionDependency.resolved;
        if (z6) {
            ConstraintWidget constraintWidget2 = this.widget;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[2];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                if (constraintAnchor2 != null && constraintAnchorArr[3].mTarget != null) {
                    if (constraintWidget2.m0()) {
                        this.start.margin = this.widget.mListAnchors[2].f();
                        this.end.margin = -this.widget.mListAnchors[3].f();
                    } else {
                        DependencyNode dependencyNodeH = h(this.widget.mListAnchors[2]);
                        if (dependencyNodeH != null) {
                            b(this.start, dependencyNodeH, this.widget.mListAnchors[2].f());
                        }
                        DependencyNode dependencyNodeH2 = h(this.widget.mListAnchors[3]);
                        if (dependencyNodeH2 != null) {
                            b(this.end, dependencyNodeH2, -this.widget.mListAnchors[3].f());
                        }
                        this.start.delegateToWidgetRun = true;
                        this.end.delegateToWidgetRun = true;
                    }
                    if (this.widget.b0()) {
                        b(this.baseline, this.start, this.widget.r());
                        return;
                    }
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode dependencyNodeH3 = h(constraintAnchor);
                    if (dependencyNodeH3 != null) {
                        b(this.start, dependencyNodeH3, this.widget.mListAnchors[2].f());
                        b(this.end, this.start, this.dimension.value);
                        if (this.widget.b0()) {
                            b(this.baseline, this.start, this.widget.r());
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[3];
                if (constraintAnchor3.mTarget != null) {
                    DependencyNode dependencyNodeH4 = h(constraintAnchor3);
                    if (dependencyNodeH4 != null) {
                        b(this.end, dependencyNodeH4, -this.widget.mListAnchors[3].f());
                        b(this.start, this.end, -this.dimension.value);
                    }
                    if (this.widget.b0()) {
                        b(this.baseline, this.start, this.widget.r());
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor4 = constraintAnchorArr[4];
                if (constraintAnchor4.mTarget != null) {
                    DependencyNode dependencyNodeH5 = h(constraintAnchor4);
                    if (dependencyNodeH5 != null) {
                        b(this.baseline, dependencyNodeH5, 0);
                        b(this.start, this.baseline, -this.widget.r());
                        b(this.end, this.start, this.dimension.value);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof Helper) || constraintWidget2.M() == null || this.widget.q(ConstraintAnchor.Type.CENTER).mTarget != null) {
                    return;
                }
                b(this.start, this.widget.M().verticalRun.start, this.widget.a0());
                b(this.end, this.start, this.dimension.value);
                if (this.widget.b0()) {
                    b(this.baseline, this.start, this.widget.r());
                    return;
                }
                return;
            }
        }
        if (z6 || this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            dimensionDependency.b(this);
        } else {
            ConstraintWidget constraintWidget3 = this.widget;
            int i10 = constraintWidget3.mMatchConstraintDefaultHeight;
            if (i10 == 2) {
                ConstraintWidget constraintWidgetM3 = constraintWidget3.M();
                if (constraintWidgetM3 != null) {
                    DimensionDependency dimensionDependency2 = constraintWidgetM3.verticalRun.dimension;
                    this.dimension.targets.add(dimensionDependency2);
                    dimensionDependency2.dependencies.add(this.dimension);
                    DimensionDependency dimensionDependency3 = this.dimension;
                    dimensionDependency3.delegateToWidgetRun = true;
                    dimensionDependency3.dependencies.add(this.start);
                    this.dimension.dependencies.add(this.end);
                }
            } else if (i10 == 3 && !constraintWidget3.m0()) {
                ConstraintWidget constraintWidget4 = this.widget;
                if (constraintWidget4.mMatchConstraintDefaultWidth != 3) {
                    DimensionDependency dimensionDependency4 = constraintWidget4.horizontalRun.dimension;
                    this.dimension.targets.add(dimensionDependency4);
                    dimensionDependency4.dependencies.add(this.dimension);
                    DimensionDependency dimensionDependency5 = this.dimension;
                    dimensionDependency5.delegateToWidgetRun = true;
                    dimensionDependency5.dependencies.add(this.start);
                    this.dimension.dependencies.add(this.end);
                }
            }
        }
        ConstraintWidget constraintWidget5 = this.widget;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget5.mListAnchors;
        ConstraintAnchor constraintAnchor5 = constraintAnchorArr2[2];
        ConstraintAnchor constraintAnchor6 = constraintAnchor5.mTarget;
        if (constraintAnchor6 != null && constraintAnchorArr2[3].mTarget != null) {
            if (constraintWidget5.m0()) {
                this.start.margin = this.widget.mListAnchors[2].f();
                this.end.margin = -this.widget.mListAnchors[3].f();
            } else {
                DependencyNode dependencyNodeH6 = h(this.widget.mListAnchors[2]);
                DependencyNode dependencyNodeH7 = h(this.widget.mListAnchors[3]);
                if (dependencyNodeH6 != null) {
                    dependencyNodeH6.b(this);
                }
                if (dependencyNodeH7 != null) {
                    dependencyNodeH7.b(this);
                }
                this.mRunType = WidgetRun.RunType.CENTER;
            }
            if (this.widget.b0()) {
                c(this.baseline, this.start, 1, this.baselineDimension);
            }
        } else if (constraintAnchor6 != null) {
            DependencyNode dependencyNodeH8 = h(constraintAnchor5);
            if (dependencyNodeH8 != null) {
                b(this.start, dependencyNodeH8, this.widget.mListAnchors[2].f());
                c(this.end, this.start, 1, this.dimension);
                if (this.widget.b0()) {
                    c(this.baseline, this.start, 1, this.baselineDimension);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.dimensionBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3 && this.widget.x() > 0.0f) {
                    HorizontalWidgetRun horizontalWidgetRun = this.widget.horizontalRun;
                    if (horizontalWidgetRun.dimensionBehavior == dimensionBehaviour3) {
                        horizontalWidgetRun.dimension.dependencies.add(this.dimension);
                        this.dimension.targets.add(this.widget.horizontalRun.dimension);
                        this.dimension.updateDelegate = this;
                    }
                }
            }
        } else {
            ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[3];
            if (constraintAnchor7.mTarget != null) {
                DependencyNode dependencyNodeH9 = h(constraintAnchor7);
                if (dependencyNodeH9 != null) {
                    b(this.end, dependencyNodeH9, -this.widget.mListAnchors[3].f());
                    c(this.start, this.end, -1, this.dimension);
                    if (this.widget.b0()) {
                        c(this.baseline, this.start, 1, this.baselineDimension);
                    }
                }
            } else {
                ConstraintAnchor constraintAnchor8 = constraintAnchorArr2[4];
                if (constraintAnchor8.mTarget != null) {
                    DependencyNode dependencyNodeH10 = h(constraintAnchor8);
                    if (dependencyNodeH10 != null) {
                        b(this.baseline, dependencyNodeH10, 0);
                        c(this.start, this.baseline, -1, this.baselineDimension);
                        c(this.end, this.start, 1, this.dimension);
                    }
                } else if (!(constraintWidget5 instanceof Helper) && constraintWidget5.M() != null) {
                    b(this.start, this.widget.M().verticalRun.start, this.widget.a0());
                    c(this.end, this.start, 1, this.dimension);
                    if (this.widget.b0()) {
                        c(this.baseline, this.start, 1, this.baselineDimension);
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.dimensionBehavior;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour4 == dimensionBehaviour5 && this.widget.x() > 0.0f) {
                        HorizontalWidgetRun horizontalWidgetRun2 = this.widget.horizontalRun;
                        if (horizontalWidgetRun2.dimensionBehavior == dimensionBehaviour5) {
                            horizontalWidgetRun2.dimension.dependencies.add(this.dimension);
                            this.dimension.targets.add(this.widget.horizontalRun.dimension);
                            this.dimension.updateDelegate = this;
                        }
                    }
                }
            }
        }
        if (this.dimension.targets.size() == 0) {
            this.dimension.readyToSolve = true;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.runGroup = null;
        this.start.c();
        this.end.c();
        this.baseline.c();
        this.dimension.c();
        this.resolved = false;
    }

    void q() {
        this.resolved = false;
        this.start.c();
        this.start.resolved = false;
        this.end.c();
        this.end.resolved = false;
        this.baseline.c();
        this.baseline.resolved = false;
        this.dimension.resolved = false;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void a(Dependency dependency) {
        float f;
        float fX;
        float fX2;
        int i10;
        int i11 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[this.mRunType.ordinal()];
        if (i11 == 1) {
            p(dependency);
        } else if (i11 == 2) {
            o(dependency);
        } else if (i11 == 3) {
            ConstraintWidget constraintWidget = this.widget;
            n(dependency, constraintWidget.mTop, constraintWidget.mBottom, 1);
            return;
        }
        DimensionDependency dimensionDependency = this.dimension;
        if (dimensionDependency.readyToSolve && !dimensionDependency.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.widget;
            int i12 = constraintWidget2.mMatchConstraintDefaultHeight;
            if (i12 == 2) {
                ConstraintWidget constraintWidgetM = constraintWidget2.M();
                if (constraintWidgetM != null) {
                    DimensionDependency dimensionDependency2 = constraintWidgetM.verticalRun.dimension;
                    if (dimensionDependency2.resolved) {
                        this.dimension.d((int) ((dimensionDependency2.value * this.widget.mMatchConstraintPercentHeight) + 0.5f));
                    }
                }
            } else if (i12 == 3 && constraintWidget2.horizontalRun.dimension.resolved) {
                int iY = constraintWidget2.y();
                if (iY != -1) {
                    if (iY == 0) {
                        ConstraintWidget constraintWidget3 = this.widget;
                        fX2 = constraintWidget3.horizontalRun.dimension.value * constraintWidget3.x();
                        i10 = (int) (fX2 + 0.5f);
                    } else if (iY != 1) {
                        i10 = 0;
                    } else {
                        ConstraintWidget constraintWidget4 = this.widget;
                        f = constraintWidget4.horizontalRun.dimension.value;
                        fX = constraintWidget4.x();
                    }
                    this.dimension.d(i10);
                } else {
                    ConstraintWidget constraintWidget5 = this.widget;
                    f = constraintWidget5.horizontalRun.dimension.value;
                    fX = constraintWidget5.x();
                }
                fX2 = f / fX;
                i10 = (int) (fX2 + 0.5f);
                this.dimension.d(i10);
            }
        }
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.readyToSolve) {
            DependencyNode dependencyNode2 = this.end;
            if (dependencyNode2.readyToSolve) {
                if (dependencyNode.resolved && dependencyNode2.resolved && this.dimension.resolved) {
                    return;
                }
                if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.widget;
                    if (constraintWidget6.mMatchConstraintDefaultWidth == 0 && !constraintWidget6.m0()) {
                        DependencyNode dependencyNode3 = this.start.targets.get(0);
                        DependencyNode dependencyNode4 = this.end.targets.get(0);
                        int i13 = dependencyNode3.value;
                        DependencyNode dependencyNode5 = this.start;
                        int i14 = i13 + dependencyNode5.margin;
                        int i15 = dependencyNode4.value + this.end.margin;
                        dependencyNode5.d(i14);
                        this.end.d(i15);
                        this.dimension.d(i15 - i14);
                        return;
                    }
                }
                if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.matchConstraintsType == 1 && this.start.targets.size() > 0 && this.end.targets.size() > 0) {
                    DependencyNode dependencyNode6 = this.start.targets.get(0);
                    int i16 = (this.end.targets.get(0).value + this.end.margin) - (dependencyNode6.value + this.start.margin);
                    DimensionDependency dimensionDependency3 = this.dimension;
                    int i17 = dimensionDependency3.wrapValue;
                    if (i16 < i17) {
                        dimensionDependency3.d(i16);
                    } else {
                        dimensionDependency3.d(i17);
                    }
                }
                if (this.dimension.resolved && this.start.targets.size() > 0 && this.end.targets.size() > 0) {
                    DependencyNode dependencyNode7 = this.start.targets.get(0);
                    DependencyNode dependencyNode8 = this.end.targets.get(0);
                    int i18 = dependencyNode7.value + this.start.margin;
                    int i19 = dependencyNode8.value + this.end.margin;
                    float fT = this.widget.T();
                    if (dependencyNode7 == dependencyNode8) {
                        i18 = dependencyNode7.value;
                        i19 = dependencyNode8.value;
                        fT = 0.5f;
                    }
                    this.start.d((int) (i18 + 0.5f + (((i19 - i18) - this.dimension.value) * fT)));
                    this.end.d(this.start.value + this.dimension.value);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.widget.r1(dependencyNode.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.widget.mMatchConstraintDefaultHeight == 0;
    }

    public String toString() {
        return "VerticalRun " + this.widget.v();
    }

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.baseline = dependencyNode;
        this.baselineDimension = null;
        this.start.type = DependencyNode.Type.TOP;
        this.end.type = DependencyNode.Type.BOTTOM;
        dependencyNode.type = DependencyNode.Type.BASELINE;
        this.orientation = 1;
    }
}
