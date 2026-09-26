package org.threeten.bp;

import com.narvii.invite.InviteMembersFragment;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class f extends ra.c implements org.threeten.bp.temporal.d, org.threeten.bp.temporal.f, Comparable<f>, Serializable {
    private static final long MILLIS_PER_SEC = 1000;
    private static final int NANOS_PER_MILLI = 1000000;
    private static final int NANOS_PER_SECOND = 1000000000;
    private static final long serialVersionUID = -665713676816604388L;
    private final int nanos;
    private final long seconds;
    public static final f EPOCH = new f(0, 0);
    private static final long MIN_SECOND = -31557014167219200L;
    public static final f MIN = u(MIN_SECOND, 0);
    private static final long MAX_SECOND = 31556889864403199L;
    public static final f MAX = u(MAX_SECOND, 999999999);
    public static final org.threeten.bp.temporal.j<f> FROM = new a();

    private static f o(long j6, int i10) {
        if ((((long) i10) | j6) == 0) {
            return EPOCH;
        }
        if (j6 < MIN_SECOND || j6 > MAX_SECOND) {
            throw new org.threeten.bp.b("Instant exceeds minimum or maximum instant");
        }
        return new f(j6, i10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.seconds == fVar.seconds && this.nanos == fVar.nanos;
    }

    public int hashCode() {
        long j6 = this.seconds;
        return ((int) (j6 ^ (j6 >>> 32))) + (this.nanos * 51);
    }

    public long q() {
        return this.seconds;
    }

    public int r() {
        return this.nanos;
    }

    class a implements org.threeten.bp.temporal.j<f> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f a(org.threeten.bp.temporal.e eVar) {
            return f.p(eVar);
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
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[org.threeten.bp.temporal.b.DAYS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr2;
            try {
                iArr2[org.threeten.bp.temporal.a.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MICRO_OF_SECOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MILLI_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.INSTANT_SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static f p(org.threeten.bp.temporal.e eVar) {
        try {
            return u(eVar.k(org.threeten.bp.temporal.a.INSTANT_SECONDS), eVar.f(org.threeten.bp.temporal.a.NANO_OF_SECOND));
        } catch (org.threeten.bp.b e) {
            throw new org.threeten.bp.b("Unable to obtain Instant from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName(), e);
        }
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static f t(long j6) {
        return o(ra.d.e(j6, 1000L), ra.d.g(j6, 1000) * 1000000);
    }

    private f v(long j6, long j10) {
        if ((j6 | j10) == 0) {
            return this;
        }
        return u(ra.d.k(ra.d.k(this.seconds, j6), j10 / 1000000000), ((long) this.nanos) + (j10 % 1000000000));
    }

    private Object writeReplace() {
        return new o((byte) 2, this);
    }

    public long B() {
        long j6 = this.seconds;
        return j6 >= 0 ? ra.d.k(ra.d.m(j6, 1000L), this.nanos / 1000000) : ra.d.o(ra.d.m(j6 + 1, 1000L), 1000 - ((long) (this.nanos / 1000000)));
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public f w(org.threeten.bp.temporal.h hVar, long j6) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return (f) hVar.b(this, j6);
        }
        org.threeten.bp.temporal.a aVar = (org.threeten.bp.temporal.a) hVar;
        aVar.j(j6);
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[aVar.ordinal()];
        if (i10 == 1) {
            return j6 != ((long) this.nanos) ? o(this.seconds, (int) j6) : this;
        }
        if (i10 == 2) {
            int i11 = ((int) j6) * 1000;
            return i11 != this.nanos ? o(this.seconds, i11) : this;
        }
        if (i10 == 3) {
            int i12 = ((int) j6) * 1000000;
            return i12 != this.nanos ? o(this.seconds, i12) : this;
        }
        if (i10 == 4) {
            return j6 != this.seconds ? o(j6, this.nanos) : this;
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    void E(DataOutput dataOutput) throws IOException {
        dataOutput.writeLong(this.seconds);
        dataOutput.writeInt(this.nanos);
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        return dVar.w(org.threeten.bp.temporal.a.INSTANT_SECONDS, this.seconds).w(org.threeten.bp.temporal.a.NANO_OF_SECOND, this.nanos);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return c(hVar).a(hVar.h(this), hVar);
        }
        int i10 = b.$SwitchMap$org$threeten$bp$temporal$ChronoField[((org.threeten.bp.temporal.a) hVar).ordinal()];
        if (i10 == 1) {
            return this.nanos;
        }
        if (i10 == 2) {
            return this.nanos / 1000;
        }
        if (i10 == 3) {
            return this.nanos / 1000000;
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.INSTANT_SECONDS || hVar == org.threeten.bp.temporal.a.NANO_OF_SECOND || hVar == org.threeten.bp.temporal.a.MICRO_OF_SECOND || hVar == org.threeten.bp.temporal.a.MILLI_OF_SECOND;
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
            i10 = this.nanos;
        } else if (i11 == 2) {
            i10 = this.nanos / 1000;
        } else {
            if (i11 != 3) {
                if (i11 == 4) {
                    return this.seconds;
                }
                throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
            }
            i10 = this.nanos / 1000000;
        }
        return i10;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        int iB = ra.d.b(this.seconds, fVar.seconds);
        return iB != 0 ? iB : this.nanos - fVar.nanos;
    }

    @Override // org.threeten.bp.temporal.d
    public f s(long j6, org.threeten.bp.temporal.k kVar) {
        return j6 == Long.MIN_VALUE ? t(Long.MAX_VALUE, kVar).t(1L, kVar) : t(-j6, kVar);
    }

    public String toString() {
        return org.threeten.bp.format.b.ISO_INSTANT.a(this);
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public f t(long j6, org.threeten.bp.temporal.k kVar) {
        if (!(kVar instanceof org.threeten.bp.temporal.b)) {
            return (f) kVar.b(this, j6);
        }
        switch (b.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((org.threeten.bp.temporal.b) kVar).ordinal()]) {
            case 1:
                return y(j6);
            case 2:
                return v(j6 / 1000000, (j6 % 1000000) * 1000);
            case 3:
                return x(j6);
            case 4:
                return z(j6);
            case 5:
                return z(ra.d.l(j6, 60));
            case 6:
                return z(ra.d.l(j6, InviteMembersFragment.SECOND_HOUR));
            case 7:
                return z(ra.d.l(j6, 43200));
            case 8:
                return z(ra.d.l(j6, InviteMembersFragment.SECOND_DAY));
            default:
                throw new org.threeten.bp.temporal.l("Unsupported unit: " + kVar);
        }
    }

    public f x(long j6) {
        return v(j6 / 1000, (j6 % 1000) * 1000000);
    }

    public f y(long j6) {
        return v(0L, j6);
    }

    public f z(long j6) {
        return v(j6, 0L);
    }

    private f(long j6, int i10) {
        this.seconds = j6;
        this.nanos = i10;
    }

    static f A(DataInput dataInput) throws IOException {
        return u(dataInput.readLong(), dataInput.readInt());
    }

    public static f u(long j6, long j10) {
        return o(ra.d.k(j6, ra.d.e(j10, 1000000000L)), ra.d.g(j10, 1000000000));
    }

    @Override // org.threeten.bp.temporal.d
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public f v(org.threeten.bp.temporal.f fVar) {
        return (f) fVar.b(this);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        return super.c(hVar);
    }

    @Override // ra.c, org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.NANOS;
        }
        if (jVar != org.threeten.bp.temporal.i.b() && jVar != org.threeten.bp.temporal.i.c() && jVar != org.threeten.bp.temporal.i.a() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.d()) {
            return jVar.a(this);
        }
        return null;
    }
}
