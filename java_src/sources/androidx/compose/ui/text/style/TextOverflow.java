package androidx.compose.ui.text.style;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class TextOverflow {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Clip = c(1);
    private static final int Ellipsis = c(2);
    private static final int Visible = c(3);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return TextOverflow.Clip;
        }

        public final int b() {
            return TextOverflow.Ellipsis;
        }
    }

    public static int c(int i10) {
        return i10;
    }

    public static boolean d(int i10, Object obj) {
        return (obj instanceof TextOverflow) && i10 == ((TextOverflow) obj).h();
    }

    public static final boolean e(int i10, int i11) {
        return i10 == i11;
    }

    public static int f(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return d(this.value, obj);
    }

    public final /* synthetic */ int h() {
        return this.value;
    }

    public int hashCode() {
        return f(this.value);
    }

    @NotNull
    public static String g(int i10) {
        if (e(i10, Clip)) {
            return "Clip";
        }
        if (e(i10, Ellipsis)) {
            return "Ellipsis";
        }
        return e(i10, Visible) ? "Visible" : "Invalid";
    }

    @NotNull
    public String toString() {
        return g(this.value);
    }
}
