package ra;

import org.threeten.bp.temporal.e;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
import org.threeten.bp.temporal.j;
import org.threeten.bp.temporal.l;
import org.threeten.bp.temporal.m;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c implements e {
    @Override // org.threeten.bp.temporal.e
    public m c(h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.f(this);
        }
        if (i(hVar)) {
            return hVar.d();
        }
        throw new l("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public <R> R d(j<R> jVar) {
        if (jVar != i.g() && jVar != i.a() && jVar != i.e()) {
            return jVar.a(this);
        }
        return null;
    }

    @Override // org.threeten.bp.temporal.e
    public int f(h hVar) {
        return c(hVar).a(k(hVar), hVar);
    }
}
