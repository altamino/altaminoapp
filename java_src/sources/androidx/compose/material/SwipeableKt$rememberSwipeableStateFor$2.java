package androidx.compose.material;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class SwipeableKt$rememberSwipeableStateFor$2 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ MutableState<Boolean> $forceAnimationCheck;
    final /* synthetic */ l<T, l0> $onValueChange;
    final /* synthetic */ SwipeableState<T> $swipeableState;
    final /* synthetic */ T $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SwipeableKt$rememberSwipeableStateFor$2(T t5, SwipeableState<T> swipeableState, l<? super T, l0> lVar, MutableState<Boolean> mutableState) {
        super(1);
        this.$value = t5;
        this.$swipeableState = swipeableState;
        this.$onValueChange = lVar;
        this.$forceAnimationCheck = mutableState;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        if (!t.e(this.$value, this.$swipeableState.p())) {
            this.$onValueChange.invoke((T) this.$swipeableState.p());
            MutableState<Boolean> mutableState = this.$forceAnimationCheck;
            mutableState.setValue(Boolean.valueOf(!mutableState.getValue().booleanValue()));
        }
        return new DisposableEffectResult() { // from class: androidx.compose.material.SwipeableKt$rememberSwipeableStateFor$2$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
            }
        };
    }
}
