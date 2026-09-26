package com.airbnb.lottie.utils;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.provider.Settings;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.content.q;
import java.io.Closeable;

/* JADX INFO: loaded from: classes8.dex */
public final class f {
    private static DisplayMetrics displayMetrics;
    private static final PathMeasure pathMeasure = new PathMeasure();
    private static final Path tempPath = new Path();
    private static final Path tempPath2 = new Path();
    private static final float[] points = new float[4];
    private static final float SQRT_2 = (float) Math.sqrt(2.0d);

    public static int g(float f, float f6, float f7, float f10) {
        int i10 = f != 0.0f ? (int) (527 * f) : 17;
        if (f6 != 0.0f) {
            i10 = (int) (i10 * 31 * f6);
        }
        if (f7 != 0.0f) {
            i10 = (int) (i10 * 31 * f7);
        }
        return f10 != 0.0f ? (int) (i10 * 31 * f10) : i10;
    }

    public static void a(Path path, float f, float f6, float f7) {
        com.airbnb.lottie.d.a("applyTrimPathIfNeeded");
        PathMeasure pathMeasure2 = pathMeasure;
        pathMeasure2.setPath(path, false);
        float length = pathMeasure2.getLength();
        if (f == 1.0f && f6 == 0.0f) {
            com.airbnb.lottie.d.b("applyTrimPathIfNeeded");
            return;
        }
        if (length < 1.0f || Math.abs((f6 - f) - 1.0f) < 0.01d) {
            com.airbnb.lottie.d.b("applyTrimPathIfNeeded");
            return;
        }
        float f10 = f * length;
        float f11 = f6 * length;
        float f12 = f7 * length;
        float fMin = Math.min(f10, f11) + f12;
        float fMax = Math.max(f10, f11) + f12;
        if (fMin >= length && fMax >= length) {
            fMin = e.d(fMin, length);
            fMax = e.d(fMax, length);
        }
        if (fMin < 0.0f) {
            fMin = e.d(fMin, length);
        }
        if (fMax < 0.0f) {
            fMax = e.d(fMax, length);
        }
        if (fMin == fMax) {
            path.reset();
            com.airbnb.lottie.d.b("applyTrimPathIfNeeded");
            return;
        }
        if (fMin >= fMax) {
            fMin -= length;
        }
        Path path2 = tempPath;
        path2.reset();
        pathMeasure2.getSegment(fMin, fMax, path2, true);
        if (fMax > length) {
            Path path3 = tempPath2;
            path3.reset();
            pathMeasure2.getSegment(0.0f, fMax % length, path3, true);
            path2.addPath(path3);
        } else if (fMin < 0.0f) {
            Path path4 = tempPath2;
            path4.reset();
            pathMeasure2.getSegment(fMin + length, length, path4, true);
            path2.addPath(path4);
        }
        path.set(path2);
        com.airbnb.lottie.d.b("applyTrimPathIfNeeded");
    }

    public static void b(Path path, @Nullable q qVar) {
        if (qVar == null) {
            return;
        }
        a(path, qVar.i().g().floatValue() / 100.0f, qVar.g().g().floatValue() / 100.0f, qVar.h().g().floatValue() / 360.0f);
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    public static Path d(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f = pointF3.x + pointF.x;
            float f6 = pointF.y + pointF3.y;
            float f7 = pointF2.x;
            float f10 = f7 + pointF4.x;
            float f11 = pointF2.y;
            path.cubicTo(f, f6, f10, f11 + pointF4.y, f7, f11);
        }
        return path;
    }

    public static float f(Matrix matrix) {
        float[] fArr = points;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f = SQRT_2;
        fArr[2] = f;
        fArr[3] = f;
        matrix.mapPoints(fArr);
        return ((float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1])) / 2.0f;
    }

    public static float e(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static boolean h(com.airbnb.lottie.e eVar, int i10, int i11, int i12) {
        if (eVar.q() < i10) {
            return false;
        }
        if (eVar.q() > i10) {
            return true;
        }
        if (eVar.r() < i11) {
            return false;
        }
        if (eVar.r() <= i11 && eVar.s() < i12) {
            return false;
        }
        return true;
    }
}
