package androidx.compose.ui.text.style;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class TextAlign {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Left = h(1);
    private static final int Right = h(2);
    private static final int Center = h(3);
    private static final int Justify = h(4);
    private static final int Start = h(5);
    private static final int End = h(6);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return TextAlign.Center;
        }

        public final int b() {
            return TextAlign.End;
        }

        public final int c() {
            return TextAlign.Justify;
        }

        public final int d() {
            return TextAlign.Left;
        }

        public final int e() {
            return TextAlign.Right;
        }

        public final int f() {
            return TextAlign.Start;
        }
    }

    public static final /* synthetic */ TextAlign g(int i10) {
        return new TextAlign(i10);
    }

    public static int h(int i10) {
        return i10;
    }

    public static boolean i(int i10, Object obj) {
        return (obj instanceof TextAlign) && i10 == ((TextAlign) obj).m();
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
        if (j(i10, Left)) {
            return "Left";
        }
        if (j(i10, Right)) {
            return "Right";
        }
        if (j(i10, Center)) {
            return "Center";
        }
        if (j(i10, Justify)) {
            return "Justify";
        }
        if (j(i10, Start)) {
            return "Start";
        }
        return j(i10, End) ? "End" : "Invalid";
    }

    @NotNull
    public String toString() {
        return l(this.value);
    }

    private /* synthetic */ TextAlign(int i10) {
        this.value = i10;
    }
}
