package org.threeten.bp;

import com.narvii.account.ThirdPartyAccountBaseFragment;
import io.agora.rtc.Constants;

/* JADX INFO: loaded from: classes3.dex */
public enum j implements org.threeten.bp.temporal.e, org.threeten.bp.temporal.f {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;

    public static final org.threeten.bp.temporal.j<j> FROM = new org.threeten.bp.temporal.j<j>() { // from class: org.threeten.bp.j.a
        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public j a(org.threeten.bp.temporal.e eVar) {
            return j.n(eVar);
        }
    };
    private static final j[] ENUMS = values();

    public static j r(int i10) {
        if (i10 >= 1 && i10 <= 12) {
            return ENUMS[i10 - 1];
        }
        throw new org.threeten.bp.b("Invalid value for MonthOfYear: " + i10);
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$Month;

        static {
            int[] iArr = new int[j.values().length];
            $SwitchMap$org$threeten$bp$Month = iArr;
            try {
                iArr[j.FEBRUARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.APRIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.JUNE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.SEPTEMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.NOVEMBER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.JANUARY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.MARCH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.MAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.JULY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.AUGUST.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.OCTOBER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$threeten$bp$Month[j.DECEMBER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static j n(org.threeten.bp.temporal.e eVar) {
        if (eVar instanceof j) {
            return (j) eVar;
        }
        try {
            if (!org.threeten.bp.chrono.m.INSTANCE.equals(org.threeten.bp.chrono.h.h(eVar))) {
                eVar = g.A(eVar);
            }
            return r(eVar.f(org.threeten.bp.temporal.a.MONTH_OF_YEAR));
        } catch (org.threeten.bp.b e) {
            throw new org.threeten.bp.b("Unable to obtain Month from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName(), e);
        }
    }

    public int a(boolean z6) {
        switch (b.$SwitchMap$org$threeten$bp$Month[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z6 ? 1 : 0) + 91;
            case 3:
                return (z6 ? 1 : 0) + Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT;
            case 4:
                return (z6 ? 1 : 0) + 244;
            case 5:
                return (z6 ? 1 : 0) + 305;
            case 6:
                return 1;
            case 7:
                return (z6 ? 1 : 0) + 60;
            case 8:
                return (z6 ? 1 : 0) + 121;
            case 9:
                return (z6 ? 1 : 0) + 182;
            case 10:
                return (z6 ? 1 : 0) + ThirdPartyAccountBaseFragment.API_ERR_EMAIL;
            case 11:
                return (z6 ? 1 : 0) + 274;
            default:
                return (z6 ? 1 : 0) + 335;
        }
    }

    @Override // org.threeten.bp.temporal.e
    public org.threeten.bp.temporal.m c(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.MONTH_OF_YEAR) {
            return hVar.d();
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.f(this);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public int f(org.threeten.bp.temporal.h hVar) {
        return hVar == org.threeten.bp.temporal.a.MONTH_OF_YEAR ? getValue() : c(hVar).a(k(hVar), hVar);
    }

    @Override // org.threeten.bp.temporal.e
    public boolean i(org.threeten.bp.temporal.h hVar) {
        if (hVar instanceof org.threeten.bp.temporal.a) {
            return hVar == org.threeten.bp.temporal.a.MONTH_OF_YEAR;
        }
        return hVar != null && hVar.c(this);
    }

    @Override // org.threeten.bp.temporal.e
    public long k(org.threeten.bp.temporal.h hVar) {
        if (hVar == org.threeten.bp.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (!(hVar instanceof org.threeten.bp.temporal.a)) {
            return hVar.h(this);
        }
        throw new org.threeten.bp.temporal.l("Unsupported field: " + hVar);
    }

    public int o(boolean z6) {
        int i10 = b.$SwitchMap$org$threeten$bp$Month[ordinal()];
        if (i10 != 1) {
            return (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) ? 30 : 31;
        }
        return z6 ? 29 : 28;
    }

    public int p() {
        int i10 = b.$SwitchMap$org$threeten$bp$Month[ordinal()];
        if (i10 != 1) {
            return (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) ? 30 : 31;
        }
        return 29;
    }

    public int q() {
        int i10 = b.$SwitchMap$org$threeten$bp$Month[ordinal()];
        if (i10 != 1) {
            return (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) ? 30 : 31;
        }
        return 28;
    }

    public j s(long j6) {
        return ENUMS[(ordinal() + (((int) (j6 % 12)) + 12)) % 12];
    }

    @Override // org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.d b(org.threeten.bp.temporal.d dVar) {
        if (org.threeten.bp.chrono.h.h(dVar).equals(org.threeten.bp.chrono.m.INSTANCE)) {
            return dVar.z(org.threeten.bp.temporal.a.MONTH_OF_YEAR, getValue());
        }
        throw new org.threeten.bp.b("Adjustment only supported on ISO date-time");
    }

    @Override // org.threeten.bp.temporal.e
    public <R> R d(org.threeten.bp.temporal.j<R> jVar) {
        if (jVar == org.threeten.bp.temporal.i.a()) {
            return (R) org.threeten.bp.chrono.m.INSTANCE;
        }
        if (jVar == org.threeten.bp.temporal.i.e()) {
            return (R) org.threeten.bp.temporal.b.MONTHS;
        }
        if (jVar != org.threeten.bp.temporal.i.b() && jVar != org.threeten.bp.temporal.i.c() && jVar != org.threeten.bp.temporal.i.f() && jVar != org.threeten.bp.temporal.i.g() && jVar != org.threeten.bp.temporal.i.d()) {
            return jVar.a(this);
        }
        return null;
    }

    public int getValue() {
        return ordinal() + 1;
    }
}
