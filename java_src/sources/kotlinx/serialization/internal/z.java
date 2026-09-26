package kotlinx.serialization.internal;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class z<T> implements o1<T> {

    @NotNull
    private final ConcurrentHashMap<Class<?>, n1<T>> cache;

    @NotNull
    private final e8.p<KClass<Object>, List<? extends KType>, KSerializer<T>> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public z(@NotNull e8.p<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> compute) {
        kotlin.jvm.internal.t.j(compute, "compute");
        this.compute = compute;
        this.cache = new ConcurrentHashMap<>();
    }

    @Override // kotlinx.serialization.internal.o1
    @NotNull
    public Object a(@NotNull KClass<Object> key, @NotNull List<? extends KType> types) {
        Object objB;
        n1<T> n1VarPutIfAbsent;
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(types, "types");
        ConcurrentHashMap<Class<?>, n1<T>> concurrentHashMap = this.cache;
        Class<?> clsA = d8.a.a(key);
        n1<T> n1Var = concurrentHashMap.get(clsA);
        if (n1Var == null && (n1VarPutIfAbsent = concurrentHashMap.putIfAbsent(clsA, (n1Var = new n1<>()))) != null) {
            n1Var = n1VarPutIfAbsent;
        }
        ConcurrentHashMap concurrentHashMap2 = ((n1) n1Var).serializers;
        Object obj = concurrentHashMap2.get(types);
        if (obj == null) {
            try {
                w7.v.a aVar = w7.v.Companion;
                objB = w7.v.b(this.compute.invoke(key, types));
            } catch (Throwable th) {
                w7.v.a aVar2 = w7.v.Companion;
                objB = w7.v.b(w7.w.a(th));
            }
            w7.v vVarA = w7.v.a(objB);
            Object objPutIfAbsent = concurrentHashMap2.putIfAbsent(types, vVarA);
            obj = objPutIfAbsent == null ? vVarA : objPutIfAbsent;
        }
        kotlin.jvm.internal.t.i(obj, "serializers.getOrPut(typ… { producer() }\n        }");
        return ((w7.v) obj).j();
    }
}
