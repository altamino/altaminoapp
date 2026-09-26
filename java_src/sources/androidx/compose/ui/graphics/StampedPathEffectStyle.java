package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class StampedPathEffectStyle {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Translate = a(0);
    private static final int Rotate = a(1);
    private static final int Morph = a(2);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static int a(int i10) {
        return i10;
    }

    public static boolean b(int i10, Object obj) {
        return (obj instanceof StampedPathEffectStyle) && i10 == ((StampedPathEffectStyle) obj).f();
    }

    public static final boolean c(int i10, int i11) {
        return i10 == i11;
    }

    public static int d(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return b(this.value, obj);
    }

    public final /* synthetic */ int f() {
        return this.value;
    }

    public int hashCode() {
        return d(this.value);
    }

    @NotNull
    public static String e(int i10) {
        if (c(i10, Translate)) {
            return "Translate";
        }
        if (c(i10, Rotate)) {
            return "Rotate";
        }
        return c(i10, Morph) ? "Morph" : "Unknown";
    }

    @NotNull
    public String toString() {
        return e(this.value);
    }
}
