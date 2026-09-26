package androidx.compose.ui.platform;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;

/* JADX INFO: loaded from: classes8.dex */
final class ViewCompositionStrategy_androidKt$installForLifecycle$2 extends kotlin.jvm.internal.v implements e8.a<w7.l0> {
    final /* synthetic */ Lifecycle $lifecycle;
    final /* synthetic */ LifecycleEventObserver $observer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ViewCompositionStrategy_androidKt$installForLifecycle$2(Lifecycle lifecycle, LifecycleEventObserver lifecycleEventObserver) {
        super(0);
        this.$lifecycle = lifecycle;
        this.$observer = lifecycleEventObserver;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ w7.l0 invoke() {
        invoke2();
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$lifecycle.d(this.$observer);
    }
}
