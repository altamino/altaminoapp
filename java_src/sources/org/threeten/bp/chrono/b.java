package org.threeten.bp.chrono;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b extends ra.b implements org.threeten.bp.temporal.f, Comparable<b> {
    private static final Comparator<b> DATE_COMPARATOR = new a();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && compareTo((b) obj) == 0;
    }

    public abstract h p();

    @Override // org.threeten.bp.temporal.d
    public abstract b t(long j6, org.threeten.bp.temporal.k kVar);

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public abstract b z(org.threeten.bp.temporal.h hVar, long j6);

    class a implements Comparator<b> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return ra.d.b(bVar.u(), bVar2.u());
        }
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.EPOCH_DAY, u());
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar.a();
        }
        return hVar != null && hVar.c(this);
    }

    public String toString() {
        long jK = k(org.threeten.bp.temporal.a.YEAR_OF_ERA);
        long jK2 = k(org.threeten.bp.temporal.a.MONTH_OF_YEAR);
        long jK3 = k(org.threeten.bp.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(p().toString());
        sb.append(" ");
        sb.append(q());
        sb.append(" ");
        sb.append(jK);
        sb.append(jK2 < 10 ? "-0" : "-");
        sb.append(jK2);
        sb.append(jK3 < 10 ? "-0" : "-");
        sb.append(jK3);
        return sb.toString();
    }

    public long u() {
        return k(org.threeten.bp.temporal.a.EPOCH_DAY);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.a()) {
            return (R) p();
        }
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.DAYS;
        }
        if (jVar == org.threeten.bp.temporal.i.b()) {
            return (R) org.threeten.bp.g.S(u());
        }
        if (jVar != org.threeten.bp.temporal.i.c() && jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.d()) {
            return (R) super.d(jVar);
        }
        return null;
    }

    public int hashCode() {
        long jU = u();
        return ((int) (jU ^ (jU >>> 32))) ^ p().hashCode();
    }

    public c<?> n(org.threeten.bp.i iVar) {
        return d.A(this, iVar);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: o */
    public int compareTo(b bVar) {
        int iB = ra.d.b(u(), bVar.u());
        if (iB == 0) {
            return p().compareTo(bVar.p());
        }
        return iB;
    }

    public i q() {
        return p().f(f(org.threeten.bp.temporal.a.ERA));
    }

    public boolean r(b bVar) {
        if (u() < bVar.u()) {
            return true;
        }
        return false;
    }

    @Override // ra.b, org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public b r(long j6, org.threeten.bp.temporal.k kVar) {
        return p().c(super.r(j6, kVar));
    }

    @Override // ra.b, org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public b y(org.threeten.bp.temporal.f fVar) {
        return p().c(super.y(fVar));
    }
}
