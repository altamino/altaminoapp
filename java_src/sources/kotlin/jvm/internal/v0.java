package kotlin.jvm.internal;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes11.dex */
public class v0 {
    public static Collection a(Object obj) {
        if ((obj instanceof f8.a) && !(obj instanceof f8.b)) {
            q(obj, "kotlin.collections.MutableCollection");
        }
        return f(obj);
    }

    public static Iterable b(Object obj) {
        if ((obj instanceof f8.a) && !(obj instanceof f8.c)) {
            q(obj, "kotlin.collections.MutableIterable");
        }
        return g(obj);
    }

    public static List c(Object obj) {
        if ((obj instanceof f8.a) && !(obj instanceof f8.d)) {
            q(obj, "kotlin.collections.MutableList");
        }
        return h(obj);
    }

    public static Map d(Object obj) {
        if ((obj instanceof f8.a) && !(obj instanceof f8.e)) {
            q(obj, "kotlin.collections.MutableMap");
        }
        return i(obj);
    }

    public static Object e(Object obj, int i10) {
        if (obj != null && !k(obj, i10)) {
            q(obj, "kotlin.jvm.functions.Function" + i10);
        }
        return obj;
    }

    public static Collection f(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e) {
            throw p(e);
        }
    }

    public static Iterable g(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e) {
            throw p(e);
        }
    }

    public static List h(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e) {
            throw p(e);
        }
    }

    public static Map i(Object obj) {
        try {
            return (Map) obj;
        } catch (ClassCastException e) {
            throw p(e);
        }
    }

    public static int j(Object obj) {
        if (obj instanceof o) {
            return ((o) obj).getArity();
        }
        if (obj instanceof e8.a) {
            return 0;
        }
        if (obj instanceof e8.l) {
            return 1;
        }
        if (obj instanceof e8.p) {
            return 2;
        }
        if (obj instanceof e8.q) {
            return 3;
        }
        if (obj instanceof e8.r) {
            return 4;
        }
        if (obj instanceof e8.s) {
            return 5;
        }
        if (obj instanceof e8.t) {
            return 6;
        }
        if (obj instanceof e8.u) {
            return 7;
        }
        if (obj instanceof e8.v) {
            return 8;
        }
        if (obj instanceof e8.w) {
            return 9;
        }
        if (obj instanceof e8.b) {
            return 10;
        }
        if (obj instanceof e8.c) {
            return 11;
        }
        if (obj instanceof e8.d) {
            return 12;
        }
        if (obj instanceof e8.e) {
            return 13;
        }
        if (obj instanceof e8.f) {
            return 14;
        }
        if (obj instanceof e8.g) {
            return 15;
        }
        if (obj instanceof e8.h) {
            return 16;
        }
        if (obj instanceof e8.i) {
            return 17;
        }
        if (obj instanceof e8.j) {
            return 18;
        }
        if (obj instanceof e8.k) {
            return 19;
        }
        if (obj instanceof e8.m) {
            return 20;
        }
        if (obj instanceof e8.n) {
            return 21;
        }
        return obj instanceof e8.o ? 22 : -1;
    }

    public static boolean k(Object obj, int i10) {
        return (obj instanceof w7.g) && j(obj) == i10;
    }

    public static boolean l(Object obj) {
        return (obj instanceof List) && (!(obj instanceof f8.a) || (obj instanceof f8.d));
    }

    public static boolean m(Object obj) {
        return (obj instanceof Map.Entry) && (!(obj instanceof f8.a) || (obj instanceof f8.e.a));
    }

    public static boolean n(Object obj) {
        return (obj instanceof Set) && (!(obj instanceof f8.a) || (obj instanceof f8.f));
    }

    private static <T extends Throwable> T o(T t5) {
        return (T) t.r(t5, v0.class.getName());
    }

    public static void q(Object obj, String str) {
        r((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    public static void r(String str) {
        throw p(new ClassCastException(str));
    }

    public static ClassCastException p(ClassCastException classCastException) {
        throw ((ClassCastException) o(classCastException));
    }
}
