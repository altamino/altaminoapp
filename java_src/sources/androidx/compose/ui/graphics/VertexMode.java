package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class VertexMode {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Triangles = a(0);
    private static final int TriangleStrip = a(1);
    private static final int TriangleFan = a(2);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static int a(int i10) {
        return i10;
    }

    public static boolean b(int i10, Object obj) {
        return (obj instanceof VertexMode) && i10 == ((VertexMode) obj).f();
    }

    public static final boolean c(int i10, int i11) {
        return i10 == i11;
    }

    public static int d(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return b(this.value, obj);
    }

    public final /* synthetic */ int f() {
        return this.value;
    }

    public int hashCode() {
        return d(this.value);
    }

    @NotNull
    public static String e(int i10) {
        if (c(i10, Triangles)) {
            return "Triangles";
        }
        if (c(i10, TriangleStrip)) {
            return "TriangleStrip";
        }
        return c(i10, TriangleFan) ? "TriangleFan" : "Unknown";
    }

    @NotNull
    public String toString() {
        return e(this.value);
    }
}
