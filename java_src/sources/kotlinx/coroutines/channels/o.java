package kotlinx.coroutines.channels;

import kotlin.jvm.internal.q0;
import kotlinx.coroutines.internal.a0;
import kotlinx.coroutines.internal.t0;
import kotlinx.coroutines.j3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public class o<E> extends b<E> {
    private final int capacity;

    @NotNull
    private final a onBufferOverflow;

    public /* synthetic */ o(int i10, a aVar, e8.l lVar, int i11, kotlin.jvm.internal.k kVar) {
        this(i10, aVar, (i11 & 4) != 0 ? null : lVar);
    }

    static /* synthetic */ <E> Object N0(o<E> oVar, E e, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        t0 t0VarD;
        Object objQ0 = oVar.Q0(e, true);
        if (!(objQ0 instanceof h.a)) {
            return l0.INSTANCE;
        }
        h.e(objQ0);
        e8.l<E, l0> lVar = oVar.onUndeliveredElement;
        if (lVar == null || (t0VarD = a0.d(lVar, e, null, 2, null)) == null) {
            throw oVar.Q();
        }
        w7.f.a(t0VarD, oVar.Q());
        throw t0VarD;
    }

    @Override // kotlinx.coroutines.channels.b, kotlinx.coroutines.channels.u
    @NotNull
    public Object p(E e) {
        return Q0(e, false);
    }

    @Override // kotlinx.coroutines.channels.b, kotlinx.coroutines.channels.u
    @Nullable
    public Object w(E e, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return N0(this, e, dVar);
    }

    public o(int i10, @NotNull a aVar, @Nullable e8.l<? super E, l0> lVar) {
        super(i10, lVar);
        this.capacity = i10;
        this.onBufferOverflow = aVar;
        if (aVar == a.SUSPEND) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + q0.b(b.class).getSimpleName() + " instead").toString());
        }
        if (i10 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i10 + " was specified").toString());
    }

    private final Object P0(E e) {
        i iVar;
        Object obj = c.BUFFERED;
        i iVar2 = (i) b.sendSegment$FU.get(this);
        while (true) {
            long andIncrement = b.sendersAndCloseStatus$FU.getAndIncrement(this);
            long j6 = andIncrement & 1152921504606846975L;
            boolean zA0 = a0(andIncrement);
            int i10 = c.SEGMENT_SIZE;
            long j10 = j6 / ((long) i10);
            int i11 = (int) (j6 % ((long) i10));
            if (iVar2.id != j10) {
                i iVarL = L(j10, iVar2);
                if (iVarL != null) {
                    iVar = iVarL;
                } else if (zA0) {
                    return h.Companion.a(Q());
                }
            } else {
                iVar = iVar2;
            }
            int iI0 = I0(iVar, i11, e, j6, obj, zA0);
            if (iI0 == 0) {
                iVar.b();
                return h.Companion.c(l0.INSTANCE);
            }
            if (iI0 == 1) {
                return h.Companion.c(l0.INSTANCE);
            }
            if (iI0 == 2) {
                if (zA0) {
                    iVar.p();
                    return h.Companion.a(Q());
                }
                j3 j3Var = obj instanceof j3 ? (j3) obj : null;
                if (j3Var != null) {
                    q0(j3Var, iVar, i11);
                }
                H((iVar.id * ((long) i10)) + ((long) i11));
                return h.Companion.c(l0.INSTANCE);
            }
            if (iI0 == 3) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (iI0 == 4) {
                if (j6 < P()) {
                    iVar.b();
                }
                return h.Companion.a(Q());
            }
            if (iI0 == 5) {
                iVar.b();
            }
            iVar2 = iVar;
        }
    }

    private final Object Q0(E e, boolean z6) {
        return this.onBufferOverflow == a.DROP_LATEST ? O0(e, z6) : P0(e);
    }

    @Override // kotlinx.coroutines.channels.b
    protected boolean b0() {
        return this.onBufferOverflow == a.DROP_OLDEST;
    }

    private final Object O0(E e, boolean z6) {
        e8.l<E, l0> lVar;
        t0 t0VarD;
        Object objP = super.p(e);
        if (!h.i(objP) && !h.h(objP)) {
            if (z6 && (lVar = this.onUndeliveredElement) != null && (t0VarD = a0.d(lVar, e, null, 2, null)) != null) {
                throw t0VarD;
            }
            return h.Companion.c(l0.INSTANCE);
        }
        return objP;
    }
}
