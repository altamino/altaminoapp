package androidx.compose.ui.layout;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.State;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SubcomposeLayoutKt$SubcomposeLayout$5$1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ State<SubcomposeLayoutState> $stateHolder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubcomposeLayoutKt$SubcomposeLayout$5$1(State<SubcomposeLayoutState> state) {
        super(1);
        this.$stateHolder = state;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        final State<SubcomposeLayoutState> state = this.$stateHolder;
        return new DisposableEffectResult() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$5$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                ((SubcomposeLayoutState) state.getValue()).d();
            }
        };
    }
}
