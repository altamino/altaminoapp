package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class u extends org.threeten.bp.chrono.f<g> implements Serializable {
    public static final org.threeten.bp.temporal.j<u> FROM = new a();
    private static final long serialVersionUID = -6260982410461394882L;
    private final h dateTime;
    private final s offset;
    private final r zone;

    public static u H(h hVar, r rVar) {
        return L(hVar, rVar, null);
    }

    @Override // org.threeten.bp.chrono.f
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public h w() {
        return this.dateTime;
    }

    @Override // org.threeten.bp.chrono.f
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.dateTime.equals(uVar.dateTime) && this.offset.equals(uVar.offset) && this.zone.equals(uVar.zone);
    }

    @Override // org.threeten.bp.chrono.f
    public s o() {
        return this.offset;
    }

    @Override // org.threeten.bp.chrono.f
    public r p() {
        return this.zone;
    }

    class a implements org.threeten.bp.temporal.j<u> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public u a(org.threeten.bp.temporal.e eVar) {
            return u.C(eVar);
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

    public static u C(org.threeten.bp.temporal.e eVar) {
        if (eVar instanceof u) {
            return (u) eVar;
        }
        try {
            r rVarA = r.a(eVar);
            org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.INSTANT_SECONDS;
            if (eVar.i(aVar)) {
                try {
                    return B(eVar.k(aVar), eVar.f(org.threeten.bp.temporal.a.NANO_OF_SECOND), rVarA);
                } catch (org.threeten.bp.b unused) {
                }
            }
            return H(h.D(eVar), rVarA);
        } catch (org.threeten.bp.b unused2) {
            throw new org.threeten.bp.b("Unable to obtain ZonedDateTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static u F(org.threeten.bp.a aVar) {
        ra.d.i(aVar, "clock");
        return I(aVar.b(), aVar.a());
    }

    public static u I(f fVar, r rVar) {
        ra.d.i(fVar, "instant");
        ra.d.i(rVar, "zone");
        return B(fVar.q(), fVar.r(), rVar);
    }

    public static u J(h hVar, s sVar, r rVar) {
        ra.d.i(hVar, "localDateTime");
        ra.d.i(sVar, TypedValues.CycleType.S_WAVE_OFFSET);
        ra.d.i(rVar, "zone");
        return B(hVar.u(sVar), hVar.E(), rVar);
    }

    private static u K(h hVar, s sVar, r rVar) {
        ra.d.i(hVar, "localDateTime");
        ra.d.i(sVar, TypedValues.CycleType.S_WAVE_OFFSET);
        ra.d.i(rVar, "zone");
        if (!(rVar instanceof s) || sVar.equals(rVar)) {
            return new u(hVar, sVar, rVar);
        }
        throw new IllegalArgumentException("ZoneId must match ZoneOffset");
    }

    public static u L(h hVar, r rVar, s sVar) {
        ra.d.i(hVar, "localDateTime");
        ra.d.i(rVar, "zone");
        if (rVar instanceof s) {
            return new u(hVar, (s) rVar, rVar);
        }
        org.threeten.bp.zone.f fVarO = rVar.o();
        List<s> listC = fVarO.c(hVar);
        if (listC.size() == 1) {
            sVar = listC.get(0);
        } else if (listC.size() == 0) {
            org.threeten.bp.zone.d dVarB = fVarO.b(hVar);
            hVar = hVar.Q(dVarB.d().c());
            sVar = dVarB.h();
        } else if (sVar == null || !listC.contains(sVar)) {
            sVar = (s) ra.d.i(listC.get(0), TypedValues.CycleType.S_WAVE_OFFSET);
        }
        return new u(hVar, sVar, rVar);
    }

    private u P(h hVar) {
        return J(hVar, this.offset, this.zone);
    }

    private u Q(h hVar) {
        return L(hVar, this.zone, this.offset);
    }

    private u R(s sVar) {
        return (sVar.equals(this.offset) || !this.zone.o().e(this.dateTime, sVar)) ? this : new u(this.dateTime, sVar, this.zone);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new o((byte) 6, this);
    }

    public int D() {
        return this.dateTime.E();
    }

    @Override // org.threeten.bp.chrono.f
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public u r(long j6, org.threeten.bp.temporal.k kVar) {
        return j6 == Long.MIN_VALUE ? t(Long.MAX_VALUE, kVar).t(1L, kVar) : t(-j6, kVar);
    }

    @Override // org.threeten.bp.chrono.f
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public u t(long j6, org.threeten.bp.temporal.k kVar) {
        if (kVar instanceof org.threeten.bp.temporal.b) {
            return kVar.a() ? Q(this.dateTime.t(j6, kVar)) : P(this.dateTime.t(j6, kVar));
        }
        return (u) kVar.b(this, j6);
    }

    public u N(long j6) {
        return Q(this.dateTime.O(j6));
    }

    @Override // org.threeten.bp.chrono.f
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public g v() {
        return this.dateTime.w();
    }

    @Override // org.threeten.bp.chrono.f
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public u y(org.threeten.bp.temporal.f fVar) {
        if (fVar instanceof g) {
            return Q(h.I((g) fVar, this.dateTime.x()));
        }
        if (fVar instanceof i) {
            return Q(h.I(this.dateTime.w(), (i) fVar));
        }
        if (fVar instanceof h) {
            return Q((h) fVar);
        }
        if (!(fVar instanceof f)) {
            return fVar instanceof s ? R((s) fVar) : (u) fVar.b(this);
        }
        f fVar2 = (f) fVar;
        return B(fVar2.q(), fVar2.r(), this.zone);
    }

    @Override // org.threeten.bp.chrono.f
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public u z(org.threeten.bp.temporal.h hVar, long j6) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return (u) hVar.b(this, j6);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? Q(this.dateTime.w(hVar, j6)) : R(s.y(aVar.i(j6)));
        }
        return B(j6, D(), this.zone);
    }

    @Override // org.threeten.bp.chrono.f
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public u A(r rVar) {
        ra.d.i(rVar, "zone");
        return this.zone.equals(rVar) ? this : L(this.dateTime, rVar, this.offset);
    }

    void X(DataOutput dataOutput) throws IOException {
        this.dateTime.X(dataOutput);
        this.offset.D(dataOutput);
        this.zone.r(dataOutput);
    }

    @Override // org.threeten.bp.chrono.f, ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return (hVar == org.threeten.bp.temporal.a.INSTANT_SECONDS || hVar == org.threeten.bp.temporal.a.OFFSET_SECONDS) ? hVar.d() : this.dateTime.c(hVar);
        }
        return hVar.f(this);
    }

    @Override // org.threeten.bp.chrono.f, ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return super.f(hVar);
        }
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? this.dateTime.f(hVar) : o().v();
        }
        throw new org.threeten.bp.b("Field too large for an int: " + hVar);
    }

    @Override // org.threeten.bp.chrono.f
    public int hashCode() {
        return (this.dateTime.hashCode() ^ this.offset.hashCode()) ^ Integer.rotateLeft(this.zone.hashCode(), 3);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        return (hVar instanceof org.threeten.bp.temporal.a) || (hVar != null && hVar.c(this));
    }

    @Override // org.threeten.bp.chrono.f, org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? this.dateTime.k(hVar) : o().v();
        }
        return t();
    }

    @Override // org.threeten.bp.chrono.f
    public String toString() {
        String str = this.dateTime.toString() + this.offset.toString();
        if (this.offset == this.zone) {
            return str;
        }
        return str + kotlinx.serialization.json.internal.b.BEGIN_LIST + this.zone.toString() + kotlinx.serialization.json.internal.b.END_LIST;
    }

    @Override // org.threeten.bp.chrono.f
    public i x() {
        return this.dateTime.x();
    }

    private u(h hVar, s sVar, r rVar) {
        this.dateTime = hVar;
        this.offset = sVar;
        this.zone = rVar;
    }

    private static u B(long j6, int i10, r rVar) {
        s sVarA = rVar.o().a(f.u(j6, i10));
        return new u(h.J(j6, i10, sVarA), sVarA, rVar);
    }

    public static u G(r rVar) {
        return F(org.threeten.bp.a.c(rVar));
    }

    static u O(DataInput dataInput) throws IOException {
        return K(h.S(dataInput), s.A(dataInput), (r) o.a(dataInput));
    }

    @Override // org.threeten.bp.chrono.f, ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.b()) {
            return (R) v();
        }
        return (R) super.d(jVar);
    }
}
