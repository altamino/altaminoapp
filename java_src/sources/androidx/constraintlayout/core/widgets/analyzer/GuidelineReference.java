package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;

/* JADX INFO: loaded from: classes8.dex */
class GuidelineReference extends WidgetRun {
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return false;
    }

    private void q(DependencyNode dependencyNode) {
        this.start.dependencies.add(dependencyNode);
        dependencyNode.targets.add(this.start);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void a(Dependency dependency) {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.readyToSolve && !dependencyNode.resolved) {
            this.start.d((int) ((dependencyNode.targets.get(0).value * ((Guideline) this.widget).z1()) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        Guideline guideline = (Guideline) this.widget;
        int iX1 = guideline.x1();
        int iY1 = guideline.y1();
        guideline.z1();
        if (guideline.w1() == 1) {
            if (iX1 != -1) {
                this.start.targets.add(this.widget.mParent.horizontalRun.start);
                this.widget.mParent.horizontalRun.start.dependencies.add(this.start);
                this.start.margin = iX1;
            } else if (iY1 != -1) {
                this.start.targets.add(this.widget.mParent.horizontalRun.end);
                this.widget.mParent.horizontalRun.end.dependencies.add(this.start);
                this.start.margin = -iY1;
            } else {
                DependencyNode dependencyNode = this.start;
                dependencyNode.delegateToWidgetRun = true;
                dependencyNode.targets.add(this.widget.mParent.horizontalRun.end);
                this.widget.mParent.horizontalRun.end.dependencies.add(this.start);
            }
            q(this.widget.horizontalRun.start);
            q(this.widget.horizontalRun.end);
            return;
        }
        if (iX1 != -1) {
            this.start.targets.add(this.widget.mParent.verticalRun.start);
            this.widget.mParent.verticalRun.start.dependencies.add(this.start);
            this.start.margin = iX1;
        } else if (iY1 != -1) {
            this.start.targets.add(this.widget.mParent.verticalRun.end);
            this.widget.mParent.verticalRun.end.dependencies.add(this.start);
            this.start.margin = -iY1;
        } else {
            DependencyNode dependencyNode2 = this.start;
            dependencyNode2.delegateToWidgetRun = true;
            dependencyNode2.targets.add(this.widget.mParent.verticalRun.end);
            this.widget.mParent.verticalRun.end.dependencies.add(this.start);
        }
        q(this.widget.verticalRun.start);
        q(this.widget.verticalRun.end);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        if (((Guideline) this.widget).w1() == 1) {
            this.widget.q1(this.start.value);
        } else {
            this.widget.r1(this.start.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.start.c();
    }

    public GuidelineReference(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        constraintWidget.horizontalRun.f();
        constraintWidget.verticalRun.f();
        this.orientation = ((Guideline) constraintWidget).w1();
    }
}
