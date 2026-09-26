package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
public final class SuspendAnimationKt$animateDecay$4 extends v implements l {
    public static final SuspendAnimationKt$animateDecay$4 INSTANCE = new SuspendAnimationKt$animateDecay$4();

    SuspendAnimationKt$animateDecay$4() {
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
