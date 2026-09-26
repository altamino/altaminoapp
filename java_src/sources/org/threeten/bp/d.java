package org.threeten.bp;

/* JADX INFO: loaded from: classes3.dex */
public enum d implements org.threeten.bp.temporal.e, org.threeten.bp.temporal.f {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;

    public static final org.threeten.bp.temporal.j<d> FROM = new org.threeten.bp.temporal.j<d>() { // from class: org.threeten.bp.d.a
        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public d a(org.threeten.bp.temporal.e eVar) {
            return d.a(eVar);
        }
    };
    private static final d[] ENUMS = values();

    public static d n(int i10) {
        if (i10 >= 1 && i10 <= 7) {
            return ENUMS[i10 - 1];
        }
        throw new b("Invalid value for DayOfWeek: " + i10);
    }

    public static d a(org.threeten.bp.temporal.e eVar) {
        if (eVar instanceof d) {
            return (d) eVar;
        }
        try {
            return n(eVar.f(org.threeten.bp.temporal.a.DAY_OF_WEEK));
        } catch (b e) {
            throw new b("Unable to obtain DayOfWeek from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName(), e);
        }
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.DAY_OF_WEEK, getValue());
    }

    @Override // org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.DAY_OF_WEEK) {
            return hVar.d();
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.f(this);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        return hVar == org.threeten.bp.temporal.a.DAY_OF_WEEK ? getValue() : c(hVar).a(k(hVar), hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.DAY_OF_WEEK;
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.DAY_OF_WEEK) {
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
            return (R) org.threeten.bp.temporal.b.DAYS;
        }
        if (jVar != org.threeten.bp.temporal.i.b() && jVar != org.threeten.bp.temporal.i.c() && jVar != org.threeten.bp.temporal.i.a() && jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.d()) {
            return jVar.a(this);
        }
        return null;
    }

    public int getValue() {
        return ordinal() + 1;
    }
}
