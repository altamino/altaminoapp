package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes5.dex */
public final class PointerId {
    private final long value;

    public static final /* synthetic */ PointerId a(long j6) {
        return new PointerId(j6);
    }

    public static long b(long j6) {
        return j6;
    }

    public static boolean c(long j6, Object obj) {
        return (obj instanceof PointerId) && j6 == ((PointerId) obj).g();
    }

    public static final boolean d(long j6, long j10) {
        return j6 == j10;
    }

    public static int e(long j6) {
        return i.a.a(j6);
    }

    public static String f(long j6) {
        return "PointerId(value=" + j6 + ')';
    }

    public boolean equals(Object obj) {
        return c(this.value, obj);
    }

    public final /* synthetic */ long g() {
        return this.value;
    }

    public int hashCode() {
        return e(this.value);
    }

    public String toString() {
        return f(this.value);
    }

    private /* synthetic */ PointerId(long j6) {
        this.value = j6;
    }
}
