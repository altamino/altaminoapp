package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class ImageBitmapConfig {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Argb8888 = g(0);
    private static final int Alpha8 = g(1);
    private static final int Rgb565 = g(2);
    private static final int F16 = g(3);
    private static final int Gpu = g(4);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return ImageBitmapConfig.Alpha8;
        }

        public final int b() {
            return ImageBitmapConfig.Argb8888;
        }

        public final int c() {
            return ImageBitmapConfig.F16;
        }

        public final int d() {
            return ImageBitmapConfig.Gpu;
        }

        public final int e() {
            return ImageBitmapConfig.Rgb565;
        }
    }

    public static final /* synthetic */ ImageBitmapConfig f(int i10) {
        return new ImageBitmapConfig(i10);
    }

    public static int g(int i10) {
        return i10;
    }

    public static boolean h(int i10, Object obj) {
        return (obj instanceof ImageBitmapConfig) && i10 == ((ImageBitmapConfig) obj).l();
    }

    public static final boolean i(int i10, int i11) {
        return i10 == i11;
    }

    public static int j(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return h(this.value, obj);
    }

    public int hashCode() {
        return j(this.value);
    }

    public final /* synthetic */ int l() {
        return this.value;
    }

    @NotNull
    public static String k(int i10) {
        if (i(i10, Argb8888)) {
            return "Argb8888";
        }
        if (i(i10, Alpha8)) {
            return "Alpha8";
        }
        if (i(i10, Rgb565)) {
            return "Rgb565";
        }
        if (i(i10, F16)) {
            return "F16";
        }
        return i(i10, Gpu) ? "Gpu" : "Unknown";
    }

    @NotNull
    public String toString() {
        return k(this.value);
    }

    private /* synthetic */ ImageBitmapConfig(int i10) {
        this.value = i10;
    }
}
