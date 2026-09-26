package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class i {

    @Nullable
    private static a cache;

    @NotNull
    public static final i INSTANCE = new i();

    @NotNull
    private static final a notOnJava9 = new a(null, null, null);

    private static final class a {

        @Nullable
        public final Method getDescriptorMethod;

        @Nullable
        public final Method getModuleMethod;

        @Nullable
        public final Method nameMethod;

        public a(@Nullable Method method, @Nullable Method method2, @Nullable Method method3) {
            this.getModuleMethod = method;
            this.getDescriptorMethod = method2;
            this.nameMethod = method3;
        }
    }

    private final a a(kotlin.coroutines.jvm.internal.a aVar) {
        try {
            a aVar2 = new a(Class.class.getDeclaredMethod("getModule", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            cache = aVar2;
            return aVar2;
        } catch (Exception unused) {
            a aVar3 = notOnJava9;
            cache = aVar3;
            return aVar3;
        }
    }

    @Nullable
    public final String b(@NotNull kotlin.coroutines.jvm.internal.a continuation) {
        t.j(continuation, "continuation");
        a aVarA = cache;
        if (aVarA == null) {
            aVarA = a(continuation);
        }
        if (aVarA == notOnJava9) {
            return null;
        }
        Method method = aVarA.getModuleMethod;
        Object objInvoke = method != null ? method.invoke(continuation.getClass(), new Object[0]) : null;
        if (objInvoke == null) {
            return null;
        }
        Method method2 = aVarA.getDescriptorMethod;
        Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, new Object[0]) : null;
        if (objInvoke2 == null) {
            return null;
        }
        Method method3 = aVarA.nameMethod;
        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, new Object[0]) : null;
        if (objInvoke3 instanceof String) {
            return (String) objInvoke3;
        }
        return null;
    }

    private i() {
    }
}
