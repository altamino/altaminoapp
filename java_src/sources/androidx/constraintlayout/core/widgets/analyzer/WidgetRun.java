package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes5.dex */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget.DimensionBehaviour dimensionBehavior;
    public int matchConstraintsType;
    RunGroup runGroup;
    ConstraintWidget widget;
    DimensionDependency dimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean resolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void a(Dependency dependency) {
    }

    abstract void d();

    abstract void e();

    abstract void f();

    public boolean k() {
        return this.resolved;
    }

    abstract boolean m();

    protected void o(Dependency dependency) {
    }

    protected void p(Dependency dependency) {
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetRun$1, reason: invalid class name */
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
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private void l(int i10, int i11) {
        int i12 = this.matchConstraintsType;
        if (i12 == 0) {
            this.dimension.d(g(i11, i10));
            return;
        }
        if (i12 == 1) {
            this.dimension.d(Math.min(g(this.dimension.wrapValue, i10), i11));
            return;
        }
        if (i12 == 2) {
            ConstraintWidget constraintWidgetM = this.widget.M();
            if (constraintWidgetM != null) {
                DimensionDependency dimensionDependency = (i10 == 0 ? constraintWidgetM.horizontalRun : constraintWidgetM.verticalRun).dimension;
                if (dimensionDependency.resolved) {
                    ConstraintWidget constraintWidget = this.widget;
                    this.dimension.d(g((int) ((dimensionDependency.value * (i10 == 0 ? constraintWidget.mMatchConstraintPercentWidth : constraintWidget.mMatchConstraintPercentHeight)) + 0.5f), i10));
                    return;
                }
                return;
            }
            return;
        }
        if (i12 != 3) {
            return;
        }
        ConstraintWidget constraintWidget2 = this.widget;
        WidgetRun widgetRun = constraintWidget2.horizontalRun;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun.dimensionBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour == dimensionBehaviour2 && widgetRun.matchConstraintsType == 3) {
            VerticalWidgetRun verticalWidgetRun = constraintWidget2.verticalRun;
            if (verticalWidgetRun.dimensionBehavior == dimensionBehaviour2 && verticalWidgetRun.matchConstraintsType == 3) {
                return;
            }
        }
        if (i10 == 0) {
            widgetRun = constraintWidget2.verticalRun;
        }
        if (widgetRun.dimension.resolved) {
            float fX = constraintWidget2.x();
            this.dimension.d(i10 == 1 ? (int) ((widgetRun.dimension.value / fX) + 0.5f) : (int) ((fX * widgetRun.dimension.value) + 0.5f));
        }
    }

    protected final void b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i10) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.margin = i10;
        dependencyNode2.dependencies.add(dependencyNode);
    }

    protected final void c(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i10, DimensionDependency dimensionDependency) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.targets.add(this.dimension);
        dependencyNode.marginFactor = i10;
        dependencyNode.marginDependency = dimensionDependency;
        dependencyNode2.dependencies.add(dependencyNode);
        dimensionDependency.dependencies.add(dependencyNode);
    }

    protected final int g(int i10, int i11) {
        int iMax;
        if (i11 == 0) {
            ConstraintWidget constraintWidget = this.widget;
            int i12 = constraintWidget.mMatchConstraintMaxWidth;
            iMax = Math.max(constraintWidget.mMatchConstraintMinWidth, i10);
            if (i12 > 0) {
                iMax = Math.min(i12, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.widget;
            int i13 = constraintWidget2.mMatchConstraintMaxHeight;
            iMax = Math.max(constraintWidget2.mMatchConstraintMinHeight, i10);
            if (i13 > 0) {
                iMax = Math.min(i13, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        }
        return iMax;
    }

    protected final DependencyNode h(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        int i10 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor2.mType.ordinal()];
        if (i10 == 1) {
            return constraintWidget.horizontalRun.start;
        }
        if (i10 == 2) {
            return constraintWidget.horizontalRun.end;
        }
        if (i10 == 3) {
            return constraintWidget.verticalRun.start;
        }
        if (i10 == 4) {
            return constraintWidget.verticalRun.baseline;
        }
        if (i10 != 5) {
            return null;
        }
        return constraintWidget.verticalRun.end;
    }

    protected final DependencyNode i(ConstraintAnchor constraintAnchor, int i10) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        WidgetRun widgetRun = i10 == 0 ? constraintWidget.horizontalRun : constraintWidget.verticalRun;
        int i11 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor2.mType.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.end;
        }
        return widgetRun.start;
    }

    public long j() {
        DimensionDependency dimensionDependency = this.dimension;
        if (dimensionDependency.resolved) {
            return dimensionDependency.value;
        }
        return 0L;
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.widget = constraintWidget;
    }

    protected void n(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10) {
        float fT;
        DependencyNode dependencyNodeH = h(constraintAnchor);
        DependencyNode dependencyNodeH2 = h(constraintAnchor2);
        if (dependencyNodeH.resolved && dependencyNodeH2.resolved) {
            int iF = dependencyNodeH.value + constraintAnchor.f();
            int iF2 = dependencyNodeH2.value - constraintAnchor2.f();
            int i11 = iF2 - iF;
            if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                l(i10, i11);
            }
            DimensionDependency dimensionDependency = this.dimension;
            if (!dimensionDependency.resolved) {
                return;
            }
            if (dimensionDependency.value == i11) {
                this.start.d(iF);
                this.end.d(iF2);
                return;
            }
            ConstraintWidget constraintWidget = this.widget;
            if (i10 == 0) {
                fT = constraintWidget.A();
            } else {
                fT = constraintWidget.T();
            }
            if (dependencyNodeH == dependencyNodeH2) {
                iF = dependencyNodeH.value;
                iF2 = dependencyNodeH2.value;
                fT = 0.5f;
            }
            this.start.d((int) (iF + 0.5f + (((iF2 - iF) - this.dimension.value) * fT)));
            this.end.d(this.start.value + this.dimension.value);
        }
    }
}
