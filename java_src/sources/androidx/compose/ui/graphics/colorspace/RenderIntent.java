package androidx.compose.ui.graphics.colorspace;

import androidx.compose.runtime.Immutable;
import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class RenderIntent {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Perceptual = d(0);
    private static final int Relative = d(1);
    private static final int Saturation = d(2);
    private static final int Absolute = d(3);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return RenderIntent.Absolute;
        }

        public final int b() {
            return RenderIntent.Perceptual;
        }

        public final int c() {
            return RenderIntent.Relative;
        }
    }

    public static int d(int i10) {
        return i10;
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof RenderIntent) && i10 == ((RenderIntent) obj).i();
    }

    public static final boolean f(int i10, int i11) {
        return i10 == i11;
    }

    public static int g(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return e(this.value, obj);
    }

    public int hashCode() {
        return g(this.value);
    }

    public final /* synthetic */ int i() {
        return this.value;
    }

    @NotNull
    public static String h(int i10) {
        if (f(i10, Perceptual)) {
            return "Perceptual";
        }
        if (f(i10, Relative)) {
            return "Relative";
        }
        if (f(i10, Saturation)) {
            return ExifInterface.TAG_SATURATION;
        }
        return f(i10, Absolute) ? "Absolute" : "Unknown";
    }

    @NotNull
    public String toString() {
        return h(this.value);
    }
}
