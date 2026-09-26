package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class e2 extends j2 implements a0 {
    private final boolean handlesException;

    public e2(@Nullable b2 b2Var) {
        super(true);
        q0(b2Var);
        this.handlesException = W0();
    }

    @Override // kotlinx.coroutines.j2
    public boolean i0() {
        return this.handlesException;
    }

    @Override // kotlinx.coroutines.j2
    public boolean j0() {
        return true;
    }

    @Override // kotlinx.coroutines.a0
    public boolean a(@NotNull Throwable th) {
        return w0(new c0(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.a0
    public boolean complete() {
        return w0(w7.l0.INSTANCE);
    }

    private final boolean W0() {
        v vVar;
        j2 j2VarS;
        v vVar2;
        u uVarM0 = m0();
        if (uVarM0 instanceof v) {
            vVar = (v) uVarM0;
        } else {
            vVar = null;
        }
        if (vVar != null && (j2VarS = vVar.s()) != null) {
            while (!j2VarS.i0()) {
                u uVarM1 = j2VarS.m0();
                if (uVarM1 instanceof v) {
                    vVar2 = (v) uVarM1;
                } else {
                    vVar2 = null;
                }
                if (vVar2 == null || (j2VarS = vVar2.s()) == null) {
                }
            }
            return true;
        }
        return false;
    }
}
