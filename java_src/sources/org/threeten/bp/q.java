package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends ra.c implements org.threeten.bp.temporal.d, org.threeten.bp.temporal.f, Comparable<q>, Serializable {
    public static final org.threeten.bp.temporal.j<q> FROM = new a();
    private static final org.threeten.bp.format.b PARSER = new org.threeten.bp.format.c().l(org.threeten.bp.temporal.a.YEAR, 4, 10, org.threeten.bp.format.h.EXCEEDS_PAD).e('-').k(org.threeten.bp.temporal.a.MONTH_OF_YEAR, 2).s();
    private static final long serialVersionUID = 4183400860270640070L;
    private final int month;
    private final int year;

    private long p() {
        return (((long) this.year) * 12) + ((long) (this.month - 1));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.year == qVar.year && this.month == qVar.month;
    }

    public int hashCode() {
        return this.year ^ (this.month << 27);
    }

    public int q() {
        return this.year;
    }

    class a implements org.threeten.bp.temporal.j<q> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public q a(org.threeten.bp.temporal.e eVar) {
            return q.o(eVar);
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.b.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoUnit = iArr;
            try {
                iArr[org.threeten.bp.temporal.b.MONTHS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.YEARS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.DECADES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.CENTURIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.MILLENNIA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.ERAS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr2;
            try {
                iArr2[org.threeten.bp.temporal.a.MONTH_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.PROLEPTIC_MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR_OF_ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ERA.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static q o(org.threeten.bp.temporal.e eVar) {
        if (eVar instanceof q) {
            return (q) eVar;
        }
        try {
            if (!org.threeten.bp.chrono.m.INSTANCE.equals(org.threeten.bp.chrono.h.h(eVar))) {
                eVar = g.A(eVar);
            }
            return s(eVar.f(org.threeten.bp.temporal.a.YEAR), eVar.f(org.threeten.bp.temporal.a.MONTH_OF_YEAR));
        } catch (org.threeten.bp.b unused) {
            throw new org.threeten.bp.b("Unable to obtain YearMonth from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static q s(int i10, int i11) {
        org.threeten.bp.temporal.a.YEAR.j(i10);
        org.threeten.bp.temporal.a.MONTH_OF_YEAR.j(i11);
        return new q(i10, i11);
    }

    private Object writeReplace() {
        return new o((byte) 68, this);
    }

    private q x(int i10, int i11) {
        return (this.year == i10 && this.month == i11) ? this : new q(i10, i11);
    }

    public q A(int i10) {
        org.threeten.bp.temporal.a.MONTH_OF_YEAR.j(i10);
        return x(this.year, i10);
    }

    public q B(int i10) {
        org.threeten.bp.temporal.a.YEAR.j(i10);
        return x(i10, this.month);
    }

    void C(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.year);
        dataOutput.writeByte(this.month);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.YEAR_OF_ERA) {
            return org.threeten.bp.temporal.m.i(1L, q() <= 0 ? 1000000000L : 999999999L);
        }
        return super.c(hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.YEAR || hVar == org.threeten.bp.temporal.a.MONTH_OF_YEAR || hVar == org.threeten.bp.temporal.a.PROLEPTIC_MONTH || hVar == org.threeten.bp.temporal.a.YEAR_OF_ERA || hVar == org.threeten.bp.temporal.a.ERA;
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        int i10;
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        int i11 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i11 == 1) {
            i10 = this.month;
        } else {
            if (i11 == 2) {
                return p();
            }
            if (i11 == 3) {
                int i12 = this.year;
                if (i12 < 1) {
                    i12 = 1 - i12;
                }
                return i12;
            }
            if (i11 != 4) {
                if (i11 == 5) {
                    return this.year < 1 ? 0 : 1;
                }
                throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
            }
            i10 = this.year;
        }
        return i10;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int compareTo(q qVar) {
        int i10 = this.year - qVar.year;
        return i10 == 0 ? this.month - qVar.month : i10;
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public q r(long j6, org.threeten.bp.temporal.k kVar) {
        return j6 == Long.MIN_VALUE ? t(Long.MAX_VALUE, kVar).t(1L, kVar) : t(-j6, kVar);
    }

    @Override // org.threeten.bp.temporal.d
    public q t(long j6, org.threeten.bp.temporal.k kVar) {
        if (!(kVar instanceof org.threeten.bp.temporal.b)) {
            return (q) kVar.b(this, j6);
        }
        switch (b.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((org.threeten.bp.temporal.b) kVar).ordinal()]) {
            case 1:
                return u(j6);
            case 2:
                return v(j6);
            case 3:
                return v(ra.d.l(j6, 10));
            case 4:
                return v(ra.d.l(j6, 100));
            case 5:
                return v(ra.d.l(j6, 1000));
            case 6:
                org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.ERA;
                return z(aVar, ra.d.k(k(aVar), j6));
            default:
                throw new org.threeten.bp.temporal.l("Unsupported unit: " + kVar);
        }
    }

    public String toString() {
        int iAbs = Math.abs(this.year);
        StringBuilder sb = new StringBuilder(9);
        if (iAbs < 1000) {
            int i10 = this.year;
            if (i10 < 0) {
                sb.append(i10 - 10000);
                sb.deleteCharAt(1);
            } else {
                sb.append(i10 + 10000);
                sb.deleteCharAt(0);
            }
        } else {
            sb.append(this.year);
        }
        sb.append(this.month < 10 ? "-0" : "-");
        sb.append(this.month);
        return sb.toString();
    }

    public q u(long j6) {
        if (j6 == 0) {
            return this;
        }
        long j10 = (((long) this.year) * 12) + ((long) (this.month - 1)) + j6;
        return x(org.threeten.bp.temporal.a.YEAR.i(ra.d.e(j10, 12L)), ra.d.g(j10, 12) + 1);
    }

    public q v(long j6) {
        return j6 == 0 ? this : x(org.threeten.bp.temporal.a.YEAR.i(((long) this.year) + j6), this.month);
    }

    @Override // org.threeten.bp.temporal.d
    public q z(org.threeten.bp.temporal.h hVar, long j6) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return (q) hVar.b(this, j6);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        aVar.j(j6);
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 == 1) {
            return A((int) j6);
        }
        if (i10 == 2) {
            return u(j6 - k(org.threeten.bp.temporal.a.PROLEPTIC_MONTH));
        }
        if (i10 == 3) {
            if (this.year < 1) {
                j6 = 1 - j6;
            }
            return B((int) j6);
        }
        if (i10 == 4) {
            return B((int) j6);
        }
        if (i10 == 5) {
            return k(org.threeten.bp.temporal.a.ERA) == j6 ? this : B(1 - this.year);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    private q(int i10, int i11) {
        this.year = i10;
        this.month = i11;
    }

    static q w(DataInput dataInput) throws IOException {
        return s(dataInput.readInt(), dataInput.readByte());
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        if (org.threeten.bp.chrono.h.h(dVar).equals(org.threeten.bp.chrono.m.INSTANCE)) {
            return dVar.z(org.threeten.bp.temporal.a.PROLEPTIC_MONTH, p());
        }
        throw new org.threeten.bp.b("Adjustment only supported on ISO date-time");
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.a()) {
            return (R) org.threeten.bp.chrono.m.INSTANCE;
        }
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.MONTHS;
        }
        if (jVar != org.threeten.bp.temporal.i.b() && jVar != org.threeten.bp.temporal.i.c() && jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.d()) {
            return (R) super.d(jVar);
        }
        return null;
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        return c(hVar).a(k(hVar), hVar);
    }

    @Override // org.threeten.bp.temporal.d
    public q y(org.threeten.bp.temporal.f fVar) {
        return (q) fVar.b(this);
    }
}
