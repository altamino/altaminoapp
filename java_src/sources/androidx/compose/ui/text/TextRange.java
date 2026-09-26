package androidx.compose.ui.text;

import androidx.compose.runtime.Immutable;
import i.a;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class TextRange {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = TextRangeKt.a(0);
    private final long packedValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return TextRange.Zero;
        }
    }

    public static final /* synthetic */ TextRange b(long j6) {
        return new TextRange(j6);
    }

    public static long c(long j6) {
        return j6;
    }

    public static boolean f(long j6, Object obj) {
        return (obj instanceof TextRange) && j6 == ((TextRange) obj).r();
    }

    public static final boolean g(long j6, long j10) {
        return j6 == j10;
    }

    public static final int i(long j6) {
        return (int) (j6 & 4294967295L);
    }

    public static final int n(long j6) {
        return (int) (j6 >> 32);
    }

    public static int o(long j6) {
        return a.a(j6);
    }

    public boolean equals(Object obj) {
        return f(this.packedValue, obj);
    }

    public int hashCode() {
        return o(this.packedValue);
    }

    public final /* synthetic */ long r() {
        return this.packedValue;
    }

    @NotNull
    public static String q(long j6) {
        return "TextRange(" + n(j6) + ", " + i(j6) + ')';
    }

    @NotNull
    public String toString() {
        return q(this.packedValue);
    }

    private /* synthetic */ TextRange(long j6) {
        this.packedValue = j6;
    }

    public static final boolean d(long j6, long j10) {
        if (l(j6) <= l(j10) && k(j10) <= k(j6)) {
            return true;
        }
        return false;
    }

    public static final boolean e(long j6, int i10) {
        int iL = l(j6);
        if (i10 >= k(j6) || iL > i10) {
            return false;
        }
        return true;
    }

    public static final boolean h(long j6) {
        if (n(j6) == i(j6)) {
            return true;
        }
        return false;
    }

    public static final int j(long j6) {
        return k(j6) - l(j6);
    }

    public static final int k(long j6) {
        if (n(j6) > i(j6)) {
            return n(j6);
        }
        return i(j6);
    }

    public static final int l(long j6) {
        if (n(j6) > i(j6)) {
            return i(j6);
        }
        return n(j6);
    }

    public static final boolean m(long j6) {
        if (n(j6) > i(j6)) {
            return true;
        }
        return false;
    }

    public static final boolean p(long j6, long j10) {
        if (l(j6) < k(j10) && l(j10) < k(j6)) {
            return true;
        }
        return false;
    }
}
