package io.ktor.util;

import java.util.List;
import java.util.Map;
import kotlin.collections.d0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
abstract class c implements b {
    @NotNull
    protected abstract Map<a<?>, Object> h();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.ktor.util.b
    public final <T> void a(@NotNull a<T> key, @NotNull T value) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(value, "value");
        h().put(key, value);
    }

    @Override // io.ktor.util.b
    public final <T> void c(@NotNull a<T> key) {
        kotlin.jvm.internal.t.j(key, "key");
        h().remove(key);
    }

    @Override // io.ktor.util.b
    public final boolean d(@NotNull a<?> key) {
        kotlin.jvm.internal.t.j(key, "key");
        return h().containsKey(key);
    }

    @Override // io.ktor.util.b
    @Nullable
    public final <T> T e(@NotNull a<T> key) {
        kotlin.jvm.internal.t.j(key, "key");
        return (T) h().get(key);
    }

    @Override // io.ktor.util.b
    @NotNull
    public final List<a<?>> b() {
        return d0.U0(h().keySet());
    }

    @Override // io.ktor.util.b
    @NotNull
    public <T> T f(@NotNull a<T> aVar) {
        return (T) b.a.a(this, aVar);
    }
}
