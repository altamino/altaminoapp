package androidx.core.content.res;

import android.graphics.Color;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes11.dex */
final class CamUtils {
    static final float[][] XYZ_TO_CAM16RGB = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    static final float[][] CAM16RGB_TO_XYZ = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};
    static final float[] WHITE_POINT_D65 = {95.047f, 100.0f, 108.883f};
    static final float[][] SRGB_TO_XYZ = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    static float d(float f, float f6, float f7) {
        return f + ((f6 - f) * f7);
    }

    static float e(int i10) {
        float f = i10 / 255.0f;
        return (f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    static int a(float f) {
        if (f < 1.0f) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (f > 99.0f) {
            return -1;
        }
        float f6 = (f + 16.0f) / 116.0f;
        float f7 = f > 8.0f ? f6 * f6 * f6 : f / 903.2963f;
        float f10 = f6 * f6 * f6;
        boolean z6 = f10 > 0.008856452f;
        float f11 = z6 ? f10 : ((f6 * 116.0f) - 16.0f) / 903.2963f;
        if (!z6) {
            f10 = ((f6 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = WHITE_POINT_D65;
        return ColorUtils.c(f11 * fArr[0], f7 * fArr[1], f10 * fArr[2]);
    }

    static float c(float f) {
        float f6 = f / 100.0f;
        return f6 <= 0.008856452f ? f6 * 903.2963f : (((float) Math.cbrt(f6)) * 116.0f) - 16.0f;
    }

    static float h(float f) {
        return (f > 8.0f ? (float) Math.pow((((double) f) + 16.0d) / 116.0d, 3.0d) : f / 903.2963f) * 100.0f;
    }

    private CamUtils() {
    }

    static float b(int i10) {
        return c(g(i10));
    }

    @NonNull
    static float[] f(int i10) {
        float fE = e(Color.red(i10));
        float fE2 = e(Color.green(i10));
        float fE3 = e(Color.blue(i10));
        float[][] fArr = SRGB_TO_XYZ;
        float[] fArr2 = fArr[0];
        float f = (fArr2[0] * fE) + (fArr2[1] * fE2) + (fArr2[2] * fE3);
        float[] fArr3 = fArr[1];
        float f6 = (fArr3[0] * fE) + (fArr3[1] * fE2) + (fArr3[2] * fE3);
        float[] fArr4 = fArr[2];
        return new float[]{f, f6, (fE * fArr4[0]) + (fE2 * fArr4[1]) + (fE3 * fArr4[2])};
    }

    static float g(int i10) {
        float fE = e(Color.red(i10));
        float fE2 = e(Color.green(i10));
        float fE3 = e(Color.blue(i10));
        float[] fArr = SRGB_TO_XYZ[1];
        return (fE * fArr[0]) + (fE2 * fArr[1]) + (fE3 * fArr[2]);
    }
}
