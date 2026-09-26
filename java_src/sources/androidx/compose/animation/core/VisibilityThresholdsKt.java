package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.s;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class VisibilityThresholdsKt {
    private static final float DpVisibilityThreshold = 0.1f;
    private static final float PxVisibilityThreshold = 0.5f;

    @NotNull
    private static final Rect rectVisibilityThreshold;

    @NotNull
    private static final Map<TwoWayConverter<?, ?>, Float> visibilityThresholdMap;

    public static final int b(@NotNull s sVar) {
        t.j(sVar, "<this>");
        return 1;
    }

    @NotNull
    public static final Rect g(@NotNull Rect.Companion companion) {
        t.j(companion, "<this>");
        return rectVisibilityThreshold;
    }

    @NotNull
    public static final Map<TwoWayConverter<?, ?>, Float> h() {
        return visibilityThresholdMap;
    }

    static {
        Float fValueOf = Float.valueOf(0.5f);
        rectVisibilityThreshold = new Rect(0.5f, 0.5f, 0.5f, 0.5f);
        TwoWayConverter<Integer, AnimationVector1D> twoWayConverterJ = VectorConvertersKt.j(s.INSTANCE);
        Float fValueOf2 = Float.valueOf(1.0f);
        TwoWayConverter<Dp, AnimationVector1D> twoWayConverterE = VectorConvertersKt.e(Dp.Companion);
        Float fValueOf3 = Float.valueOf(0.1f);
        visibilityThresholdMap = s0.l(a0.a(twoWayConverterJ, fValueOf2), a0.a(VectorConvertersKt.h(IntSize.Companion), fValueOf2), a0.a(VectorConvertersKt.g(IntOffset.Companion), fValueOf2), a0.a(VectorConvertersKt.i(m.INSTANCE), Float.valueOf(0.01f)), a0.a(VectorConvertersKt.c(Rect.Companion), fValueOf), a0.a(VectorConvertersKt.d(Size.Companion), fValueOf), a0.a(VectorConvertersKt.b(Offset.Companion), fValueOf), a0.a(twoWayConverterE, fValueOf3), a0.a(VectorConvertersKt.f(DpOffset.Companion), fValueOf3));
    }

    public static final float a(@NotNull Dp.Companion companion) {
        t.j(companion, "<this>");
        return Dp.f(0.1f);
    }

    public static final long c(@NotNull Offset.Companion companion) {
        t.j(companion, "<this>");
        return OffsetKt.a(0.5f, 0.5f);
    }

    public static final long d(@NotNull Size.Companion companion) {
        t.j(companion, "<this>");
        return SizeKt.a(0.5f, 0.5f);
    }

    public static final long e(@NotNull IntOffset.Companion companion) {
        t.j(companion, "<this>");
        return IntOffsetKt.a(1, 1);
    }

    public static final long f(@NotNull IntSize.Companion companion) {
        t.j(companion, "<this>");
        return IntSizeKt.a(1, 1);
    }
}
