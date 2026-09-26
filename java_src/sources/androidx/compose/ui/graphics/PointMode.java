package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class PointMode {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Points = d(0);
    private static final int Lines = d(1);
    private static final int Polygon = d(2);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return PointMode.Lines;
        }

        public final int b() {
            return PointMode.Points;
        }

        public final int c() {
            return PointMode.Polygon;
        }
    }

    public static int d(int i10) {
        return i10;
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof PointMode) && i10 == ((PointMode) obj).i();
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
        if (f(i10, Points)) {
            return "Points";
        }
        if (f(i10, Lines)) {
            return "Lines";
        }
        return f(i10, Polygon) ? "Polygon" : "Unknown";
    }

    @NotNull
    public String toString() {
        return h(this.value);
    }
}
