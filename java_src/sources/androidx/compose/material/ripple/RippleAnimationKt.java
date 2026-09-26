package androidx.compose.material.ripple;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class RippleAnimationKt {
    private static final float BoundedRippleExtraRadius = Dp.f(10);
    private static final int FadeInDuration = 75;
    private static final int FadeOutDuration = 150;
    private static final int RadiusDuration = 225;

    public static final float a(@NotNull Density getRippleEndRadius, boolean z6, long j6) {
        t.j(getRippleEndRadius, "$this$getRippleEndRadius");
        float fK = Offset.k(OffsetKt.a(Size.i(j6), Size.g(j6))) / 2.0f;
        return z6 ? fK + getRippleEndRadius.H0(BoundedRippleExtraRadius) : fK;
    }

    public static final float b(long j6) {
        return Math.max(Size.i(j6), Size.g(j6)) * 0.3f;
    }
}
