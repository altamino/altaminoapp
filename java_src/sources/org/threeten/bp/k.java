package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class k extends ra.c implements org.threeten.bp.temporal.f, Comparable<k>, Serializable {
    public static final org.threeten.bp.temporal.j<k> FROM = new a();
    private static final org.threeten.bp.format.b PARSER = new org.threeten.bp.format.c().f("--").k(org.threeten.bp.temporal.a.MONTH_OF_YEAR, 2).e('-').k(org.threeten.bp.temporal.a.DAY_OF_MONTH, 2).s();
    private static final long serialVersionUID = -939150713474957432L;
    private final int day;
    private final int month;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.month == kVar.month && this.day == kVar.day;
    }

    public int hashCode() {
        return (this.month << 6) + this.day;
    }

    class a implements org.threeten.bp.temporal.j<k> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public k a(org.threeten.bp.temporal.e eVar) {
            return k.o(eVar);
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr;
            try {
                iArr[org.threeten.bp.temporal.a.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MONTH_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static k o(org.threeten.bp.temporal.e eVar) {
        if (eVar instanceof k) {
            return (k) eVar;
        }
        try {
            if (!org.threeten.bp.chrono.m.INSTANCE.equals(org.threeten.bp.chrono.h.h(eVar))) {
                eVar = g.A(eVar);
            }
            return q(eVar.f(org.threeten.bp.temporal.a.MONTH_OF_YEAR), eVar.f(org.threeten.bp.temporal.a.DAY_OF_MONTH));
        } catch (org.threeten.bp.b unused) {
            throw new org.threeten.bp.b("Unable to obtain MonthDay from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
        }
    }

    public static k r(j jVar, int i10) {
        ra.d.i(jVar, "month");
        org.threeten.bp.temporal.a.DAY_OF_MONTH.j(i10);
        if (i10 <= jVar.p()) {
            return new k(jVar.getValue(), i10);
        }
        throw new org.threeten.bp.b("Illegal value for DayOfMonth field, value " + i10 + " is not valid for month " + jVar.name());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new o((byte) 64, this);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.MONTH_OF_YEAR) {
            return hVar.d();
        }
        return hVar == org.threeten.bp.temporal.a.DAY_OF_MONTH ? org.threeten.bp.temporal.m.j(1L, p().q(), p().p()) : super.c(hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.MONTH_OF_YEAR || hVar == org.threeten.bp.temporal.a.DAY_OF_MONTH;
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
            i10 = this.day;
        } else {
            if (i11 != 2) {
                throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
            }
            i10 = this.month;
        }
        return i10;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int compareTo(k kVar) {
        int i10 = this.month - kVar.month;
        return i10 == 0 ? this.day - kVar.day : i10;
    }

    public j p() {
        return j.r(this.month);
    }

    void t(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(this.month);
        dataOutput.writeByte(this.day);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.month < 10 ? "0" : "");
        sb.append(this.month);
        sb.append(this.day < 10 ? "-0" : "-");
        sb.append(this.day);
        return sb.toString();
    }

    private k(int i10, int i11) {
        this.month = i10;
        this.day = i11;
    }

    public static k q(int i10, int i11) {
        return r(j.r(i10), i11);
    }

    static k s(DataInput dataInput) throws IOException {
        return q(dataInput.readByte(), dataInput.readByte());
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        if (org.threeten.bp.chrono.h.h(dVar).equals(org.threeten.bp.chrono.m.INSTANCE)) {
            org.threeten.bp.temporal.d dVarZ = dVar.z(org.threeten.bp.temporal.a.MONTH_OF_YEAR, this.month);
            org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.DAY_OF_MONTH;
            return dVarZ.z(aVar, Math.min(dVarZ.c(aVar).c(), this.day));
        }
        throw new org.threeten.bp.b("Adjustment only supported on ISO date-time");
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.a()) {
            return (R) org.threeten.bp.chrono.m.INSTANCE;
        }
        return (R) super.d(jVar);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        return c(hVar).a(k(hVar), hVar);
    }
}
