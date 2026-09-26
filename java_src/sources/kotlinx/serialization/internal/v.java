package kotlinx.serialization.internal;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class v<T> implements o1<T> {

    @NotNull
    private final a classValue;

    @NotNull
    private final e8.p<KClass<Object>, List<? extends KType>, KSerializer<T>> compute;

    public static final class a extends ClassValue<n1<T>> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ClassValue
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public n1<T> computeValue(@NotNull Class<?> type) {
            kotlin.jvm.internal.t.j(type, "type");
            return new n1<>();
        }

        a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v(@NotNull e8.p<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> compute) {
        kotlin.jvm.internal.t.j(compute, "compute");
        this.compute = compute;
        this.classValue = b();
    }

    private final a b() {
        return new a();
    }

    @Override // kotlinx.serialization.internal.o1
    @NotNull
    public Object a(@NotNull KClass<Object> key, @NotNull List<? extends KType> types) {
        Object objB;
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(types, "types");
        ConcurrentHashMap concurrentHashMap = ((n1) this.classValue.get(d8.a.a(key))).serializers;
        Object obj = concurrentHashMap.get(types);
        if (obj == null) {
            try {
                w7.v.a aVar = w7.v.Companion;
                objB = w7.v.b(this.compute.invoke(key, types));
            } catch (Throwable th) {
                w7.v.a aVar2 = w7.v.Companion;
                objB = w7.v.b(w7.w.a(th));
            }
            w7.v vVarA = w7.v.a(objB);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(types, vVarA);
            obj = objPutIfAbsent == null ? vVarA : objPutIfAbsent;
        }
        kotlin.jvm.internal.t.i(obj, "serializers.getOrPut(typ… { producer() }\n        }");
        return ((w7.v) obj).j();
    }
}
