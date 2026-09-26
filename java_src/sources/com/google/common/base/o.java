package com.google.common.base;

/* JADX INFO: loaded from: classes10.dex */
public final class o {
    private static String a(int i10, int i11, String str) {
        if (i10 < 0) {
            return t.b("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return t.b("%s (%s) must be less than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i11);
        throw new IllegalArgumentException(sb.toString());
    }

    private static String b(int i10, int i11, String str) {
        if (i10 < 0) {
            return t.b("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return t.b("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i11);
        throw new IllegalArgumentException(sb.toString());
    }

    private static String c(int i10, int i11, int i12) {
        if (i10 < 0 || i10 > i12) {
            return b(i10, i12, "start index");
        }
        return (i11 < 0 || i11 > i12) ? b(i11, i12, "end index") : t.b("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
    }

    public static void d(boolean z6) {
        if (!z6) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean z6, Object obj) {
        if (!z6) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void f(boolean z6, String str, int i10) {
        if (!z6) {
            throw new IllegalArgumentException(t.b(str, Integer.valueOf(i10)));
        }
    }

    public static void g(boolean z6, String str, int i10, int i11) {
        if (!z6) {
            throw new IllegalArgumentException(t.b(str, Integer.valueOf(i10), Integer.valueOf(i11)));
        }
    }

    public static void h(boolean z6, String str, long j6) {
        if (!z6) {
            throw new IllegalArgumentException(t.b(str, Long.valueOf(j6)));
        }
    }

    public static int i(int i10, int i11) {
        return j(i10, i11, "index");
    }

    public static int j(int i10, int i11, String str) {
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(a(i10, i11, str));
        }
        return i10;
    }

    public static <T> T l(T t5, Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static int m(int i10, int i11) {
        return n(i10, i11, "index");
    }

    public static int n(int i10, int i11, String str) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(b(i10, i11, str));
        }
        return i10;
    }

    public static void o(int i10, int i11, int i12) {
        if (i10 < 0 || i11 < i10 || i11 > i12) {
            throw new IndexOutOfBoundsException(c(i10, i11, i12));
        }
    }

    public static void p(boolean z6) {
        if (!z6) {
            throw new IllegalStateException();
        }
    }

    public static void q(boolean z6, Object obj) {
        if (!z6) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void r(boolean z6, String str, Object obj) {
        if (!z6) {
            throw new IllegalStateException(t.b(str, obj));
        }
    }

    public static <T> T k(T t5) {
        t5.getClass();
        return t5;
    }
}
