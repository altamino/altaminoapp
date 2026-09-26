package kotlinx.serialization.internal;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class y<T> implements c2<T> {

    @NotNull
    private final ConcurrentHashMap<Class<?>, m<T>> cache;

    @NotNull
    private final e8.l<KClass<?>, KSerializer<T>> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public y(@NotNull e8.l<? super KClass<?>, ? extends KSerializer<T>> compute) {
        kotlin.jvm.internal.t.j(compute, "compute");
        this.compute = compute;
        this.cache = new ConcurrentHashMap<>();
    }

    @Override // kotlinx.serialization.internal.c2
    @Nullable
    public KSerializer<T> a(@NotNull KClass<Object> key) {
        m<T> mVarPutIfAbsent;
        kotlin.jvm.internal.t.j(key, "key");
        ConcurrentHashMap<Class<?>, m<T>> concurrentHashMap = this.cache;
        Class<?> clsA = d8.a.a(key);
        m<T> mVar = concurrentHashMap.get(clsA);
        if (mVar == null && (mVarPutIfAbsent = concurrentHashMap.putIfAbsent(clsA, (mVar = new m<>(this.compute.invoke(key))))) != null) {
            mVar = mVarPutIfAbsent;
        }
        return mVar.serializer;
    }
}
