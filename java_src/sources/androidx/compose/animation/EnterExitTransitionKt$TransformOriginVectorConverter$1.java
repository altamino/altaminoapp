package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.graphics.TransformOrigin;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class EnterExitTransitionKt$TransformOriginVectorConverter$1 extends v implements l<TransformOrigin, AnimationVector2D> {
    public static final EnterExitTransitionKt$TransformOriginVectorConverter$1 INSTANCE = new EnterExitTransitionKt$TransformOriginVectorConverter$1();

    EnterExitTransitionKt$TransformOriginVectorConverter$1() {
        super(1);
    }

    @NotNull
    public final AnimationVector2D a(long j6) {
        return new AnimationVector2D(TransformOrigin.f(j6), TransformOrigin.g(j6));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ AnimationVector2D invoke(TransformOrigin transformOrigin) {
        return a(transformOrigin.j());
    }
}
