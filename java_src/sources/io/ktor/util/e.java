package io.ktor.util;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class e {
    public static final void a(@NotNull b bVar, @NotNull b other) {
        kotlin.jvm.internal.t.j(bVar, "<this>");
        kotlin.jvm.internal.t.j(other, "other");
        Iterator<T> it = other.b().iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            kotlin.jvm.internal.t.h(aVar, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>");
            bVar.a(aVar, other.f(aVar));
        }
    }
}
