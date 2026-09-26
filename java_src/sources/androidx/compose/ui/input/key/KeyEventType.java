package androidx.compose.ui.input.key;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class KeyEventType {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = d(0);
    private static final int KeyUp = d(1);
    private static final int KeyDown = d(2);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return KeyEventType.KeyDown;
        }

        public final int b() {
            return KeyEventType.KeyUp;
        }

        public final int c() {
            return KeyEventType.Unknown;
        }
    }

    public static int d(int i10) {
        return i10;
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof KeyEventType) && i10 == ((KeyEventType) obj).i();
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
        if (f(i10, KeyUp)) {
            return "KeyUp";
        }
        if (f(i10, KeyDown)) {
            return "KeyDown";
        }
        return f(i10, Unknown) ? "Unknown" : "Invalid";
    }

    @NotNull
    public String toString() {
        return h(this.value);
    }
}
