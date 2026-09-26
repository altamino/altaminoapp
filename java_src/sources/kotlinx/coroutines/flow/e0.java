package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class e0 extends kotlinx.coroutines.flow.internal.d<c0<?>> {

    @Nullable
    public kotlin.coroutines.d<? super w7.l0> cont;
    public long index = -1;

    @Override // kotlinx.coroutines.flow.internal.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(@NotNull c0<?> c0Var) {
        if (this.index >= 0) {
            return false;
        }
        this.index = c0Var.X();
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public kotlin.coroutines.d<w7.l0>[] b(@NotNull c0<?> c0Var) {
        long j6 = this.index;
        this.index = -1L;
        this.cont = null;
        return c0Var.W(j6);
    }
}
