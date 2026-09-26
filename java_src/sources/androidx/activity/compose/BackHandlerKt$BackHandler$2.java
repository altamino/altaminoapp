package androidx.activity.compose;

import androidx.activity.OnBackPressedDispatcher;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.lifecycle.LifecycleOwner;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class BackHandlerKt$BackHandler$2 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ BackHandlerKt$BackHandler$backCallback$1$1 $backCallback;
    final /* synthetic */ OnBackPressedDispatcher $backDispatcher;
    final /* synthetic */ LifecycleOwner $lifecycleOwner;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BackHandlerKt$BackHandler$2(OnBackPressedDispatcher onBackPressedDispatcher, LifecycleOwner lifecycleOwner, BackHandlerKt$BackHandler$backCallback$1$1 backHandlerKt$BackHandler$backCallback$1$1) {
        super(1);
        this.$backDispatcher = onBackPressedDispatcher;
        this.$lifecycleOwner = lifecycleOwner;
        this.$backCallback = backHandlerKt$BackHandler$backCallback$1$1;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        this.$backDispatcher.b(this.$lifecycleOwner, this.$backCallback);
        final BackHandlerKt$BackHandler$backCallback$1$1 backHandlerKt$BackHandler$backCallback$1$1 = this.$backCallback;
        return new DisposableEffectResult() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$2$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                g();
            }
        };
    }
}
