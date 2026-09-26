package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class a1<T> extends kotlinx.coroutines.internal.e0<T> {

    @NotNull
    private static final AtomicIntegerFieldUpdater _decision$FU = AtomicIntegerFieldUpdater.newUpdater(a1.class, "_decision");
    private volatile int _decision;

    private final boolean b1() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decision$FU;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!_decision$FU.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean c1() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decision$FU;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!_decision$FU.compareAndSet(this, 0, 1));
        return true;
    }

    public a1(@NotNull kotlin.coroutines.g gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        super(gVar, dVar);
    }

    @Override // kotlinx.coroutines.internal.e0, kotlinx.coroutines.j2
    protected void C(@Nullable Object obj) {
        W0(obj);
    }

    @Override // kotlinx.coroutines.internal.e0, kotlinx.coroutines.a
    protected void W0(@Nullable Object obj) {
        if (b1()) {
            return;
        }
        kotlinx.coroutines.internal.k.c(kotlin.coroutines.intrinsics.c.c(this.uCont), g0.a(obj, this.uCont), null, 2, null);
    }

    @Nullable
    public final Object a1() {
        if (c1()) {
            return kotlin.coroutines.intrinsics.d.e();
        }
        Object objH = k2.h(n0());
        if (!(objH instanceof c0)) {
            return objH;
        }
        throw ((c0) objH).cause;
    }
}
