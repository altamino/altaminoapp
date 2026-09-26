package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: loaded from: classes3.dex */
public final class i extends ra.c implements org.threeten.bp.temporal.d, org.threeten.bp.temporal.f, Comparable<i>, Serializable {
    public static final org.threeten.bp.temporal.j<i> FROM = new a();
    private static final i[] HOURS = new i[24];
    static final int HOURS_PER_DAY = 24;
    public static final i MAX;
    static final long MICROS_PER_DAY = 86400000000L;
    public static final i MIDNIGHT;
    static final long MILLIS_PER_DAY = 86400000;
    public static final i MIN;
    static final int MINUTES_PER_DAY = 1440;
    static final int MINUTES_PER_HOUR = 60;
    static final long NANOS_PER_DAY = 86400000000000L;
    static final long NANOS_PER_HOUR = 3600000000000L;
    static final long NANOS_PER_MINUTE = 60000000000L;
    static final long NANOS_PER_SECOND = 1000000000;
    public static final i NOON;
    static final int SECONDS_PER_DAY = 86400;
    static final int SECONDS_PER_HOUR = 3600;
    static final int SECONDS_PER_MINUTE = 60;
    private static final long serialVersionUID = 6414437269572265201L;
    private final byte hour;
    private final byte minute;
    private final int nano;
    private final byte second;

    public long G() {
        return (((long) this.hour) * NANOS_PER_HOUR) + (((long) this.minute) * NANOS_PER_MINUTE) + (((long) this.second) * 1000000000) + ((long) this.nano);
    }

    public int H() {
        return (this.hour * com.google.common.base.c.DLE) + (this.minute * 60) + this.second;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.hour == iVar.hour && this.minute == iVar.minute && this.second == iVar.second && this.nano == iVar.nano;
    }

    public int s() {
        return this.hour;
    }

    public int t() {
        return this.nano;
    }

    public int u() {
        return this.second;
    }

