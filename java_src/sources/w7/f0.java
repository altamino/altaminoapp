package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class f0 implements Comparable<f0> {

    @NotNull
    public static final a Companion = new a(null);
    public static final long MAX_VALUE = -1;
    public static final long MIN_VALUE = 0;
    public static final int SIZE_BITS = 64;
    public static final int SIZE_BYTES = 8;
    private final long data;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public static final /* synthetic */ f0 a(long j6) {
        return new f0(j6);
    }

    public static long b(long j6) {
        return j6;
    }

    public static boolean c(long j6, Object obj) {
        return (obj instanceof f0) && j6 == ((f0) obj).f();
    }

    public static int d(long j6) {
        return i.a.a(j6);
    }

    public boolean equals(Object obj) {
        return c(this.data, obj);
    }

    public final /* synthetic */ long f() {
        return this.data;
    }

    public int hashCode() {
        return d(this.data);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(f0 f0Var) {
        return n0.d(f(), f0Var.f());
    }

    @NotNull
    public String toString() {
        return e(this.data);
    }

    private /* synthetic */ f0(long j6) {
        this.data = j6;
    }

    @NotNull
    public static String e(long j6) {
        return n0.f(j6);
    }
}
