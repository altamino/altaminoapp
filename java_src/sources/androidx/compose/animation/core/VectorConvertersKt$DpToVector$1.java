package androidx.compose.animation.core;

import androidx.compose.ui.unit.Dp;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$DpToVector$1 extends v implements l<Dp, AnimationVector1D> {
    public static final VectorConvertersKt$DpToVector$1 INSTANCE = new VectorConvertersKt$DpToVector$1();

    VectorConvertersKt$DpToVector$1() {
        super(1);
    }

    @NotNull
    public final AnimationVector1D a(float f) {
        return new AnimationVector1D(f);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ AnimationVector1D invoke(Dp dp) {
        return a(dp.l());
    }
}
