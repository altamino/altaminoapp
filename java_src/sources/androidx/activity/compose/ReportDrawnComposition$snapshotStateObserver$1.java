package androidx.activity.compose;

import e8.a;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class ReportDrawnComposition$snapshotStateObserver$1 extends v implements l<a<? extends l0>, l0> {
    public static final ReportDrawnComposition$snapshotStateObserver$1 INSTANCE = new ReportDrawnComposition$snapshotStateObserver$1();

    ReportDrawnComposition$snapshotStateObserver$1() {
        super(1);
    }

    public final void a(@NotNull a<l0> command) {
        t.j(command, "command");
        command.invoke();
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(a<? extends l0> aVar) {
        a(aVar);
        return l0.INSTANCE;
    }
}
