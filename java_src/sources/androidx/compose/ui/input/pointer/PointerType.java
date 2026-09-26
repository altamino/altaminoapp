package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class PointerType {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = f(0);
    private static final int Touch = f(1);
    private static final int Mouse = f(2);
    private static final int Stylus = f(3);
    private static final int Eraser = f(4);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return PointerType.Eraser;
        }

        public final int b() {
            return PointerType.Mouse;
        }

        public final int c() {
            return PointerType.Stylus;
        }

        public final int d() {
            return PointerType.Touch;
        }

        public final int e() {
            return PointerType.Unknown;
        }
    }

    private static int f(int i10) {
        return i10;
    }

    public static boolean g(int i10, Object obj) {
        return (obj instanceof PointerType) && i10 == ((PointerType) obj).k();
    }

    public static final boolean h(int i10, int i11) {
        return i10 == i11;
    }

    public static int i(int i10) {
        return i10;
    }

    @NotNull
    public static String j(int i10) {
        if (i10 == 1) {
            return "Touch";
        }
        if (i10 == 2) {
            return "Mouse";
        }
        if (i10 != 3) {
            return i10 != 4 ? "Unknown" : "Eraser";
        }
        return "Stylus";
    }

    public boolean equals(Object obj) {
        return g(this.value, obj);
    }

    public int hashCode() {
        return i(this.value);
    }

    public final /* synthetic */ int k() {
        return this.value;
    }

    @NotNull
    public String toString() {
        return j(this.value);
    }
}
