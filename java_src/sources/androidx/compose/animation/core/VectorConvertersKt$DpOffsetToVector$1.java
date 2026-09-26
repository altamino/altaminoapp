package androidx.compose.animation.core;

import androidx.compose.ui.unit.DpOffset;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$DpOffsetToVector$1 extends v implements l<DpOffset, AnimationVector2D> {
    public static final VectorConvertersKt$DpOffsetToVector$1 INSTANCE = new VectorConvertersKt$DpOffsetToVector$1();

    VectorConvertersKt$DpOffsetToVector$1() {
        super(1);
    }

    @NotNull
    public final AnimationVector2D a(long j6) {
        return new AnimationVector2D(DpOffset.g(j6), DpOffset.h(j6));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ AnimationVector2D invoke(DpOffset dpOffset) {
        return a(dpOffset.k());
    }
}
