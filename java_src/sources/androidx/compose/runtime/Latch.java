package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.h;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;

/* JADX INFO: loaded from: classes9.dex */
public final class Latch {

    @NotNull
    private final Object lock = new Object();

    @NotNull
    private List<d<l0>> awaiters = new ArrayList();

    @NotNull
    private List<d<l0>> spareList = new ArrayList();
    private boolean _isOpen = true;

    public final void d() {
        synchronized (this.lock) {
            this._isOpen = false;
            l0 l0Var = l0.INSTANCE;
        }
    }

    public final boolean e() {
        boolean z6;
        synchronized (this.lock) {
            z6 = this._isOpen;
        }
        return z6;
    }

    public final void f() {
        synchronized (this.lock) {
            try {
                if (e()) {
                    return;
                }
                List<d<l0>> list = this.awaiters;
                this.awaiters = this.spareList;
                this.spareList = list;
                this._isOpen = true;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    d<l0> dVar = list.get(i10);
                    v.a aVar = v.Companion;
                    dVar.resumeWith(v.b(l0.INSTANCE));
                }
                list.clear();
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final Object c(@NotNull d<? super l0> dVar) throws Throwable {
        if (e()) {
            return l0.INSTANCE;
        }
        p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        synchronized (this.lock) {
            this.awaiters.add(pVar);
        }
        pVar.S(new Latch$await$2$2(this, pVar));
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            h.c(dVar);
        }
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            return objU;
        }
        return l0.INSTANCE;
    }
}
