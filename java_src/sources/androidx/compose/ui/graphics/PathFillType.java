package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class PathFillType {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int NonZero = d(0);
    private static final int EvenOdd = d(1);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return PathFillType.EvenOdd;
        }

        public final int b() {
            return PathFillType.NonZero;
        }
    }

    public static final /* synthetic */ PathFillType c(int i10) {
        return new PathFillType(i10);
    }

    public static int d(int i10) {
        return i10;
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof PathFillType) && i10 == ((PathFillType) obj).i();
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
        if (f(i10, NonZero)) {
            return "NonZero";
        }
        return f(i10, EvenOdd) ? "EvenOdd" : "Unknown";
    }

    @NotNull
    public String toString() {
        return h(this.value);
    }

    private /* synthetic */ PathFillType(int i10) {
        this.value = i10;
    }
}
