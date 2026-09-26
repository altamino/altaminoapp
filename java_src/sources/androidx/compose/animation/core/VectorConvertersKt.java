package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.s;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class VectorConvertersKt {

    @NotNull
    private static final TwoWayConverter<Float, AnimationVector1D> FloatToVector = a(VectorConvertersKt$FloatToVector$1.INSTANCE, VectorConvertersKt$FloatToVector$2.INSTANCE);

    @NotNull
    private static final TwoWayConverter<Integer, AnimationVector1D> IntToVector = a(VectorConvertersKt$IntToVector$1.INSTANCE, VectorConvertersKt$IntToVector$2.INSTANCE);

    @NotNull
    private static final TwoWayConverter<Dp, AnimationVector1D> DpToVector = a(VectorConvertersKt$DpToVector$1.INSTANCE, VectorConvertersKt$DpToVector$2.INSTANCE);

    @NotNull
    private static final TwoWayConverter<DpOffset, AnimationVector2D> DpOffsetToVector = a(VectorConvertersKt$DpOffsetToVector$1.INSTANCE, VectorConvertersKt$DpOffsetToVector$2.INSTANCE);

    @NotNull
    private static final TwoWayConverter<Size, AnimationVector2D> SizeToVector = a(VectorConvertersKt$SizeToVector$1.INSTANCE, VectorConvertersKt$SizeToVector$2.INSTANCE);

    @NotNull
    private static final TwoWayConverter<Offset, AnimationVector2D> OffsetToVector = a(VectorConvertersKt$OffsetToVector$1.INSTANCE, VectorConvertersKt$OffsetToVector$2.INSTANCE);

    @NotNull
    private static final TwoWayConverter<IntOffset, AnimationVector2D> IntOffsetToVector = a(VectorConvertersKt$IntOffsetToVector$1.INSTANCE, VectorConvertersKt$IntOffsetToVector$2.INSTANCE);

    @NotNull
    private static final TwoWayConverter<IntSize, AnimationVector2D> IntSizeToVector = a(VectorConvertersKt$IntSizeToVector$1.INSTANCE, VectorConvertersKt$IntSizeToVector$2.INSTANCE);

    @NotNull
    private static final TwoWayConverter<Rect, AnimationVector4D> RectToVector = a(VectorConvertersKt$RectToVector$1.INSTANCE, VectorConvertersKt$RectToVector$2.INSTANCE);

    @NotNull
    public static final TwoWayConverter<Offset, AnimationVector2D> b(@NotNull Offset.Companion companion) {
        t.j(companion, "<this>");
        return OffsetToVector;
    }

    @NotNull
    public static final TwoWayConverter<Rect, AnimationVector4D> c(@NotNull Rect.Companion companion) {
        t.j(companion, "<this>");
        return RectToVector;
    }

    @NotNull
    public static final TwoWayConverter<Size, AnimationVector2D> d(@NotNull Size.Companion companion) {
        t.j(companion, "<this>");
        return SizeToVector;
    }

    @NotNull
    public static final TwoWayConverter<Dp, AnimationVector1D> e(@NotNull Dp.Companion companion) {
        t.j(companion, "<this>");
        return DpToVector;
    }

    @NotNull
    public static final TwoWayConverter<DpOffset, AnimationVector2D> f(@NotNull DpOffset.Companion companion) {
        t.j(companion, "<this>");
        return DpOffsetToVector;
    }

    @NotNull
    public static final TwoWayConverter<IntOffset, AnimationVector2D> g(@NotNull IntOffset.Companion companion) {
        t.j(companion, "<this>");
        return IntOffsetToVector;
    }

    @NotNull
    public static final TwoWayConverter<IntSize, AnimationVector2D> h(@NotNull IntSize.Companion companion) {
        t.j(companion, "<this>");
        return IntSizeToVector;
    }

    @NotNull
    public static final TwoWayConverter<Float, AnimationVector1D> i(@NotNull m mVar) {
        t.j(mVar, "<this>");
        return FloatToVector;
    }

    @NotNull
    public static final TwoWayConverter<Integer, AnimationVector1D> j(@NotNull s sVar) {
        t.j(sVar, "<this>");
        return IntToVector;
    }

    public static final float k(float f, float f6, float f7) {
        return (f * (1 - f7)) + (f6 * f7);
    }

    @NotNull
    public static final <T, V extends AnimationVector> TwoWayConverter<T, V> a(@NotNull l<? super T, ? extends V> convertToVector, @NotNull l<? super V, ? extends T> convertFromVector) {
        t.j(convertToVector, "convertToVector");
        t.j(convertFromVector, "convertFromVector");
        return new TwoWayConverterImpl(convertToVector, convertFromVector);
    }
}
