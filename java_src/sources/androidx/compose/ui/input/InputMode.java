package androidx.compose.ui.input;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class InputMode {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Touch = d(1);
    private static final int Keyboard = d(2);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return InputMode.Keyboard;
        }

        public final int b() {
            return InputMode.Touch;
        }
    }

    public static final /* synthetic */ InputMode c(int i10) {
        return new InputMode(i10);
    }

    public static int d(int i10) {
        return i10;
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof InputMode) && i10 == ((InputMode) obj).i();
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
        if (f(i10, Touch)) {
            return "Touch";
        }
        return f(i10, Keyboard) ? "Keyboard" : "Error";
    }

    @NotNull
    public String toString() {
        return h(this.value);
    }

    private /* synthetic */ InputMode(int i10) {
        this.value = i10;
    }
}
