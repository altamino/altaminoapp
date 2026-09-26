package androidx.core.math;

/* JADX INFO: loaded from: classes10.dex */
public class MathUtils {
    public static float a(float f, float f6, float f7) {
        if (f < f6) {
            return f6;
        }
        return f > f7 ? f7 : f;
    }

    public static int b(int i10, int i11, int i12) {
        if (i10 < i11) {
            return i11;
        }
        return i10 > i12 ? i12 : i10;
    }

    private MathUtils() {
    }
}
