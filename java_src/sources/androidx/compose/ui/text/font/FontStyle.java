package androidx.compose.ui.text.font;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class FontStyle {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Normal = d(0);
    private static final int Italic = d(1);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return FontStyle.Italic;
        }

        public final int b() {
            return FontStyle.Normal;
        }
    }

    public static final /* synthetic */ FontStyle c(int i10) {
        return new FontStyle(i10);
    }

    public static int d(int i10) {
        return i10;
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof FontStyle) && i10 == ((FontStyle) obj).i();
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
        if (f(i10, Normal)) {
            return "Normal";
        }
        return f(i10, Italic) ? "Italic" : "Invalid";
    }

    @NotNull
    public String toString() {
        return h(this.value);
    }

    private /* synthetic */ FontStyle(int i10) {
        this.value = i10;
    }
}
