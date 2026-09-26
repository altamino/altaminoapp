package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class Dp implements Comparable<Dp> {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float Hairline = f(0.0f);
    private static final float Infinity = f(Float.POSITIVE_INFINITY);
    private static final float Unspecified = f(Float.NaN);
    private final float value;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final float a() {
            return Dp.Hairline;
        }

        public final float b() {
            return Dp.Unspecified;
        }
    }

    public static final /* synthetic */ Dp c(float f) {
        return new Dp(f);
    }

    public static float f(float f) {
        return f;
    }

    public static boolean h(float f, Object obj) {
        if (obj instanceof Dp) {
            return t.e(Float.valueOf(f), Float.valueOf(((Dp) obj).l()));
        }
        return false;
    }

    public static final boolean i(float f, float f6) {
        return t.e(Float.valueOf(f), Float.valueOf(f6));
    }

    public static int j(float f) {
        return Float.floatToIntBits(f);
    }

    public boolean equals(Object obj) {
        return h(this.value, obj);
    }

    public int hashCode() {
        return j(this.value);
    }

    public final /* synthetic */ float l() {
        return this.value;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Dp dp) {
        return d(dp.l());
    }

    @Stable
    public int d(float f) {
        return e(this.value, f);
    }

    @Stable
    @NotNull
    public String toString() {
        return k(this.value);
    }

    private /* synthetic */ Dp(float f) {
        this.value = f;
    }

    @Stable
    public static int e(float f, float f6) {
        return Float.compare(f, f6);
    }

    @Stable
    @NotNull
    public static String k(float f) {
        if (Float.isNaN(f)) {
            return "Dp.Unspecified";
        }
        return f + ".dp";
    }
}
