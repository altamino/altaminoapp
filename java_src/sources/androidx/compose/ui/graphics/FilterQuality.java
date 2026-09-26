package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class FilterQuality {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int None = c(0);
    private static final int Low = c(1);
    private static final int Medium = c(2);
    private static final int High = c(3);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return FilterQuality.Low;
        }

        public final int b() {
            return FilterQuality.None;
        }
    }

    public static int c(int i10) {
        return i10;
    }

    public static boolean d(int i10, Object obj) {
        return (obj instanceof FilterQuality) && i10 == ((FilterQuality) obj).h();
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
        if (e(i10, None)) {
            return "None";
        }
        if (e(i10, Low)) {
            return "Low";
        }
        if (e(i10, Medium)) {
            return "Medium";
        }
        return e(i10, High) ? "High" : "Unknown";
    }

    @NotNull
    public String toString() {
        return g(this.value);
    }
}
