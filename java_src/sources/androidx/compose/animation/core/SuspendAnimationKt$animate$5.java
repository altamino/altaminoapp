package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SuspendAnimationKt$animate$5 extends v implements l {
    public static final SuspendAnimationKt$animate$5 INSTANCE = new SuspendAnimationKt$animate$5();

    SuspendAnimationKt$animate$5() {
        super(1);
    }

    public final void a(@NotNull AnimationScope animationScope) {
        t.j(animationScope, "$this$null");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        a((AnimationScope) obj);
        return l0.INSTANCE;
    }
}
