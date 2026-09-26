package androidx.compose.ui.text.input;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class KeyboardCapitalization {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int None = e(0);
    private static final int Characters = e(1);
    private static final int Words = e(2);
    private static final int Sentences = e(3);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return KeyboardCapitalization.Characters;
        }

        public final int b() {
            return KeyboardCapitalization.None;
        }

        public final int c() {
            return KeyboardCapitalization.Sentences;
        }

        public final int d() {
            return KeyboardCapitalization.Words;
        }
    }

    public static int e(int i10) {
        return i10;
    }

    public static boolean f(int i10, Object obj) {
        return (obj instanceof KeyboardCapitalization) && i10 == ((KeyboardCapitalization) obj).j();
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
        if (g(i10, None)) {
            return "None";
        }
        if (g(i10, Characters)) {
            return "Characters";
        }
        if (g(i10, Words)) {
            return "Words";
        }
        return g(i10, Sentences) ? "Sentences" : "Invalid";
    }

    @NotNull
    public String toString() {
        return i(this.value);
    }
}
