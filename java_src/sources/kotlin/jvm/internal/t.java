package kotlin.jvm.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class t {
    public static boolean b(Double d, Double d2) {
        if (d == null) {
            if (d2 != null) {
                return false;
            }
        } else if (d2 == null || d.doubleValue() != d2.doubleValue()) {
            return false;
        }
        return true;
    }

    public static boolean d(Float f, Float f6) {
        if (f == null) {
            if (f6 != null) {
                return false;
            }
        } else if (f6 == null || f.floatValue() != f6.floatValue()) {
            return false;
        }
        return true;
    }

    public static int l(int i10, int i11) {
        if (i10 < i11) {
            return -1;
        }
        return i10 == i11 ? 0 : 1;
    }

    public static int m(long j6, long j10) {
        if (j6 < j10) {
            return -1;
        }
        return j6 == j10 ? 0 : 1;
    }

    public static class a {
        private a() {
        }
    }

    public static void A(String str) {
        throw ((w7.k0) q(new w7.k0(str)));
    }

    public static void B(String str) {
        A("lateinit property " + str + " has not been initialized");
    }

    public static boolean a(float f, Float f6) {
        return f6 != null && f == f6.floatValue();
    }

    public static boolean c(Float f, float f6) {
        return f != null && f.floatValue() == f6;
    }

    public static boolean e(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) q(new IllegalStateException(str + " must not be null")));
    }

    public static void g(Object obj) {
        if (obj == null) {
            t();
        }
    }

    public static void h(Object obj, String str) {
        if (obj == null) {
            u(str);
        }
    }

    public static void i(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) q(new NullPointerException(str + " must not be null")));
    }

    public static void j(Object obj, String str) {
        if (obj == null) {
            x(str);
        }
    }

    public static void k(Object obj, String str) {
        if (obj == null) {
            w(str);
        }
    }

    private static <T extends Throwable> T q(T t5) {
        return (T) r(t5, t.class.getName());
    }

    public static String s(String str, Object obj) {
        return str + obj;
    }

    public static void t() {
        throw ((NullPointerException) q(new NullPointerException()));
    }

    public static void u(String str) {
        throw ((NullPointerException) q(new NullPointerException(str)));
    }

    public static void v() {
        throw ((w7.j) q(new w7.j()));
    }

    private static void w(String str) {
        throw ((IllegalArgumentException) q(new IllegalArgumentException(n(str))));
    }

    private static void x(String str) {
        throw ((NullPointerException) q(new NullPointerException(n(str))));
    }

    public static void y() {
        z("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void z(String str) {
        throw new UnsupportedOperationException(str);
    }

    private t() {
    }

    private static String n(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = t.class.getName();
        int i10 = 0;
        while (!stackTrace[i10].getClassName().equals(name)) {
            i10++;
        }
        while (stackTrace[i10].getClassName().equals(name)) {
            i10++;
        }
        StackTraceElement stackTraceElement = stackTrace[i10];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static void o() {
        y();
    }

    public static void p(int i10, String str) {
        y();
    }

    static <T extends Throwable> T r(T t5, String str) {
        StackTraceElement[] stackTrace = t5.getStackTrace();
        int length = stackTrace.length;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.equals(stackTrace[i11].getClassName())) {
                i10 = i11;
            }
        }
        t5.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i10 + 1, length));
        return t5;
    }
}
