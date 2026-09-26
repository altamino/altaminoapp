package androidx.compose.ui.semantics;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class LiveRegionMode {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Polite = d(0);
    private static final int Assertive = d(1);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return LiveRegionMode.Assertive;
        }

        public final int b() {
            return LiveRegionMode.Polite;
        }
    }

    public static final /* synthetic */ LiveRegionMode c(int i10) {
        return new LiveRegionMode(i10);
    }

    private static int d(int i10) {
        return i10;
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof LiveRegionMode) && i10 == ((LiveRegionMode) obj).i();
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
        if (f(i10, Polite)) {
            return "Polite";
        }
        return f(i10, Assertive) ? "Assertive" : "Unknown";
    }

    @NotNull
    public String toString() {
        return h(this.value);
    }

    private /* synthetic */ LiveRegionMode(int i10) {
        this.value = i10;
    }
}
