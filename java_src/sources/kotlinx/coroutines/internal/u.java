package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class u<E> {

    @NotNull
    private static final AtomicReferenceFieldUpdater _cur$FU = AtomicReferenceFieldUpdater.newUpdater(u.class, Object.class, "_cur");

    @Nullable
    private volatile Object _cur;

    public final boolean a(@NotNull E e) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _cur$FU;
        while (true) {
            v vVar = (v) atomicReferenceFieldUpdater.get(this);
            int iA = vVar.a(e);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                androidx.concurrent.futures.a.a(_cur$FU, this, vVar, vVar.i());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _cur$FU;
        while (true) {
            v vVar = (v) atomicReferenceFieldUpdater.get(this);
            if (vVar.d()) {
                return;
            } else {
                androidx.concurrent.futures.a.a(_cur$FU, this, vVar, vVar.i());
            }
        }
    }

    public final int c() {
        return ((v) _cur$FU.get(this)).f();
    }

    @Nullable
    public final E d() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _cur$FU;
        while (true) {
            v vVar = (v) atomicReferenceFieldUpdater.get(this);
            E e = (E) vVar.j();
            if (e != v.REMOVE_FROZEN) {
                return e;
            }
            androidx.concurrent.futures.a.a(_cur$FU, this, vVar, vVar.i());
        }
    }

    public u(boolean z6) {
        this._cur = new v(8, z6);
    }
}
