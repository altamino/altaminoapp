package androidx.core.os;

import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class HandlerKt$postDelayed$runnable$1 implements Runnable {
    final /* synthetic */ e8.a<l0> $action;

    public HandlerKt$postDelayed$runnable$1(e8.a<l0> aVar) {
        this.$action = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$action.invoke();
    }
}
