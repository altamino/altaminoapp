package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    int direction;
    WidgetRun firstRun;
    int groupIndex;
    WidgetRun lastRun;
    public int position = 0;
    public boolean dual = false;
    ArrayList<WidgetRun> runs = new ArrayList<>();

    private long c(DependencyNode dependencyNode, long j6) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j6;
        }
        int size = dependencyNode.dependencies.size();
        long jMin = j6;
        for (int i10 = 0; i10 < size; i10++) {
            Dependency dependency = dependencyNode.dependencies.get(i10);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    jMin = Math.min(jMin, c(dependencyNode2, ((long) dependencyNode2.margin) + j6));
                }
            }
        }
        if (dependencyNode != widgetRun.end) {
            return jMin;
        }
        long j10 = j6 - widgetRun.j();
        return Math.min(Math.min(jMin, c(widgetRun.start, j10)), j10 - ((long) widgetRun.start.margin));
    }

    private long d(DependencyNode dependencyNode, long j6) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j6;
        }
        int size = dependencyNode.dependencies.size();
        long jMax = j6;
        for (int i10 = 0; i10 < size; i10++) {
            Dependency dependency = dependencyNode.dependencies.get(i10);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    jMax = Math.max(jMax, d(dependencyNode2, ((long) dependencyNode2.margin) + j6));
                }
            }
        }
        if (dependencyNode != widgetRun.start) {
            return jMax;
        }
        long j10 = j6 + widgetRun.j();
        return Math.max(Math.max(jMax, d(widgetRun.end, j10)), j10 - ((long) widgetRun.end.margin));
    }

    public void a(WidgetRun widgetRun) {
        this.runs.add(widgetRun);
        this.lastRun = widgetRun;
    }

    public long b(ConstraintWidgetContainer constraintWidgetContainer, int i10) {
        long j6;
        int i11;
        WidgetRun widgetRun = this.firstRun;
        if (widgetRun instanceof ChainRun) {
            if (((ChainRun) widgetRun).orientation != i10) {
                return 0L;
            }
        } else if (i10 == 0) {
            if (!(widgetRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = (i10 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).start;
        DependencyNode dependencyNode2 = (i10 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).end;
        boolean zContains = widgetRun.start.targets.contains(dependencyNode);
        boolean zContains2 = this.firstRun.end.targets.contains(dependencyNode2);
        long j10 = this.firstRun.j();
        if (zContains && zContains2) {
            long jD = d(this.firstRun.start, 0L);
            long jC = c(this.firstRun.end, 0L);
            long j11 = jD - j10;
            WidgetRun widgetRun2 = this.firstRun;
            int i12 = widgetRun2.end.margin;
            if (j11 >= (-i12)) {
                j11 += (long) i12;
            }
            int i13 = widgetRun2.start.margin;
            long j12 = ((-jC) - j10) - ((long) i13);
            if (j12 >= i13) {
                j12 -= (long) i13;
            }
            float fS = widgetRun2.widget.s(i10);
            float f = fS > 0.0f ? (long) ((j12 / fS) + (j11 / (1.0f - fS))) : 0L;
            long j13 = ((long) ((f * fS) + 0.5f)) + j10 + ((long) ((f * (1.0f - fS)) + 0.5f));
            WidgetRun widgetRun3 = this.firstRun;
            j6 = ((long) widgetRun3.start.margin) + j13;
            i11 = widgetRun3.end.margin;
        } else {
            if (zContains) {
                DependencyNode dependencyNode3 = this.firstRun.start;
                return Math.max(d(dependencyNode3, dependencyNode3.margin), ((long) this.firstRun.start.margin) + j10);
            }
            if (zContains2) {
                DependencyNode dependencyNode4 = this.firstRun.end;
                return Math.max(-c(dependencyNode4, dependencyNode4.margin), ((long) (-this.firstRun.end.margin)) + j10);
            }
            WidgetRun widgetRun4 = this.firstRun;
            j6 = ((long) widgetRun4.start.margin) + widgetRun4.j();
            i11 = this.firstRun.end.margin;
        }
        return j6 - ((long) i11);
    }

    public RunGroup(WidgetRun widgetRun, int i10) {
        this.firstRun = null;
        this.lastRun = null;
        int i11 = index;
        this.groupIndex = i11;
        index = i11 + 1;
        this.firstRun = widgetRun;
        this.lastRun = widgetRun;
        this.direction = i10;
    }
}
