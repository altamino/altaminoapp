package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.j2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public class e<E> extends kotlinx.coroutines.a<l0> implements d<E> {

    @NotNull
    private final d<E> _channel;

    @Override // kotlinx.coroutines.j2
    public void I(@NotNull Throwable th) {
        CancellationException cancellationExceptionP0 = j2.P0(this, th, null, 1, null);
        this._channel.b(cancellationExceptionP0);
        F(cancellationExceptionP0);
    }

    @NotNull
    protected final d<E> a1() {
        return this._channel;
    }

    @Override // kotlinx.coroutines.channels.u
    public boolean c(@Nullable Throwable th) {
        return this._channel.c(th);
    }

    @Override // kotlinx.coroutines.channels.t
    @NotNull
    public f<E> iterator() {
        return this._channel.iterator();
    }

    @Override // kotlinx.coroutines.channels.u
    @NotNull
    public Object p(E e) {
        return this._channel.p(e);
    }

    @Override // kotlinx.coroutines.channels.t
    @NotNull
    public Object q() {
        return this._channel.q();
    }

    @Override // kotlinx.coroutines.channels.t
    @Nullable
    public Object s(@NotNull kotlin.coroutines.d<? super h<? extends E>> dVar) {
        Object objS = this._channel.s(dVar);
        kotlin.coroutines.intrinsics.d.e();
        return objS;
    }

    @Override // kotlinx.coroutines.channels.u
    public boolean t() {
        return this._channel.t();
    }

    @Override // kotlinx.coroutines.channels.u
    public void u(@NotNull e8.l<? super Throwable, l0> lVar) {
        this._channel.u(lVar);
    }

    @Override // kotlinx.coroutines.channels.t
    @Nullable
    public Object v(@NotNull kotlin.coroutines.d<? super E> dVar) {
        return this._channel.v(dVar);
    }

    @Override // kotlinx.coroutines.channels.u
    @Nullable
    public Object w(E e, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return this._channel.w(e, dVar);
    }

    public e(@NotNull kotlin.coroutines.g gVar, @NotNull d<E> dVar, boolean z6, boolean z10) {
        super(gVar, z6, z10);
        this._channel = dVar;
    }

    @Override // kotlinx.coroutines.j2, kotlinx.coroutines.b2
    public final void b(@Nullable CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new c2(P(), null, this);
        }
        I(cancellationException);
    }
}
