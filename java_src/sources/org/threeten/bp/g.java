package org.threeten.bp;

import io.agora.rtc.Constants;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class g extends org.threeten.bp.chrono.b implements Serializable {
    static final long DAYS_0000_TO_1970 = 719528;
    private static final int DAYS_PER_CYCLE = 146097;
    private static final long serialVersionUID = 2942565459149668126L;
    private final short day;
    private final short month;
    private final int year;
    public static final g MIN = Q(p.MIN_VALUE, 1, 1);
    public static final g MAX = Q(p.MAX_VALUE, 12, 31);
    public static final org.threeten.bp.temporal.j<g> FROM = new a();

    private long I() {
        return (((long) this.year) * 12) + ((long) (this.month - 1));
    }

    private static g a0(int i10, int i11, int i12) {
        if (i11 == 2) {
            i12 = Math.min(i12, org.threeten.bp.chrono.m.INSTANCE.u((long) i10) ? 29 : 28);
        } else if (i11 == 4 || i11 == 6 || i11 == 9 || i11 == 11) {
            i12 = Math.min(i12, 30);
        }
        return Q(i10, i11, i12);
    }

    public int D() {
        return this.day;
    }

    public int H() {
        return this.month;
    }

    public int J() {
        return this.year;
    }

    public g X(long j6) {
        return V(ra.d.l(j6, 7));
    }

    @Override // org.threeten.bp.chrono.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && y((g) obj) == 0;
    }

    @Override // org.threeten.bp.chrono.b
    public int hashCode() {
        int i10 = this.year;
        return (((i10 << 11) + (this.month << 6)) + this.day) ^ (i10 & (-2048));
    }

    class a implements org.threeten.bp.temporal.j<g> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public g a(org.threeten.bp.temporal.e eVar) {
            return g.A(eVar);
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.b.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoUnit = iArr;
            try {
                iArr[org.threeten.bp.temporal.b.DAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.WEEKS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.MONTHS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.YEARS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.DECADES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.CENTURIES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.MILLENNIA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.ERAS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr2;
            try {
                iArr2[org.threeten.bp.temporal.a.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.DAY_OF_WEEK.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 7;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.EPOCH_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MONTH_OF_YEAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.PROLEPTIC_MONTH.ordinal()] = 11;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR.ordinal()] = 12;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ERA.ordinal()] = 13;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    private int B(org.threeten.bp.temporal.h hVar) {
        switch (b.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()]) {
            case 1:
                return this.day;
            case 2:
                return F();
            case 3:
                return ((this.day - 1) / 7) + 1;
            case 4:
                int i10 = this.year;
                return i10 >= 1 ? i10 : 1 - i10;
            case 5:
                return E().getValue();
            case 6:
                return ((this.day - 1) % 7) + 1;
            case 7:
                return ((F() - 1) % 7) + 1;
            case 8:
                throw new org.threeten.bp.b("Field too large for an int: " + hVar);
            case 9:
                return ((F() - 1) / 7) + 1;
            case 10:
                return this.month;
            case 11:
                throw new org.threeten.bp.b("Field too large for an int: " + hVar);
            case 12:
                return this.year;
            case 13:
                return this.year >= 1 ? 1 : 0;
            default:
                throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
        }
    }

    public static g Q(int i10, int i11, int i12) {
        org.threeten.bp.temporal.a.YEAR.j(i10);
        org.threeten.bp.temporal.a.MONTH_OF_YEAR.j(i11);
        org.threeten.bp.temporal.a.DAY_OF_MONTH.j(i12);
        return z(i10, j.r(i11), i12);
    }

    public static g R(int i10, j jVar, int i11) {
        org.threeten.bp.temporal.a.YEAR.j(i10);
        ra.d.i(jVar, "month");
        org.threeten.bp.temporal.a.DAY_OF_MONTH.j(i11);
        return z(i10, jVar, i11);
    }

    public static g S(long j6) {
        long j10;
        org.threeten.bp.temporal.a.EPOCH_DAY.j(j6);
        long j11 = 719468 + j6;
        if (j11 < 0) {
            long j12 = ((j6 + 719469) / 146097) - 1;
            j10 = j12 * 400;
            j11 += (-j12) * 146097;
        } else {
            j10 = 0;
        }
        long j13 = ((j11 * 400) + 591) / 146097;
        long j14 = j11 - ((((j13 * 365) + (j13 / 4)) - (j13 / 100)) + (j13 / 400));
        if (j14 < 0) {
            j13--;
            j14 = j11 - ((((365 * j13) + (j13 / 4)) - (j13 / 100)) + (j13 / 400));
        }
        int i10 = (int) j14;
        int i11 = ((i10 * 5) + 2) / Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED;
        return new g(org.threeten.bp.temporal.a.YEAR.i(j13 + j10 + ((long) (i11 / 10))), ((i11 + 2) % 12) + 1, (i10 - (((i11 * 306) + 5) / 10)) + 1);
    }

    public static g T(int i10, int i11) {
        long j6 = i10;
        org.threeten.bp.temporal.a.YEAR.j(j6);
        org.threeten.bp.temporal.a.DAY_OF_YEAR.j(i11);
        boolean zU = org.threeten.bp.chrono.m.INSTANCE.u(j6);
        if (i11 != 366 || zU) {
            j jVarR = j.r(((i11 - 1) / 31) + 1);
            if (i11 > (jVarR.a(zU) + jVarR.o(zU)) - 1) {
                jVarR = jVarR.s(1L);
            }
            return z(i10, jVarR, (i11 - jVarR.a(zU)) + 1);
        }
        throw new org.threeten.bp.b("Invalid date 'DayOfYear 366' as '" + i10 + "' is not a leap year");
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new o((byte) 3, this);
    }

    private static g z(int i10, j jVar, int i11) {
        if (i11 <= 28 || i11 <= jVar.o(org.threeten.bp.chrono.m.INSTANCE.u(i10))) {
            return new g(i10, jVar.getValue(), i11);
        }
        if (i11 == 29) {
            throw new org.threeten.bp.b("Invalid date 'February 29' as '" + i10 + "' is not a leap year");
        }
        throw new org.threeten.bp.b("Invalid date '" + jVar.name() + " " + i11 + "'");
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public org.threeten.bp.chrono.m p() {
        return org.threeten.bp.chrono.m.INSTANCE;
    }

    public j G() {
        return j.r(this.month);
    }

    public boolean K() {
        return org.threeten.bp.chrono.m.INSTANCE.u(this.year);
    }

    public int L() {
        short s = this.month;
        if (s != 2) {
            return (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31;
        }
        return K() ? 29 : 28;
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public g r(long j6, org.threeten.bp.temporal.k kVar) {
        return j6 == Long.MIN_VALUE ? l(Long.MAX_VALUE, kVar).l(1L, kVar) : l(-j6, kVar);
    }

    public g O(long j6) {
        return j6 == Long.MIN_VALUE ? V(Long.MAX_VALUE).V(1L) : V(-j6);
    }

    public g P(long j6) {
        return j6 == Long.MIN_VALUE ? Y(Long.MAX_VALUE).Y(1L) : Y(-j6);
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public g s(long j6, org.threeten.bp.temporal.k kVar) {
        if (!(kVar instanceof org.threeten.bp.temporal.b)) {
            return (g) kVar.b(this, j6);
        }
        switch (b.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((org.threeten.bp.temporal.b) kVar).ordinal()]) {
            case 1:
                return V(j6);
            case 2:
                return X(j6);
            case 3:
                return W(j6);
            case 4:
                return Y(j6);
            case 5:
                return Y(ra.d.l(j6, 10));
            case 6:
                return Y(ra.d.l(j6, 100));
            case 7:
                return Y(ra.d.l(j6, 1000));
            case 8:
                org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.ERA;
                return h(aVar, ra.d.k(k(aVar), j6));
            default:
                throw new org.threeten.bp.temporal.l("Unsupported unit: " + kVar);
        }
    }

    public g V(long j6) {
        return j6 == 0 ? this : S(ra.d.k(u(), j6));
    }

    public g W(long j6) {
        if (j6 == 0) {
            return this;
        }
        long j10 = (((long) this.year) * 12) + ((long) (this.month - 1)) + j6;
        return a0(org.threeten.bp.temporal.a.YEAR.i(ra.d.e(j10, 12L)), ra.d.g(j10, 12) + 1, this.day);
    }

    public g Y(long j6) {
        return j6 == 0 ? this : a0(org.threeten.bp.temporal.a.YEAR.i(((long) this.year) + j6), this.month, this.day);
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public g y(org.threeten.bp.temporal.f fVar) {
        return fVar instanceof g ? (g) fVar : (g) fVar.b(this);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.f(this);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        if (!aVar.a()) {
            throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
        }
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 == 1) {
            return org.threeten.bp.temporal.m.i(1L, L());
        }
        if (i10 == 2) {
            return org.threeten.bp.temporal.m.i(1L, M());
        }
        if (i10 == 3) {
            return org.threeten.bp.temporal.m.i(1L, (G() != j.FEBRUARY || K()) ? 5L : 4L);
        }
        if (i10 != 4) {
            return hVar.d();
        }
        return org.threeten.bp.temporal.m.i(1L, J() <= 0 ? 1000000000L : 999999999L);
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public g z(org.threeten.bp.temporal.h hVar, long j6) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return (g) hVar.b(this, j6);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        aVar.j(j6);
        switch (b.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()]) {
            case 1:
                return d0((int) j6);
            case 2:
                return e0((int) j6);
            case 3:
                return X(j6 - k(org.threeten.bp.temporal.a.ALIGNED_WEEK_OF_MONTH));
            case 4:
                if (this.year < 1) {
                    j6 = 1 - j6;
                }
                return g0((int) j6);
            case 5:
                return V(j6 - ((long) E().getValue()));
            case 6:
                return V(j6 - k(org.threeten.bp.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return V(j6 - k(org.threeten.bp.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return S(j6);
            case 9:
                return X(j6 - k(org.threeten.bp.temporal.a.ALIGNED_WEEK_OF_YEAR));
            case 10:
                return f0((int) j6);
            case 11:
                return W(j6 - k(org.threeten.bp.temporal.a.PROLEPTIC_MONTH));
            case 12:
                return g0((int) j6);
            case 13:
                return k(org.threeten.bp.temporal.a.ERA) == j6 ? this : g0(1 - this.year);
            default:
                throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
        }
    }

    public g d0(int i10) {
        return this.day == i10 ? this : Q(this.year, this.month, i10);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        return hVar instanceof org.threeten.bp.temporal.a ? B(hVar) : super.f(hVar);
    }

    public g f0(int i10) {
        if (this.month == i10) {
            return this;
        }
        org.threeten.bp.temporal.a.MONTH_OF_YEAR.j(i10);
        return a0(this.year, i10, this.day);
    }

    public g g0(int i10) {
        if (this.year == i10) {
            return this;
        }
        org.threeten.bp.temporal.a.YEAR.j(i10);
        return a0(i10, this.month, this.day);
    }

    void h0(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.year);
        dataOutput.writeByte(this.month);
        dataOutput.writeByte(this.day);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        if (hVar == org.threeten.bp.temporal.a.EPOCH_DAY) {
            return u();
        }
        return hVar == org.threeten.bp.temporal.a.PROLEPTIC_MONTH ? I() : B(hVar);
    }

    @Override // org.threeten.bp.chrono.b, java.lang.Comparable
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public int compareTo(org.threeten.bp.chrono.b bVar) {
        return bVar instanceof g ? y((g) bVar) : super.compareTo(bVar);
    }

    @Override // org.threeten.bp.chrono.b
    public boolean r(org.threeten.bp.chrono.b bVar) {
        if (bVar instanceof g) {
            return y((g) bVar) < 0;
        }
        return super.r(bVar);
    }

    @Override // org.threeten.bp.chrono.b
    public String toString() {
        int i10 = this.year;
        short s = this.month;
        short s5 = this.day;
        int iAbs = Math.abs(i10);
        StringBuilder sb = new StringBuilder(10);
        if (iAbs >= 1000) {
            if (i10 > 9999) {
                sb.append('+');
            }
            sb.append(i10);
        } else if (i10 < 0) {
            sb.append(i10 - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i10 + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s5 < 10 ? "-0" : "-");
        sb.append((int) s5);
        return sb.toString();
    }

    @Override // org.threeten.bp.chrono.b
    public long u() {
        long j6 = this.year;
        long j10 = this.month;
        long j11 = 365 * j6;
        long j12 = (j6 >= 0 ? j11 + (((3 + j6) / 4) - ((99 + j6) / 100)) + ((j6 + 399) / 400) : j11 - (((j6 / (-4)) - (j6 / (-100))) + (j6 / (-400)))) + (((367 * j10) - 362) / 12) + ((long) (this.day - 1));
        if (j10 > 2) {
            j12 = !K() ? j12 - 2 : j12 - 1;
        }
        return j12 - DAYS_0000_TO_1970;
    }

    int y(g gVar) {
        int i10 = this.year - gVar.year;
        if (i10 != 0) {
            return i10;
        }
        int i11 = this.month - gVar.month;
        return i11 == 0 ? this.day - gVar.day : i11;
    }

    private g(int i10, int i11, int i12) {
        this.year = i10;
        this.month = (short) i11;
        this.day = (short) i12;
    }

    public static g A(org.threeten.bp.temporal.e eVar) {
        g gVar = (g) eVar.d(org.threeten.bp.temporal.i.b());
        if (gVar != null) {
            return gVar;
        }
        throw new org.threeten.bp.b("Unable to obtain LocalDate from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
    }

    static g Z(DataInput dataInput) throws IOException {
        return Q(dataInput.readInt(), dataInput.readByte(), dataInput.readByte());
    }

    public d E() {
        return d.n(ra.d.g(u() + 3, 7) + 1);
    }

    public int F() {
        return (G().a(K()) + this.day) - 1;
    }

    public int M() {
        if (K()) {
            return 366;
        }
        return 365;
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return super.b(dVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.threeten.bp.chrono.b, ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.b()) {
            return this;
        }
        return (R) super.d(jVar);
    }

    public g e0(int i10) {
        if (F() == i10) {
            return this;
        }
        return T(this.year, i10);
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        return super.i(hVar);
    }

    @Override // org.threeten.bp.chrono.b
    public org.threeten.bp.chrono.i q() {
        return super.q();
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public h n(i iVar) {
        return h.I(this, iVar);
    }
}
