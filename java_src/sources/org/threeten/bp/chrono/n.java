package org.threeten.bp.chrono;

/* JADX INFO: loaded from: classes4.dex */
public enum n implements i {
    BCE,
    CE;

    public static n a(int i10) {
        if (i10 == 0) {
            return BCE;
        }
        if (i10 == 1) {
            return CE;
        }
        throw new org.threeten.bp.b("Invalid era: " + i10);
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.ERA, getValue());
    }

    @Override // org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.ERA) {
            return hVar.d();
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.f(this);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        return hVar == org.threeten.bp.temporal.a.ERA ? getValue() : c(hVar).a(k(hVar), hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.ERA;
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.ERA) {
            return getValue();
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.ERAS;
        }
        if (jVar != org.threeten.bp.temporal.i.a() && jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.d() && jVar != org.threeten.bp.temporal.i.b() && jVar != org.threeten.bp.temporal.i.c()) {
            return jVar.a(this);
        }
        return null;
    }

    @Override // org.threeten.bp.chrono.i
    public int getValue() {
        return ordinal();
    }
}
