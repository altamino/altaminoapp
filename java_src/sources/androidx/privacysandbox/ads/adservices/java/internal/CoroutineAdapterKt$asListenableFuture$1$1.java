package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import e8.l;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class CoroutineAdapterKt$asListenableFuture$1$1 extends v implements l<Throwable, l0> {
    final /* synthetic */ CallbackToFutureAdapter.Completer<T> $completer;
    final /* synthetic */ v0<T> $this_asListenableFuture;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CoroutineAdapterKt$asListenableFuture$1$1(CallbackToFutureAdapter.Completer<T> completer, v0<? extends T> v0Var) {
        super(1);
        this.$completer = completer;
        this.$this_asListenableFuture = v0Var;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        if (th == null) {
            this.$completer.b((T) this.$this_asListenableFuture.h());
        } else if (th instanceof CancellationException) {
            this.$completer.c();
        } else {
            this.$completer.e(th);
        }
    }
}
