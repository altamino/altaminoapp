package a8;

import h8.d;
import java.lang.reflect.Method;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a8.a$a, reason: collision with other inner class name */
    private static final class C0004a {

        @NotNull
        public static final C0004a INSTANCE = new C0004a();

        @Nullable
        public static final Method addSuppressed;

        @Nullable
        public static final Method getSuppressed;

        static {
            Method method;
            Method method2;
            Method[] methods = Throwable.class.getMethods();
            t.g(methods);
            int length = methods.length;
            int i10 = 0;
            while (true) {
                method = null;
                if (i10 >= length) {
                    method2 = null;
                    break;
                }
                method2 = methods[i10];
                if (t.e(method2.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    t.i(parameterTypes, "getParameterTypes(...)");
                    if (t.e(p.m0(parameterTypes), Throwable.class)) {
                        break;
                    }
                }
                i10++;
            }
            addSuppressed = method2;
            for (Method method3 : methods) {
                if (t.e(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
            }
            getSuppressed = method;
        }

        private C0004a() {
        }
    }

    public void a(@NotNull Throwable cause, @NotNull Throwable exception) {
        t.j(cause, "cause");
        t.j(exception, "exception");
        Method method = C0004a.addSuppressed;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    @NotNull
    public d b() {
        return new h8.b();
    }
}
