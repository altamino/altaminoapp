package androidx.compose.foundation;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class SystemGestureExclusionKt$excludeFromSystemGestureR$1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ ExcludeFromSystemGestureModifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemGestureExclusionKt$excludeFromSystemGestureR$1(ExcludeFromSystemGestureModifier excludeFromSystemGestureModifier) {
        super(1);
        this.$modifier = excludeFromSystemGestureModifier;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        final ExcludeFromSystemGestureModifier excludeFromSystemGestureModifier = this.$modifier;
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.SystemGestureExclusionKt$excludeFromSystemGestureR$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                excludeFromSystemGestureModifier.c();
            }
        };
    }
}
