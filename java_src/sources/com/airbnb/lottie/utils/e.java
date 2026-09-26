package com.airbnb.lottie.utils;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.FloatRange;
import com.airbnb.lottie.model.content.l;

/* JADX INFO: loaded from: classes8.dex */
public class e {
    public static int d(float f, float f6) {
        return e((int) f, (int) f6);
    }

    public static double g(double d, double d2, @FloatRange double d6) {
        return d + (d6 * (d2 - d));
    }

    public static float h(float f, float f6, @FloatRange float f7) {
        return f + (f7 * (f6 - f));
    }

    public static int i(int i10, int i11, @FloatRange float f) {
        return (int) (i10 + (f * (i11 - i10)));
    }

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    private static int c(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    public static float b(float f, float f6, float f7) {
        return Math.max(f6, Math.min(f7, f));
    }

    public static int e(int i10, int i11) {
        return i10 - (c(i10, i11) * i11);
    }

    public static void f(l lVar, Path path) {
        path.reset();
        PointF pointFB = lVar.b();
        path.moveTo(pointFB.x, pointFB.y);
        PointF pointF = new PointF(pointFB.x, pointFB.y);
        for (int i10 = 0; i10 < lVar.a().size(); i10++) {
            com.airbnb.lottie.model.c cVar = lVar.a().get(i10);
            PointF pointFA = cVar.a();
            PointF pointFB2 = cVar.b();
            PointF pointFC = cVar.c();
            if (pointFA.equals(pointF) && pointFB2.equals(pointFC)) {
                path.lineTo(pointFC.x, pointFC.y);
            } else {
                path.cubicTo(pointFA.x, pointFA.y, pointFB2.x, pointFB2.y, pointFC.x, pointFC.y);
            }
            pointF.set(pointFC.x, pointFC.y);
        }
        if (lVar.d()) {
            path.close();
        }
    }
}
