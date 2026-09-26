package androidx.compose.animation;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class AndroidFlingSpline {

    @NotNull
    public static final AndroidFlingSpline INSTANCE = new AndroidFlingSpline();
    private static final int NbSamples = 100;

    @NotNull
    private static final float[] SplinePositions;

    @NotNull
    private static final float[] SplineTimes;

    @StabilityInferred
    public static final class FlingResult {
        public static final int $stable = 0;
        private final float distanceCoefficient;
        private final float velocityCoefficient;

        public final float a() {
            return this.distanceCoefficient;
        }

        public final float b() {
            return this.velocityCoefficient;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingResult)) {
                return false;
            }
            FlingResult flingResult = (FlingResult) obj;
            return t.e(Float.valueOf(this.distanceCoefficient), Float.valueOf(flingResult.distanceCoefficient)) && t.e(Float.valueOf(this.velocityCoefficient), Float.valueOf(flingResult.velocityCoefficient));
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.distanceCoefficient) * 31) + Float.floatToIntBits(this.velocityCoefficient);
        }

        @NotNull
        public String toString() {
            return "FlingResult(distanceCoefficient=" + this.distanceCoefficient + ", velocityCoefficient=" + this.velocityCoefficient + ')';
        }

        public FlingResult(float f, float f6) {
            this.distanceCoefficient = f;
            this.velocityCoefficient = f6;
        }
    }

    static {
        float[] fArr = new float[101];
        SplinePositions = fArr;
        float[] fArr2 = new float[101];
        SplineTimes = fArr2;
        SplineBasedDecayKt.b(fArr, fArr2, 100);
    }

    @NotNull
    public final FlingResult b(float f) {
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
        return new FlingResult(f6, f7);
    }

    private AndroidFlingSpline() {
    }

    public final double a(float f, float f6) {
        return Math.log(((double) (Math.abs(f) * 0.35f)) / ((double) f6));
    }
}
