package androidx.compose.ui.text;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class PlaceholderVerticalAlign {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int AboveBaseline = h(1);
    private static final int Top = h(2);
    private static final int Bottom = h(3);
    private static final int Center = h(4);
    private static final int TextTop = h(5);
    private static final int TextBottom = h(6);
    private static final int TextCenter = h(7);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return PlaceholderVerticalAlign.AboveBaseline;
        }

        public final int b() {
            return PlaceholderVerticalAlign.Bottom;
        }

        public final int c() {
            return PlaceholderVerticalAlign.Center;
        }

        public final int d() {
            return PlaceholderVerticalAlign.TextBottom;
        }

        public final int e() {
            return PlaceholderVerticalAlign.TextCenter;
        }

        public final int f() {
            return PlaceholderVerticalAlign.TextTop;
        }

        public final int g() {
            return PlaceholderVerticalAlign.Top;
        }
    }

    public static int h(int i10) {
        return i10;
    }

    public static boolean i(int i10, Object obj) {
        return (obj instanceof PlaceholderVerticalAlign) && i10 == ((PlaceholderVerticalAlign) obj).m();
    }

    public static final boolean j(int i10, int i11) {
        return i10 == i11;
    }

    public static int k(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return i(this.value, obj);
    }

    public int hashCode() {
        return k(this.value);
    }

    public final /* synthetic */ int m() {
        return this.value;
    }

    @NotNull
    public static String l(int i10) {
        if (j(i10, AboveBaseline)) {
            return "AboveBaseline";
        }
        if (j(i10, Top)) {
            return "Top";
        }
        if (j(i10, Bottom)) {
            return "Bottom";
        }
        if (j(i10, Center)) {
            return "Center";
        }
        if (j(i10, TextTop)) {
            return "TextTop";
        }
        if (j(i10, TextBottom)) {
            return "TextBottom";
        }
        return j(i10, TextCenter) ? "TextCenter" : "Invalid";
    }

    @NotNull
    public String toString() {
        return l(this.value);
    }
}
