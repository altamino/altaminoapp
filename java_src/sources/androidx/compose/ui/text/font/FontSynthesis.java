package androidx.compose.ui.text.font;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class FontSynthesis {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int None = f(0);
    private static final int All = f(1);
    private static final int Weight = f(2);
    private static final int Style = f(3);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return FontSynthesis.All;
        }

        public final int b() {
            return FontSynthesis.None;
        }

        public final int c() {
            return FontSynthesis.Style;
        }

        public final int d() {
            return FontSynthesis.Weight;
        }
    }

    public static final /* synthetic */ FontSynthesis e(int i10) {
        return new FontSynthesis(i10);
    }

    public static int f(int i10) {
        return i10;
    }

    public static boolean g(int i10, Object obj) {
        return (obj instanceof FontSynthesis) && i10 == ((FontSynthesis) obj).m();
    }

    public static final boolean h(int i10, int i11) {
        return i10 == i11;
    }

    public static int i(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return g(this.value, obj);
    }

    public int hashCode() {
        return i(this.value);
    }

    public final /* synthetic */ int m() {
        return this.value;
    }

    public static final boolean j(int i10) {
        return h(i10, All) || h(i10, Style);
    }

    public static final boolean k(int i10) {
        return h(i10, All) || h(i10, Weight);
    }

    @NotNull
    public static String l(int i10) {
        if (h(i10, None)) {
            return "None";
        }
        if (h(i10, All)) {
            return "All";
        }
        if (h(i10, Weight)) {
            return "Weight";
        }
        return h(i10, Style) ? "Style" : "Invalid";
    }

    @NotNull
    public String toString() {
        return l(this.value);
    }

    private /* synthetic */ FontSynthesis(int i10) {
        this.value = i10;
    }
}
