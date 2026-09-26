package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DependencyNode implements Dependency {
    int margin;
    WidgetRun run;
    public int value;
    public Dependency updateDelegate = null;
    public boolean delegateToWidgetRun = false;
    public boolean readyToSolve = false;
    Type type = Type.UNKNOWN;
    int marginFactor = 1;
    DimensionDependency marginDependency = null;
    public boolean resolved = false;
    List<Dependency> dependencies = new ArrayList();
    List<DependencyNode> targets = new ArrayList();

    enum Type {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void a(Dependency dependency) {
        Iterator<DependencyNode> it = this.targets.iterator();
        while (it.hasNext()) {
            if (!it.next().resolved) {
                return;
            }
        }
        this.readyToSolve = true;
        Dependency dependency2 = this.updateDelegate;
        if (dependency2 != null) {
            dependency2.a(this);
        }
        if (this.delegateToWidgetRun) {
            this.run.a(this);
            return;
        }
        DependencyNode dependencyNode = null;
        int i10 = 0;
        for (DependencyNode dependencyNode2 : this.targets) {
            if (!(dependencyNode2 instanceof DimensionDependency)) {
                i10++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i10 == 1 && dependencyNode.resolved) {
            DimensionDependency dimensionDependency = this.marginDependency;
            if (dimensionDependency != null) {
                if (!dimensionDependency.resolved) {
                    return;
                } else {
                    this.margin = this.marginFactor * dimensionDependency.value;
                }
            }
            d(dependencyNode.value + this.margin);
        }
        Dependency dependency3 = this.updateDelegate;
        if (dependency3 != null) {
            dependency3.a(this);
        }
    }

    public void b(Dependency dependency) {
        this.dependencies.add(dependency);
        if (this.resolved) {
            dependency.a(dependency);
        }
    }

    public void c() {
        this.targets.clear();
        this.dependencies.clear();
        this.resolved = false;
        this.value = 0;
        this.readyToSolve = false;
        this.delegateToWidgetRun = false;
    }

    public void d(int i10) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        this.value = i10;
        for (Dependency dependency : this.dependencies) {
            dependency.a(dependency);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.run.widget.v());
        sb.append(":");
        sb.append(this.type);
        sb.append("(");
        sb.append(this.resolved ? Integer.valueOf(this.value) : "unresolved");
        sb.append(") <t=");
        sb.append(this.targets.size());
        sb.append(":d=");
        sb.append(this.dependencies.size());
        sb.append(">");
        return sb.toString();
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.run = widgetRun;
    }
}
