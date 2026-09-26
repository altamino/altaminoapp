package androidx.window.layout;

import e8.l;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final /* synthetic */ class WindowMetricsCalculator$Companion$overrideDecorator$1 extends q implements l<WindowMetricsCalculator, WindowMetricsCalculator> {
    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final WindowMetricsCalculator invoke(@NotNull WindowMetricsCalculator p0) {
        t.j(p0, "p0");
        return ((WindowMetricsCalculatorDecorator) this.receiver).a(p0);
    }
}
