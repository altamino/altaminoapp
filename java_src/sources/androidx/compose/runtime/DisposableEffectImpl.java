package androidx.compose.runtime;

import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class DisposableEffectImpl implements RememberObserver {

    @NotNull
    private final l<DisposableEffectScope, DisposableEffectResult> effect;

    @Nullable
    private DisposableEffectResult onDispose;

    @Override // androidx.compose.runtime.RememberObserver
    public void c() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DisposableEffectImpl(@NotNull l<? super DisposableEffectScope, ? extends DisposableEffectResult> effect) {
        t.j(effect, "effect");
        this.effect = effect;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void b() {
        this.onDispose = this.effect.invoke(EffectsKt.InternalDisposableEffectScope);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void d() {
        DisposableEffectResult disposableEffectResult = this.onDispose;
        if (disposableEffectResult != null) {
            disposableEffectResult.t();
        }
        this.onDispose = null;
    }
}
