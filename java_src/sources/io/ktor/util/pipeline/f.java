package io.ktor.util.pipeline;

import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class f {
    @NotNull
    public static final <TSubject, TContext> e<TSubject, TContext> a(@NotNull TContext context, @NotNull List<? extends q<? super e<TSubject, TContext>, ? super TSubject, ? super kotlin.coroutines.d<? super l0>, ? extends Object>> interceptors, @NotNull TSubject subject, @NotNull kotlin.coroutines.g coroutineContext, boolean z6) {
        t.j(context, "context");
        t.j(interceptors, "interceptors");
        t.j(subject, "subject");
        t.j(coroutineContext, "coroutineContext");
        return (g.a() || z6) ? new a(context, interceptors, subject, coroutineContext) : new n(subject, context, interceptors);
    }
}
