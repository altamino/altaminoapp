package org.threeten.bp.chrono;

import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class o extends h implements Serializable {
    private static final Map<String, String[]> ERA_FULL_NAMES;
    private static final Map<String, String[]> ERA_NARROW_NAMES;
    private static final Map<String, String[]> ERA_SHORT_NAMES;
    private static final String FALLBACK_LANGUAGE = "en";
    private static final long serialVersionUID = 459996390165777884L;
    private static final String TARGET_LANGUAGE = "ja";
    static final Locale LOCALE = new Locale(TARGET_LANGUAGE, "JP", "JP");
    public static final o INSTANCE = new o();

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // org.threeten.bp.chrono.h
    public String i() {
        return "japanese";
    }

    @Override // org.threeten.bp.chrono.h
    public String j() {
        return "Japanese";
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;

        static {
            int[] iArr = new int[org.threeten.bp.temporal.a.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr;
            try {
                iArr[org.threeten.bp.temporal.a.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.DAY_OF_WEEK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MICRO_OF_DAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MICRO_OF_SECOND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.HOUR_OF_DAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.HOUR_OF_AMPM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MINUTE_OF_DAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MINUTE_OF_HOUR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.SECOND_OF_DAY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.SECOND_OF_MINUTE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MILLI_OF_DAY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MILLI_OF_SECOND.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.NANO_OF_DAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.NANO_OF_SECOND.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.CLOCK_HOUR_OF_DAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.CLOCK_HOUR_OF_AMPM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.EPOCH_DAY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.PROLEPTIC_MONTH.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.ERA.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.YEAR_OF_ERA.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.MONTH_OF_YEAR.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[org.threeten.bp.temporal.a.DAY_OF_YEAR.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    static {
        HashMap map = new HashMap();
        ERA_NARROW_NAMES = map;
        HashMap map2 = new HashMap();
        ERA_SHORT_NAMES = map2;
        HashMap map3 = new HashMap();
        ERA_FULL_NAMES = map3;
        map.put(FALLBACK_LANGUAGE, new String[]{"Unknown", "K", "M", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LATITUDE_SOUTH, "H"});
        map.put(TARGET_LANGUAGE, new String[]{"Unknown", "K", "M", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LATITUDE_SOUTH, "H"});
        map2.put(FALLBACK_LANGUAGE, new String[]{"Unknown", "K", "M", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LATITUDE_SOUTH, "H"});
        map2.put(TARGET_LANGUAGE, new String[]{"Unknown", "慶", "明", "大", "昭", "平"});
        map3.put(FALLBACK_LANGUAGE, new String[]{"Unknown", "Keio", "Meiji", "Taisho", "Showa", "Heisei"});
        map3.put(TARGET_LANGUAGE, new String[]{"Unknown", "慶応", "明治", "大正", "昭和", "平成"});
    }

    public p s(int i10, int i11, int i12) {
        return new p(org.threeten.bp.g.Q(i10, i11, i12));
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public p b(org.threeten.bp.temporal.e eVar) {
        return eVar instanceof p ? (p) eVar : new p(org.threeten.bp.g.A(eVar));
    }

    public int v(i iVar, int i10) {
        if (!(iVar instanceof q)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        q qVar = (q) iVar;
        int iJ = (qVar.s().J() + i10) - 1;
        org.threeten.bp.temporal.m.i(1L, (qVar.n().J() - qVar.s().J()) + 1).b(i10, org.threeten.bp.temporal.a.YEAR_OF_ERA);
        return iJ;
    }

    public org.threeten.bp.temporal.m w(org.threeten.bp.temporal.a aVar) {
        int[] iArr = a.$SwitchMap$org$threeten$bp$temporal$ChronoField;
        switch (iArr[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                return aVar.d();
            default:
                Calendar calendar = Calendar.getInstance(LOCALE);
                int i10 = 0;
                switch (iArr[aVar.ordinal()]) {
                    case 19:
                        q[] qVarArrT = q.t();
                        return org.threeten.bp.temporal.m.i(qVarArrT[0].getValue(), qVarArrT[qVarArrT.length - 1].getValue());
                    case 20:
                        q[] qVarArrT2 = q.t();
                        return org.threeten.bp.temporal.m.i(p.MIN_DATE.J(), qVarArrT2[qVarArrT2.length - 1].n().J());
                    case 21:
                        q[] qVarArrT3 = q.t();
                        int iJ = (qVarArrT3[qVarArrT3.length - 1].n().J() - qVarArrT3[qVarArrT3.length - 1].s().J()) + 1;
                        int iMin = Integer.MAX_VALUE;
                        while (i10 < qVarArrT3.length) {
                            iMin = Math.min(iMin, (qVarArrT3[i10].n().J() - qVarArrT3[i10].s().J()) + 1);
                            i10++;
                        }
                        return org.threeten.bp.temporal.m.k(1L, 6L, iMin, iJ);
                    case 22:
                        return org.threeten.bp.temporal.m.k(calendar.getMinimum(2) + 1, calendar.getGreatestMinimum(2) + 1, calendar.getLeastMaximum(2) + 1, calendar.getMaximum(2) + 1);
                    case 23:
                        q[] qVarArrT4 = q.t();
                        int iMin2 = 366;
                        while (i10 < qVarArrT4.length) {
                            iMin2 = Math.min(iMin2, (qVarArrT4[i10].s().M() - qVarArrT4[i10].s().F()) + 1);
                            i10++;
                        }
                        return org.threeten.bp.temporal.m.j(1L, iMin2, 366L);
                    default:
                        throw new UnsupportedOperationException("Unimplementable field: " + aVar);
                }
        }
    }

    private o() {
    }

    @Override // org.threeten.bp.chrono.h
    public c<p> l(org.threeten.bp.temporal.e eVar) {
        return super.l(eVar);
    }

    @Override // org.threeten.bp.chrono.h
    public f<p> r(org.threeten.bp.f fVar, org.threeten.bp.r rVar) {
        return super.r(fVar, rVar);
    }

    @Override // org.threeten.bp.chrono.h
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public q f(int i10) {
        return q.p(i10);
    }
}
