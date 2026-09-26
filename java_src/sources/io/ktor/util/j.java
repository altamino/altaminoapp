package io.ktor.util;

import java.util.Collections;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class j {
    @NotNull
    public static final <T> Set<T> a(@NotNull Set<? extends T> set) {
        kotlin.jvm.internal.t.j(set, "<this>");
        Set<T> setUnmodifiableSet = Collections.unmodifiableSet(set);
        kotlin.jvm.internal.t.i(setUnmodifiableSet, "unmodifiableSet(this)");
        return setUnmodifiableSet;
    }
}
