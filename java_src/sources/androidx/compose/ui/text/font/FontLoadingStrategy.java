package androidx.compose.ui.text.font;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class FontLoadingStrategy {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Blocking = d(0);
    private static final int OptionalLocal = d(1);
    private static final int Async = d(2);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return FontLoadingStrategy.Async;
        }

        public final int b() {
            return FontLoadingStrategy.Blocking;
        }

        public final int c() {
            return FontLoadingStrategy.OptionalLocal;
        }
    }

    private static int d(int i10) {
        return i10;
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof FontLoadingStrategy) && i10 == ((FontLoadingStrategy) obj).i();
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
        if (f(i10, Blocking)) {
            return "Blocking";
        }
        if (f(i10, OptionalLocal)) {
            return "Optional";
        }
        if (f(i10, Async)) {
            return "Async";
        }
        return "Invalid(value=" + i10 + ')';
    }

    @NotNull
    public String toString() {
        return h(this.value);
    }
}
