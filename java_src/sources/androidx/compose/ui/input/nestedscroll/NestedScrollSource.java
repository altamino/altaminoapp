package androidx.compose.ui.input.nestedscroll;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class NestedScrollSource {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Drag = c(1);
    private static final int Fling = c(2);
    private static final int Relocate = c(3);
    private final int value;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return NestedScrollSource.Drag;
        }

        public final int b() {
            return NestedScrollSource.Fling;
        }
    }

    public static int c(int i10) {
        return i10;
    }

    public static boolean d(int i10, Object obj) {
        return (obj instanceof NestedScrollSource) && i10 == ((NestedScrollSource) obj).h();
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
        if (e(i10, Drag)) {
            return "Drag";
        }
        if (e(i10, Fling)) {
            return "Fling";
        }
        return e(i10, Relocate) ? "Relocate" : "Invalid";
    }

    @NotNull
    public String toString() {
        return g(this.value);
    }
}
