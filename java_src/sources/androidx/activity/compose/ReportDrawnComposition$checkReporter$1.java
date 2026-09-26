package androidx.activity.compose;

import e8.a;
import e8.l;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
/* synthetic */ class ReportDrawnComposition$checkReporter$1 extends q implements l<a<? extends Boolean>, l0> {
    ReportDrawnComposition$checkReporter$1(Object obj) {
        super(1, obj, ReportDrawnComposition.class, "observeReporter", "observeReporter(Lkotlin/jvm/functions/Function0;)V", 0);
    }

    public final void a(@NotNull a<Boolean> p0) {
        t.j(p0, "p0");
        ((ReportDrawnComposition) this.receiver).c(p0);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(a<? extends Boolean> aVar) {
        a(aVar);
        return l0.INSTANCE;
    }
}
