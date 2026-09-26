package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Immutable;
import i.a;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class GridItemSpan {
    private final long packedValue;

    public static final /* synthetic */ GridItemSpan a(long j6) {
        return new GridItemSpan(j6);
    }

    public static long b(long j6) {
        return j6;
    }

    public static boolean c(long j6, Object obj) {
        return (obj instanceof GridItemSpan) && j6 == ((GridItemSpan) obj).g();
    }

    public static final int d(long j6) {
        return (int) j6;
    }

    public static int e(long j6) {
        return a.a(j6);
    }

    public static String f(long j6) {
        return "GridItemSpan(packedValue=" + j6 + ')';
    }

    public boolean equals(Object obj) {
        return c(this.packedValue, obj);
    }

    public final /* synthetic */ long g() {
        return this.packedValue;
    }

    public int hashCode() {
        return e(this.packedValue);
    }

    public String toString() {
        return f(this.packedValue);
    }

    private /* synthetic */ GridItemSpan(long j6) {
        this.packedValue = j6;
    }
}
