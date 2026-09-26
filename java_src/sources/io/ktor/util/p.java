package io.ktor.util;

import java.util.HashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class p extends c {

    @NotNull
    private final Map<a<?>, Object> map = new HashMap();

    @Override // io.ktor.util.c
    @NotNull
    protected Map<a<?>, Object> h() {
        return this.map;
    }

    @Override // io.ktor.util.b
    @NotNull
    public <T> T g(@NotNull a<T> key, @NotNull e8.a<? extends T> block) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(block, "block");
        T t5 = (T) h().get(key);
        if (t5 != null) {
            return t5;
        }
        T tInvoke = block.invoke();
        Object objPut = h().put(key, tInvoke);
        if (objPut != null) {
            tInvoke = (T) objPut;
        }
        kotlin.jvm.internal.t.h(tInvoke, "null cannot be cast to non-null type T of io.ktor.util.HashMapAttributes.computeIfAbsent");
        return tInvoke;
    }
}
