package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class ClipOp {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Difference = c(0);
    private static final int Intersect = c(1);
    private final int value;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return ClipOp.Difference;
        }

        public final int b() {
            return ClipOp.Intersect;
        }
    }

    public static int c(int i10) {
        return i10;
    }

    public static boolean d(int i10, Object obj) {
        return (obj instanceof ClipOp) && i10 == ((ClipOp) obj).h();
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
        if (e(i10, Difference)) {
            return "Difference";
        }
        return e(i10, Intersect) ? "Intersect" : "Unknown";
    }

    @NotNull
    public String toString() {
        return g(this.value);
    }
}
