package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
final class PressGestureScopeImpl implements PressGestureScope, Density {
    private final /* synthetic */ Density $$delegate_0;
    private boolean isCanceled;
    private boolean isReleased;

    @NotNull
    private final kotlinx.coroutines.sync.a mutex;

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.$$delegate_0.E0();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float H0(float f) {
        return this.$$delegate_0.H0(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int L0(long j6) {
        return this.$$delegate_0.L0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float P(float f) {
        return this.$$delegate_0.P(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long X(long j6) {
        return this.$$delegate_0.X(j6);
    }

    public final void e() {
        this.isCanceled = true;
        kotlinx.coroutines.sync.a.C0454a.c(this.mutex, null, 1, null);
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float j(int i10) {
        return this.$$delegate_0.j(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int j0(float f) {
        return this.$$delegate_0.j0(f);
    }

    public final void m() {
        this.isReleased = true;
        kotlinx.coroutines.sync.a.C0454a.c(this.mutex, null, 1, null);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float p0(long j6) {
        return this.$$delegate_0.p0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long q(long j6) {
        return this.$$delegate_0.q(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float s(long j6) {
        return this.$$delegate_0.s(j6);
    }

    public PressGestureScopeImpl(@NotNull Density density) {
        t.j(density, "density");
        this.$$delegate_0 = density;
        this.mutex = kotlinx.coroutines.sync.c.a(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.PressGestureScope
    @Nullable
    public Object A0(@NotNull d<? super l0> dVar) {
        PressGestureScopeImpl$awaitRelease$1 pressGestureScopeImpl$awaitRelease$1;
        if (dVar instanceof PressGestureScopeImpl$awaitRelease$1) {
            pressGestureScopeImpl$awaitRelease$1 = (PressGestureScopeImpl$awaitRelease$1) dVar;
            int i10 = pressGestureScopeImpl$awaitRelease$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$awaitRelease$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pressGestureScopeImpl$awaitRelease$1 = new PressGestureScopeImpl$awaitRelease$1(this, dVar);
            }
        } else {
            pressGestureScopeImpl$awaitRelease$1 = new PressGestureScopeImpl$awaitRelease$1(this, dVar);
        }
        Object objN0 = pressGestureScopeImpl$awaitRelease$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = pressGestureScopeImpl$awaitRelease$1.label;
        if (i11 == 0) {
            w.b(objN0);
            pressGestureScopeImpl$awaitRelease$1.label = 1;
            objN0 = n0(pressGestureScopeImpl$awaitRelease$1);
            if (objN0 == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(objN0);
        }
        if (((Boolean) objN0).booleanValue()) {
            return l0.INSTANCE;
        }
        throw new GestureCancellationException("The press gesture was canceled.");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.PressGestureScope
    @Nullable
    public Object n0(@NotNull d<? super Boolean> dVar) {
        PressGestureScopeImpl$tryAwaitRelease$1 pressGestureScopeImpl$tryAwaitRelease$1;
        PressGestureScopeImpl pressGestureScopeImpl;
        if (dVar instanceof PressGestureScopeImpl$tryAwaitRelease$1) {
            pressGestureScopeImpl$tryAwaitRelease$1 = (PressGestureScopeImpl$tryAwaitRelease$1) dVar;
            int i10 = pressGestureScopeImpl$tryAwaitRelease$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$tryAwaitRelease$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pressGestureScopeImpl$tryAwaitRelease$1 = new PressGestureScopeImpl$tryAwaitRelease$1(this, dVar);
            }
        } else {
            pressGestureScopeImpl$tryAwaitRelease$1 = new PressGestureScopeImpl$tryAwaitRelease$1(this, dVar);
        }
        Object obj = pressGestureScopeImpl$tryAwaitRelease$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = pressGestureScopeImpl$tryAwaitRelease$1.label;
        if (i11 == 0) {
            w.b(obj);
            if (!this.isReleased && !this.isCanceled) {
                kotlinx.coroutines.sync.a aVar = this.mutex;
                pressGestureScopeImpl$tryAwaitRelease$1.L$0 = this;
                pressGestureScopeImpl$tryAwaitRelease$1.label = 1;
                if (kotlinx.coroutines.sync.a.C0454a.a(aVar, null, pressGestureScopeImpl$tryAwaitRelease$1, 1, null) == objE) {
                    return objE;
                }
            }
            pressGestureScopeImpl = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pressGestureScopeImpl = (PressGestureScopeImpl) pressGestureScopeImpl$tryAwaitRelease$1.L$0;
            w.b(obj);
        }
        return kotlin.coroutines.jvm.internal.b.a(pressGestureScopeImpl.isReleased);
    }

    public final void p() {
        kotlinx.coroutines.sync.a.C0454a.b(this.mutex, null, 1, null);
        this.isReleased = false;
        this.isCanceled = false;
    }
}
