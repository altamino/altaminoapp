package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class b0 implements Comparable<b0> {

    @NotNull
    public static final a Companion = new a(null);
    public static final byte MAX_VALUE = -1;
    public static final byte MIN_VALUE = 0;
    public static final int SIZE_BITS = 8;
    public static final int SIZE_BYTES = 1;
    private final byte data;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public static final /* synthetic */ b0 a(byte b7) {
        return new b0(b7);
    }

    public static byte b(byte b7) {
        return b7;
    }

    public static boolean c(byte b7, Object obj) {
        return (obj instanceof b0) && b7 == ((b0) obj).f();
    }

    public static int d(byte b7) {
        return b7;
    }

    public boolean equals(Object obj) {
        return c(this.data, obj);
    }

    public final /* synthetic */ byte f() {
        return this.data;
    }

    public int hashCode() {
        return d(this.data);
    }

    @NotNull
    public static String e(byte b7) {
        return String.valueOf(b7 & 255);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(b0 b0Var) {
        return kotlin.jvm.internal.t.l(f() & 255, b0Var.f() & 255);
    }

    @NotNull
    public String toString() {
        return e(this.data);
    }

    private /* synthetic */ b0(byte b7) {
        this.data = b7;
    }
}
