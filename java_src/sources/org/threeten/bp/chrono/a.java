package org.threeten.bp.chrono;

import java.io.Serializable;
import org.threeten.bp.chrono.b;

/* JADX INFO: loaded from: classes4.dex */
abstract class a<D extends b> extends b implements Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    abstract a<D> A(long j6);

    abstract a<D> y(long j6);

    abstract a<D> z(long j6);

    /* JADX INFO: renamed from: org.threeten.bp.chrono.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0484a {
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
        }
    }

    @Override // org.threeten.bp.chrono.b
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public a<D> t(long j6, org.threeten.bp.temporal.k kVar) {
        if (!(kVar instanceof org.threeten.bp.temporal.b)) {
            return (a) p().c(kVar.b(this, j6));
        }
        switch (C0484a.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((org.threeten.bp.temporal.b) kVar).ordinal()]) {
            case 1:
                return y(j6);
            case 2:
                return y(ra.d.l(j6, 7));
            case 3:
                return z(j6);
            case 4:
                return A(j6);
            case 5:
                return A(ra.d.l(j6, 10));
            case 6:
                return A(ra.d.l(j6, 100));
            case 7:
                return A(ra.d.l(j6, 1000));
            default:
                throw new org.threeten.bp.b(kVar + " not valid for chronology " + p().j());
        }
    }

    a() {
    }

    @Override // org.threeten.bp.chrono.b
    public c<?> n(org.threeten.bp.i iVar) {
        return d.A(this, iVar);
    }
}
