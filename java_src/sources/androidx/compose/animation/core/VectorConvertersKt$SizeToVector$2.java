package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$SizeToVector$2 extends v implements l<AnimationVector2D, Size> {
    public static final VectorConvertersKt$SizeToVector$2 INSTANCE = new VectorConvertersKt$SizeToVector$2();

    VectorConvertersKt$SizeToVector$2() {
        super(1);
    }

    public final long a(@NotNull AnimationVector2D it) {
        t.j(it, "it");
        return SizeKt.a(it.f(), it.g());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Size invoke(AnimationVector2D animationVector2D) {
        return Size.c(a(animationVector2D));
    }
}
