package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class p extends ra.c implements org.threeten.bp.temporal.d, org.threeten.bp.temporal.f, Comparable<p>, Serializable {
    public static final int MAX_VALUE = 999999999;
    public static final int MIN_VALUE = -999999999;
    private static final long serialVersionUID = -23038383694477807L;
    private final int year;
    public static final org.threeten.bp.temporal.j<p> FROM = new a();
    private static final org.threeten.bp.format.b PARSER = new org.threeten.bp.format.c().l(org.threeten.bp.temporal.a.YEAR, 4, 10, org.threeten.bp.format.h.EXCEEDS_PAD).s();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p) && this.year == ((p) obj).year;
    }

    public int hashCode() {
        return this.year;
    }

    class a implements org.threeten.bp.temporal.j<p> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public p a(org.threeten.bp.temporal.e eVar) {
            return p.o(eVar);
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.b.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoUnit = iArr;
            try {
                iArr[org.threeten.bp.temporal.b.YEARS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.DECADES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.CENTURIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.MILLENNIA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.ERAS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr2;
            try {
                iArr2[org.threeten.bp.temporal.a.YEAR_OF_ERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static p o(org.threeten.bp.temporal.e eVar) {
        if (eVar instanceof p) {
            return (p) eVar;
        }
        try {
            if (!org.threeten.bp.chrono.m.INSTANCE.equals(org.threeten.bp.chrono.h.h(eVar))) {
                eVar = g.A(eVar);
            }
            return q(eVar.f(org.threeten.bp.temporal.a.YEAR));
        } catch (org.threeten.bp.b unused) {
            throw new org.threeten.bp.b("Unable to obtain Year from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static p q(int i10) {
        org.threeten.bp.temporal.a.YEAR.j(i10);
        return new p(i10);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new o((byte) 67, this);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.YEAR_OF_ERA) {
            return org.threeten.bp.temporal.m.i(1L, this.year <= 0 ? 1000000000L : 999999999L);
        }
        return super.c(hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.YEAR || hVar == org.threeten.bp.temporal.a.YEAR_OF_ERA || hVar == org.threeten.bp.temporal.a.ERA;
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i10 == 1) {
            int i11 = this.year;
            if (i11 < 1) {
                i11 = 1 - i11;
            }
            return i11;
        }
        if (i10 == 2) {
            return this.year;
        }
        if (i10 == 3) {
            return this.year < 1 ? 0 : 1;
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int compareTo(p pVar) {
        return this.year - pVar.year;
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public p r(long j6, org.threeten.bp.temporal.k kVar) {
        return j6 == Long.MIN_VALUE ? t(Long.MAX_VALUE, kVar).t(1L, kVar) : t(-j6, kVar);
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public p t(long j6, org.threeten.bp.temporal.k kVar) {
        if (!(kVar instanceof org.threeten.bp.temporal.b)) {
            return (p) kVar.b(this, j6);
        }
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((org.threeten.bp.temporal.b) kVar).ordinal()];
        if (i10 == 1) {
            return s(j6);
        }
        if (i10 == 2) {
            return s(ra.d.l(j6, 10));
        }
        if (i10 == 3) {
            return s(ra.d.l(j6, 100));
        }
        if (i10 == 4) {
            return s(ra.d.l(j6, 1000));
        }
        if (i10 == 5) {
            org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.ERA;
            return z(aVar, ra.d.k(k(aVar), j6));
        }
        throw new org.threeten.bp.temporal.l("Unsupported unit: " + kVar);
    }

    public p s(long j6) {
        return j6 == 0 ? this : q(org.threeten.bp.temporal.a.YEAR.i(((long) this.year) + j6));
    }

    public String toString() {
        return Integer.toString(this.year);
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public p z(org.threeten.bp.temporal.h hVar, long j6) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return (p) hVar.b(this, j6);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        aVar.j(j6);
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 == 1) {
            if (this.year < 1) {
                j6 = 1 - j6;
            }
            return q((int) j6);
        }
        if (i10 == 2) {
            return q((int) j6);
        }
        if (i10 == 3) {
            return k(org.threeten.bp.temporal.a.ERA) == j6 ? this : q(1 - this.year);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    void w(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.year);
    }

    private p(int i10) {
        this.year = i10;
    }

    static p t(DataInput dataInput) throws IOException {
        return q(dataInput.readInt());
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        if (org.threeten.bp.chrono.h.h(dVar).equals(org.threeten.bp.chrono.m.INSTANCE)) {
            return dVar.z(org.threeten.bp.temporal.a.YEAR, this.year);
        }
        throw new org.threeten.bp.b("Adjustment only supported on ISO date-time");
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.a()) {
            return (R) org.threeten.bp.chrono.m.INSTANCE;
        }
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.YEARS;
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
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public p y(org.threeten.bp.temporal.f fVar) {
        return (p) fVar.b(this);
    }
}
