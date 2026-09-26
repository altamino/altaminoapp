package androidx.compose.foundation.gestures;

import com.narvii.monetization.bubble.BubbleService;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@f(c = "androidx.compose.foundation.gestures.PressGestureScopeImpl", f = "TapGestureDetector.kt", l = {BubbleService.DEFAULT_DENSITY}, m = "awaitRelease")
final class PressGestureScopeImpl$awaitRelease$1 extends d {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PressGestureScopeImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PressGestureScopeImpl$awaitRelease$1(PressGestureScopeImpl pressGestureScopeImpl, kotlin.coroutines.d<? super PressGestureScopeImpl$awaitRelease$1> dVar) {
        super(dVar);
        this.this$0 = pressGestureScopeImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.A0(this);
    }
}
