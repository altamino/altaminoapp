package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class i2 extends e0 implements g1, v1 {
    public j2 job;

    @Override // kotlinx.coroutines.v1
    @Nullable
    public o2 a() {
        return null;
    }

    @Override // kotlinx.coroutines.v1
    public boolean isActive() {
        return true;
    }

    public final void v(@NotNull j2 j2Var) {
        this.job = j2Var;
    }

    @NotNull
    public final j2 s() {
        j2 j2Var = this.job;
        if (j2Var != null) {
            return j2Var;
        }
        kotlin.jvm.internal.t.B("job");
        return null;
    }

    @Override // kotlinx.coroutines.internal.t
    @NotNull
    public String toString() {
        return s0.a(this) + '@' + s0.b(this) + "[job@" + s0.b(s()) + kotlinx.serialization.json.internal.b.END_LIST;
    }

    @Override // kotlinx.coroutines.g1
    public void t() {
        s().K0(this);
    }
}
