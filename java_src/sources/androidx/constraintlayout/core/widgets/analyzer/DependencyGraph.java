package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class DependencyGraph {
    private static final boolean USE_GROUPS = true;
    private ConstraintWidgetContainer container;
    private ConstraintWidgetContainer mContainer;
    private boolean mNeedBuildGraph = true;
    private boolean mNeedRedoMeasures = true;
    private ArrayList<WidgetRun> mRuns = new ArrayList<>();
    private ArrayList<RunGroup> runGroups = new ArrayList<>();
    private BasicMeasure.Measurer mMeasurer = null;
    private BasicMeasure.Measure mMeasure = new BasicMeasure.Measure();
    ArrayList<RunGroup> mGroups = new ArrayList<>();

    public boolean f(boolean z6) {
        boolean z10;
        boolean z11 = true;
        boolean z12 = z6 & true;
        if (this.mNeedBuildGraph || this.mNeedRedoMeasures) {
            for (ConstraintWidget constraintWidget : this.container.mChildren) {
                constraintWidget.p();
                constraintWidget.measured = false;
                constraintWidget.horizontalRun.r();
                constraintWidget.verticalRun.q();
            }
            this.container.p();
            ConstraintWidgetContainer constraintWidgetContainer = this.container;
            constraintWidgetContainer.measured = false;
            constraintWidgetContainer.horizontalRun.r();
            this.container.verticalRun.q();
            this.mNeedRedoMeasures = false;
        }
        if (b(this.mContainer)) {
            return false;
        }
        this.container.q1(0);
        this.container.r1(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW = this.container.w(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = this.container.w(1);
        if (this.mNeedBuildGraph) {
            c();
        }
        int iZ = this.container.Z();
        int iA0 = this.container.a0();
        this.container.horizontalRun.start.d(iZ);
        this.container.verticalRun.start.d(iA0);
        m();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviourW == dimensionBehaviour || dimensionBehaviourW2 == dimensionBehaviour) {
            if (z12) {
                Iterator<WidgetRun> it = this.mRuns.iterator();
                while (it.hasNext()) {
                    if (!it.next().m()) {
                        z12 = false;
                        break;
                    }
                }
            }
            if (z12 && dimensionBehaviourW == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.container.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer2 = this.container;
                constraintWidgetContainer2.o1(e(constraintWidgetContainer2, 0));
                ConstraintWidgetContainer constraintWidgetContainer3 = this.container;
                constraintWidgetContainer3.horizontalRun.dimension.d(constraintWidgetContainer3.Y());
            }
            if (z12 && dimensionBehaviourW2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.container.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer4 = this.container;
                constraintWidgetContainer4.P0(e(constraintWidgetContainer4, 1));
                ConstraintWidgetContainer constraintWidgetContainer5 = this.container;
                constraintWidgetContainer5.verticalRun.dimension.d(constraintWidgetContainer5.z());
            }
        }
        ConstraintWidgetContainer constraintWidgetContainer6 = this.container;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidgetContainer6.mListDimensionBehaviors[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour2 == dimensionBehaviour3 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int iY = constraintWidgetContainer6.Y() + iZ;
            this.container.horizontalRun.end.d(iY);
            this.container.horizontalRun.dimension.d(iY - iZ);
            m();
            ConstraintWidgetContainer constraintWidgetContainer7 = this.container;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer7.mListDimensionBehaviors[1];
            if (dimensionBehaviour4 == dimensionBehaviour3 || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iZ2 = constraintWidgetContainer7.z() + iA0;
                this.container.verticalRun.end.d(iZ2);
                this.container.verticalRun.dimension.d(iZ2 - iA0);
            }
            m();
            z10 = true;
        } else {
            z10 = false;
        }
        for (WidgetRun widgetRun : this.mRuns) {
            if (widgetRun.widget != this.container || widgetRun.resolved) {
                widgetRun.e();
            }
        }
        for (WidgetRun widgetRun2 : this.mRuns) {
            if (z10 || widgetRun2.widget != this.container) {
                if (!widgetRun2.start.resolved || ((!widgetRun2.end.resolved && !(widgetRun2 instanceof GuidelineReference)) || (!widgetRun2.dimension.resolved && !(widgetRun2 instanceof ChainRun) && !(widgetRun2 instanceof GuidelineReference)))) {
                    z11 = false;
                    break;
                }
            }
        }
        this.container.T0(dimensionBehaviourW);
        this.container.k1(dimensionBehaviourW2);
        return z11;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00c2  */
    public boolean h(boolean z6, int i10) {
        boolean z10;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z11 = true;
        boolean z12 = z6 & true;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW = this.container.w(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourW2 = this.container.w(1);
        int iZ = this.container.Z();
        int iA0 = this.container.a0();
        if (z12 && (dimensionBehaviourW == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviourW2 == dimensionBehaviour)) {
            for (WidgetRun widgetRun : this.mRuns) {
                if (widgetRun.orientation == i10 && !widgetRun.m()) {
                    z12 = false;
                    break;
                }
            }
            if (i10 == 0) {
                if (z12 && dimensionBehaviourW == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.container.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                    ConstraintWidgetContainer constraintWidgetContainer = this.container;
                    constraintWidgetContainer.o1(e(constraintWidgetContainer, 0));
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.container;
                    constraintWidgetContainer2.horizontalRun.dimension.d(constraintWidgetContainer2.Y());
                }
            } else if (z12 && dimensionBehaviourW2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.container.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer3 = this.container;
                constraintWidgetContainer3.P0(e(constraintWidgetContainer3, 1));
                ConstraintWidgetContainer constraintWidgetContainer4 = this.container;
                constraintWidgetContainer4.verticalRun.dimension.d(constraintWidgetContainer4.z());
            }
        }
        if (i10 == 0) {
            ConstraintWidgetContainer constraintWidgetContainer5 = this.container;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidgetContainer5.mListDimensionBehaviors[0];
            if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iY = constraintWidgetContainer5.Y() + iZ;
                this.container.horizontalRun.end.d(iY);
                this.container.horizontalRun.dimension.d(iY - iZ);
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            ConstraintWidgetContainer constraintWidgetContainer6 = this.container;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidgetContainer6.mListDimensionBehaviors[1];
            if (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iZ2 = constraintWidgetContainer6.z() + iA0;
                this.container.verticalRun.end.d(iZ2);
                this.container.verticalRun.dimension.d(iZ2 - iA0);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        m();
        for (WidgetRun widgetRun2 : this.mRuns) {
            if (widgetRun2.orientation == i10 && (widgetRun2.widget != this.container || widgetRun2.resolved)) {
                widgetRun2.e();
            }
        }
        for (WidgetRun widgetRun3 : this.mRuns) {
            if (widgetRun3.orientation == i10 && (z10 || widgetRun3.widget != this.container)) {
                if (!widgetRun3.start.resolved || !widgetRun3.end.resolved || (!(widgetRun3 instanceof ChainRun) && !widgetRun3.dimension.resolved)) {
                    z11 = false;
                    break;
                }
            }
        }
        this.container.T0(dimensionBehaviourW);
        this.container.k1(dimensionBehaviourW2);
        return z11;
    }

    public void j() {
        this.mNeedBuildGraph = true;
    }

    public void k() {
        this.mNeedRedoMeasures = true;
    }

    public void n(BasicMeasure.Measurer measurer) {
        this.mMeasurer = measurer;
    }

    private void a(DependencyNode dependencyNode, int i10, int i11, DependencyNode dependencyNode2, ArrayList<RunGroup> arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun.runGroup == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.container;
            if (widgetRun == constraintWidgetContainer.horizontalRun || widgetRun == constraintWidgetContainer.verticalRun) {
                return;
            }
            if (runGroup == null) {
                runGroup = new RunGroup(widgetRun, i11);
                arrayList.add(runGroup);
            }
            widgetRun.runGroup = runGroup;
            runGroup.a(widgetRun);
            for (Dependency dependency : widgetRun.start.dependencies) {
                if (dependency instanceof DependencyNode) {
                    a((DependencyNode) dependency, i10, 0, dependencyNode2, arrayList, runGroup);
                }
            }
            for (Dependency dependency2 : widgetRun.end.dependencies) {
                if (dependency2 instanceof DependencyNode) {
                    a((DependencyNode) dependency2, i10, 1, dependencyNode2, arrayList, runGroup);
                }
            }
            if (i10 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.dependencies) {
                    if (dependency3 instanceof DependencyNode) {
                        a((DependencyNode) dependency3, i10, 2, dependencyNode2, arrayList, runGroup);
                    }
                }
            }
            for (DependencyNode dependencyNode3 : widgetRun.start.targets) {
                if (dependencyNode3 == dependencyNode2) {
                    runGroup.dual = true;
                }
                a(dependencyNode3, i10, 0, dependencyNode2, arrayList, runGroup);
            }
            for (DependencyNode dependencyNode4 : widgetRun.end.targets) {
                if (dependencyNode4 == dependencyNode2) {
                    runGroup.dual = true;
                }
                a(dependencyNode4, i10, 1, dependencyNode2, arrayList, runGroup);
            }
            if (i10 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator<DependencyNode> it = ((VerticalWidgetRun) widgetRun).baseline.targets.iterator();
                while (it.hasNext()) {
                    a(it.next(), i10, 2, dependencyNode2, arrayList, runGroup);
                }
            }
        }
    }

    private boolean b(ConstraintWidgetContainer constraintWidgetContainer) {
        int iY;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int iZ;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        for (ConstraintWidget constraintWidget : constraintWidgetContainer.mChildren) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[1];
            if (constraintWidget.X() == 8) {
                constraintWidget.measured = true;
            } else {
                if (constraintWidget.mMatchConstraintPercentWidth < 1.0f && dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.mMatchConstraintDefaultWidth = 2;
                }
                if (constraintWidget.mMatchConstraintPercentHeight < 1.0f && dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.mMatchConstraintDefaultHeight = 2;
                }
                if (constraintWidget.x() > 0.0f) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour5 == dimensionBehaviour7 && (dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.mMatchConstraintDefaultWidth = 3;
                    } else if (dimensionBehaviour6 == dimensionBehaviour7 && (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.mMatchConstraintDefaultHeight = 3;
                    } else if (dimensionBehaviour5 == dimensionBehaviour7 && dimensionBehaviour6 == dimensionBehaviour7) {
                        if (constraintWidget.mMatchConstraintDefaultWidth == 0) {
                            constraintWidget.mMatchConstraintDefaultWidth = 3;
                        }
                        if (constraintWidget.mMatchConstraintDefaultHeight == 0) {
                            constraintWidget.mMatchConstraintDefaultHeight = 3;
                        }
                    }
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour5 == dimensionBehaviour8 && constraintWidget.mMatchConstraintDefaultWidth == 1 && (constraintWidget.mLeft.mTarget == null || constraintWidget.mRight.mTarget == null)) {
                    dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = dimensionBehaviour5;
                if (dimensionBehaviour6 == dimensionBehaviour8 && constraintWidget.mMatchConstraintDefaultHeight == 1 && (constraintWidget.mTop.mTarget == null || constraintWidget.mBottom.mTarget == null)) {
                    dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = dimensionBehaviour6;
                HorizontalWidgetRun horizontalWidgetRun = constraintWidget.horizontalRun;
                horizontalWidgetRun.dimensionBehavior = dimensionBehaviour9;
                int i10 = constraintWidget.mMatchConstraintDefaultWidth;
                horizontalWidgetRun.matchConstraintsType = i10;
                VerticalWidgetRun verticalWidgetRun = constraintWidget.verticalRun;
                verticalWidgetRun.dimensionBehavior = dimensionBehaviour10;
                int i11 = constraintWidget.mMatchConstraintDefaultHeight;
                verticalWidgetRun.matchConstraintsType = i11;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if ((dimensionBehaviour9 == dimensionBehaviour11 || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (dimensionBehaviour10 == dimensionBehaviour11 || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
                    int iY2 = constraintWidget.Y();
                    if (dimensionBehaviour9 == dimensionBehaviour11) {
                        iY = (constraintWidgetContainer.Y() - constraintWidget.mLeft.mMargin) - constraintWidget.mRight.mMargin;
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        iY = iY2;
                        dimensionBehaviour = dimensionBehaviour9;
                    }
                    int iZ2 = constraintWidget.z();
                    if (dimensionBehaviour10 == dimensionBehaviour11) {
                        iZ = (constraintWidgetContainer.z() - constraintWidget.mTop.mMargin) - constraintWidget.mBottom.mMargin;
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        iZ = iZ2;
                        dimensionBehaviour2 = dimensionBehaviour10;
                    }
                    l(constraintWidget, dimensionBehaviour, iY, dimensionBehaviour2, iZ);
                    constraintWidget.horizontalRun.dimension.d(constraintWidget.Y());
                    constraintWidget.verticalRun.dimension.d(constraintWidget.z());
                    constraintWidget.measured = true;
                } else {
                    if (dimensionBehaviour9 == dimensionBehaviour8 && (dimensionBehaviour10 == (dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i10 == 3) {
                            if (dimensionBehaviour10 == dimensionBehaviour4) {
                                l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour4, 0);
                            }
                            int iZ3 = constraintWidget.z();
                            int i12 = (int) ((iZ3 * constraintWidget.mDimensionRatio) + 0.5f);
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = ConstraintWidget.DimensionBehaviour.FIXED;
                            l(constraintWidget, dimensionBehaviour12, i12, dimensionBehaviour12, iZ3);
                            constraintWidget.horizontalRun.dimension.d(constraintWidget.Y());
                            constraintWidget.verticalRun.dimension.d(constraintWidget.z());
                            constraintWidget.measured = true;
                        } else if (i10 == 1) {
                            l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                            constraintWidget.horizontalRun.dimension.wrapValue = constraintWidget.Y();
                        } else if (i10 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = constraintWidgetContainer.mListDimensionBehaviors[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour13 == dimensionBehaviour14 || dimensionBehaviour13 == dimensionBehaviour11) {
                                l(constraintWidget, dimensionBehaviour14, (int) ((constraintWidget.mMatchConstraintPercentWidth * constraintWidgetContainer.Y()) + 0.5f), dimensionBehaviour10, constraintWidget.z());
                                constraintWidget.horizontalRun.dimension.d(constraintWidget.Y());
                                constraintWidget.verticalRun.dimension.d(constraintWidget.z());
                                constraintWidget.measured = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
                            if (constraintAnchorArr[0].mTarget == null || constraintAnchorArr[1].mTarget == null) {
                                l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                                constraintWidget.horizontalRun.dimension.d(constraintWidget.Y());
                                constraintWidget.verticalRun.dimension.d(constraintWidget.z());
                                constraintWidget.measured = true;
                            }
                        }
                    }
                    if (dimensionBehaviour10 == dimensionBehaviour8 && (dimensionBehaviour9 == (dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i11 == 3) {
                            if (dimensionBehaviour9 == dimensionBehaviour3) {
                                l(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour3, 0);
                            }
                            int iY3 = constraintWidget.Y();
                            float f = constraintWidget.mDimensionRatio;
                            if (constraintWidget.y() == -1) {
                                f = 1.0f / f;
                            }
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.FIXED;
                            l(constraintWidget, dimensionBehaviour15, iY3, dimensionBehaviour15, (int) ((iY3 * f) + 0.5f));
                            constraintWidget.horizontalRun.dimension.d(constraintWidget.Y());
                            constraintWidget.verticalRun.dimension.d(constraintWidget.z());
                            constraintWidget.measured = true;
                        } else if (i11 == 1) {
                            l(constraintWidget, dimensionBehaviour9, 0, dimensionBehaviour3, 0);
                            constraintWidget.verticalRun.dimension.wrapValue = constraintWidget.z();
                        } else if (i11 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = constraintWidgetContainer.mListDimensionBehaviors[1];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour16 == dimensionBehaviour17 || dimensionBehaviour16 == dimensionBehaviour11) {
                                l(constraintWidget, dimensionBehaviour9, constraintWidget.Y(), dimensionBehaviour17, (int) ((constraintWidget.mMatchConstraintPercentHeight * constraintWidgetContainer.z()) + 0.5f));
                                constraintWidget.horizontalRun.dimension.d(constraintWidget.Y());
                                constraintWidget.verticalRun.dimension.d(constraintWidget.z());
                                constraintWidget.measured = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr2 = constraintWidget.mListAnchors;
                            if (constraintAnchorArr2[2].mTarget == null || constraintAnchorArr2[3].mTarget == null) {
                                l(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour10, 0);
                                constraintWidget.horizontalRun.dimension.d(constraintWidget.Y());
                                constraintWidget.verticalRun.dimension.d(constraintWidget.z());
                                constraintWidget.measured = true;
                            }
                        }
                    }
                    if (dimensionBehaviour9 == dimensionBehaviour8 && dimensionBehaviour10 == dimensionBehaviour8) {
                        if (i10 == 1 || i11 == 1) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            l(constraintWidget, dimensionBehaviour18, 0, dimensionBehaviour18, 0);
                            constraintWidget.horizontalRun.dimension.wrapValue = constraintWidget.Y();
                            constraintWidget.verticalRun.dimension.wrapValue = constraintWidget.z();
                        } else if (i11 == 2 && i10 == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer.mListDimensionBehaviors;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour19 = dimensionBehaviourArr2[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour20 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour19 == dimensionBehaviour20 && dimensionBehaviourArr2[1] == dimensionBehaviour20) {
                                l(constraintWidget, dimensionBehaviour20, (int) ((constraintWidget.mMatchConstraintPercentWidth * constraintWidgetContainer.Y()) + 0.5f), dimensionBehaviour20, (int) ((constraintWidget.mMatchConstraintPercentHeight * constraintWidgetContainer.z()) + 0.5f));
                                constraintWidget.horizontalRun.dimension.d(constraintWidget.Y());
                                constraintWidget.verticalRun.dimension.d(constraintWidget.z());
                                constraintWidget.measured = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private int e(ConstraintWidgetContainer constraintWidgetContainer, int i10) {
        int size = this.mGroups.size();
        long jMax = 0;
        for (int i11 = 0; i11 < size; i11++) {
            jMax = Math.max(jMax, this.mGroups.get(i11).b(constraintWidgetContainer, i10));
        }
        return (int) jMax;
    }

    private void i(WidgetRun widgetRun, int i10, ArrayList<RunGroup> arrayList) {
        for (Dependency dependency : widgetRun.start.dependencies) {
            if (dependency instanceof DependencyNode) {
                a((DependencyNode) dependency, i10, 0, widgetRun.end, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                a(((WidgetRun) dependency).start, i10, 0, widgetRun.end, arrayList, null);
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if (dependency2 instanceof DependencyNode) {
                a((DependencyNode) dependency2, i10, 1, widgetRun.start, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                a(((WidgetRun) dependency2).end, i10, 1, widgetRun.start, arrayList, null);
            }
        }
        if (i10 == 1) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.dependencies) {
                if (dependency3 instanceof DependencyNode) {
                    a((DependencyNode) dependency3, i10, 2, null, arrayList, null);
                }
            }
        }
    }

    private void l(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i10, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i11) {
        BasicMeasure.Measure measure = this.mMeasure;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i10;
        measure.verticalDimension = i11;
        this.mMeasurer.b(constraintWidget, measure);
        constraintWidget.o1(this.mMeasure.measuredWidth);
        constraintWidget.P0(this.mMeasure.measuredHeight);
        constraintWidget.O0(this.mMeasure.measuredHasBaseline);
        constraintWidget.E0(this.mMeasure.measuredBaseline);
    }

    public void c() {
        d(this.mRuns);
        this.mGroups.clear();
        RunGroup.index = 0;
        i(this.container.horizontalRun, 0, this.mGroups);
        i(this.container.verticalRun, 1, this.mGroups);
        this.mNeedBuildGraph = false;
    }

    public boolean g(boolean z6) {
        if (this.mNeedBuildGraph) {
            for (ConstraintWidget constraintWidget : this.container.mChildren) {
                constraintWidget.p();
                constraintWidget.measured = false;
                HorizontalWidgetRun horizontalWidgetRun = constraintWidget.horizontalRun;
                horizontalWidgetRun.dimension.resolved = false;
                horizontalWidgetRun.resolved = false;
                horizontalWidgetRun.r();
                VerticalWidgetRun verticalWidgetRun = constraintWidget.verticalRun;
                verticalWidgetRun.dimension.resolved = false;
                verticalWidgetRun.resolved = false;
                verticalWidgetRun.q();
            }
            this.container.p();
            ConstraintWidgetContainer constraintWidgetContainer = this.container;
            constraintWidgetContainer.measured = false;
            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidgetContainer.horizontalRun;
            horizontalWidgetRun2.dimension.resolved = false;
            horizontalWidgetRun2.resolved = false;
            horizontalWidgetRun2.r();
            VerticalWidgetRun verticalWidgetRun2 = this.container.verticalRun;
            verticalWidgetRun2.dimension.resolved = false;
            verticalWidgetRun2.resolved = false;
            verticalWidgetRun2.q();
            c();
        }
        if (b(this.mContainer)) {
            return false;
        }
        this.container.q1(0);
        this.container.r1(0);
        this.container.horizontalRun.start.d(0);
        this.container.verticalRun.start.d(0);
        return true;
    }

    public void m() {
        DimensionDependency dimensionDependency;
        for (ConstraintWidget constraintWidget : this.container.mChildren) {
            if (!constraintWidget.measured) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
                boolean z6 = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i10 = constraintWidget.mMatchConstraintDefaultWidth;
                int i11 = constraintWidget.mMatchConstraintDefaultHeight;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z10 = dimensionBehaviour == dimensionBehaviour3 || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i10 == 1);
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i11 == 1)) {
                    z6 = true;
                }
                DimensionDependency dimensionDependency2 = constraintWidget.horizontalRun.dimension;
                boolean z11 = dimensionDependency2.resolved;
                DimensionDependency dimensionDependency3 = constraintWidget.verticalRun.dimension;
                boolean z12 = dimensionDependency3.resolved;
                if (z11 && z12) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    l(constraintWidget, dimensionBehaviour4, dimensionDependency2.value, dimensionBehaviour4, dimensionDependency3.value);
                    constraintWidget.measured = true;
                } else if (z11 && z6) {
                    l(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency2.value, dimensionBehaviour3, dimensionDependency3.value);
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.verticalRun.dimension.wrapValue = constraintWidget.z();
                    } else {
                        constraintWidget.verticalRun.dimension.d(constraintWidget.z());
                        constraintWidget.measured = true;
                    }
                } else if (z12 && z10) {
                    l(constraintWidget, dimensionBehaviour3, dimensionDependency2.value, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency3.value);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.horizontalRun.dimension.wrapValue = constraintWidget.Y();
                    } else {
                        constraintWidget.horizontalRun.dimension.d(constraintWidget.Y());
                        constraintWidget.measured = true;
                    }
                }
                if (constraintWidget.measured && (dimensionDependency = constraintWidget.verticalRun.baselineDimension) != null) {
                    dimensionDependency.d(constraintWidget.r());
                }
            }
        }
    }

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        this.container = constraintWidgetContainer;
        this.mContainer = constraintWidgetContainer;
    }

    public void d(ArrayList<WidgetRun> arrayList) {
        arrayList.clear();
        this.mContainer.horizontalRun.f();
        this.mContainer.verticalRun.f();
        arrayList.add(this.mContainer.horizontalRun);
        arrayList.add(this.mContainer.verticalRun);
        HashSet hashSet = null;
        for (ConstraintWidget constraintWidget : this.mContainer.mChildren) {
            if (constraintWidget instanceof Guideline) {
                arrayList.add(new GuidelineReference(constraintWidget));
            } else {
                if (constraintWidget.k0()) {
                    if (constraintWidget.horizontalChainRun == null) {
                        constraintWidget.horizontalChainRun = new ChainRun(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.horizontalChainRun);
                } else {
                    arrayList.add(constraintWidget.horizontalRun);
                }
                if (constraintWidget.m0()) {
                    if (constraintWidget.verticalChainRun == null) {
                        constraintWidget.verticalChainRun = new ChainRun(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.verticalChainRun);
                } else {
                    arrayList.add(constraintWidget.verticalRun);
                }
                if (constraintWidget instanceof HelperWidget) {
                    arrayList.add(new HelperReferences(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<WidgetRun> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        for (WidgetRun widgetRun : arrayList) {
            if (widgetRun.widget != this.mContainer) {
                widgetRun.d();
            }
        }
    }
}
