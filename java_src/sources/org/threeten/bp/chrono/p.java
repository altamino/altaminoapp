package org.threeten.bp.chrono;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Calendar;

/* JADX INFO: loaded from: classes4.dex */
public final class p extends org.threeten.bp.chrono.a<p> {
    static final org.threeten.bp.g MIN_DATE = org.threeten.bp.g.Q(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    private transient q era;
    private final org.threeten.bp.g isoDate;
    private transient int yearOfEra;

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public q q() {
        return this.era;
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr;
            try {
                iArr[org.threeten.bp.temporal.a.DAY_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR_OF_ERA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ALIGNED_WEEK_OF_MONTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ALIGNED_WEEK_OF_YEAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ERA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private org.threeten.bp.temporal.m B(int i10) {
        Calendar calendar = Calendar.getInstance(o.LOCALE);
        calendar.set(0, this.era.getValue() + 2);
        calendar.set(this.yearOfEra, this.isoDate.H() - 1, this.isoDate.D());
        return org.threeten.bp.temporal.m.i(calendar.getActualMinimum(i10), calendar.getActualMaximum(i10));
    }

    private long D() {
        return this.yearOfEra == 1 ? (this.isoDate.F() - this.era.s().F()) + 1 : this.isoDate.F();
    }

    private p L(org.threeten.bp.g gVar) {
        return gVar.equals(this.isoDate) ? this : new p(gVar);
    }

    private p P(q qVar, int i10) {
        return L(this.isoDate.g0(o.INSTANCE.v(qVar, i10)));
    }

    private Object writeReplace() {
        return new u((byte) 1, this);
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public o p() {
        return o.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public p y(long j6) {
        return L(this.isoDate.V(j6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public p z(long j6) {
        return L(this.isoDate.W(j6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public p A(long j6) {
        return L(this.isoDate.Y(j6));
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public p z(org.threeten.bp.temporal.h hVar, long j6) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return (p) hVar.b(this, j6);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        if (k(aVar) == j6) {
            return this;
        }
        int[] iArr = a.$SwitchMap$org$threeten$bp$temporal$ChronoField;
        int i10 = iArr[aVar.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 7) {
            int iA = p().w(aVar).a(j6, aVar);
            int i11 = iArr[aVar.ordinal()];
            if (i11 == 1) {
                return L(this.isoDate.V(((long) iA) - D()));
            }
            if (i11 == 2) {
                return O(iA);
            }
            if (i11 == 7) {
                return P(q.p(iA), this.yearOfEra);
            }
        }
        return L(this.isoDate.h(hVar, j6));
    }

    void Q(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(f(org.threeten.bp.temporal.a.YEAR));
        dataOutput.writeByte(f(org.threeten.bp.temporal.a.MONTH_OF_YEAR));
        dataOutput.writeByte(f(org.threeten.bp.temporal.a.DAY_OF_MONTH));
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.f(this);
        }
        if (!i(hVar)) {
            throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        int i10 = a.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? p().w(aVar) : B(1);
        }
        return B(6);
    }

    @Override // org.threeten.bp.chrono.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p) {
            return this.isoDate.equals(((p) obj).isoDate);
        }
        return false;
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || hVar == org.threeten.bp.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || hVar == org.threeten.bp.temporal.a.ALIGNED_WEEK_OF_MONTH || hVar == org.threeten.bp.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return super.i(hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        switch (a.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()]) {
            case 1:
                return D();
            case 2:
                return this.yearOfEra;
            case 3:
            case 4:
            case 5:
            case 6:
                throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
            case 7:
                return this.era.getValue();
            default:
                return this.isoDate.k(hVar);
        }
    }

    @Override // org.threeten.bp.chrono.b
    public long u() {
        return this.isoDate.u();
    }

    p(org.threeten.bp.g gVar) {
        if (!gVar.r(MIN_DATE)) {
            q qVarO = q.o(gVar);
            this.era = qVarO;
            this.yearOfEra = gVar.J() - (qVarO.s().J() - 1);
            this.isoDate = gVar;
            return;
        }
        throw new org.threeten.bp.b("Minimum supported date is January 1st Meiji 6");
    }

    static b K(DataInput dataInput) throws IOException {
        return o.INSTANCE.s(dataInput.readInt(), dataInput.readByte(), dataInput.readByte());
    }

    private p O(int i10) {
        return P(q(), i10);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        q qVarO = q.o(this.isoDate);
        this.era = qVarO;
        this.yearOfEra = this.isoDate.J() - (qVarO.s().J() - 1);
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public p r(long j6, org.threeten.bp.temporal.k kVar) {
        return (p) super.r(j6, kVar);
    }

    @Override // org.threeten.bp.chrono.a
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public p t(long j6, org.threeten.bp.temporal.k kVar) {
        return (p) super.t(j6, kVar);
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public p y(org.threeten.bp.temporal.f fVar) {
        return (p) super.y(fVar);
    }

    @Override // org.threeten.bp.chrono.b
    public int hashCode() {
        return p().j().hashCode() ^ this.isoDate.hashCode();
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b
    public final c<p> n(org.threeten.bp.i iVar) {
        return super.n(iVar);
    }
}
