package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class Matrix {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int Perspective0 = 3;
    public static final int Perspective1 = 7;
    public static final int Perspective2 = 15;
    public static final int ScaleX = 0;
    public static final int ScaleY = 5;
    public static final int ScaleZ = 10;
    public static final int SkewX = 4;
    public static final int SkewY = 1;
    public static final int TranslateX = 12;
    public static final int TranslateY = 13;
    public static final int TranslateZ = 14;

    @NotNull
    private final float[] values;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static final /* synthetic */ Matrix a(float[] fArr) {
        return new Matrix(fArr);
    }

    @NotNull
    public static float[] b(@NotNull float[] values) {
        kotlin.jvm.internal.t.j(values, "values");
        return values;
    }

    public static boolean d(float[] fArr, Object obj) {
        return (obj instanceof Matrix) && kotlin.jvm.internal.t.e(fArr, ((Matrix) obj).n());
    }

    public static int e(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    public static final void h(float[] fArr) {
        int i10 = 0;
        while (i10 < 4) {
            int i11 = 0;
            while (i11 < 4) {
                fArr[(i11 * 4) + i10] = i10 == i11 ? 1.0f : 0.0f;
                i11++;
            }
            i10++;
        }
    }

    public static final void j(float[] fArr, float f, float f6, float f7) {
        fArr[0] = fArr[0] * f;
        fArr[1] = fArr[1] * f;
        fArr[2] = fArr[2] * f;
        fArr[3] = fArr[3] * f;
        fArr[4] = fArr[4] * f6;
        fArr[5] = fArr[5] * f6;
        fArr[6] = fArr[6] * f6;
        fArr[7] = fArr[7] * f6;
        fArr[8] = fArr[8] * f7;
        fArr[9] = fArr[9] * f7;
        fArr[10] = fArr[10] * f7;
        fArr[11] = fArr[11] * f7;
    }

    public static final void l(float[] fArr, float f, float f6, float f7) {
        float f10 = (fArr[0] * f) + (fArr[4] * f6) + (fArr[8] * f7) + fArr[12];
        float f11 = (fArr[1] * f) + (fArr[5] * f6) + (fArr[9] * f7) + fArr[13];
        float f12 = (fArr[2] * f) + (fArr[6] * f6) + (fArr[10] * f7) + fArr[14];
        float f13 = (fArr[3] * f) + (fArr[7] * f6) + (fArr[11] * f7) + fArr[15];
        fArr[12] = f10;
        fArr[13] = f11;
        fArr[14] = f12;
        fArr[15] = f13;
    }

    public boolean equals(Object obj) {
        return d(this.values, obj);
    }

    public int hashCode() {
        return e(this.values);
    }

    public final /* synthetic */ float[] n() {
        return this.values;
    }

    public static /* synthetic */ float[] c(float[] fArr, int i10, kotlin.jvm.internal.k kVar) {
        if ((i10 & 1) != 0) {
            fArr = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
        }
        return b(fArr);
    }

    public static final void g(float[] fArr, @NotNull MutableRect rect) {
        kotlin.jvm.internal.t.j(rect, "rect");
        long jF = f(fArr, OffsetKt.a(rect.b(), rect.d()));
        long jF2 = f(fArr, OffsetKt.a(rect.b(), rect.a()));
        long jF3 = f(fArr, OffsetKt.a(rect.c(), rect.d()));
        long jF4 = f(fArr, OffsetKt.a(rect.c(), rect.a()));
        rect.i(Math.min(Math.min(Offset.m(jF), Offset.m(jF2)), Math.min(Offset.m(jF3), Offset.m(jF4))));
        rect.k(Math.min(Math.min(Offset.n(jF), Offset.n(jF2)), Math.min(Offset.n(jF3), Offset.n(jF4))));
        rect.j(Math.max(Math.max(Offset.m(jF), Offset.m(jF2)), Math.max(Offset.m(jF3), Offset.m(jF4))));
        rect.h(Math.max(Math.max(Offset.n(jF), Offset.n(jF2)), Math.max(Offset.n(jF3), Offset.n(jF4))));
    }

    public static final void i(float[] fArr, float f) {
        double d = (((double) f) * 3.141592653589793d) / 180.0d;
        float fCos = (float) Math.cos(d);
        float fSin = (float) Math.sin(d);
        float f6 = fArr[0];
        float f7 = fArr[4];
        float f10 = (fCos * f6) + (fSin * f7);
        float f11 = -fSin;
        float f12 = fArr[1];
        float f13 = fArr[5];
        float f14 = (fCos * f12) + (fSin * f13);
        float f15 = fArr[2];
        float f16 = fArr[6];
        float f17 = (fCos * f15) + (fSin * f16);
        float f18 = fArr[3];
        float f19 = fArr[7];
        fArr[0] = f10;
        fArr[1] = f14;
        fArr[2] = f17;
        fArr[3] = (fCos * f18) + (fSin * f19);
        fArr[4] = (f6 * f11) + (f7 * fCos);
        fArr[5] = (f12 * f11) + (f13 * fCos);
        fArr[6] = (f15 * f11) + (f16 * fCos);
        fArr[7] = (f11 * f18) + (fCos * f19);
    }

    @NotNull
    public static String k(float[] fArr) {
        return kotlin.text.m.f("\n            |" + fArr[0] + ' ' + fArr[1] + ' ' + fArr[2] + ' ' + fArr[3] + "|\n            |" + fArr[4] + ' ' + fArr[5] + ' ' + fArr[6] + ' ' + fArr[7] + "|\n            |" + fArr[8] + ' ' + fArr[9] + ' ' + fArr[10] + ' ' + fArr[11] + "|\n            |" + fArr[12] + ' ' + fArr[13] + ' ' + fArr[14] + ' ' + fArr[15] + "|\n        ");
    }

    public static /* synthetic */ void m(float[] fArr, float f, float f6, float f7, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f6 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            f7 = 0.0f;
        }
        l(fArr, f, f6, f7);
    }

    @NotNull
    public String toString() {
        return k(this.values);
    }

    private /* synthetic */ Matrix(float[] fArr) {
        this.values = fArr;
    }

    public static final long f(float[] fArr, long j6) {
        float fM = Offset.m(j6);
        float fN = Offset.n(j6);
        float f = 1 / (((fArr[3] * fM) + (fArr[7] * fN)) + fArr[15]);
        if (Float.isInfinite(f) || Float.isNaN(f)) {
            f = 0.0f;
        }
        return OffsetKt.a(((fArr[0] * fM) + (fArr[4] * fN) + fArr[12]) * f, f * ((fArr[1] * fM) + (fArr[5] * fN) + fArr[13]));
    }
}
