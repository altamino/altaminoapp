package androidx.compose.animation.core;

import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$IntSizeToVector$2 extends v implements l<AnimationVector2D, IntSize> {
    public static final VectorConvertersKt$IntSizeToVector$2 INSTANCE = new VectorConvertersKt$IntSizeToVector$2();

    VectorConvertersKt$IntSizeToVector$2() {
        super(1);
    }

    public final long a(@NotNull AnimationVector2D it) {
        t.j(it, "it");
        return IntSizeKt.a(g8.c.c(it.f()), g8.c.c(it.g()));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntSize invoke(AnimationVector2D animationVector2D) {
        return IntSize.b(a(animationVector2D));
    }
}
