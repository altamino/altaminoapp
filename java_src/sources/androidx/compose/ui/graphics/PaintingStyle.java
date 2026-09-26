package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class PaintingStyle {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Fill = c(0);
    private static final int Stroke = c(1);
    private final int value;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return PaintingStyle.Fill;
        }

        public final int b() {
            return PaintingStyle.Stroke;
        }
    }

    public static int c(int i10) {
        return i10;
    }

    public static boolean d(int i10, Object obj) {
        return (obj instanceof PaintingStyle) && i10 == ((PaintingStyle) obj).h();
    }

    public static final boolean e(int i10, int i11) {
        return i10 == i11;
    }

    public static int f(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return d(this.value, obj);
    }

    public final /* synthetic */ int h() {
        return this.value;
    }

    public int hashCode() {
        return f(this.value);
    }

    @NotNull
    public static String g(int i10) {
        if (e(i10, Fill)) {
            return "Fill";
        }
        return e(i10, Stroke) ? "Stroke" : "Unknown";
    }

    @NotNull
    public String toString() {
        return g(this.value);
    }
}
