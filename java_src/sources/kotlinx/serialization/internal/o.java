package kotlinx.serialization.internal;

import java.util.List;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class o {
    private static final boolean useClassValue;

    static {
        Object objB;
        try {
            w7.v.a aVar = w7.v.Companion;
            objB = w7.v.b(Class.forName("java.lang.ClassValue"));
        } catch (Throwable th) {
            w7.v.a aVar2 = w7.v.Companion;
            objB = w7.v.b(w7.w.a(th));
        }
        if (w7.v.h(objB)) {
            objB = Boolean.TRUE;
        }
        Object objB2 = w7.v.b(objB);
        Boolean bool = Boolean.FALSE;
        if (w7.v.g(objB2)) {
            objB2 = bool;
        }
        useClassValue = ((Boolean) objB2).booleanValue();
    }

    @NotNull
    public static final <T> c2<T> a(@NotNull e8.l<? super KClass<?>, ? extends KSerializer<T>> factory) {
        kotlin.jvm.internal.t.j(factory, "factory");
        return useClassValue ? new t(factory) : new y(factory);
    }

    @NotNull
    public static final <T> o1<T> b(@NotNull e8.p<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> factory) {
        kotlin.jvm.internal.t.j(factory, "factory");
        return useClassValue ? new v(factory) : new z(factory);
    }
}
