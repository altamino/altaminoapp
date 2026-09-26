package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import e8.a;
import e8.l;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class ReportDrawnComposition implements a<l0> {

    @NotNull
    private final l<a<Boolean>, l0> checkReporter;

    @NotNull
    private final FullyDrawnReporter fullyDrawnReporter;

    @NotNull
    private final a<Boolean> predicate;

    @NotNull
    private final SnapshotStateObserver snapshotStateObserver;

    public ReportDrawnComposition(@NotNull FullyDrawnReporter fullyDrawnReporter, @NotNull a<Boolean> predicate) {
        t.j(fullyDrawnReporter, "fullyDrawnReporter");
        t.j(predicate, "predicate");
        this.fullyDrawnReporter = fullyDrawnReporter;
        this.predicate = predicate;
        SnapshotStateObserver snapshotStateObserver = new SnapshotStateObserver(ReportDrawnComposition$snapshotStateObserver$1.INSTANCE);
        snapshotStateObserver.l();
        this.snapshotStateObserver = snapshotStateObserver;
        this.checkReporter = new ReportDrawnComposition$checkReporter$1(this);
        fullyDrawnReporter.b(this);
        if (fullyDrawnReporter.e()) {
            return;
        }
        fullyDrawnReporter.c();
        c(predicate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(a<Boolean> aVar) {
        k0 k0Var = new k0();
        this.snapshotStateObserver.k(aVar, this.checkReporter, new ReportDrawnComposition$observeReporter$1(k0Var, aVar));
        if (k0Var.element) {
            d();
        }
    }

    public void b() {
        this.snapshotStateObserver.g();
        this.snapshotStateObserver.m();
    }

    public final void d() {
        this.snapshotStateObserver.h(this.predicate);
        if (!this.fullyDrawnReporter.e()) {
            this.fullyDrawnReporter.g();
        }
        b();
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        b();
        return l0.INSTANCE;
    }
}
