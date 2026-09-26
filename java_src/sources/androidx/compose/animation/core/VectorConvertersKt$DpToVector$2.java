package androidx.compose.animation.core;

import androidx.compose.ui.unit.Dp;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$DpToVector$2 extends v implements l<AnimationVector1D, Dp> {
    public static final VectorConvertersKt$DpToVector$2 INSTANCE = new VectorConvertersKt$DpToVector$2();

    VectorConvertersKt$DpToVector$2() {
        super(1);
    }

    public final float a(@NotNull AnimationVector1D it) {
        t.j(it, "it");
        return Dp.f(it.f());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Dp invoke(AnimationVector1D animationVector1D) {
        return Dp.c(a(animationVector1D));
    }
}
