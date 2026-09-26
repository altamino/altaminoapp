package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class TileMode {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Clamp = e(0);
    private static final int Repeated = e(1);
    private static final int Mirror = e(2);
    private static final int Decal = e(3);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return TileMode.Clamp;
        }

        public final int b() {
            return TileMode.Decal;
        }

        public final int c() {
            return TileMode.Mirror;
        }

        public final int d() {
            return TileMode.Repeated;
        }
    }

    public static int e(int i10) {
        return i10;
    }

    public static boolean f(int i10, Object obj) {
        return (obj instanceof TileMode) && i10 == ((TileMode) obj).j();
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
        if (g(i10, Clamp)) {
            return "Clamp";
        }
        if (g(i10, Repeated)) {
            return "Repeated";
        }
        if (g(i10, Mirror)) {
            return "Mirror";
        }
        return g(i10, Decal) ? "Decal" : "Unknown";
    }

    @NotNull
    public String toString() {
        return i(this.value);
    }
}
