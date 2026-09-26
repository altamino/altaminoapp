package okhttp3.internal.platform.android;

import java.lang.reflect.Method;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class CloseGuard {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private final Method getMethod;

    @Nullable
    private final Method openMethod;

    @Nullable
    private final Method warnIfOpenMethod;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final CloseGuard get() {
            Method method;
            Method method2;
            Method method3;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                method = cls.getMethod("get", new Class[0]);
                method3 = cls.getMethod("open", String.class);
                method2 = cls.getMethod("warnIfOpen", new Class[0]);
            } catch (Exception unused) {
                method = null;
                method2 = null;
                method3 = null;
            }
            return new CloseGuard(method, method3, method2);
        }
    }

    public final boolean warnIfOpen(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            Method method = this.warnIfOpenMethod;
            t.g(method);
            method.invoke(obj, new Object[0]);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Nullable
    public final Object createAndOpen(@NotNull String closer) {
        t.j(closer, "closer");
        Method method = this.getMethod;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(null, new Object[0]);
                Method method2 = this.openMethod;
                t.g(method2);
                method2.invoke(objInvoke, closer);
                return objInvoke;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public CloseGuard(@Nullable Method method, @Nullable Method method2, @Nullable Method method3) {
        this.getMethod = method;
        this.openMethod = method2;
        this.warnIfOpenMethod = method3;
    }
}
