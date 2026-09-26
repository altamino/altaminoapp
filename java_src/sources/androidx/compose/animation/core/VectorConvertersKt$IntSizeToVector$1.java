package androidx.compose.animation.core;

import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$IntSizeToVector$1 extends v implements l<IntSize, AnimationVector2D> {
    public static final VectorConvertersKt$IntSizeToVector$1 INSTANCE = new VectorConvertersKt$IntSizeToVector$1();

    VectorConvertersKt$IntSizeToVector$1() {
        super(1);
    }

    @NotNull
    public final AnimationVector2D a(long j6) {
        return new AnimationVector2D(IntSize.g(j6), IntSize.f(j6));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ AnimationVector2D invoke(IntSize intSize) {
        return a(intSize.j());
    }
}
