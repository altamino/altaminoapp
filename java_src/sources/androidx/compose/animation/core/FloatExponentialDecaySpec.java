package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class FloatExponentialDecaySpec implements FloatDecayAnimationSpec {
    public static final int $stable = 0;
    private final float absVelocityThreshold;
    private final float friction;

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatExponentialDecaySpec() {
        float f = 0.0f;
        this(f, f, 3, null);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float a() {
        return this.absVelocityThreshold;
    }

    public FloatExponentialDecaySpec(float f, float f6) {
        this.absVelocityThreshold = Math.max(1.0E-7f, Math.abs(f6));
        this.friction = Math.max(1.0E-4f, f) * (-4.2f);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float b(long j6, float f, float f6) {
        return f6 * ((float) Math.exp(((j6 / 1000000) / 1000.0f) * this.friction));
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public long c(float f, float f6) {
        return ((long) ((((float) Math.log(a() / Math.abs(f6))) * 1000.0f) / this.friction)) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float d(float f, float f6) {
        if (Math.abs(f6) <= a()) {
            return f;
        }
        double dLog = Math.log(Math.abs(a() / f6));
        float f7 = this.friction;
        return (f - (f6 / f7)) + ((f6 / f7) * ((float) Math.exp((((double) f7) * ((dLog / ((double) f7)) * ((double) 1000))) / ((double) 1000.0f))));
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float e(long j6, float f, float f6) {
        float f7 = this.friction;
        return (f - (f6 / f7)) + ((f6 / f7) * ((float) Math.exp((f7 * (j6 / 1000000)) / 1000.0f)));
    }

    public /* synthetic */ FloatExponentialDecaySpec(float f, float f6, int i10, k kVar) {
        this((i10 & 1) != 0 ? 1.0f : f, (i10 & 2) != 0 ? 0.1f : f6);
    }
}
