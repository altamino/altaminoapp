package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class StrokeJoin {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Miter = e(0);
    private static final int Round = e(1);
    private static final int Bevel = e(2);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return StrokeJoin.Bevel;
        }

        public final int b() {
            return StrokeJoin.Miter;
        }

        public final int c() {
            return StrokeJoin.Round;
        }
    }

    public static final /* synthetic */ StrokeJoin d(int i10) {
        return new StrokeJoin(i10);
    }

    public static int e(int i10) {
        return i10;
    }

    public static boolean f(int i10, Object obj) {
        return (obj instanceof StrokeJoin) && i10 == ((StrokeJoin) obj).j();
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
        if (g(i10, Miter)) {
            return "Miter";
        }
        if (g(i10, Round)) {
            return "Round";
        }
        return g(i10, Bevel) ? "Bevel" : "Unknown";
    }

    @NotNull
    public String toString() {
        return i(this.value);
    }

    private /* synthetic */ StrokeJoin(int i10) {
        this.value = i10;
    }
}
