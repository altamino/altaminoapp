package androidx.compose.ui.platform;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2 extends kotlin.jvm.internal.v implements e8.l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ DisposableSaveableStateRegistry $saveableStateRegistry;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2(DisposableSaveableStateRegistry disposableSaveableStateRegistry) {
        super(1);
        this.$saveableStateRegistry = disposableSaveableStateRegistry;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        kotlin.jvm.internal.t.j(DisposableEffect, "$this$DisposableEffect");
        final DisposableSaveableStateRegistry disposableSaveableStateRegistry = this.$saveableStateRegistry;
        return new DisposableEffectResult() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                disposableSaveableStateRegistry.e();
            }
        };
    }
}
