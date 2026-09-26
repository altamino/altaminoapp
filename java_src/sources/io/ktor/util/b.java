package io.ktor.util;

import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface b {

    public static final class a {
        @NotNull
        public static <T> T a(@NotNull b bVar, @NotNull io.ktor.util.a<T> key) {
            kotlin.jvm.internal.t.j(key, "key");
            T t5 = (T) bVar.e(key);
            if (t5 != null) {
                return t5;
            }
            throw new IllegalStateException("No instance for key " + key);
        }
    }

    <T> void a(@NotNull io.ktor.util.a<T> aVar, @NotNull T t5);

    @NotNull
    List<io.ktor.util.a<?>> b();

    <T> void c(@NotNull io.ktor.util.a<T> aVar);

    boolean d(@NotNull io.ktor.util.a<?> aVar);

    @Nullable
    <T> T e(@NotNull io.ktor.util.a<T> aVar);

    @NotNull
    <T> T f(@NotNull io.ktor.util.a<T> aVar);

    @NotNull
    <T> T g(@NotNull io.ktor.util.a<T> aVar, @NotNull e8.a<? extends T> aVar2);
}
