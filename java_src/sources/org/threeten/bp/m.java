package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class m extends ra.c implements org.threeten.bp.temporal.d, org.threeten.bp.temporal.f, Comparable<m>, Serializable {
    private static final long serialVersionUID = 7264499704384272492L;
    private final s offset;
    private final i time;
    public static final m MIN = i.MIN.n(s.MAX);
    public static final m MAX = i.MAX.n(s.MIN);
    public static final org.threeten.bp.temporal.j<m> FROM = new a();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.time.equals(mVar.time) && this.offset.equals(mVar.offset);
    }

    public s p() {
        return this.offset;
    }

    class a implements org.threeten.bp.temporal.j<m> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public m a(org.threeten.bp.temporal.e eVar) {
            return m.o(eVar);
        }
    }

    public static m o(org.threeten.bp.temporal.e eVar) {
        if (eVar instanceof m) {
            return (m) eVar;
        }
        try {
            return new m(i.q(eVar), s.u(eVar));
        } catch (b unused) {
            throw new b("Unable to obtain OffsetTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static m r(i iVar, s sVar) {
        return new m(iVar, sVar);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private long u() {
        return this.time.G() - (((long) this.offset.v()) * 1000000000);
    }

    private m v(i iVar, s sVar) {
        return (this.time == iVar && this.offset.equals(sVar)) ? this : new m(iVar, sVar);
    }

    private Object writeReplace() {
        return new o((byte) 66, this);
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.NANO_OF_DAY, this.time.G()).z(org.threeten.bp.temporal.a.OFFSET_SECONDS, p().v());
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS ? hVar.d() : this.time.c(hVar);
        }
        return hVar.f(this);
    }

    public int hashCode() {
        return this.time.hashCode() ^ this.offset.hashCode();
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar.e() || hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS;
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS ? p().v() : this.time.k(hVar);
        }
        return hVar.h(this);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int compareTo(m mVar) {
        if (this.offset.equals(mVar.offset)) {
            return this.time.compareTo(mVar.time);
        }
        int iB = ra.d.b(u(), mVar.u());
        return iB == 0 ? this.time.compareTo(mVar.time) : iB;
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public m r(long j6, org.threeten.bp.temporal.k kVar) {
        return j6 == Long.MIN_VALUE ? t(Long.MAX_VALUE, kVar).t(1L, kVar) : t(-j6, kVar);
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public m t(long j6, org.threeten.bp.temporal.k kVar) {
        return kVar instanceof org.threeten.bp.temporal.b ? v(this.time.t(j6, kVar), this.offset) : (m) kVar.b(this, j6);
    }

    public String toString() {
        return this.time.toString() + this.offset.toString();
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public m y(org.threeten.bp.temporal.f fVar) {
        if (fVar instanceof i) {
            return v((i) fVar, this.offset);
        }
        if (fVar instanceof s) {
            return v(this.time, (s) fVar);
        }
        return fVar instanceof m ? (m) fVar : (m) fVar.b(this);
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public m z(org.threeten.bp.temporal.h hVar, long j6) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS ? v(this.time, s.y(((org.threeten.bp.temporal.a) hVar).i(j6))) : v(this.time.w(hVar, j6), this.offset);
        }
        return (m) hVar.b(this, j6);
    }

    void y(DataOutput dataOutput) throws IOException {
        this.time.O(dataOutput);
        this.offset.D(dataOutput);
    }

    private m(i iVar, s sVar) {
        this.time = (i) ra.d.i(iVar, "time");
        this.offset = (s) ra.d.i(sVar, TypedValues.CycleType.S_WAVE_OFFSET);
    }

    static m t(DataInput dataInput) throws IOException {
        return r(i.F(dataInput), s.A(dataInput));
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.NANOS;
        }
        if (jVar != org.threeten.bp.temporal.i.d() && jVar != org.threeten.bp.temporal.i.f()) {
            if (jVar == org.threeten.bp.temporal.i.c()) {
                return (R) this.time;
            }
            if (jVar != org.threeten.bp.temporal.i.a() && jVar != org.threeten.bp.temporal.i.b() && jVar != org.threeten.bp.temporal.i.g()) {
                return (R) super.d(jVar);
            }
            return null;
        }
        return (R) p();
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        return super.f(hVar);
    }
}
