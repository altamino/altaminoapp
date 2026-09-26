package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class n2 extends k0 {
    @NotNull
    public abstract n2 getImmediate();

    @Override // kotlinx.coroutines.k0
    @NotNull
    public k0 limitedParallelism(int i10) {
        kotlinx.coroutines.internal.q.a(i10);
        return this;
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public String toString() {
        String stringInternalImpl = toStringInternalImpl();
        if (stringInternalImpl == null) {
            return s0.a(this) + '@' + s0.b(this);
        }
        return stringInternalImpl;
    }

    @Nullable
    protected final String toStringInternalImpl() {
        n2 immediate;
        n2 n2VarC = e1.c();
        if (this == n2VarC) {
            return "Dispatchers.Main";
        }
        try {
            immediate = n2VarC.getImmediate();
        } catch (UnsupportedOperationException unused) {
            immediate = null;
        }
        if (this != immediate) {
            return null;
        }
        return "Dispatchers.Main.immediate";
    }
}
