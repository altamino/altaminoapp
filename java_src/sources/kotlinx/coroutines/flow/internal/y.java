package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.flow.c0;
import kotlinx.coroutines.flow.l0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class y extends c0<Integer> implements l0<Integer> {
    @Override // kotlinx.coroutines.flow.l0
    @NotNull
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public Integer getValue() {
        Integer numValueOf;
        synchronized (this) {
            numValueOf = Integer.valueOf(L().intValue());
        }
        return numValueOf;
    }

    public final boolean Z(int i10) {
        boolean zC;
        synchronized (this) {
            zC = c(Integer.valueOf(L().intValue() + i10));
        }
        return zC;
    }

    public y(int i10) {
        super(1, Integer.MAX_VALUE, kotlinx.coroutines.channels.a.DROP_OLDEST);
        c(Integer.valueOf(i10));
    }
}
