package androidx.core.os;

import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class HandlerKt$postAtTime$runnable$1 implements Runnable {
    final /* synthetic */ e8.a<l0> $action;

    public HandlerKt$postAtTime$runnable$1(e8.a<l0> aVar) {
        this.$action = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$action.invoke();
    }
}
