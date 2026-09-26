package androidx.lifecycle;

import e8.l;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k0;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2 extends v implements l<Throwable, l0> {
    final /* synthetic */ k0 $lifecycleDispatcher;
    final /* synthetic */ WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 $observer;
    final /* synthetic */ Lifecycle $this_suspendWithStateAtLeastUnchecked;

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        k0 k0Var = this.$lifecycleDispatcher;
        kotlin.coroutines.h hVar = kotlin.coroutines.h.INSTANCE;
        if (!k0Var.isDispatchNeeded(hVar)) {
            this.$this_suspendWithStateAtLeastUnchecked.d(this.$observer);
            return;
        }
        k0 k0Var2 = this.$lifecycleDispatcher;
        final Lifecycle lifecycle = this.$this_suspendWithStateAtLeastUnchecked;
        final WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 = this.$observer;
        k0Var2.dispatch(hVar, new Runnable() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2.1
            @Override // java.lang.Runnable
            public final void run() {
                lifecycle.d(withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1);
            }
        });
    }
}
