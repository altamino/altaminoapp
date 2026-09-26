package androidx.compose.ui.graphics.colorspace;

import androidx.compose.runtime.Immutable;
import i.a;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class ColorModel {
    private static final long Cmyk;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Lab;
    private static final long Rgb;
    private static final long Xyz;
    private final long packedValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return ColorModel.Lab;
        }

        public final long b() {
            return ColorModel.Rgb;
        }

        public final long c() {
            return ColorModel.Xyz;
        }
    }

    public static long d(long j6) {
        return j6;
    }

    public static boolean e(long j6, Object obj) {
        return (obj instanceof ColorModel) && j6 == ((ColorModel) obj).j();
    }

    public static final boolean f(long j6, long j10) {
        return j6 == j10;
    }

    public static final int g(long j6) {
        return (int) (j6 >> 32);
    }

    public static int h(long j6) {
        return a.a(j6);
    }

    public boolean equals(Object obj) {
        return e(this.packedValue, obj);
    }

    public int hashCode() {
        return h(this.packedValue);
    }

    public final /* synthetic */ long j() {
        return this.packedValue;
    }

    static {
        long j6 = 3;
        long j10 = j6 << 32;
        Rgb = d((((long) 0) & 4294967295L) | j10);
        Xyz = d((((long) 1) & 4294967295L) | j10);
        Lab = d(j10 | (((long) 2) & 4294967295L));
        Cmyk = d((j6 & 4294967295L) | (((long) 4) << 32));
    }

    @NotNull
    public static String i(long j6) {
        if (f(j6, Rgb)) {
            return "Rgb";
        }
        if (f(j6, Xyz)) {
            return "Xyz";
        }
        if (f(j6, Lab)) {
            return "Lab";
        }
        return f(j6, Cmyk) ? "Cmyk" : "Unknown";
    }

    @NotNull
    public String toString() {
        return i(this.packedValue);
    }
}
