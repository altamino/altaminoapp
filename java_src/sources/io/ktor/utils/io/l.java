package io.ktor.utils.io;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.g1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class l implements t, v, b2 {

    @NotNull
    private final c channel;

    @NotNull
    private final b2 delegate;

    @Override // kotlinx.coroutines.b2
    @NotNull
    public g1 O(boolean z6, boolean z10, @NotNull e8.l<? super Throwable, l0> handler) {
        kotlin.jvm.internal.t.j(handler, "handler");
        return this.delegate.O(z6, z10, handler);
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public kotlinx.coroutines.u Q(@NotNull kotlinx.coroutines.w child) {
        kotlin.jvm.internal.t.j(child, "child");
        return this.delegate.Q(child);
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public g1 U(@NotNull e8.l<? super Throwable, l0> handler) {
        kotlin.jvm.internal.t.j(handler, "handler");
        return this.delegate.U(handler);
    }

    @Override // kotlinx.coroutines.b2
    public void b(@Nullable CancellationException cancellationException) {
        this.delegate.b(cancellationException);
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public CancellationException b0() {
        return this.delegate.b0();
    }

    @Override // io.ktor.utils.io.t
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c mo1641d() {
        return this.channel;
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> operation) {
        kotlin.jvm.internal.t.j(operation, "operation");
        return (R) this.delegate.fold(r, operation);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> key) {
        kotlin.jvm.internal.t.j(key, "key");
        return (E) this.delegate.get(key);
    }

    @Override // kotlin.coroutines.g.b
    @NotNull
    public kotlin.coroutines.g.c<?> getKey() {
        return this.delegate.getKey();
    }

    @Override // kotlinx.coroutines.b2
    @Nullable
    public b2 getParent() {
        return this.delegate.getParent();
    }

    @Override // kotlinx.coroutines.b2
    public boolean isActive() {
        return this.delegate.isActive();
    }

    @Override // kotlinx.coroutines.b2
    public boolean isCancelled() {
        return this.delegate.isCancelled();
    }

    @Override // kotlinx.coroutines.b2
    public boolean m() {
        return this.delegate.m();
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> key) {
        kotlin.jvm.internal.t.j(key, "key");
        return this.delegate.minusKey(key);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g plus(@NotNull kotlin.coroutines.g context) {
        kotlin.jvm.internal.t.j(context, "context");
        return this.delegate.plus(context);
    }

    @Override // kotlinx.coroutines.b2
    public boolean start() {
        return this.delegate.start();
    }

    @Override // kotlinx.coroutines.b2
    @Nullable
    public Object t0(@NotNull kotlin.coroutines.d<? super l0> dVar) {
        return this.delegate.t0(dVar);
    }

    public l(@NotNull b2 delegate, @NotNull c channel) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        kotlin.jvm.internal.t.j(channel, "channel");
        this.delegate = delegate;
        this.channel = channel;
    }

    @NotNull
    public String toString() {
        return "ChannelJob[" + this.delegate + kotlinx.serialization.json.internal.b.END_LIST;
    }
}
