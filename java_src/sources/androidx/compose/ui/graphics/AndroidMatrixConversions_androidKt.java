package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class AndroidMatrixConversions_androidKt {
    public static final void a(@NotNull android.graphics.Matrix setFrom, @NotNull float[] matrix) {
        kotlin.jvm.internal.t.j(setFrom, "$this$setFrom");
        kotlin.jvm.internal.t.j(matrix, "matrix");
        float f = matrix[2];
        if (f == 0.0f) {
            float f6 = matrix[6];
            if (f6 == 0.0f && matrix[10] == 1.0f && matrix[14] == 0.0f) {
                float f7 = matrix[8];
                if (f7 == 0.0f && matrix[9] == 0.0f && matrix[11] == 0.0f) {
                    float f10 = matrix[0];
                    float f11 = matrix[1];
                    float f12 = matrix[3];
                    float f13 = matrix[4];
                    float f14 = matrix[5];
                    float f15 = matrix[7];
                    float f16 = matrix[12];
                    float f17 = matrix[13];
                    float f18 = matrix[15];
                    matrix[0] = f10;
                    matrix[1] = f13;
                    matrix[2] = f16;
                    matrix[3] = f11;
                    matrix[4] = f14;
                    matrix[5] = f17;
                    matrix[6] = f12;
                    matrix[7] = f15;
                    matrix[8] = f18;
                    setFrom.setValues(matrix);
                    matrix[0] = f10;
                    matrix[1] = f11;
                    matrix[2] = f;
                    matrix[3] = f12;
                    matrix[4] = f13;
                    matrix[5] = f14;
                    matrix[6] = f6;
                    matrix[7] = f15;
                    matrix[8] = f7;
                    return;
                }
            }
        }
        throw new IllegalArgumentException("Android does not support arbitrary transforms".toString());
    }

    public static final void b(@NotNull float[] setFrom, @NotNull android.graphics.Matrix matrix) {
        kotlin.jvm.internal.t.j(setFrom, "$this$setFrom");
        kotlin.jvm.internal.t.j(matrix, "matrix");
        matrix.getValues(setFrom);
        float f = setFrom[0];
        float f6 = setFrom[1];
        float f7 = setFrom[2];
        float f10 = setFrom[3];
        float f11 = setFrom[4];
        float f12 = setFrom[5];
        float f13 = setFrom[6];
        float f14 = setFrom[7];
        float f15 = setFrom[8];
        setFrom[0] = f;
        setFrom[1] = f10;
        setFrom[2] = 0.0f;
        setFrom[3] = f13;
        setFrom[4] = f6;
        setFrom[5] = f11;
        setFrom[6] = 0.0f;
        setFrom[7] = f14;
        setFrom[8] = 0.0f;
        setFrom[9] = 0.0f;
        setFrom[10] = 1.0f;
        setFrom[11] = 0.0f;
        setFrom[12] = f7;
        setFrom[13] = f12;
        setFrom[14] = 0.0f;
        setFrom[15] = f15;
    }
}
