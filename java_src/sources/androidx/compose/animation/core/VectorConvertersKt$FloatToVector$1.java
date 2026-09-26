package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$FloatToVector$1 extends v implements l<Float, AnimationVector1D> {
    public static final VectorConvertersKt$FloatToVector$1 INSTANCE = new VectorConvertersKt$FloatToVector$1();

    VectorConvertersKt$FloatToVector$1() {
        super(1);
    }

    @NotNull
    public final AnimationVector1D a(float f) {
        return new AnimationVector1D(f);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ AnimationVector1D invoke(Float f) {
        return a(f.floatValue());
    }
}
