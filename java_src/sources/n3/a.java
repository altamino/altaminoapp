package n3;

/* JADX INFO: loaded from: classes8.dex */
public final class a {
    public static final float DEFAULT_EPSILON = 1.0E-4f;

    public static float a(float f, float f6, float f7, float f10) {
        return (float) Math.hypot(f7 - f, f10 - f6);
    }

    public static boolean c(float f, float f6, float f7) {
        return f + f7 >= f6;
    }

    public static float d(float f, float f6, float f7) {
        return ((1.0f - f7) * f) + (f7 * f6);
    }

    private static float e(float f, float f6, float f7, float f10) {
        if (f > f6 && f > f7 && f > f10) {
            return f;
        }
        if (f6 <= f7 || f6 <= f10) {
            return f7 > f10 ? f7 : f10;
        }
        return f6;
    }

    public static float b(float f, float f6, float f7, float f10, float f11, float f12) {
        return e(a(f, f6, f7, f10), a(f, f6, f11, f10), a(f, f6, f11, f12), a(f, f6, f7, f12));
    }
}
