package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class FloatTweenSpec implements FloatAnimationSpec {
    public static final int $stable = 0;
    private final int delay;
    private final int duration;

    @NotNull
    private final Easing easing;

    public FloatTweenSpec() {
        this(0, 0, null, 7, null);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public /* bridge */ /* synthetic */ VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return a(twoWayConverter);
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public long c(float f, float f6, float f7) {
        return ((long) (this.delay + this.duration)) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public /* synthetic */ float d(float f, float f6, float f7) {
        return c.a(this, f, f6, f7);
    }

    public FloatTweenSpec(int i10, int i11, @NotNull Easing easing) {
        t.j(easing, "easing");
        this.duration = i10;
        this.delay = i11;
        this.easing = easing;
    }

    private final long f(long j6) {
        return o.p(j6 - ((long) this.delay), 0L, this.duration);
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec, androidx.compose.animation.core.AnimationSpec
    public /* synthetic */ VectorizedFloatAnimationSpec a(TwoWayConverter twoWayConverter) {
        return c.c(this, twoWayConverter);
    }

    public /* synthetic */ FloatTweenSpec(int i10, int i11, Easing easing, int i12, k kVar) {
        this((i12 & 1) != 0 ? 300 : i10, (i12 & 2) != 0 ? 0 : i11, (i12 & 4) != 0 ? EasingKt.a() : easing);
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float b(long j6, float f, float f6, float f7) {
        long jF = f(j6 / 1000000);
        if (jF < 0) {
            return 0.0f;
        }
        if (jF == 0) {
            return f7;
        }
        return (e(jF * 1000000, f, f6, f7) - e((jF - 1) * 1000000, f, f6, f7)) * 1000.0f;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float e(long j6, float f, float f6, float f7) {
        float f10;
        long jF = f(j6 / 1000000);
        int i10 = this.duration;
        if (i10 == 0) {
            f10 = 1.0f;
        } else {
            f10 = jF / i10;
        }
        return VectorConvertersKt.k(f, f6, this.easing.a(o.m(f10, 0.0f, 1.0f)));
    }
}
