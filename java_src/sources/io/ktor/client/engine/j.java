package io.ktor.client.engine;

import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class j implements kotlin.coroutines.g.b {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private final kotlin.coroutines.g callContext;

    public static final class a implements kotlin.coroutines.g.c<j> {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    @NotNull
    public final kotlin.coroutines.g c() {
        return this.callContext;
    }

    @Override // kotlin.coroutines.g.b
    @NotNull
    public kotlin.coroutines.g.c<?> getKey() {
        return Companion;
    }

    public j(@NotNull kotlin.coroutines.g callContext) {
        t.j(callContext, "callContext");
        this.callContext = callContext;
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
        return (R) kotlin.coroutines.g.b.a.a(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> cVar) {
        return (E) kotlin.coroutines.g.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> cVar) {
        return kotlin.coroutines.g.b.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g plus(@NotNull kotlin.coroutines.g gVar) {
        return kotlin.coroutines.g.b.a.d(this, gVar);
    }
}
