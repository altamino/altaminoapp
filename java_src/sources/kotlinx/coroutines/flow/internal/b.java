package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlinx.coroutines.flow.internal.d;
import kotlinx.coroutines.flow.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public abstract class b<S extends d<?>> {

    @Nullable
    private y _subscriptionCount;
    private int nCollectors;
    private int nextIndex;

    @Nullable
    private S[] slots;

    @NotNull
    public final l0<Integer> d() {
        y yVar;
        synchronized (this) {
            yVar = this._subscriptionCount;
            if (yVar == null) {
                yVar = new y(this.nCollectors);
                this._subscriptionCount = yVar;
            }
        }
        return yVar;
    }

    @NotNull
    protected final S h() {
        S s;
        y yVar;
        synchronized (this) {
            try {
                S[] sArr = this.slots;
                if (sArr == null) {
                    sArr = (S[]) j(2);
                    this.slots = sArr;
                } else if (this.nCollectors >= sArr.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(sArr, sArr.length * 2);
                    kotlin.jvm.internal.t.i(objArrCopyOf, "copyOf(this, newSize)");
                    this.slots = (S[]) ((d[]) objArrCopyOf);
                    sArr = (S[]) ((d[]) objArrCopyOf);
                }
                int i10 = this.nextIndex;
                do {
                    s = sArr[i10];
                    if (s == null) {
                        s = (S) i();
                        sArr[i10] = s;
                    }
                    i10++;
                    if (i10 >= sArr.length) {
                        i10 = 0;
                    }
                    kotlin.jvm.internal.t.h(s, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!s.a(this));
                this.nextIndex = i10;
                this.nCollectors++;
                yVar = this._subscriptionCount;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (yVar != null) {
            yVar.Z(1);
        }
        return s;
    }

    @NotNull
    protected abstract S i();

    @NotNull
    protected abstract S[] j(int i10);

    protected final void k(@NotNull S s) {
        y yVar;
        int i10;
        kotlin.coroutines.d<w7.l0>[] dVarArrB;
        synchronized (this) {
            try {
                int i11 = this.nCollectors - 1;
                this.nCollectors = i11;
                yVar = this._subscriptionCount;
                if (i11 == 0) {
                    this.nextIndex = 0;
                }
                kotlin.jvm.internal.t.h(s, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                dVarArrB = s.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (kotlin.coroutines.d<w7.l0> dVar : dVarArrB) {
            if (dVar != null) {
                w7.v.a aVar = w7.v.Companion;
                dVar.resumeWith(w7.v.b(w7.l0.INSTANCE));
            }
        }
        if (yVar != null) {
            yVar.Z(-1);
        }
    }

    protected final int l() {
        return this.nCollectors;
    }

    @Nullable
    protected final S[] m() {
        return this.slots;
    }
}
