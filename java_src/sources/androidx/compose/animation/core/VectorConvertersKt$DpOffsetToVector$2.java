package androidx.compose.animation.core;

import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpOffset;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$DpOffsetToVector$2 extends v implements l<AnimationVector2D, DpOffset> {
    public static final VectorConvertersKt$DpOffsetToVector$2 INSTANCE = new VectorConvertersKt$DpOffsetToVector$2();

    VectorConvertersKt$DpOffsetToVector$2() {
        super(1);
    }

    public final long a(@NotNull AnimationVector2D it) {
        t.j(it, "it");
        return DpKt.a(Dp.f(it.f()), Dp.f(it.g()));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ DpOffset invoke(AnimationVector2D animationVector2D) {
        return DpOffset.c(a(animationVector2D));
    }
}