    class a implements org.threeten.bp.temporal.j<i> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i a(org.threeten.bp.temporal.e eVar) {
            return i.q(eVar);
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;
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
            int[] iArr2 = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr2;
            try {
                iArr2[org.threeten.bp.temporal.a.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.NANO_OF_DAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MICRO_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MICRO_OF_DAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MILLI_OF_SECOND.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MILLI_OF_DAY.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.SECOND_OF_MINUTE.ordinal()] = 7;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.SECOND_OF_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MINUTE_OF_HOUR.ordinal()] = 9;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MINUTE_OF_DAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.HOUR_OF_AMPM.ordinal()] = 11;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.CLOCK_HOUR_OF_AMPM.ordinal()] = 12;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.HOUR_OF_DAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.CLOCK_HOUR_OF_DAY.ordinal()] = 14;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.AMPM_OF_DAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    static {
        int i10 = 0;
        while (true) {
            i[] iVarArr = HOURS;
            if (i10 >= iVarArr.length) {
                i iVar = iVarArr[0];
                MIDNIGHT = iVar;
                NOON = iVarArr[12];
                MIN = iVar;
                MAX = new i(23, 59, 59, p.MAX_VALUE);
                return;
            }
            iVarArr[i10] = new i(i10, 0, 0, 0);
            i10++;
        }
    }

    private static i p(int i10, int i11, int i12, int i13) {
        return ((i11 | i12) | i13) == 0 ? HOURS[i10] : new i(i10, i11, i12, i13);
    }

    private int r(org.threeten.bp.temporal.h hVar) {
        switch (b.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()]) {
            case 1:
                return this.nano;
            case 2:
                throw new org.threeten.bp.b("Field too large for an int: " + hVar);
            case 3:
                return this.nano / 1000;
            case 4:
                throw new org.threeten.bp.b("Field too large for an int: " + hVar);
            case 5:
                return this.nano / 1000000;
            case 6:
                return (int) (G() / 1000000);
            case 7:
                return this.second;
            case 8:
                return H();
            case 9:
                return this.minute;
            case 10:
                return (this.hour * 60) + this.minute;
            case 11:
                return this.hour % com.google.common.base.c.FF;
            case 12:
                int i10 = this.hour % com.google.common.base.c.FF;
                if (i10 % 12 == 0) {
                    return 12;
                }
                return i10;
            case 13:
                return this.hour;
            case 14:
                byte b7 = this.hour;
                if (b7 == 0) {
                    return 24;
                }
                return b7;
            case 15:
                return this.hour / com.google.common.base.c.FF;
            default:
                throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
        }
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static i w(int i10, int i11, int i12, int i13) {
        org.threeten.bp.temporal.a.HOUR_OF_DAY.j(i10);
        org.threeten.bp.temporal.a.MINUTE_OF_HOUR.j(i11);
        org.threeten.bp.temporal.a.SECOND_OF_MINUTE.j(i12);
        org.threeten.bp.temporal.a.NANO_OF_SECOND.j(i13);
        return p(i10, i11, i12, i13);
    }

    private Object writeReplace() {
        return new o((byte) 5, this);
    }

    public static i x(long j6) {
        org.threeten.bp.temporal.a.NANO_OF_DAY.j(j6);
        int i10 = (int) (j6 / NANOS_PER_HOUR);
        long j10 = j6 - (((long) i10) * NANOS_PER_HOUR);
        int i11 = (int) (j10 / NANOS_PER_MINUTE);
        long j11 = j10 - (((long) i11) * NANOS_PER_MINUTE);
        int i12 = (int) (j11 / 1000000000);
        return p(i10, i11, i12, (int) (j11 - (((long) i12) * 1000000000)));
    }

    public static i y(long j6) {
        org.threeten.bp.temporal.a.SECOND_OF_DAY.j(j6);
        int i10 = (int) (j6 / 3600);
        long j10 = j6 - ((long) (i10 * 3600));
        int i11 = (int) (j10 / 60);
        return p(i10, i11, (int) (j10 - ((long) (i11 * 60))), 0);
    }

    static i z(long j6, int i10) {
        org.threeten.bp.temporal.a.SECOND_OF_DAY.j(j6);
        org.threeten.bp.temporal.a.NANO_OF_SECOND.j(i10);
        int i11 = (int) (j6 / 3600);
        long j10 = j6 - ((long) (i11 * 3600));
        int i12 = (int) (j10 / 60);
        return p(i11, i12, (int) (j10 - ((long) (i12 * 60))), i10);
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public i t(long j6, org.threeten.bp.temporal.k kVar) {
        if (!(kVar instanceof org.threeten.bp.temporal.b)) {
            return (i) kVar.b(this, j6);
        }
        switch (b.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((org.threeten.bp.temporal.b) kVar).ordinal()]) {
            case 1:
                return D(j6);
            case 2:
                return D((j6 % MICROS_PER_DAY) * 1000);
            case 3:
                return D((j6 % 86400000) * 1000000);
            case 4:
                return E(j6);
            case 5:
                return C(j6);
            case 6:
                return B(j6);
            case 7:
                return B((j6 % 2) * 12);
            default:
                throw new org.threeten.bp.temporal.l("Unsupported unit: " + kVar);
        }
    }

    public i B(long j6) {
        return j6 == 0 ? this : p(((((int) (j6 % 24)) + this.hour) + 24) % 24, this.minute, this.second, this.nano);
    }

    public i C(long j6) {
        if (j6 == 0) {
            return this;
        }
        int i10 = (this.hour * 60) + this.minute;
        int i11 = ((((int) (j6 % 1440)) + i10) + MINUTES_PER_DAY) % MINUTES_PER_DAY;
        return i10 == i11 ? this : p(i11 / 60, i11 % 60, this.second, this.nano);
    }

    public i D(long j6) {
        if (j6 == 0) {
            return this;
        }
        long jG = G();
        long j10 = (((j6 % NANOS_PER_DAY) + jG) + NANOS_PER_DAY) % NANOS_PER_DAY;
        return jG == j10 ? this : p((int) (j10 / NANOS_PER_HOUR), (int) ((j10 / NANOS_PER_MINUTE) % 60), (int) ((j10 / 1000000000) % 60), (int) (j10 % 1000000000));
    }

    public i E(long j6) {
        if (j6 == 0) {
            return this;
        }
        int i10 = (this.hour * com.google.common.base.c.DLE) + (this.minute * 60) + this.second;
        int i11 = ((((int) (j6 % 86400)) + i10) + 86400) % 86400;
        return i10 == i11 ? this : p(i11 / 3600, (i11 / 60) % 60, i11 % 60, this.nano);
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public i y(org.threeten.bp.temporal.f fVar) {
        return fVar instanceof i ? (i) fVar : (i) fVar.b(this);
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public i z(org.threeten.bp.temporal.h hVar, long j6) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return (i) hVar.b(this, j6);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        aVar.j(j6);
        switch (b.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()]) {
            case 1:
                return M((int) j6);
            case 2:
                return x(j6);
            case 3:
                return M(((int) j6) * 1000);
            case 4:
                return x(j6 * 1000);
            case 5:
                return M(((int) j6) * 1000000);
            case 6:
                return x(j6 * 1000000);
            case 7:
                return N((int) j6);
            case 8:
                return E(j6 - ((long) H()));
            case 9:
                return L((int) j6);
            case 10:
                return C(j6 - ((long) ((this.hour * 60) + this.minute)));
            case 11:
                return B(j6 - ((long) (this.hour % com.google.common.base.c.FF)));
            case 12:
                if (j6 == 12) {
                    j6 = 0;
                }
                return B(j6 - ((long) (this.hour % com.google.common.base.c.FF)));
            case 13:
                return K((int) j6);
            case 14:
                if (j6 == 24) {
                    j6 = 0;
                }
                return K((int) j6);
            case 15:
                return B((j6 - ((long) (this.hour / com.google.common.base.c.FF))) * 12);
            default:
                throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
        }
    }

    public i K(int i10) {
        if (this.hour == i10) {
            return this;
        }
        org.threeten.bp.temporal.a.HOUR_OF_DAY.j(i10);
        return p(i10, this.minute, this.second, this.nano);
    }

    public i L(int i10) {
        if (this.minute == i10) {
            return this;
        }
        org.threeten.bp.temporal.a.MINUTE_OF_HOUR.j(i10);
        return p(this.hour, i10, this.second, this.nano);
    }

    public i M(int i10) {
        if (this.nano == i10) {
            return this;
        }
        org.threeten.bp.temporal.a.NANO_OF_SECOND.j(i10);
        return p(this.hour, this.minute, this.second, i10);
    }

    public i N(int i10) {
        if (this.second == i10) {
            return this;
        }
        org.threeten.bp.temporal.a.SECOND_OF_MINUTE.j(i10);
        return p(this.hour, this.minute, i10, this.nano);
    }

    void O(DataOutput dataOutput) throws IOException {
        if (this.nano != 0) {
            dataOutput.writeByte(this.hour);
            dataOutput.writeByte(this.minute);
            dataOutput.writeByte(this.second);
            dataOutput.writeInt(this.nano);
            return;
        }
        if (this.second != 0) {
            dataOutput.writeByte(this.hour);
            dataOutput.writeByte(this.minute);
            dataOutput.writeByte(~this.second);
        } else if (this.minute == 0) {
            dataOutput.writeByte(~this.hour);
        } else {
            dataOutput.writeByte(this.hour);
            dataOutput.writeByte(~this.minute);
        }
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.z(org.threeten.bp.temporal.a.NANO_OF_DAY, G());
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        return hVar instanceof org.threeten.bp.temporal.a ? r(hVar) : super.f(hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar.e();
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        if (hVar == org.threeten.bp.temporal.a.NANO_OF_DAY) {
            return G();
        }
        return hVar == org.threeten.bp.temporal.a.MICRO_OF_DAY ? G() / 1000 : r(hVar);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public int compareTo(i iVar) {
        int iA = ra.d.a(this.hour, iVar.hour);
        if (iA != 0) {
            return iA;
        }
        int iA2 = ra.d.a(this.minute, iVar.minute);
        if (iA2 != 0) {
            return iA2;
        }
        int iA3 = ra.d.a(this.second, iVar.second);
        return iA3 == 0 ? ra.d.a(this.nano, iVar.nano) : iA3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b7 = this.hour;
        byte b10 = this.minute;
        byte b11 = this.second;
        int i10 = this.nano;
        sb.append(b7 < 10 ? "0" : "");
        sb.append((int) b7);
        sb.append(b10 < 10 ? ":0" : ":");
        sb.append((int) b10);
        if (b11 > 0 || i10 > 0) {
            sb.append(b11 < 10 ? ":0" : ":");
            sb.append((int) b11);
            if (i10 > 0) {
                sb.append('.');
                if (i10 % 1000000 == 0) {
                    sb.append(Integer.toString((i10 / 1000000) + 1000).substring(1));
                } else if (i10 % 1000 == 0) {
                    sb.append(Integer.toString((i10 / 1000) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(i10 + Http2Connection.DEGRADED_PONG_TIMEOUT_NS).substring(1));
                }
            }
        }
        return sb.toString();
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public i r(long j6, org.threeten.bp.temporal.k kVar) {
        return j6 == Long.MIN_VALUE ? t(Long.MAX_VALUE, kVar).t(1L, kVar) : t(-j6, kVar);
    }

    private i(int i10, int i11, int i12, int i13) {
        this.hour = (byte) i10;
        this.minute = (byte) i11;
        this.second = (byte) i12;
        this.nano = i13;
    }

    static i F(DataInput dataInput) throws IOException {
        int i10;
        int i11;
        int i12 = dataInput.readByte();
        int i13 = 0;
        if (i12 < 0) {
            i12 = ~i12;
            i10 = 0;
            i11 = 0;
        } else {
            byte b7 = dataInput.readByte();
            if (b7 < 0) {
                int i14 = ~b7;
                i11 = 0;
                i13 = i14;
                i10 = 0;
            } else {
                byte b10 = dataInput.readByte();
                if (b10 < 0) {
                    i10 = ~b10;
                } else {
                    i13 = dataInput.readInt();
                    i10 = b10;
                }
                i11 = i13;
                i13 = b7;
            }
        }
        return w(i12, i13, i10, i11);
    }

    public static i q(org.threeten.bp.temporal.e eVar) {
        i iVar = (i) eVar.d(org.threeten.bp.temporal.i.c());
        if (iVar != null) {
            return iVar;
        }
        throw new org.threeten.bp.b("Unable to obtain LocalTime from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        return super.c(hVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.NANOS;
        }
        if (jVar == org.threeten.bp.temporal.i.c()) {
            return this;
        }
        if (jVar != org.threeten.bp.temporal.i.a() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.d() && jVar != org.threeten.bp.temporal.i.b()) {
            return jVar.a(this);
        }
        return null;
    }

    public int hashCode() {
        long jG = G();
        return (int) (jG ^ (jG >>> 32));
    }

    public m n(s sVar) {
        return m.r(this, sVar);
    }
}
