package androidx.core.graphics;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ColorUtils {
    private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
    private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal<>();
    private static final double XYZ_EPSILON = 0.008856d;
    private static final double XYZ_KAPPA = 903.3d;
    private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
    private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
    private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

    public static void a(@IntRange int i10, @IntRange int i11, @IntRange int i12, @NonNull float[] fArr) {
        float f;
        float fAbs;
        float f6 = i10 / 255.0f;
        float f7 = i11 / 255.0f;
        float f10 = i12 / 255.0f;
        float fMax = Math.max(f6, Math.max(f7, f10));
        float fMin = Math.min(f6, Math.min(f7, f10));
        float f11 = fMax - fMin;
        float f12 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            f = 0.0f;
            fAbs = 0.0f;
        } else {
            if (fMax == f6) {
                f = ((f7 - f10) / f11) % 6.0f;
            } else {
                f = fMax == f7 ? ((f10 - f6) / f11) + 2.0f : 4.0f + ((f6 - f7) / f11);
            }
            fAbs = f11 / (1.0f - Math.abs((2.0f * f12) - 1.0f));
        }
        float f13 = (f * 60.0f) % 360.0f;
        if (f13 < 0.0f) {
            f13 += 360.0f;
        }
        fArr[0] = l(f13, 0.0f, 360.0f);
        fArr[1] = l(fAbs, 0.0f, 1.0f);
        fArr[2] = l(f12, 0.0f, 1.0f);
    }

    @RequiresApi
    static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static Color a(Color color, Color color2) {
            if (Objects.equals(color.getModel(), color2.getModel())) {
                if (!Objects.equals(color2.getColorSpace(), color.getColorSpace())) {
                    color = color.convert(color2.getColorSpace());
                }
                float[] components = color.getComponents();
                float[] components2 = color2.getComponents();
                float fAlpha = color.alpha();
                float fAlpha2 = color2.alpha() * (1.0f - fAlpha);
                int componentCount = color2.getComponentCount() - 1;
                float f = fAlpha + fAlpha2;
                components2[componentCount] = f;
                if (f > 0.0f) {
                    fAlpha /= f;
                    fAlpha2 /= f;
                }
                for (int i10 = 0; i10 < componentCount; i10++) {
                    components2[i10] = (components[i10] * fAlpha) + (components2[i10] * fAlpha2);
                }
                return Color.valueOf(components2, color2.getColorSpace());
            }
            throw new IllegalArgumentException("Color models must match (" + color.getModel() + " vs. " + color2.getModel() + ")");
        }
    }

    public static void b(@IntRange int i10, @IntRange int i11, @IntRange int i12, @NonNull double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d = ((double) i10) / 255.0d;
        double dPow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
        double d2 = ((double) i11) / 255.0d;
        double dPow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d6 = ((double) i12) / 255.0d;
        double dPow3 = d6 < 0.04045d ? d6 / 12.92d : Math.pow((d6 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.4124d * dPow) + (0.3576d * dPow2) + (0.1805d * dPow3)) * 100.0d;
        dArr[1] = ((0.2126d * dPow) + (0.7152d * dPow2) + (0.0722d * dPow3)) * 100.0d;
        dArr[2] = ((dPow * 0.0193d) + (dPow2 * 0.1192d) + (dPow3 * 0.9505d)) * 100.0d;
    }

    private static int i(int i10, int i11) {
        return 255 - (((255 - i11) * (255 - i10)) / 255);
    }

    private static int k(int i10, int i11, int i12, int i13, int i14) {
        if (i14 == 0) {
            return 0;
        }
        return (((i10 * 255) * i11) + ((i12 * i13) * (255 - i11))) / (i14 * 255);
    }

    private static float l(float f, float f6, float f7) {
        return f < f6 ? f6 : Math.min(f, f7);
    }

    private static int m(int i10, int i11, int i12) {
        return i10 < i11 ? i11 : Math.min(i10, i12);
    }

    private static double[] n() {
        ThreadLocal<double[]> threadLocal = TEMP_ARRAY;
        double[] dArr = threadLocal.get();
        if (dArr != null) {
            return dArr;
        }
        double[] dArr2 = new double[3];
        threadLocal.set(dArr2);
        return dArr2;
    }

    @ColorInt
    public static int o(@ColorInt int i10, @IntRange int i11) {
        if (i11 < 0 || i11 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i10 & ViewCompat.MEASURED_SIZE_MASK) | (i11 << 24);
    }

    private ColorUtils() {
    }

    public static double d(@ColorInt int i10, @ColorInt int i11) {
        if (Color.alpha(i11) == 255) {
            if (Color.alpha(i10) < 255) {
                i10 = j(i10, i11);
            }
            double dE = e(i10) + 0.05d;
            double dE2 = e(i11) + 0.05d;
            return Math.max(dE, dE2) / Math.min(dE, dE2);
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i11));
    }

    @FloatRange
    public static double e(@ColorInt int i10) {
        double[] dArrN = n();
        h(i10, dArrN);
        return dArrN[1] / 100.0d;
    }

    public static int f(@ColorInt int i10, @ColorInt int i11, float f) {
        int i12 = 255;
        if (Color.alpha(i11) == 255) {
            double d = f;
            if (d(o(i10, 255), i11) < d) {
                return -1;
            }
            int i13 = 0;
            for (int i14 = 0; i14 <= 10 && i12 - i13 > 1; i14++) {
                int i15 = (i13 + i12) / 2;
                if (d(o(i10, i15), i11) < d) {
                    i13 = i15;
                } else {
                    i12 = i15;
                }
            }
            return i12;
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i11));
    }

    public static void g(@ColorInt int i10, @NonNull float[] fArr) {
        a(Color.red(i10), Color.green(i10), Color.blue(i10), fArr);
    }

    public static void h(@ColorInt int i10, @NonNull double[] dArr) {
        b(Color.red(i10), Color.green(i10), Color.blue(i10), dArr);
    }

    public static int j(@ColorInt int i10, @ColorInt int i11) {
        int iAlpha = Color.alpha(i11);
        int iAlpha2 = Color.alpha(i10);
        int i12 = i(iAlpha2, iAlpha);
        return Color.argb(i12, k(Color.red(i10), iAlpha2, Color.red(i11), iAlpha, i12), k(Color.green(i10), iAlpha2, Color.green(i11), iAlpha, i12), k(Color.blue(i10), iAlpha2, Color.blue(i11), iAlpha, i12));
    }

    @ColorInt
    public static int c(@FloatRange double d, @FloatRange double d2, @FloatRange double d6) {
        double dPow;
        double dPow2;
        double dPow3;
        double d7 = (((3.2406d * d) + ((-1.5372d) * d2)) + ((-0.4986d) * d6)) / 100.0d;
        double d10 = ((((-0.9689d) * d) + (1.8758d * d2)) + (0.0415d * d6)) / 100.0d;
        double d11 = (((0.0557d * d) + ((-0.204d) * d2)) + (1.057d * d6)) / 100.0d;
        if (d7 > 0.0031308d) {
            dPow = (Math.pow(d7, 0.4166666666666667d) * 1.055d) - 0.055d;
        } else {
            dPow = d7 * 12.92d;
        }
        if (d10 > 0.0031308d) {
            dPow2 = (Math.pow(d10, 0.4166666666666667d) * 1.055d) - 0.055d;
        } else {
            dPow2 = d10 * 12.92d;
        }
        if (d11 > 0.0031308d) {
            dPow3 = (Math.pow(d11, 0.4166666666666667d) * 1.055d) - 0.055d;
        } else {
            dPow3 = d11 * 12.92d;
        }
        return Color.rgb(m((int) Math.round(dPow * 255.0d), 0, 255), m((int) Math.round(dPow2 * 255.0d), 0, 255), m((int) Math.round(dPow3 * 255.0d), 0, 255));
    }
}
