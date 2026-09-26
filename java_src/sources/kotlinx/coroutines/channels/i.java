package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlinx.coroutines.internal.a0;
import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.j3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class i<E> extends f0<i<E>> {

    @Nullable
    private final b<E> _channel;

    @NotNull
    private final AtomicReferenceArray data;

    public final void s(int i10) {
        z(i10, null);
    }

    private final void z(int i10, Object obj) {
        this.data.lazySet(i10 * 2, obj);
    }

    public final void A(int i10, @Nullable Object obj) {
        this.data.set((i10 * 2) + 1, obj);
    }

    @Override // kotlinx.coroutines.internal.f0
    public int n() {
        return c.SEGMENT_SIZE;
    }

    @Override // kotlinx.coroutines.internal.f0
    public void o(int i10, @Nullable Throwable th, @NotNull kotlin.coroutines.g gVar) {
        e8.l<E, l0> lVar;
        e8.l<E, l0> lVar2;
        int i11 = c.SEGMENT_SIZE;
        boolean z6 = i10 >= i11;
        if (z6) {
            i10 -= i11;
        }
        E eV = v(i10);
        while (true) {
            Object objW = w(i10);
            if ((objW instanceof j3) || (objW instanceof v)) {
                if (r(i10, objW, z6 ? c.INTERRUPTED_SEND : c.INTERRUPTED_RCV)) {
                    s(i10);
                    x(i10, !z6);
                    if (!z6 || (lVar = u().onUndeliveredElement) == null) {
                        return;
                    }
                    a0.b(lVar, eV, gVar);
                    return;
                }
            } else {
                if (objW == c.INTERRUPTED_SEND || objW == c.INTERRUPTED_RCV) {
                    break;
                }
                if (objW != c.RESUMING_BY_EB && objW != c.RESUMING_BY_RCV) {
                    if (objW == c.DONE_RCV || objW == c.BUFFERED || objW == c.z()) {
                        return;
                    }
                    throw new IllegalStateException(("unexpected state: " + objW).toString());
                }
            }
        }
        s(i10);
        if (!z6 || (lVar2 = u().onUndeliveredElement) == null) {
            return;
        }
        a0.b(lVar2, eV, gVar);
    }

    public final boolean r(int i10, @Nullable Object obj, @Nullable Object obj2) {
        return t7.c.a(this.data, (i10 * 2) + 1, obj, obj2);
    }

    @Nullable
    public final Object t(int i10, @Nullable Object obj) {
        return this.data.getAndSet((i10 * 2) + 1, obj);
    }

    @NotNull
    public final b<E> u() {
        b<E> bVar = this._channel;
        kotlin.jvm.internal.t.g(bVar);
        return bVar;
    }

    public final E v(int i10) {
        return (E) this.data.get(i10 * 2);
    }

    @Nullable
    public final Object w(int i10) {
        return this.data.get((i10 * 2) + 1);
    }

    public final void x(int i10, boolean z6) {
        if (z6) {
            u().M0((this.id * ((long) c.SEGMENT_SIZE)) + ((long) i10));
        }
        p();
    }

    public i(long j6, @Nullable i<E> iVar, @Nullable b<E> bVar, int i10) {
        super(j6, iVar, i10);
        this._channel = bVar;
        this.data = new AtomicReferenceArray(c.SEGMENT_SIZE * 2);
    }

    public final void B(int i10, E e) {
        z(i10, e);
    }

    public final E y(int i10) {
        E eV = v(i10);
        s(i10);
        return eV;
    }
}
