package s7;

import w7.i0;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private final int value;

    public static int c(int i10) {
        return i10;
    }

    public static boolean e(int i10, Object obj) {
        return (obj instanceof c) && i10 == ((c) obj).j();
    }

    public static int h(int i10) {
        return i10;
    }

    public static String i(int i10) {
        return "EncodeResult(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return e(this.value, obj);
    }

    public int hashCode() {
        return h(this.value);
    }

    public final /* synthetic */ int j() {
        return this.value;
    }

    public String toString() {
        return i(this.value);
    }

    public static final short g(int i10) {
        return i0.b((short) (i10 >>> 16));
    }

    public static final short a(int i10) {
        return g(i10);
    }

    public static final short b(int i10) {
        return f(i10);
    }

    public static int d(short s, short s5) {
        return c(((s & i0.MAX_VALUE) << 16) | (s5 & i0.MAX_VALUE));
    }

    public static final short f(int i10) {
        return i0.b((short) (i10 & 65535));
    }
}
