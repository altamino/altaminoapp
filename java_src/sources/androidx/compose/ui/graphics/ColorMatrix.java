package androidx.compose.ui.graphics;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class ColorMatrix {

    @NotNull
    private final float[] values;

    public static boolean a(float[] fArr, Object obj) {
        return (obj instanceof ColorMatrix) && kotlin.jvm.internal.t.e(fArr, ((ColorMatrix) obj).d());
    }

    public static int b(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    public static String c(float[] fArr) {
        return "ColorMatrix(values=" + Arrays.toString(fArr) + ')';
    }

    public final /* synthetic */ float[] d() {
        return this.values;
    }

    public boolean equals(Object obj) {
        return a(this.values, obj);
    }

    public int hashCode() {
        return b(this.values);
    }

    public String toString() {
        return c(this.values);
    }
}
