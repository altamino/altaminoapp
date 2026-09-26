package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.util.DateUtils;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class h extends org.threeten.bp.chrono.c<g> implements Serializable {
    private static final long serialVersionUID = 6207766400415563566L;
    private final g date;
    private final i time;
    public static final h MIN = I(g.MIN, i.MIN);
    public static final h MAX = I(g.MAX, i.MAX);
    public static final org.threeten.bp.temporal.j<h> FROM = new a();

    @Override // org.threeten.bp.chrono.c
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public g w() {
        return this.date;
    }

    @Override // org.threeten.bp.chrono.c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.date.equals(hVar.date) && this.time.equals(hVar.time);
    }

    @Override // org.threeten.bp.chrono.c
    public i x() {
        return this.time;
    }

    class a implements org.threeten.bp.temporal.j<h> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h a(org.threeten.bp.temporal.e eVar) {
            return h.D(eVar);
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.b.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoUnit = iArr;
            try {
                iArr[org.threeten.bp.temporal.b.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private int C(h hVar) {
        int iY = this.date.y(hVar.w());
        return iY == 0 ? this.time.compareTo(hVar.x()) : iY;
    }

    public static h D(org.threeten.bp.temporal.e eVar) {
        if (eVar instanceof h) {
            return (h) eVar;
        }
        if (eVar instanceof u) {
            return ((u) eVar).w();
        }
        try {
            return new h(g.A(eVar), i.q(eVar));
        } catch (org.threeten.bp.b unused) {
            throw new org.threeten.bp.b("Unable to obtain LocalDateTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static h I(g gVar, i iVar) {
        ra.d.i(gVar, "date");
        ra.d.i(iVar, "time");
        return new h(gVar, iVar);
    }

    public static h J(long j6, int i10, s sVar) {
        ra.d.i(sVar, TypedValues.CycleType.S_WAVE_OFFSET);
        long jV = j6 + ((long) sVar.v());
        return new h(g.S(ra.d.e(jV, 86400L)), i.z(ra.d.g(jV, InviteMembersFragment.SECOND_DAY), i10));
    }

    private h R(g gVar, long j6, long j10, long j11, long j12, int i10) {
        if ((j6 | j10 | j11 | j12) == 0) {
            return U(gVar, this.time);
        }
        long j13 = i10;
        long jG = this.time.G();
        long j14 = (((j12 % 86400000000000L) + ((j11 % 86400) * 1000000000) + ((j10 % 1440) * 60000000000L) + ((j6 % 24) * 3600000000000L)) * j13) + jG;
        long jE = (((j12 / 86400000000000L) + (j11 / 86400) + (j10 / 1440) + (j6 / 24)) * j13) + ra.d.e(j14, 86400000000000L);
        long jH = ra.d.h(j14, 86400000000000L);
        return U(gVar.V(jE), jH == jG ? this.time : i.x(jH));
    }

    private h U(g gVar, i iVar) {
        return (this.date == gVar && this.time == iVar) ? this : new h(gVar, iVar);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new o((byte) 4, this);
    }

    public int E() {
        return this.time.t();
    }

    public int F() {
        return this.time.u();
    }

    public int G() {
        return this.date.J();
    }

    @Override // org.threeten.bp.chrono.c
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public h r(long j6, org.threeten.bp.temporal.k kVar) {
        return j6 == Long.MIN_VALUE ? t(Long.MAX_VALUE, kVar).t(1L, kVar) : t(-j6, kVar);
    }

    @Override // org.threeten.bp.chrono.c
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public h t(long j6, org.threeten.bp.temporal.k kVar) {
        if (!(kVar instanceof org.threeten.bp.temporal.b)) {
            return (h) kVar.b(this, j6);
        }
        switch (b.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((org.threeten.bp.temporal.b) kVar).ordinal()]) {
            case 1:
                return P(j6);
            case 2:
                return L(j6 / 86400000000L).P((j6 % 86400000000L) * 1000);
            case 3:
                return L(j6 / DateUtils.ONE_DAY).P((j6 % DateUtils.ONE_DAY) * 1000000);
            case 4:
                return Q(j6);
            case 5:
                return N(j6);
            case 6:
                return M(j6);
            case 7:
                return L(j6 / 256).M((j6 % 256) * 12);
            default:
                return U(this.date.l(j6, kVar), this.time);
        }
    }

    public h L(long j6) {
        return U(this.date.V(j6), this.time);
    }

    public h M(long j6) {
        return R(this.date, j6, 0L, 0L, 0L, 1);
    }

    public h N(long j6) {
        return R(this.date, 0L, j6, 0L, 0L, 1);
    }

    public h O(long j6) {
        return U(this.date.W(j6), this.time);
    }

    public h P(long j6) {
        return R(this.date, 0L, 0L, 0L, j6, 1);
    }

    public h Q(long j6) {
        return R(this.date, 0L, 0L, j6, 0L, 1);
    }

    @Override // org.threeten.bp.chrono.c
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public h y(org.threeten.bp.temporal.f fVar) {
        if (fVar instanceof g) {
            return U((g) fVar, this.time);
        }
        if (fVar instanceof i) {
            return U(this.date, (i) fVar);
        }
        return fVar instanceof h ? (h) fVar : (h) fVar.b(this);
    }

    @Override // org.threeten.bp.chrono.c
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public h z(org.threeten.bp.temporal.h hVar, long j6) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar.e() ? U(this.date, this.time.w(hVar, j6)) : U(this.date.h(hVar, j6), this.time);
        }
        return (h) hVar.b(this, j6);
    }

    void X(DataOutput dataOutput) throws IOException {
        this.date.h0(dataOutput);
        this.time.O(dataOutput);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar.e() ? this.time.c(hVar) : this.date.c(hVar);
        }
        return hVar.f(this);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar.e() ? this.time.f(hVar) : this.date.f(hVar);
        }
        return super.f(hVar);
    }

    @Override // org.threeten.bp.chrono.c
    public int hashCode() {
        return this.date.hashCode() ^ this.time.hashCode();
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar.a() || hVar.e();
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar.e() ? this.time.k(hVar) : this.date.k(hVar);
        }
        return hVar.h(this);
    }

    @Override // org.threeten.bp.chrono.c, java.lang.Comparable
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public int compareTo(org.threeten.bp.chrono.c<?> cVar) {
        return cVar instanceof h ? C((h) cVar) : super.compareTo(cVar);
    }

    @Override // org.threeten.bp.chrono.c
    public boolean q(org.threeten.bp.chrono.c<?> cVar) {
        if (cVar instanceof h) {
            return C((h) cVar) > 0;
        }
        return super.q(cVar);
    }

    @Override // org.threeten.bp.chrono.c
    public boolean r(org.threeten.bp.chrono.c<?> cVar) {
        if (cVar instanceof h) {
            return C((h) cVar) < 0;
        }
        return super.r(cVar);
    }

    @Override // org.threeten.bp.chrono.c
    public String toString() {
        return this.date.toString() + 'T' + this.time.toString();
    }

    private h(g gVar, i iVar) {
        this.date = gVar;
        this.time = iVar;
    }

    static h S(DataInput dataInput) throws IOException {
        return I(g.Z(dataInput), i.F(dataInput));
    }

    public l A(s sVar) {
        return l.s(this, sVar);
    }

    @Override // org.threeten.bp.chrono.c
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public u n(r rVar) {
        return u.H(this, rVar);
    }

    @Override // org.threeten.bp.chrono.c, org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return super.b(dVar);
    }

    @Override // org.threeten.bp.chrono.c, ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.b()) {
            return (R) w();
        }
        return (R) super.d(jVar);
    }
}
