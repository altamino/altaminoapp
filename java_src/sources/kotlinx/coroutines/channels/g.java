package kotlinx.coroutines.channels;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class g {
    @NotNull
    public static final <E> d<E> a(int i10, @NotNull a aVar, @Nullable e8.l<? super E, l0> lVar) {
        d<E> bVar;
        if (i10 == -2) {
            bVar = aVar == a.SUSPEND ? new b<>(d.Factory.a(), lVar) : new o<>(1, aVar, lVar);
        } else {
            if (i10 == -1) {
                if (aVar == a.SUSPEND) {
                    return new o(1, a.DROP_OLDEST, lVar);
                }
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
            }
            if (i10 != 0) {
                if (i10 != Integer.MAX_VALUE) {
                    return aVar == a.SUSPEND ? new b(i10, lVar) : new o(i10, aVar, lVar);
                }
                return new b(Integer.MAX_VALUE, lVar);
            }
            bVar = aVar == a.SUSPEND ? new b<>(0, lVar) : new o<>(1, aVar, lVar);
        }
        return bVar;
    }

    public static /* synthetic */ d b(int i10, a aVar, e8.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            aVar = a.SUSPEND;
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        return a(i10, aVar, lVar);
    }
}
