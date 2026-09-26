package ra;

import org.threeten.bp.chrono.i;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.j;
import org.threeten.bp.temporal.l;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a extends c implements i {
    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.ERA, getValue());
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(h hVar) {
        return hVar == org.threeten.bp.temporal.a.ERA ? getValue() : c(hVar).a(k(hVar), hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.ERA;
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(h hVar) {
        if (hVar == org.threeten.bp.temporal.a.ERA) {
            return getValue();
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        throw new l("Unsupported field: " + hVar);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.ERAS;
        }
        if (jVar != org.threeten.bp.temporal.i.a() && jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.d() && jVar != org.threeten.bp.temporal.i.b() && jVar != org.threeten.bp.temporal.i.c()) {
            return jVar.a(this);
        }
        return null;
    }
}
