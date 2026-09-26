package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$IntToVector$1 extends v implements l<Integer, AnimationVector1D> {
    public static final VectorConvertersKt$IntToVector$1 INSTANCE = new VectorConvertersKt$IntToVector$1();

    VectorConvertersKt$IntToVector$1() {
        super(1);
    }

    @NotNull
    public final AnimationVector1D b(int i10) {
        return new AnimationVector1D(i10);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ AnimationVector1D invoke(Integer num) {
        return b(num.intValue());
    }
}
