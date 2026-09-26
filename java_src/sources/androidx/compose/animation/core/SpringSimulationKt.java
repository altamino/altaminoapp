package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes2.dex */
public final class SpringSimulationKt {
    private static final float UNSET = Float.MAX_VALUE;
    private static final double VelocityThresholdMultiplier = 62.5d;

    public static final float b() {
        return UNSET;
    }

    public static final long a(float f, float f6) {
        return Motion.a((((long) Float.floatToIntBits(f6)) & 4294967295L) | (Float.floatToIntBits(f) << 32));
    }
}
