package androidx.compose.foundation.layout;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class AndroidFlingSpline {
    private static final int NbSamples = 100;

    @NotNull
    public static final AndroidFlingSpline INSTANCE = new AndroidFlingSpline();

    @NotNull
    private static final float[] SplinePositions = new float[101];

    @NotNull
    private static final float[] SplineTimes = new float[101];

    public static final class FlingResult {
        private final long packedValue;

        public static long a(long j6) {
            return j6;
        }

        public static boolean b(long j6, Object obj) {
            return (obj instanceof FlingResult) && j6 == ((FlingResult) obj).g();
        }

        public static int e(long j6) {
            return i.a.a(j6);
        }

        public static String f(long j6) {
            return "FlingResult(packedValue=" + j6 + ')';
        }

        public boolean equals(Object obj) {
            return b(this.packedValue, obj);
        }

        public final /* synthetic */ long g() {
            return this.packedValue;
        }

        public int hashCode() {
            return e(this.packedValue);
        }

        public String toString() {
            return f(this.packedValue);
        }

        public static final float c(long j6) {
            kotlin.jvm.internal.m mVar = kotlin.jvm.internal.m.INSTANCE;
            return Float.intBitsToFloat((int) (j6 >> 32));
        }

        public static final float d(long j6) {
            kotlin.jvm.internal.m mVar = kotlin.jvm.internal.m.INSTANCE;
            return Float.intBitsToFloat((int) (j6 & 4294967295L));
        }
    }

    static {
        float f;
        float f6;
        float f7;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15 = 0.0f;
        float f16 = 0.0f;
        for (int i10 = 0; i10 < 100; i10++) {
            float f17 = i10 / 100;
            float f18 = 1.0f;
            while (true) {
                f = ((f18 - f15) / 2.0f) + f15;
                f6 = 1.0f - f;
                f7 = f * 3.0f * f6;
                f10 = f * f * f;
                float f19 = (((f6 * 0.175f) + (f * 0.35000002f)) * f7) + f10;
                if (Math.abs(f19 - f17) < 1.0E-5d) {
                    break;
                } else if (f19 > f17) {
                    f18 = f;
                } else {
                    f15 = f;
                }
            }
            float f20 = 0.5f;
            SplinePositions[i10] = (f7 * ((f6 * 0.5f) + f)) + f10;
            float f21 = 1.0f;
            while (true) {
                f11 = ((f21 - f16) / 2.0f) + f16;
                f12 = 1.0f - f11;
                f13 = f11 * 3.0f * f12;
                f14 = f11 * f11 * f11;
                float f22 = (((f12 * f20) + f11) * f13) + f14;
                if (Math.abs(f22 - f17) >= 1.0E-5d) {
                    if (f22 > f17) {
                        f21 = f11;
                    } else {
                        f16 = f11;
                    }
                    f20 = 0.5f;
                }
            }
            SplineTimes[i10] = (f13 * ((f12 * 0.175f) + (f11 * 0.35000002f))) + f14;
        }
        SplineTimes[100] = 1.0f;
        SplinePositions[100] = 1.0f;
    }

    public final long b(float f) {
        float f6;
        float f7;
        float f10 = 100;
        int i10 = (int) (f10 * f);
        if (i10 < 100) {
            float f11 = i10 / f10;
            int i11 = i10 + 1;
            float f12 = i11 / f10;
            float[] fArr = SplinePositions;
            float f13 = fArr[i10];
            f7 = (fArr[i11] - f13) / (f12 - f11);
            f6 = f13 + ((f - f11) * f7);
        } else {
            f6 = 1.0f;
            f7 = 0.0f;
        }
        return FlingResult.a((((long) Float.floatToIntBits(f7)) & 4294967295L) | (Float.floatToIntBits(f6) << 32));
    }

    private AndroidFlingSpline() {
    }

    public final double a(float f, float f6) {
        return Math.log(((double) (Math.abs(f) * 0.35f)) / ((double) f6));
    }
}
