package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Size;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$SizeToVector$1 extends v implements l<Size, AnimationVector2D> {
    public static final VectorConvertersKt$SizeToVector$1 INSTANCE = new VectorConvertersKt$SizeToVector$1();

    VectorConvertersKt$SizeToVector$1() {
        super(1);
    }

    @NotNull
    public final AnimationVector2D a(long j6) {
        return new AnimationVector2D(Size.i(j6), Size.g(j6));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ AnimationVector2D invoke(Size size) {
        return a(size.m());
    }
}
