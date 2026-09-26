package org.threeten.bp.chrono;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Comparator;
import org.threeten.bp.chrono.b;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c<D extends b> extends ra.b implements org.threeten.bp.temporal.f, Comparable<c<?>> {
    private static final Comparator<c<?>> DATE_TIME_COMPARATOR = new a();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && compareTo((c) obj) == 0;
    }

    public abstract f<D> n(org.threeten.bp.r rVar);

    @Override // org.threeten.bp.temporal.d
    public abstract c<D> t(long j6, org.threeten.bp.temporal.k kVar);

    public abstract D w();

    public abstract org.threeten.bp.i x();

    @Override // org.threeten.bp.temporal.d
    public abstract c<D> z(org.threeten.bp.temporal.h hVar, long j6);

    class a implements Comparator<c<?>> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c<?> cVar, c<?> cVar2) {
            int iB = ra.d.b(cVar.w().u(), cVar2.w().u());
            if (iB == 0) {
                return ra.d.b(cVar.x().G(), cVar2.x().G());
            }
            return iB;
        }
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.EPOCH_DAY, w().u()).z(org.threeten.bp.temporal.a.NANO_OF_DAY, x().G());
    }

    public String toString() {
        return w().toString() + 'T' + x().toString();
    }

    public long u(org.threeten.bp.s sVar) {
        ra.d.i(sVar, TypedValues.CycleType.S_WAVE_OFFSET);
        return ((w().u() * 86400) + ((long) x().H())) - ((long) sVar.v());
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.a()) {
            return (R) p();
        }
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.NANOS;
        }
        if (jVar == org.threeten.bp.temporal.i.b()) {
            return (R) org.threeten.bp.g.S(w().u());
        }
        if (jVar == org.threeten.bp.temporal.i.c()) {
            return (R) x();
        }
        if (jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.d()) {
            return (R) super.d(jVar);
        }
        return null;
    }

    public int hashCode() {
        return w().hashCode() ^ x().hashCode();
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: o */
    public int compareTo(c<?> cVar) {
        int iCompareTo = w().compareTo(cVar.w());
        if (iCompareTo == 0) {
            int iCompareTo2 = x().compareTo(cVar.x());
            if (iCompareTo2 == 0) {
                return p().compareTo(cVar.p());
            }
            return iCompareTo2;
        }
        return iCompareTo;
    }

    public h p() {
        return w().p();
    }

    public boolean q(c<?> cVar) {
        long jU = w().u();
        long jU2 = cVar.w().u();
        if (jU <= jU2 && (jU != jU2 || x().G() <= cVar.x().G())) {
            return false;
        }
        return true;
    }

    public boolean r(c<?> cVar) {
        long jU = w().u();
        long jU2 = cVar.w().u();
        if (jU >= jU2 && (jU != jU2 || x().G() >= cVar.x().G())) {
            return false;
        }
        return true;
    }

    @Override // ra.b, org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public c<D> r(long j6, org.threeten.bp.temporal.k kVar) {
        return w().p().d(super.r(j6, kVar));
    }

    public org.threeten.bp.f v(org.threeten.bp.s sVar) {
        return org.threeten.bp.f.u(u(sVar), x().t());
    }

    @Override // ra.b, org.threeten.bp.temporal.d
    public c<D> y(org.threeten.bp.temporal.f fVar) {
        return w().p().d(super.y(fVar));
    }
}
