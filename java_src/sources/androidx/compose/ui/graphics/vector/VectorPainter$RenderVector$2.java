package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composition;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class VectorPainter$RenderVector$2 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ Composition $composition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VectorPainter$RenderVector$2(Composition composition) {
        super(1);
        this.$composition = composition;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        final Composition composition = this.$composition;
        return new DisposableEffectResult() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$RenderVector$2$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                composition.t();
            }
        };
    }
}
