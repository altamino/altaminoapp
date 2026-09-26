package io.ktor.util;

import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface u {
    @NotNull
    Set<Map.Entry<String, List<String>>> a();

    @Nullable
    List<String> b(@NotNull String str);

    boolean c();

    void clear();

    boolean contains(@NotNull String str);

    void d(@NotNull String str, @NotNull Iterable<String> iterable);

    void e(@NotNull t tVar);

    void f(@NotNull String str, @NotNull String str2);

    boolean isEmpty();

    @NotNull
    Set<String> names();
}
