package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class IntSize {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = c(0);
    private final long packedValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return IntSize.Zero;
        }
    }

    public static final /* synthetic */ IntSize b(long j6) {
        return new IntSize(j6);
    }

    public static long c(long j6) {
        return j6;
    }

    public static boolean d(long j6, Object obj) {
        return (obj instanceof IntSize) && j6 == ((IntSize) obj).j();
    }

    public static final boolean e(long j6, long j10) {
        return j6 == j10;
    }

    public static final int f(long j6) {
        return (int) (j6 & 4294967295L);
    }

    public static final int g(long j6) {
        return (int) (j6 >> 32);
    }

    public static int h(long j6) {
        return i.a.a(j6);
    }

    public boolean equals(Object obj) {
        return d(this.packedValue, obj);
    }

    public int hashCode() {
        return h(this.packedValue);
    }

    public final /* synthetic */ long j() {
        return this.packedValue;
    }

    @Stable
    @NotNull
    public static String i(long j6) {
        return g(j6) + " x " + f(j6);
    }

    @Stable
    @NotNull
    public String toString() {
        return i(this.packedValue);
    }

    private /* synthetic */ IntSize(long j6) {
        this.packedValue = j6;
    }
}
