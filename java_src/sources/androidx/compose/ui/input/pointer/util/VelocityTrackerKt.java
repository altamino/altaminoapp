package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerInputChange;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class VelocityTrackerKt {
    private static final int AssumePointerMoveStoppedMilliseconds = 40;
    private static final float DefaultWeight = 1.0f;
    private static final int HistorySize = 20;
    private static final int HorizonMilliseconds = 100;
    private static final int MinSampleSize = 3;

    public static final void b(@NotNull VelocityTracker velocityTracker, @NotNull PointerInputChange event) {
        t.j(velocityTracker, "<this>");
        t.j(event, "event");
        List<HistoricalChange> listD = event.d();
        int size = listD.size();
        for (int i10 = 0; i10 < size; i10++) {
            HistoricalChange historicalChange = listD.get(i10);
            velocityTracker.a(historicalChange.b(), historicalChange.a());
        }
        velocityTracker.a(event.l(), event.f());
    }

    @NotNull
    public static final PolynomialFit d(@NotNull List<Float> x6, @NotNull List<Float> y6, int i10) {
        t.j(x6, "x");
        t.j(y6, "y");
        if (i10 < 1) {
            throw new IllegalArgumentException("The degree must be at positive integer");
        }
        if (x6.size() != y6.size()) {
            throw new IllegalArgumentException("x and y must be the same length");
        }
        if (x6.isEmpty()) {
            throw new IllegalArgumentException("At least one point must be provided");
        }
        int size = i10 >= x6.size() ? x6.size() - 1 : i10;
        int i11 = i10 + 1;
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(Float.valueOf(0.0f));
        }
        int size2 = x6.size();
        int i13 = size + 1;
        Matrix matrix = new Matrix(i13, size2);
        int i14 = 0;
        while (true) {
            if (i14 >= size2) {
                break;
            }
            matrix.c(0, i14, 1.0f);
            for (int i15 = 1; i15 < i13; i15++) {
                matrix.c(i15, i14, matrix.a(i15 - 1, i14) * x6.get(i14).floatValue());
            }
            i14++;
        }
        Matrix matrix2 = new Matrix(i13, size2);
        Matrix matrix3 = new Matrix(i13, i13);
        int i16 = 0;
        while (i16 < i13) {
            for (int i17 = 0; i17 < size2; i17++) {
                matrix2.c(i16, i17, matrix.a(i16, i17));
            }
            for (int i18 = 0; i18 < i16; i18++) {
                float fD = matrix2.b(i16).d(matrix2.b(i18));
                for (int i19 = 0; i19 < size2; i19++) {
                    matrix2.c(i16, i19, matrix2.a(i16, i19) - (matrix2.a(i18, i19) * fD));
                }
            }
            float fB = matrix2.b(i16).b();
            if (fB < 1.0E-6d) {
                throw new IllegalArgumentException("Vectors are linearly dependent or zero so no solution. TODO(shepshapard), actually determine what this means");
            }
            float f = 1.0f / fB;
            for (int i20 = 0; i20 < size2; i20++) {
                matrix2.c(i16, i20, matrix2.a(i16, i20) * f);
            }
            int i21 = 0;
            while (i21 < i13) {
                matrix3.c(i16, i21, i21 < i16 ? 0.0f : matrix2.b(i16).d(matrix.b(i21)));
                i21++;
            }
            i16++;
        }
        Vector vector = new Vector(size2);
        for (int i22 = 0; i22 < size2; i22++) {
            vector.c(i22, y6.get(i22).floatValue() * 1.0f);
        }
        for (int i23 = size; -1 < i23; i23--) {
            arrayList.set(i23, Float.valueOf(matrix2.b(i23).d(vector)));
            int i24 = i23 + 1;
            if (i24 <= size) {
                int i25 = size;
                while (true) {
                    arrayList.set(i23, Float.valueOf(((Number) arrayList.get(i23)).floatValue() - (matrix3.a(i23, i25) * ((Number) arrayList.get(i25)).floatValue())));
                    if (i25 != i24) {
                        i25--;
                    }
                }
            }
            arrayList.set(i23, Float.valueOf(((Number) arrayList.get(i23)).floatValue() / matrix3.a(i23, i23)));
        }
        float fFloatValue = 0.0f;
        for (int i26 = 0; i26 < size2; i26++) {
            fFloatValue += y6.get(i26).floatValue();
        }
        float f6 = fFloatValue / size2;
        float f7 = 0.0f;
        float f10 = 0.0f;
        for (int i27 = 0; i27 < size2; i27++) {
            float fFloatValue2 = y6.get(i27).floatValue() - ((Number) arrayList.get(0)).floatValue();
            float fFloatValue3 = 1.0f;
            for (int i28 = 1; i28 < i13; i28++) {
                fFloatValue3 *= x6.get(i27).floatValue();
                fFloatValue2 -= ((Number) arrayList.get(i28)).floatValue() * fFloatValue3;
            }
            f7 += fFloatValue2 * 1.0f * fFloatValue2;
            float fFloatValue4 = y6.get(i27).floatValue() - f6;
            f10 += fFloatValue4 * 1.0f * fFloatValue4;
        }
        return new PolynomialFit(arrayList, f10 > 1.0E-6f ? 1.0f - (f7 / f10) : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float c(float f) {
        return Math.signum(f) * ((float) Math.sqrt(2 * Math.abs(f)));
    }
}
