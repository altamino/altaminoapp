package androidx.compose.ui.text.style;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class TextDirection {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Ltr = g(1);
    private static final int Rtl = g(2);
    private static final int Content = g(3);
    private static final int ContentOrLtr = g(4);
    private static final int ContentOrRtl = g(5);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return TextDirection.Content;
        }

        public final int b() {
            return TextDirection.ContentOrLtr;
        }

        public final int c() {
            return TextDirection.ContentOrRtl;
        }

        public final int d() {
            return TextDirection.Ltr;
        }

        public final int e() {
            return TextDirection.Rtl;
        }
    }

    public static final /* synthetic */ TextDirection f(int i10) {
        return new TextDirection(i10);
    }

    public static int g(int i10) {
        return i10;
    }

    public static boolean h(int i10, Object obj) {
        return (obj instanceof TextDirection) && i10 == ((TextDirection) obj).l();
    }

    public static final boolean i(int i10, int i11) {
        return i10 == i11;
    }

    public static int j(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return h(this.value, obj);
    }

    public int hashCode() {
        return j(this.value);
    }

    public final /* synthetic */ int l() {
        return this.value;
    }

    @NotNull
    public static String k(int i10) {
        if (i(i10, Ltr)) {
            return "Ltr";
        }
        if (i(i10, Rtl)) {
            return "Rtl";
        }
        if (i(i10, Content)) {
            return "Content";
        }
        if (i(i10, ContentOrLtr)) {
            return "ContentOrLtr";
        }
        return i(i10, ContentOrRtl) ? "ContentOrRtl" : "Invalid";
    }

    @NotNull
    public String toString() {
        return k(this.value);
    }

    private /* synthetic */ TextDirection(int i10) {
        this.value = i10;
    }
}
