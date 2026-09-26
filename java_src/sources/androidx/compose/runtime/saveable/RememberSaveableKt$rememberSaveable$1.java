package androidx.compose.runtime.saveable;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.State;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class RememberSaveableKt$rememberSaveable$1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ String $finalKey;
    final /* synthetic */ SaveableStateRegistry $registry;
    final /* synthetic */ State<Saver<T, Object>> $saverState;
    final /* synthetic */ State<T> $valueState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RememberSaveableKt$rememberSaveable$1(SaveableStateRegistry saveableStateRegistry, String str, State<? extends Saver<T, Object>> state, State<? extends T> state2) {
        super(1);
        this.$registry = saveableStateRegistry;
        this.$finalKey = str;
        this.$saverState = state;
        this.$valueState = state2;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        RememberSaveableKt$rememberSaveable$1$valueProvider$1 rememberSaveableKt$rememberSaveable$1$valueProvider$1 = new RememberSaveableKt$rememberSaveable$1$valueProvider$1(this.$saverState, this.$valueState, this.$registry);
        RememberSaveableKt.c(this.$registry, rememberSaveableKt$rememberSaveable$1$valueProvider$1.invoke());
        final SaveableStateRegistry.Entry entryD = this.$registry.d(this.$finalKey, rememberSaveableKt$rememberSaveable$1$valueProvider$1);
        return new DisposableEffectResult() { // from class: androidx.compose.runtime.saveable.RememberSaveableKt$rememberSaveable$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                entryD.a();
            }
        };
    }
}
