package androidx.compose.runtime;

import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class DisposableEffectScope$onDispose$1 implements DisposableEffectResult {
    final /* synthetic */ e8.a<l0> $onDisposeEffect;

    public DisposableEffectScope$onDispose$1(e8.a<l0> aVar) {
        this.$onDisposeEffect = aVar;
    }

    @Override // androidx.compose.runtime.DisposableEffectResult
    public void t() {
        this.$onDisposeEffect.invoke();
    }
}
