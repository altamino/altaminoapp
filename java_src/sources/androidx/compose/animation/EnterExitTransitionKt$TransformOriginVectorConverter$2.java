package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.TransformOriginKt;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class EnterExitTransitionKt$TransformOriginVectorConverter$2 extends v implements l<AnimationVector2D, TransformOrigin> {
    public static final EnterExitTransitionKt$TransformOriginVectorConverter$2 INSTANCE = new EnterExitTransitionKt$TransformOriginVectorConverter$2();

    EnterExitTransitionKt$TransformOriginVectorConverter$2() {
        super(1);
    }

    public final long a(@NotNull AnimationVector2D it) {
        t.j(it, "it");
        return TransformOriginKt.a(it.f(), it.g());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ TransformOrigin invoke(AnimationVector2D animationVector2D) {
        return TransformOrigin.b(a(animationVector2D));
    }
}
