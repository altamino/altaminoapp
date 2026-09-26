package androidx.compose.ui.platform;

import android.view.Choreographer;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidUiFrameClock$withFrameNanos$2$1 extends kotlin.jvm.internal.v implements e8.l<Throwable, w7.l0> {
    final /* synthetic */ Choreographer.FrameCallback $callback;
    final /* synthetic */ AndroidUiDispatcher $uiDispatcher;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidUiFrameClock$withFrameNanos$2$1(AndroidUiDispatcher androidUiDispatcher, Choreographer.FrameCallback frameCallback) {
        super(1);
        this.$uiDispatcher = androidUiDispatcher;
        this.$callback = frameCallback;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        invoke2(th);
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        this.$uiDispatcher.R0(this.$callback);
    }
}
