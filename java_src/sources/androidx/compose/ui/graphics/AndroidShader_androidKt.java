package androidx.compose.ui.graphics;

import android.graphics.Shader;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import androidx.compose.ui.geometry.Offset;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidShader_androidKt {
    @NotNull
    public static final Shader a(long j6, long j10, @NotNull List<Color> colors, @Nullable List<Float> list, int i10) {
        kotlin.jvm.internal.t.j(colors, "colors");
        g(colors, list);
        int iD = d(colors);
        return new android.graphics.LinearGradient(Offset.m(j6), Offset.n(j6), Offset.m(j10), Offset.n(j10), e(colors, iD), f(list, colors, iD), AndroidTileMode_androidKt.a(i10));
    }

    @NotNull
    public static final Shader b(long j6, float f, @NotNull List<Color> colors, @Nullable List<Float> list, int i10) {
        kotlin.jvm.internal.t.j(colors, "colors");
        g(colors, list);
        int iD = d(colors);
        return new android.graphics.RadialGradient(Offset.m(j6), Offset.n(j6), f, e(colors, iD), f(list, colors, iD), AndroidTileMode_androidKt.a(i10));
    }

    @NotNull
    public static final Shader c(long j6, @NotNull List<Color> colors, @Nullable List<Float> list) {
        kotlin.jvm.internal.t.j(colors, "colors");
        g(colors, list);
        int iD = d(colors);
        return new android.graphics.SweepGradient(Offset.m(j6), Offset.n(j6), e(colors, iD), f(list, colors, iD));
    }

    @VisibleForTesting
    public static final int d(@NotNull List<Color> colors) {
        kotlin.jvm.internal.t.j(colors, "colors");
        int i10 = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            return 0;
        }
        int iO = kotlin.collections.v.o(colors);
        for (int i11 = 1; i11 < iO; i11++) {
            if (Color.o(colors.get(i11).v()) == 0.0f) {
                i10++;
            }
        }
        return i10;
    }

    @VisibleForTesting
    @NotNull
    public static final int[] e(@NotNull List<Color> colors, int i10) {
        int i11;
        kotlin.jvm.internal.t.j(colors, "colors");
        int i12 = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            int size = colors.size();
            int[] iArr = new int[size];
            while (i12 < size) {
                iArr[i12] = ColorKt.l(colors.get(i12).v());
                i12++;
            }
            return iArr;
        }
        int[] iArr2 = new int[colors.size() + i10];
        int iO = kotlin.collections.v.o(colors);
        int size2 = colors.size();
        int i13 = 0;
        while (i12 < size2) {
            long jV = colors.get(i12).v();
            if (Color.o(jV) == 0.0f) {
                if (i12 == 0) {
                    i11 = i13 + 1;
                    iArr2[i13] = ColorKt.l(Color.l(colors.get(1).v(), 0.0f, 0.0f, 0.0f, 0.0f, 14, null));
                } else if (i12 == iO) {
                    i11 = i13 + 1;
                    iArr2[i13] = ColorKt.l(Color.l(colors.get(i12 - 1).v(), 0.0f, 0.0f, 0.0f, 0.0f, 14, null));
                } else {
                    int i14 = i13 + 1;
                    iArr2[i13] = ColorKt.l(Color.l(colors.get(i12 - 1).v(), 0.0f, 0.0f, 0.0f, 0.0f, 14, null));
                    i13 += 2;
                    iArr2[i14] = ColorKt.l(Color.l(colors.get(i12 + 1).v(), 0.0f, 0.0f, 0.0f, 0.0f, 14, null));
                }
                i13 = i11;
            } else {
                iArr2[i13] = ColorKt.l(jV);
                i13++;
            }
            i12++;
        }
        return iArr2;
    }

    @VisibleForTesting
    @Nullable
    public static final float[] f(@Nullable List<Float> list, @NotNull List<Color> colors, int i10) {
        kotlin.jvm.internal.t.j(colors, "colors");
        if (i10 == 0) {
            if (list != null) {
                return kotlin.collections.d0.R0(list);
            }
            return null;
        }
        float[] fArr = new float[colors.size() + i10];
        fArr[0] = list != null ? list.get(0).floatValue() : 0.0f;
        int iO = kotlin.collections.v.o(colors);
        int i11 = 1;
        for (int i12 = 1; i12 < iO; i12++) {
            long jV = colors.get(i12).v();
            float fFloatValue = list != null ? list.get(i12).floatValue() : i12 / kotlin.collections.v.o(colors);
            int i13 = i11 + 1;
            fArr[i11] = fFloatValue;
            if (Color.o(jV) == 0.0f) {
                i11 += 2;
                fArr[i13] = fFloatValue;
            } else {
                i11 = i13;
            }
        }
        fArr[i11] = list != null ? list.get(kotlin.collections.v.o(colors)).floatValue() : 1.0f;
        return fArr;
    }

    private static final void g(List<Color> list, List<Float> list2) {
        if (list2 == null) {
            if (list.size() < 2) {
                throw new IllegalArgumentException("colors must have length of at least 2 if colorStops is omitted.");
            }
        } else if (list.size() != list2.size()) {
            throw new IllegalArgumentException("colors and colorStops arguments must have equal length.");
        }
    }
}
