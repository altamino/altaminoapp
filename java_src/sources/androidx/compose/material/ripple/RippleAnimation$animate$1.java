package androidx.compose.material.ripple;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@f(c = "androidx.compose.material.ripple.RippleAnimation", f = "RippleAnimation.kt", l = {80, 82, 83}, m = "animate")
final class RippleAnimation$animate$1 extends d {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RippleAnimation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RippleAnimation$animate$1(RippleAnimation rippleAnimation, kotlin.coroutines.d<? super RippleAnimation$animate$1> dVar) {
        super(dVar);
        this.this$0 = rippleAnimation;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(this);
    }
}
