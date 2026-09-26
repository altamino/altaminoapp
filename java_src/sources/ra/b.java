package ra;

import org.threeten.bp.temporal.f;
import org.threeten.bp.temporal.k;

/* JADX INFO: loaded from: classes9.dex */
public abstract class b extends c implements org.threeten.bp.temporal.d {
    public org.threeten.bp.temporal.d e(long j6, k kVar) {
        return j6 == Long.MIN_VALUE ? l(Long.MAX_VALUE, kVar).l(1L, kVar) : l(-j6, kVar);
    }

    public org.threeten.bp.temporal.d j(f fVar) {
        return fVar.b(this);
    }
}
