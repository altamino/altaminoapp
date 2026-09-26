package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
class HelperReferences extends WidgetRun {
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.runGroup = null;
        this.start.c();
    }

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
        Barrier barrier = (Barrier) this.widget;
        int iZ1 = barrier.z1();
        Iterator<DependencyNode> it = this.start.targets.iterator();
        int i10 = 0;
        int i11 = -1;
        while (it.hasNext()) {
            int i12 = it.next().value;
            if (i11 == -1 || i12 < i11) {
                i11 = i12;
            }
            if (i10 < i12) {
                i10 = i12;
            }
        }
        if (iZ1 == 0 || iZ1 == 2) {
            this.start.d(i11 + barrier.A1());
        } else {
            this.start.d(i10 + barrier.A1());
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget instanceof Barrier) {
            this.start.delegateToWidgetRun = true;
            Barrier barrier = (Barrier) constraintWidget;
            int iZ1 = barrier.z1();
            boolean zY1 = barrier.y1();
            int i10 = 0;
            if (iZ1 == 0) {
                this.start.type = DependencyNode.Type.LEFT;
                while (i10 < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget2 = barrier.mWidgets[i10];
                    if (zY1 || constraintWidget2.X() != 8) {
                        DependencyNode dependencyNode = constraintWidget2.horizontalRun.start;
                        dependencyNode.dependencies.add(this.start);
                        this.start.targets.add(dependencyNode);
                    }
                    i10++;
                }
                q(this.widget.horizontalRun.start);
                q(this.widget.horizontalRun.end);
                return;
            }
            if (iZ1 == 1) {
                this.start.type = DependencyNode.Type.RIGHT;
                while (i10 < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget3 = barrier.mWidgets[i10];
                    if (zY1 || constraintWidget3.X() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget3.horizontalRun.end;
                        dependencyNode2.dependencies.add(this.start);
                        this.start.targets.add(dependencyNode2);
                    }
                    i10++;
                }
                q(this.widget.horizontalRun.start);
                q(this.widget.horizontalRun.end);
                return;
            }
            if (iZ1 == 2) {
                this.start.type = DependencyNode.Type.TOP;
                while (i10 < barrier.mWidgetsCount) {
                    ConstraintWidget constraintWidget4 = barrier.mWidgets[i10];
                    if (zY1 || constraintWidget4.X() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget4.verticalRun.start;
                        dependencyNode3.dependencies.add(this.start);
                        this.start.targets.add(dependencyNode3);
                    }
                    i10++;
                }
                q(this.widget.verticalRun.start);
                q(this.widget.verticalRun.end);
                return;
            }
            if (iZ1 != 3) {
                return;
            }
            this.start.type = DependencyNode.Type.BOTTOM;
            while (i10 < barrier.mWidgetsCount) {
                ConstraintWidget constraintWidget5 = barrier.mWidgets[i10];
                if (zY1 || constraintWidget5.X() != 8) {
                    DependencyNode dependencyNode4 = constraintWidget5.verticalRun.end;
                    dependencyNode4.dependencies.add(this.start);
                    this.start.targets.add(dependencyNode4);
                }
                i10++;
            }
            q(this.widget.verticalRun.start);
            q(this.widget.verticalRun.end);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget instanceof Barrier) {
            int iZ1 = ((Barrier) constraintWidget).z1();
            if (iZ1 == 0 || iZ1 == 1) {
                this.widget.q1(this.start.value);
            } else {
                this.widget.r1(this.start.value);
            }
        }
    }

    public HelperReferences(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }
}
