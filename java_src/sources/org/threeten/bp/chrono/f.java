package org.threeten.bp.chrono;

import java.util.Comparator;
import org.threeten.bp.chrono.b;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f<D extends org.threeten.bp.chrono.b> extends ra.b implements Comparable<f<?>> {
    private static Comparator<f<?>> INSTANT_COMPARATOR = new a();

    public abstract f<D> A(org.threeten.bp.r rVar);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && compareTo((f) obj) == 0;
    }

    public abstract org.threeten.bp.s o();

    public abstract org.threeten.bp.r p();

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public abstract f<D> t(long j6, org.threeten.bp.temporal.k kVar);

    public abstract c<D> w();

    @Override // org.threeten.bp.temporal.d
    public abstract f<D> z(org.threeten.bp.temporal.h hVar, long j6);

    class a implements Comparator<f<?>> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(f<?> fVar, f<?> fVar2) {
            int iB = ra.d.b(fVar.t(), fVar2.t());
            if (iB == 0) {
                return ra.d.b(fVar.x().G(), fVar2.x().G());
            }
            return iB;
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr;
            try {
                iArr[org.threeten.bp.temporal.a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return (hVar == org.threeten.bp.temporal.a.INSTANT_SECONDS || hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS) ? hVar.d() : w().c(hVar);
        }
        return hVar.f(this);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return super.f(hVar);
        }
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? w().f(hVar) : o().v();
        }
        throw new org.threeten.bp.temporal.l("Field too large for an int: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? w().k(hVar) : o().v();
        }
        return t();
    }

    public String toString() {
        String str = w().toString() + o().toString();
        if (o() == p()) {
            return str;
        }
        return str + kotlinx.serialization.json.internal.b.BEGIN_LIST + p().toString() + kotlinx.serialization.json.internal.b.END_LIST;
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.f()) {
            if (jVar == org.threeten.bp.temporal.i.a()) {
                return (R) v().p();
            }
            if (jVar == org.threeten.bp.temporal.i.e()) {
                return (R) org.threeten.bp.temporal.b.NANOS;
            }
            if (jVar == org.threeten.bp.temporal.i.d()) {
                return (R) o();
            }
            if (jVar == org.threeten.bp.temporal.i.b()) {
                return (R) org.threeten.bp.g.S(v().u());
            }
            if (jVar == org.threeten.bp.temporal.i.c()) {
                return (R) x();
            }
            return (R) super.d(jVar);
        }
        return (R) p();
    }

    public int hashCode() {
        return (w().hashCode() ^ o().hashCode()) ^ Integer.rotateLeft(p().hashCode(), 3);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int compareTo(f<?> fVar) {
        int iB = ra.d.b(t(), fVar.t());
        if (iB == 0) {
            int iT = x().t() - fVar.x().t();
            if (iT == 0) {
                int iCompareTo = w().compareTo(fVar.w());
                if (iCompareTo == 0) {
                    int iCompareTo2 = p().n().compareTo(fVar.p().n());
                    if (iCompareTo2 == 0) {
                        return v().p().compareTo(fVar.v().p());
                    }
                    return iCompareTo2;
                }
                return iCompareTo;
            }
            return iT;
        }
        return iB;
    }

    public boolean q(f<?> fVar) {
        long jT = t();
        long jT2 = fVar.t();
        if (jT >= jT2 && (jT != jT2 || x().t() >= fVar.x().t())) {
            return false;
        }
        return true;
    }

    @Override // ra.b, org.threeten.bp.temporal.d
    public f<D> r(long j6, org.threeten.bp.temporal.k kVar) {
        return v().p().e(super.r(j6, kVar));
    }

    public long t() {
        return ((v().u() * 86400) + ((long) x().H())) - ((long) o().v());
    }

    public org.threeten.bp.f u() {
        return org.threeten.bp.f.u(t(), x().t());
    }

    public D v() {
        return (D) w().w();
    }

    public org.threeten.bp.i x() {
        return w().x();
    }

    @Override // ra.b, org.threeten.bp.temporal.d
    public f<D> y(org.threeten.bp.temporal.f fVar) {
        return v().p().e(super.y(fVar));
    }
}
