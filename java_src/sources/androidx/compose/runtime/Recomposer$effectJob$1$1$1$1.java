package androidx.compose.runtime;

import e8.l;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.f;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class Recomposer$effectJob$1$1$1$1 extends v implements l<Throwable, l0> {
    final /* synthetic */ Throwable $throwable;
    final /* synthetic */ Recomposer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$effectJob$1$1$1$1(Recomposer recomposer, Throwable th) {
        super(1);
        this.this$0 = recomposer;
        this.$throwable = th;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        Object obj = this.this$0.stateLock;
        Recomposer recomposer = this.this$0;
        Throwable th2 = this.$throwable;
        synchronized (obj) {
            if (th2 == null) {
                th2 = null;
            } else if (th != null) {
                try {
                    if (!(!(th instanceof CancellationException))) {
                        th = null;
                    }
                    if (th != null) {
                        f.a(th2, th);
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            recomposer.closeCause = th2;
            recomposer._state.setValue(Recomposer.State.ShutDown);
            l0 l0Var = l0.INSTANCE;
        }
    }
}
