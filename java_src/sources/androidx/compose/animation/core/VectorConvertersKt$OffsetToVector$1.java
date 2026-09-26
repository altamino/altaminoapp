package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$OffsetToVector$1 extends v implements l<Offset, AnimationVector2D> {
    public static final VectorConvertersKt$OffsetToVector$1 INSTANCE = new VectorConvertersKt$OffsetToVector$1();

    VectorConvertersKt$OffsetToVector$1() {
        super(1);
    }

    @NotNull
    public final AnimationVector2D a(long j6) {
        return new AnimationVector2D(Offset.m(j6), Offset.n(j6));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ AnimationVector2D invoke(Offset offset) {
        return a(offset.u());
    }
}
