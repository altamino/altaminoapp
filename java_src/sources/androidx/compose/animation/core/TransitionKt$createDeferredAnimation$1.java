package androidx.compose.animation.core;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class TransitionKt$createDeferredAnimation$1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ Transition<S>.DeferredAnimation<T, V> $lazyAnim;
    final /* synthetic */ Transition<S> $this_createDeferredAnimation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransitionKt$createDeferredAnimation$1(Transition<S> transition, Transition<S>.DeferredAnimation<T, V> deferredAnimation) {
        super(1);
        this.$this_createDeferredAnimation = transition;
        this.$lazyAnim = deferredAnimation;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        final Transition<S> transition = this.$this_createDeferredAnimation;
        final Transition<S>.DeferredAnimation<T, V> deferredAnimation = this.$lazyAnim;
        return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createDeferredAnimation$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                transition.v(deferredAnimation);
            }
        };
    }
}
