package io.ktor.util;

import java.util.concurrent.ConcurrentHashMap;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class l extends c {

    @NotNull
    private final ConcurrentHashMap<a<?>, Object> map = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.util.c
    @NotNull
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public ConcurrentHashMap<a<?>, Object> h() {
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
        Object objPutIfAbsent = h().putIfAbsent(key, tInvoke);
        if (objPutIfAbsent != null) {
            tInvoke = (T) objPutIfAbsent;
        }
        kotlin.jvm.internal.t.h(tInvoke, "null cannot be cast to non-null type T of io.ktor.util.ConcurrentSafeAttributes.computeIfAbsent");
        return tInvoke;
    }
}
