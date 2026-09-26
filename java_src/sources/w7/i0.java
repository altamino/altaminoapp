package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class i0 implements Comparable<i0> {

    @NotNull
    public static final a Companion = new a(null);
    public static final short MAX_VALUE = -1;
    public static final short MIN_VALUE = 0;
    public static final int SIZE_BITS = 16;
    public static final int SIZE_BYTES = 2;
    private final short data;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public static final /* synthetic */ i0 a(short s) {
        return new i0(s);
    }

    public static short b(short s) {
        return s;
    }

    public static boolean c(short s, Object obj) {
        return (obj instanceof i0) && s == ((i0) obj).f();
    }

    public static int d(short s) {
        return s;
    }

    public boolean equals(Object obj) {
        return c(this.data, obj);
    }

    public final /* synthetic */ short f() {
        return this.data;
    }

    public int hashCode() {
        return d(this.data);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(i0 i0Var) {
        return kotlin.jvm.internal.t.l(f() & MAX_VALUE, i0Var.f() & MAX_VALUE);
    }

    @NotNull
    public String toString() {
        return e(this.data);
    }

    private /* synthetic */ i0(short s) {
        this.data = s;
    }

    @NotNull
    public static String e(short s) {
        return String.valueOf(s & MAX_VALUE);
    }
}
