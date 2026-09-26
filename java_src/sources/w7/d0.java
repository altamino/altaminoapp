package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class d0 implements Comparable<d0> {

    @NotNull
    public static final a Companion = new a(null);
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public static final /* synthetic */ d0 a(int i10) {
        return new d0(i10);
    }

    public static int b(int i10) {
        return i10;
    }

    public static boolean c(int i10, Object obj) {
        return (obj instanceof d0) && i10 == ((d0) obj).f();
    }

    public static int d(int i10) {
        return i10;
    }

    @NotNull
    public static String e(int i10) {
        return String.valueOf(((long) i10) & 4294967295L);
    }

    public boolean equals(Object obj) {
        return c(this.data, obj);
    }

    public final /* synthetic */ int f() {
        return this.data;
    }

    public int hashCode() {
        return d(this.data);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(d0 d0Var) {
        return n0.b(f(), d0Var.f());
    }

    @NotNull
    public String toString() {
        return e(this.data);
    }

    private /* synthetic */ d0(int i10) {
        this.data = i10;
    }
}
