package androidx.activity.compose;

import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.State;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class ActivityResultRegistryKt$rememberLauncherForActivityResult$1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ ActivityResultRegistry $activityResultRegistry;
    final /* synthetic */ ActivityResultContract<Object, Object> $contract;
    final /* synthetic */ State<l<Object, l0>> $currentOnResult;
    final /* synthetic */ String $key;
    final /* synthetic */ ActivityResultLauncherHolder<Object> $realLauncher;

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        ActivityResultLauncherHolder<Object> activityResultLauncherHolder = this.$realLauncher;
        ActivityResultRegistry activityResultRegistry = this.$activityResultRegistry;
        String str = this.$key;
        ActivityResultContract<Object, Object> activityResultContract = this.$contract;
        final State<l<Object, l0>> state = this.$currentOnResult;
        activityResultLauncherHolder.b(activityResultRegistry.i(str, activityResultContract, new ActivityResultCallback<Object>() { // from class: androidx.activity.compose.ActivityResultRegistryKt$rememberLauncherForActivityResult$1.1
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj) {
                state.getValue().invoke(obj);
            }
        }));
        final ActivityResultLauncherHolder<Object> activityResultLauncherHolder2 = this.$realLauncher;
        return new DisposableEffectResult() { // from class: androidx.activity.compose.ActivityResultRegistryKt$rememberLauncherForActivityResult$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                activityResultLauncherHolder2.c();
            }
        };
    }
}
