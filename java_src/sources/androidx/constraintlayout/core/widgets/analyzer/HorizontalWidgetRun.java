package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;

/* JADX INFO: loaded from: classes5.dex */
public class HorizontalWidgetRun extends WidgetRun {
    private static int[] tempDimensions = new int[2];

    private void q(int[] iArr, int i10, int i11, int i12, int i13, float f, int i14) {
        int i15 = i11 - i10;
        int i16 = i13 - i12;
        if (i14 != -1) {
            if (i14 == 0) {
                iArr[0] = (int) ((i16 * f) + 0.5f);
                iArr[1] = i16;
                return;
            } else {
                if (i14 != 1) {
                    return;
                }
                iArr[0] = i15;
                iArr[1] = (int) ((i15 * f) + 0.5f);
                return;
            }
        }
        int i17 = (int) ((i16 * f) + 0.5f);
        int i18 = (int) ((i15 / f) + 0.5f);
        if (i17 <= i15) {
            iArr[0] = i17;
            iArr[1] = i16;
        } else if (i18 <= i16) {
            iArr[0] = i15;
            iArr[1] = i18;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        ConstraintWidget constraintWidgetM;
        ConstraintWidget constraintWidgetM2;
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget.measured) {
            this.dimension.d(constraintWidget.Y());
        }
        if (this.dimension.resolved) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.dimensionBehavior;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour == dimensionBehaviour2 && (constraintWidgetM = this.widget.M()) != null && (constraintWidgetM.C() == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetM.C() == dimensionBehaviour2)) {
                b(this.start, constraintWidgetM.horizontalRun.start, this.widget.mLeft.f());
                b(this.end, constraintWidgetM.horizontalRun.end, -this.widget.mRight.f());
                return;
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviourC = this.widget.C();
            this.dimensionBehavior = dimensionBehaviourC;
            if (dimensionBehaviourC != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (dimensionBehaviourC == dimensionBehaviour3 && (constraintWidgetM2 = this.widget.M()) != null && (constraintWidgetM2.C() == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetM2.C() == dimensionBehaviour3)) {
                    int iY = (constraintWidgetM2.Y() - this.widget.mLeft.f()) - this.widget.mRight.f();
                    b(this.start, constraintWidgetM2.horizontalRun.start, this.widget.mLeft.f());
                    b(this.end, constraintWidgetM2.horizontalRun.end, -this.widget.mRight.f());
                    this.dimension.d(iY);
                    return;
                }
                if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.dimension.d(this.widget.Y());
                }
            }
        }
        DimensionDependency dimensionDependency = this.dimension;
        if (dimensionDependency.resolved) {
            ConstraintWidget constraintWidget2 = this.widget;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                if (constraintAnchor2 != null && constraintAnchorArr[1].mTarget != null) {
                    if (constraintWidget2.k0()) {
                        this.start.margin = this.widget.mListAnchors[0].f();
                        this.end.margin = -this.widget.mListAnchors[1].f();
                        return;
                    }
                    DependencyNode dependencyNodeH = h(this.widget.mListAnchors[0]);
                    if (dependencyNodeH != null) {
                        b(this.start, dependencyNodeH, this.widget.mListAnchors[0].f());
                    }
                    DependencyNode dependencyNodeH2 = h(this.widget.mListAnchors[1]);
                    if (dependencyNodeH2 != null) {
                        b(this.end, dependencyNodeH2, -this.widget.mListAnchors[1].f());
                    }
                    this.start.delegateToWidgetRun = true;
                    this.end.delegateToWidgetRun = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode dependencyNodeH3 = h(constraintAnchor);
                    if (dependencyNodeH3 != null) {
                        b(this.start, dependencyNodeH3, this.widget.mListAnchors[0].f());
                        b(this.end, this.start, this.dimension.value);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.mTarget != null) {
                    DependencyNode dependencyNodeH4 = h(constraintAnchor3);
                    if (dependencyNodeH4 != null) {
                        b(this.end, dependencyNodeH4, -this.widget.mListAnchors[1].f());
                        b(this.start, this.end, -this.dimension.value);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof Helper) || constraintWidget2.M() == null || this.widget.q(ConstraintAnchor.Type.CENTER).mTarget != null) {
                    return;
                }
                b(this.start, this.widget.M().horizontalRun.start, this.widget.Z());
                b(this.end, this.start, this.dimension.value);
                return;
            }
        }
        if (this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.widget;
            int i10 = constraintWidget3.mMatchConstraintDefaultWidth;
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
            } else if (i10 == 3) {
                if (constraintWidget3.mMatchConstraintDefaultHeight == 3) {
                    this.start.updateDelegate = this;
                    this.end.updateDelegate = this;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget3.verticalRun;
                    verticalWidgetRun.start.updateDelegate = this;
                    verticalWidgetRun.end.updateDelegate = this;
                    dimensionDependency.updateDelegate = this;
                    if (constraintWidget3.m0()) {
                        this.dimension.targets.add(this.widget.verticalRun.dimension);
                        this.widget.verticalRun.dimension.dependencies.add(this.dimension);
                        VerticalWidgetRun verticalWidgetRun2 = this.widget.verticalRun;
                        verticalWidgetRun2.dimension.updateDelegate = this;
                        this.dimension.targets.add(verticalWidgetRun2.start);
                        this.dimension.targets.add(this.widget.verticalRun.end);
                        this.widget.verticalRun.start.dependencies.add(this.dimension);
                        this.widget.verticalRun.end.dependencies.add(this.dimension);
                    } else if (this.widget.k0()) {
                        this.widget.verticalRun.dimension.targets.add(this.dimension);
                        this.dimension.dependencies.add(this.widget.verticalRun.dimension);
                    } else {
                        this.widget.verticalRun.dimension.targets.add(this.dimension);
                    }
                } else {
                    DimensionDependency dimensionDependency4 = constraintWidget3.verticalRun.dimension;
                    dimensionDependency.targets.add(dimensionDependency4);
                    dimensionDependency4.dependencies.add(this.dimension);
                    this.widget.verticalRun.start.dependencies.add(this.dimension);
                    this.widget.verticalRun.end.dependencies.add(this.dimension);
                    DimensionDependency dimensionDependency5 = this.dimension;
                    dimensionDependency5.delegateToWidgetRun = true;
                    dimensionDependency5.dependencies.add(this.start);
                    this.dimension.dependencies.add(this.end);
                    this.start.targets.add(this.dimension);
                    this.end.targets.add(this.dimension);
                }
            }
        }
        ConstraintWidget constraintWidget4 = this.widget;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget4.mListAnchors;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.mTarget;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].mTarget != null) {
            if (constraintWidget4.k0()) {
                this.start.margin = this.widget.mListAnchors[0].f();
                this.end.margin = -this.widget.mListAnchors[1].f();
                return;
            }
            DependencyNode dependencyNodeH5 = h(this.widget.mListAnchors[0]);
            DependencyNode dependencyNodeH6 = h(this.widget.mListAnchors[1]);
            if (dependencyNodeH5 != null) {
                dependencyNodeH5.b(this);
            }
            if (dependencyNodeH6 != null) {
                dependencyNodeH6.b(this);
            }
            this.mRunType = WidgetRun.RunType.CENTER;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode dependencyNodeH7 = h(constraintAnchor4);
            if (dependencyNodeH7 != null) {
                b(this.start, dependencyNodeH7, this.widget.mListAnchors[0].f());
                c(this.end, this.start, 1, this.dimension);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.mTarget != null) {
            DependencyNode dependencyNodeH8 = h(constraintAnchor6);
            if (dependencyNodeH8 != null) {
                b(this.end, dependencyNodeH8, -this.widget.mListAnchors[1].f());
                c(this.start, this.end, -1, this.dimension);
                return;
            }
            return;
        }
        if ((constraintWidget4 instanceof Helper) || constraintWidget4.M() == null) {
            return;
        }
        b(this.start, this.widget.M().horizontalRun.start, this.widget.Z());
        c(this.end, this.start, 1, this.dimension);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.runGroup = null;
        this.start.c();
        this.end.c();
        this.dimension.c();
        this.resolved = false;
    }

    void r() {
        this.resolved = false;
        this.start.c();
        this.start.resolved = false;
        this.end.c();
        this.end.resolved = false;
        this.dimension.resolved = false;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun$1, reason: invalid class name */
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

    /* JADX WARN: Code duplicated, block: B:125:0x02df  */
    /* JADX WARN: Code duplicated, block: B:127:0x02ee  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void a(Dependency dependency) {
        int iG;
        int i10;
        int iG2;
        float f;
        float fX;
        float fX2;
        int i11;
        int i12 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[this.mRunType.ordinal()];
        if (i12 == 1) {
            p(dependency);
        } else if (i12 == 2) {
            o(dependency);
        } else if (i12 == 3) {
            ConstraintWidget constraintWidget = this.widget;
            n(dependency, constraintWidget.mLeft, constraintWidget.mRight, 0);
            return;
        }
        if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.widget;
            int i13 = constraintWidget2.mMatchConstraintDefaultWidth;
            if (i13 == 2) {
                ConstraintWidget constraintWidgetM = constraintWidget2.M();
                if (constraintWidgetM != null) {
                    DimensionDependency dimensionDependency = constraintWidgetM.horizontalRun.dimension;
                    if (dimensionDependency.resolved) {
                        this.dimension.d((int) ((dimensionDependency.value * this.widget.mMatchConstraintPercentWidth) + 0.5f));
                    }
                }
            } else if (i13 == 3) {
                int i14 = constraintWidget2.mMatchConstraintDefaultHeight;
                if (i14 == 0 || i14 == 3) {
                    VerticalWidgetRun verticalWidgetRun = constraintWidget2.verticalRun;
                    DependencyNode dependencyNode = verticalWidgetRun.start;
                    DependencyNode dependencyNode2 = verticalWidgetRun.end;
                    boolean z6 = constraintWidget2.mLeft.mTarget != null;
                    boolean z10 = constraintWidget2.mTop.mTarget != null;
                    boolean z11 = constraintWidget2.mRight.mTarget != null;
                    boolean z12 = constraintWidget2.mBottom.mTarget != null;
                    int iY = constraintWidget2.y();
                    if (z6 && z10 && z11 && z12) {
                        float fX3 = this.widget.x();
                        if (dependencyNode.resolved && dependencyNode2.resolved) {
                            DependencyNode dependencyNode3 = this.start;
                            if (dependencyNode3.readyToSolve && this.end.readyToSolve) {
                                q(tempDimensions, dependencyNode3.targets.get(0).value + this.start.margin, this.end.targets.get(0).value - this.end.margin, dependencyNode.value + dependencyNode.margin, dependencyNode2.value - dependencyNode2.margin, fX3, iY);
                                this.dimension.d(tempDimensions[0]);
                                this.widget.verticalRun.dimension.d(tempDimensions[1]);
                                return;
                            }
                            return;
                        }
                        DependencyNode dependencyNode4 = this.start;
                        if (dependencyNode4.resolved) {
                            DependencyNode dependencyNode5 = this.end;
                            if (dependencyNode5.resolved) {
                                if (!dependencyNode.readyToSolve || !dependencyNode2.readyToSolve) {
                                    return;
                                }
                                q(tempDimensions, dependencyNode4.value + dependencyNode4.margin, dependencyNode5.value - dependencyNode5.margin, dependencyNode.targets.get(0).value + dependencyNode.margin, dependencyNode2.targets.get(0).value - dependencyNode2.margin, fX3, iY);
                                this.dimension.d(tempDimensions[0]);
                                this.widget.verticalRun.dimension.d(tempDimensions[1]);
                            }
                        }
                        DependencyNode dependencyNode6 = this.start;
                        if (!dependencyNode6.readyToSolve || !this.end.readyToSolve || !dependencyNode.readyToSolve || !dependencyNode2.readyToSolve) {
                            return;
                        }
                        q(tempDimensions, dependencyNode6.targets.get(0).value + this.start.margin, this.end.targets.get(0).value - this.end.margin, dependencyNode.targets.get(0).value + dependencyNode.margin, dependencyNode2.targets.get(0).value - dependencyNode2.margin, fX3, iY);
                        this.dimension.d(tempDimensions[0]);
                        this.widget.verticalRun.dimension.d(tempDimensions[1]);
                    } else if (z6 && z11) {
                        if (!this.start.readyToSolve || !this.end.readyToSolve) {
                            return;
                        }
                        float fX4 = this.widget.x();
                        int i15 = this.start.targets.get(0).value + this.start.margin;
                        int i16 = this.end.targets.get(0).value - this.end.margin;
                        if (iY == -1 || iY == 0) {
                            int iG3 = g(i16 - i15, 0);
                            int i17 = (int) ((iG3 * fX4) + 0.5f);
                            int iG4 = g(i17, 1);
                            if (i17 != iG4) {
                                iG3 = (int) ((iG4 / fX4) + 0.5f);
                            }
                            this.dimension.d(iG3);
                            this.widget.verticalRun.dimension.d(iG4);
                        } else if (iY == 1) {
                            int iG5 = g(i16 - i15, 0);
                            int i18 = (int) ((iG5 / fX4) + 0.5f);
                            int iG6 = g(i18, 1);
                            if (i18 != iG6) {
                                iG5 = (int) ((iG6 * fX4) + 0.5f);
                            }
                            this.dimension.d(iG5);
                            this.widget.verticalRun.dimension.d(iG6);
                        }
                    } else if (z10 && z12) {
                        if (!dependencyNode.readyToSolve || !dependencyNode2.readyToSolve) {
                            return;
                        }
                        float fX5 = this.widget.x();
                        int i19 = dependencyNode.targets.get(0).value + dependencyNode.margin;
                        int i20 = dependencyNode2.targets.get(0).value - dependencyNode2.margin;
                        if (iY == -1) {
                            iG = g(i20 - i19, 1);
                            i10 = (int) ((iG / fX5) + 0.5f);
                            iG2 = g(i10, 0);
                            if (i10 != iG2) {
                                iG = (int) ((iG2 * fX5) + 0.5f);
                            }
                            this.dimension.d(iG2);
                            this.widget.verticalRun.dimension.d(iG);
                        } else if (iY == 0) {
                            int iG7 = g(i20 - i19, 1);
                            int i21 = (int) ((iG7 * fX5) + 0.5f);
                            int iG8 = g(i21, 0);
                            if (i21 != iG8) {
                                iG7 = (int) ((iG8 / fX5) + 0.5f);
                            }
                            this.dimension.d(iG8);
                            this.widget.verticalRun.dimension.d(iG7);
                        } else if (iY == 1) {
                            iG = g(i20 - i19, 1);
                            i10 = (int) ((iG / fX5) + 0.5f);
                            iG2 = g(i10, 0);
                            if (i10 != iG2) {
                                iG = (int) ((iG2 * fX5) + 0.5f);
                            }
                            this.dimension.d(iG2);
                            this.widget.verticalRun.dimension.d(iG);
                        }
                    }
                } else {
                    int iY2 = constraintWidget2.y();
                    if (iY2 != -1) {
                        if (iY2 == 0) {
                            ConstraintWidget constraintWidget3 = this.widget;
                            fX2 = constraintWidget3.verticalRun.dimension.value / constraintWidget3.x();
                            i11 = (int) (fX2 + 0.5f);
                        } else if (iY2 != 1) {
                            i11 = 0;
                        } else {
                            ConstraintWidget constraintWidget4 = this.widget;
                            f = constraintWidget4.verticalRun.dimension.value;
                            fX = constraintWidget4.x();
                        }
                        this.dimension.d(i11);
                    } else {
                        ConstraintWidget constraintWidget5 = this.widget;
                        f = constraintWidget5.verticalRun.dimension.value;
                        fX = constraintWidget5.x();
                    }
                    fX2 = f * fX;
                    i11 = (int) (fX2 + 0.5f);
                    this.dimension.d(i11);
                }
            }
        }
        DependencyNode dependencyNode7 = this.start;
        if (dependencyNode7.readyToSolve) {
            DependencyNode dependencyNode8 = this.end;
            if (dependencyNode8.readyToSolve) {
                if (dependencyNode7.resolved && dependencyNode8.resolved && this.dimension.resolved) {
                    return;
                }
                if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.widget;
                    if (constraintWidget6.mMatchConstraintDefaultWidth == 0 && !constraintWidget6.k0()) {
                        DependencyNode dependencyNode9 = this.start.targets.get(0);
                        DependencyNode dependencyNode10 = this.end.targets.get(0);
                        int i22 = dependencyNode9.value;
                        DependencyNode dependencyNode11 = this.start;
                        int i23 = i22 + dependencyNode11.margin;
                        int i24 = dependencyNode10.value + this.end.margin;
                        dependencyNode11.d(i23);
                        this.end.d(i24);
                        this.dimension.d(i24 - i23);
                        return;
                    }
                }
                if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.matchConstraintsType == 1 && this.start.targets.size() > 0 && this.end.targets.size() > 0) {
                    int iMin = Math.min((this.end.targets.get(0).value + this.end.margin) - (this.start.targets.get(0).value + this.start.margin), this.dimension.wrapValue);
                    ConstraintWidget constraintWidget7 = this.widget;
                    int i25 = constraintWidget7.mMatchConstraintMaxWidth;
                    int iMax = Math.max(constraintWidget7.mMatchConstraintMinWidth, iMin);
                    if (i25 > 0) {
                        iMax = Math.min(i25, iMax);
                    }
                    this.dimension.d(iMax);
                }
                if (this.dimension.resolved) {
                    DependencyNode dependencyNode12 = this.start.targets.get(0);
                    DependencyNode dependencyNode13 = this.end.targets.get(0);
                    int i26 = dependencyNode12.value + this.start.margin;
                    int i27 = dependencyNode13.value + this.end.margin;
                    float fA = this.widget.A();
                    if (dependencyNode12 == dependencyNode13) {
                        i26 = dependencyNode12.value;
                        i27 = dependencyNode13.value;
                        fA = 0.5f;
                    }
                    this.start.d((int) (i26 + 0.5f + (((i27 - i26) - this.dimension.value) * fA)));
                    this.end.d(this.start.value + this.dimension.value);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.widget.q1(dependencyNode.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return this.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.widget.mMatchConstraintDefaultWidth == 0;
    }

    public String toString() {
        return "HorizontalRun " + this.widget.v();
    }

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.start.type = DependencyNode.Type.LEFT;
        this.end.type = DependencyNode.Type.RIGHT;
        this.orientation = 0;
    }
}
