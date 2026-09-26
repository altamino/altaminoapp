package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import e8.l;
import j8.o;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class ColorVectorConverterKt$ColorToVector$1 extends v implements l<ColorSpace, TwoWayConverter<Color, AnimationVector4D>> {
    public static final ColorVectorConverterKt$ColorToVector$1 INSTANCE = new ColorVectorConverterKt$ColorToVector$1();

    /* JADX INFO: renamed from: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Color, AnimationVector4D> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @NotNull
        public final AnimationVector4D a(long j6) {
            long j10 = Color.j(j6, ColorSpaces.INSTANCE.g());
            float fS = Color.s(j10);
            float fR = Color.r(j10);
            float fP = Color.p(j10);
            double d = 0.33333334f;
            return new AnimationVector4D(Color.o(j6), (float) Math.pow(ColorVectorConverterKt.e(0, fS, fR, fP, ColorVectorConverterKt.M1), d), (float) Math.pow(ColorVectorConverterKt.e(1, fS, fR, fP, ColorVectorConverterKt.M1), d), (float) Math.pow(ColorVectorConverterKt.e(2, fS, fR, fP, ColorVectorConverterKt.M1), d));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ AnimationVector4D invoke(Color color) {
            return a(color.v());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<AnimationVector4D, Color> {
        final /* synthetic */ ColorSpace $colorSpace;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ColorSpace colorSpace) {
            super(1);
            this.$colorSpace = colorSpace;
        }

        public final long a(@NotNull AnimationVector4D it) {
            t.j(it, "it");
            double d = 3.0f;
            float fPow = (float) Math.pow(it.g(), d);
            float fPow2 = (float) Math.pow(it.h(), d);
            float fPow3 = (float) Math.pow(it.i(), d);
            return Color.j(ColorKt.a(o.m(ColorVectorConverterKt.e(0, fPow, fPow2, fPow3, ColorVectorConverterKt.InverseM1), -2.0f, 2.0f), o.m(ColorVectorConverterKt.e(1, fPow, fPow2, fPow3, ColorVectorConverterKt.InverseM1), -2.0f, 2.0f), o.m(ColorVectorConverterKt.e(2, fPow, fPow2, fPow3, ColorVectorConverterKt.InverseM1), -2.0f, 2.0f), o.m(it.f(), 0.0f, 1.0f), ColorSpaces.INSTANCE.g()), this.$colorSpace);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Color invoke(AnimationVector4D animationVector4D) {
            return Color.h(a(animationVector4D));
        }
    }

    ColorVectorConverterKt$ColorToVector$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final TwoWayConverter<Color, AnimationVector4D> invoke(@NotNull ColorSpace colorSpace) {
        t.j(colorSpace, "colorSpace");
        return VectorConvertersKt.a(AnonymousClass1.INSTANCE, new AnonymousClass2(colorSpace));
    }
}
