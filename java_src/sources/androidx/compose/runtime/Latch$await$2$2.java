package androidx.compose.runtime;

import e8.l;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class Latch$await$2$2 extends v implements l<Throwable, l0> {
    final /* synthetic */ o<l0> $co;
    final /* synthetic */ Latch this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    Latch$await$2$2(Latch latch, o<? super l0> oVar) {
        super(1);
        this.this$0 = latch;
        this.$co = oVar;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        Object obj = this.this$0.lock;
        Latch latch = this.this$0;
        o<l0> oVar = this.$co;
        synchronized (obj) {
            latch.awaiters.remove(oVar);
            l0 l0Var = l0.INSTANCE;
        }
    }
}
