package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class PathOperation {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Difference = e(0);
    private static final int Intersect = e(1);
    private static final int Union = e(2);
    private static final int Xor = e(3);
    private static final int ReverseDifference = e(4);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return PathOperation.Difference;
        }

        public final int b() {
            return PathOperation.Intersect;
        }

        public final int c() {
            return PathOperation.ReverseDifference;
        }

        public final int d() {
            return PathOperation.Union;
        }
    }

    public static int e(int i10) {
        return i10;
    }

    public static boolean f(int i10, Object obj) {
        return (obj instanceof PathOperation) && i10 == ((PathOperation) obj).j();
    }

    public static final boolean g(int i10, int i11) {
        return i10 == i11;
    }

    public static int h(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return f(this.value, obj);
    }

    public int hashCode() {
        return h(this.value);
    }

    public final /* synthetic */ int j() {
        return this.value;
    }

    @NotNull
    public static String i(int i10) {
        if (g(i10, Difference)) {
            return "Difference";
        }
        if (g(i10, Intersect)) {
            return "Intersect";
        }
        if (g(i10, Union)) {
            return "Union";
        }
        if (g(i10, Xor)) {
            return "Xor";
        }
        return g(i10, ReverseDifference) ? "ReverseDifference" : "Unknown";
    }

    @NotNull
    public String toString() {
        return i(this.value);
    }
}
