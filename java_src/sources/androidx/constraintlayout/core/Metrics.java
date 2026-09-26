package androidx.constraintlayout.core;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class Metrics {
    public long additionalMeasures;
    public long barrierConnectionResolved;
    public long bfs;
    public long centerConnectionResolved;
    public long chainConnectionResolved;
    public long constraints;
    public long determineGroups;
    public long errors;
    public long extravariables;
    public long fullySolved;
    public long graphOptimizer;
    public long graphSolved;
    public long grouping;
    public long infeasibleDetermineGroups;
    public long iterations;
    public long lastTableSize;
    public long layouts;
    public long linearSolved;
    public long matchConnectionResolved;
    public long maxRows;
    public long maxTableSize;
    public long maxVariables;
    public long measuredMatchWidgets;
    public long measuredWidgets;
    public long measures;
    public long measuresLayoutDuration;
    public long measuresWidgetsDuration;
    public long measuresWrap;
    public long measuresWrapInfeasible;
    public long minimize;
    public long minimizeGoal;
    public long nonresolvedWidgets;
    public long oldresolvedWidgets;
    public long optimize;
    public long pivots;
    public ArrayList<String> problematicLayouts = new ArrayList<>();
    public long resolutions;
    public long resolvedWidgets;
    public long simpleconstraints;
    public long slackvariables;
    public long tableSizeIncrease;
    public long variables;
    public long widgets;

    public String toString() {
        return "\n*** Metrics ***\nmeasures: " + this.measures + "\nmeasuresWrap: " + this.measuresWrap + "\nmeasuresWrapInfeasible: " + this.measuresWrapInfeasible + "\ndetermineGroups: " + this.determineGroups + "\ninfeasibleDetermineGroups: " + this.infeasibleDetermineGroups + "\ngraphOptimizer: " + this.graphOptimizer + "\nwidgets: " + this.widgets + "\ngraphSolved: " + this.graphSolved + "\nlinearSolved: " + this.linearSolved + "\n";
    }
}
