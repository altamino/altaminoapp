package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public final class l extends ra.b implements org.threeten.bp.temporal.f, Comparable<l>, Serializable {
    private static final long serialVersionUID = 2287754244819255394L;
    private final h dateTime;
    private final s offset;
    public static final l MIN = h.MIN.A(s.MAX);
    public static final l MAX = h.MAX.A(s.MIN);
    public static final org.threeten.bp.temporal.j<l> FROM = new a();
    private static final Comparator<l> INSTANT_COMPARATOR = new b();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.dateTime.equals(lVar.dateTime) && this.offset.equals(lVar.offset);
    }

    public s q() {
        return this.offset;
    }

    public h y() {
        return this.dateTime;
    }

    class a implements org.threeten.bp.temporal.j<l> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l a(org.threeten.bp.temporal.e eVar) {
            return l.o(eVar);
        }
    }

    class b implements Comparator<l> {
        b() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(l lVar, l lVar2) {
            int iB = ra.d.b(lVar.w(), lVar2.w());
            if (iB == 0) {
                return ra.d.b(lVar.p(), lVar2.p());
            }
            return iB;
        }
    }

    static /* synthetic */ class c {
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

    private l A(h hVar, s sVar) {
        return (this.dateTime == hVar && this.offset.equals(sVar)) ? this : new l(hVar, sVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v7, types: [org.threeten.bp.l] */
    public static l o(org.threeten.bp.temporal.e eVar) {
        if (eVar instanceof l) {
            return (l) eVar;
        }
        try {
            s sVarU = s.u(eVar);
            try {
                eVar = s(h.D(eVar), sVarU);
                return eVar;
            } catch (org.threeten.bp.b unused) {
                return t(f.p(eVar), sVarU);
            }
        } catch (org.threeten.bp.b unused2) {
            throw new org.threeten.bp.b("Unable to obtain OffsetDateTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static l s(h hVar, s sVar) {
        return new l(hVar, sVar);
    }

    public static l t(f fVar, r rVar) {
        ra.d.i(fVar, "instant");
        ra.d.i(rVar, "zone");
        s sVarA = rVar.o().a(fVar);
        return new l(h.J(fVar.q(), fVar.r(), sVarA), sVarA);
    }

    private Object writeReplace() {
        return new o((byte) 69, this);
    }

    @Override // ra.b, org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public l y(org.threeten.bp.temporal.f fVar) {
        if ((fVar instanceof g) || (fVar instanceof i) || (fVar instanceof h)) {
            return A(this.dateTime.v(fVar), this.offset);
        }
        if (fVar instanceof f) {
            return t((f) fVar, this.offset);
        }
        if (fVar instanceof s) {
            return A(this.dateTime, (s) fVar);
        }
        return fVar instanceof l ? (l) fVar : (l) fVar.b(this);
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public l z(org.threeten.bp.temporal.h hVar, long j6) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return (l) hVar.b(this, j6);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        int i10 = c.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? A(this.dateTime.w(hVar, j6), this.offset) : A(this.dateTime, s.y(aVar.i(j6)));
        }
        return t(f.u(j6, p()), this.offset);
    }

    void D(DataOutput dataOutput) throws IOException {
        this.dateTime.X(dataOutput);
        this.offset.D(dataOutput);
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.EPOCH_DAY, x().u()).z(org.threeten.bp.temporal.a.NANO_OF_DAY, z().G()).z(org.threeten.bp.temporal.a.OFFSET_SECONDS, q().v());
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return (hVar == org.threeten.bp.temporal.a.INSTANT_SECONDS || hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS) ? hVar.d() : this.dateTime.c(hVar);
        }
        return hVar.f(this);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return super.f(hVar);
        }
        int i10 = c.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? this.dateTime.f(hVar) : q().v();
        }
        throw new org.threeten.bp.b("Field too large for an int: " + hVar);
    }

    public int hashCode() {
        return this.dateTime.hashCode() ^ this.offset.hashCode();
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        return (hVar instanceof org.threeten.bp.temporal.a) || (hVar != null && hVar.c(this));
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        int i10 = c.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? this.dateTime.k(hVar) : q().v();
        }
        return w();
    }

    public int p() {
        return this.dateTime.E();
    }

    @Override // ra.b, org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public l r(long j6, org.threeten.bp.temporal.k kVar) {
        return j6 == Long.MIN_VALUE ? t(Long.MAX_VALUE, kVar).t(1L, kVar) : t(-j6, kVar);
    }

    public String toString() {
        return this.dateTime.toString() + this.offset.toString();
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public l t(long j6, org.threeten.bp.temporal.k kVar) {
        return kVar instanceof org.threeten.bp.temporal.b ? A(this.dateTime.t(j6, kVar), this.offset) : (l) kVar.b(this, j6);
    }

    public long w() {
        return this.dateTime.u(this.offset);
    }

    public g x() {
        return this.dateTime.w();
    }

    public i z() {
        return this.dateTime.x();
    }

    private l(h hVar, s sVar) {
        this.dateTime = (h) ra.d.i(hVar, "dateTime");
        this.offset = (s) ra.d.i(sVar, TypedValues.CycleType.S_WAVE_OFFSET);
    }

    static l v(DataInput dataInput) throws IOException {
        return s(h.S(dataInput), s.A(dataInput));
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.a()) {
            return (R) org.threeten.bp.chrono.m.INSTANCE;
        }
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.NANOS;
        }
        if (jVar != org.threeten.bp.temporal.i.d() && jVar != org.threeten.bp.temporal.i.f()) {
            if (jVar == org.threeten.bp.temporal.i.b()) {
                return (R) x();
            }
            if (jVar == org.threeten.bp.temporal.i.c()) {
                return (R) z();
            }
            if (jVar == org.threeten.bp.temporal.i.g()) {
                return null;
            }
            return (R) super.d(jVar);
        }
        return (R) q();
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int compareTo(l lVar) {
        if (q().equals(lVar.q())) {
            return y().compareTo(lVar.y());
        }
        int iB = ra.d.b(w(), lVar.w());
        if (iB == 0) {
            int iT = z().t() - lVar.z().t();
            if (iT == 0) {
                return y().compareTo(lVar.y());
            }
            return iT;
        }
        return iB;
    }
}
