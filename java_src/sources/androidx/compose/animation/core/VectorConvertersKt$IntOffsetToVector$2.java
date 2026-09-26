package androidx.compose.animation.core;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$IntOffsetToVector$2 extends v implements l<AnimationVector2D, IntOffset> {
    public static final VectorConvertersKt$IntOffsetToVector$2 INSTANCE = new VectorConvertersKt$IntOffsetToVector$2();

    VectorConvertersKt$IntOffsetToVector$2() {
        super(1);
    }

    public final long a(@NotNull AnimationVector2D it) {
        t.j(it, "it");
        return IntOffsetKt.a(g8.c.c(it.f()), g8.c.c(it.g()));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntOffset invoke(AnimationVector2D animationVector2D) {
        return IntOffset.b(a(animationVector2D));
    }
}
