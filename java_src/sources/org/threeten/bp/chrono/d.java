package org.threeten.bp.chrono;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import org.threeten.bp.chrono.b;

/* JADX INFO: loaded from: classes4.dex */
final class d<D extends b> extends c<D> implements Serializable {
    private static final int HOURS_PER_DAY = 24;
    private static final long MICROS_PER_DAY = 86400000000L;
    private static final long MILLIS_PER_DAY = 86400000;
    private static final int MINUTES_PER_DAY = 1440;
    private static final int MINUTES_PER_HOUR = 60;
    private static final long NANOS_PER_DAY = 86400000000000L;
    private static final long NANOS_PER_HOUR = 3600000000000L;
    private static final long NANOS_PER_MINUTE = 60000000000L;
    private static final long NANOS_PER_SECOND = 1000000000;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final long serialVersionUID = 4556003607393004514L;
    private final D date;
    private final org.threeten.bp.i time;

    @Override // org.threeten.bp.chrono.c
    public f<D> n(org.threeten.bp.r rVar) {
        return g.C(this, rVar, null);
    }

    @Override // org.threeten.bp.chrono.c
    public D w() {
        return this.date;
    }

    @Override // org.threeten.bp.chrono.c
    public org.threeten.bp.i x() {
        return this.time;
    }

    static /* synthetic */ class a {
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

    static <R extends b> d<R> A(R r, org.threeten.bp.i iVar) {
        return new d<>(r, iVar);
    }

    private d<D> C(long j6) {
        return J(this.date.t(j6, org.threeten.bp.temporal.b.DAYS), this.time);
    }

    private d<D> D(long j6) {
        return H(this.date, j6, 0L, 0L, 0L);
    }

    private d<D> E(long j6) {
        return H(this.date, 0L, j6, 0L, 0L);
    }

    private d<D> F(long j6) {
        return H(this.date, 0L, 0L, 0L, j6);
    }

    private d<D> H(D d, long j6, long j10, long j11, long j12) {
        if ((j6 | j10 | j11 | j12) == 0) {
            return J(d, this.time);
        }
        long j13 = (j12 / NANOS_PER_DAY) + (j11 / 86400) + (j10 / 1440) + (j6 / 24);
        long j14 = (j12 % NANOS_PER_DAY) + ((j11 % 86400) * 1000000000) + ((j10 % 1440) * NANOS_PER_MINUTE) + ((j6 % 24) * NANOS_PER_HOUR);
        long jG = this.time.G();
        long j15 = j14 + jG;
        long jE = j13 + ra.d.e(j15, NANOS_PER_DAY);
        long jH = ra.d.h(j15, NANOS_PER_DAY);
        return J(d.t(jE, org.threeten.bp.temporal.b.DAYS), jH == jG ? this.time : org.threeten.bp.i.x(jH));
    }

    private d<D> J(org.threeten.bp.temporal.d dVar, org.threeten.bp.i iVar) {
        D d = this.date;
        return (d == dVar && this.time == iVar) ? this : new d<>(d.p().c(dVar), iVar);
    }

    private Object writeReplace() {
        return new u(com.google.common.base.c.FF, this);
    }

    @Override // org.threeten.bp.chrono.c
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public d<D> t(long j6, org.threeten.bp.temporal.k kVar) {
        if (!(kVar instanceof org.threeten.bp.temporal.b)) {
            return this.date.p().d(kVar.b(this, j6));
        }
        switch (a.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((org.threeten.bp.temporal.b) kVar).ordinal()]) {
            case 1:
                return F(j6);
            case 2:
                return C(j6 / MICROS_PER_DAY).F((j6 % MICROS_PER_DAY) * 1000);
            case 3:
                return C(j6 / 86400000).F((j6 % 86400000) * 1000000);
            case 4:
                return G(j6);
            case 5:
                return E(j6);
            case 6:
                return D(j6);
            case 7:
                return C(j6 / 256).D((j6 % 256) * 12);
            default:
                return J(this.date.t(j6, kVar), this.time);
        }
    }

    d<D> G(long j6) {
        return H(this.date, 0L, 0L, j6, 0L);
    }

    @Override // org.threeten.bp.chrono.c
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public d<D> y(org.threeten.bp.temporal.f fVar) {
        if (fVar instanceof b) {
            return J((b) fVar, this.time);
        }
        if (fVar instanceof org.threeten.bp.i) {
            return J(this.date, (org.threeten.bp.i) fVar);
        }
        return fVar instanceof d ? this.date.p().d((d) fVar) : this.date.p().d((d) fVar.b(this));
    }

    @Override // org.threeten.bp.chrono.c
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public d<D> z(org.threeten.bp.temporal.h hVar, long j6) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar.e() ? J(this.date, this.time.w(hVar, j6)) : J(this.date.z(hVar, j6), this.time);
        }
        return this.date.p().d(hVar.b(this, j6));
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
        return c(hVar).a(k(hVar), hVar);
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

    void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.date);
        objectOutput.writeObject(this.time);
    }

    private d(D d, org.threeten.bp.i iVar) {
        ra.d.i(d, "date");
        ra.d.i(iVar, "time");
        this.date = d;
        this.time = iVar;
    }

    static c<?> I(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        return ((b) objectInput.readObject()).n((org.threeten.bp.i) objectInput.readObject());
    }
}
