package org.threeten.bp.temporal;

/* JADX INFO: loaded from: classes9.dex */
public final class c {
    public static final h DAY_OF_QUARTER = b.DAY_OF_QUARTER;
    public static final h QUARTER_OF_YEAR = b.QUARTER_OF_YEAR;
    public static final h WEEK_OF_WEEK_BASED_YEAR = b.WEEK_OF_WEEK_BASED_YEAR;
    public static final h WEEK_BASED_YEAR = b.WEEK_BASED_YEAR;
    public static final k WEEK_BASED_YEARS = EnumC0489c.WEEK_BASED_YEARS;
    public static final k QUARTER_YEARS = EnumC0489c.QUARTER_YEARS;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class b implements h {
        private static final /* synthetic */ b[] $VALUES;
        public static final b DAY_OF_QUARTER;
        private static final int[] QUARTER_DAYS;
        public static final b QUARTER_OF_YEAR;
        public static final b WEEK_BASED_YEAR;
        public static final b WEEK_OF_WEEK_BASED_YEAR;

        final enum a extends b {
            a(String str, int i10) {
                super(str, i10, null);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "DayOfQuarter";
            }

            @Override // org.threeten.bp.temporal.h
            public boolean c(e eVar) {
                return eVar.i(org.threeten.bp.temporal.a.DAY_OF_YEAR) && eVar.i(org.threeten.bp.temporal.a.MONTH_OF_YEAR) && eVar.i(org.threeten.bp.temporal.a.YEAR) && b.t(eVar);
            }

            @Override // org.threeten.bp.temporal.h
            public m d() {
                return m.j(1L, 90L, 92L);
            }

            @Override // org.threeten.bp.temporal.h
            public <R extends org.threeten.bp.temporal.d> R b(R r, long j6) {
                long jH = h(r);
                d().b(j6, this);
                org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.DAY_OF_YEAR;
                return (R) r.z(aVar, r.k(aVar) + (j6 - jH));
            }

            @Override // org.threeten.bp.temporal.h
            public m f(e eVar) {
                if (eVar.i(this)) {
                    long jK = eVar.k(b.QUARTER_OF_YEAR);
                    if (jK == 1) {
                        if (org.threeten.bp.chrono.m.INSTANCE.u(eVar.k(org.threeten.bp.temporal.a.YEAR))) {
                            return m.i(1L, 91L);
                        }
                        return m.i(1L, 90L);
                    }
                    if (jK == 2) {
                        return m.i(1L, 91L);
                    }
                    if (jK != 3 && jK != 4) {
                        return d();
                    }
                    return m.i(1L, 92L);
                }
                throw new l("Unsupported field: DayOfQuarter");
            }

            @Override // org.threeten.bp.temporal.h
            public long h(e eVar) {
                int i10;
                if (eVar.i(this)) {
                    int iF = eVar.f(org.threeten.bp.temporal.a.DAY_OF_YEAR);
                    int iF2 = eVar.f(org.threeten.bp.temporal.a.MONTH_OF_YEAR);
                    long jK = eVar.k(org.threeten.bp.temporal.a.YEAR);
                    int[] iArr = b.QUARTER_DAYS;
                    int i11 = (iF2 - 1) / 3;
                    if (org.threeten.bp.chrono.m.INSTANCE.u(jK)) {
                        i10 = 4;
                    } else {
                        i10 = 0;
                    }
                    return iF - iArr[i11 + i10];
                }
                throw new l("Unsupported field: DayOfQuarter");
            }
        }

        /* JADX INFO: renamed from: org.threeten.bp.temporal.c$b$b, reason: collision with other inner class name */
        final enum C0487b extends b {
            C0487b(String str, int i10) {
                super(str, i10, null);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "QuarterOfYear";
            }

            @Override // org.threeten.bp.temporal.h
            public boolean c(e eVar) {
                return eVar.i(org.threeten.bp.temporal.a.MONTH_OF_YEAR) && b.t(eVar);
            }

            @Override // org.threeten.bp.temporal.h
            public m d() {
                return m.i(1L, 4L);
            }

            @Override // org.threeten.bp.temporal.h
            public <R extends org.threeten.bp.temporal.d> R b(R r, long j6) {
                long jH = h(r);
                d().b(j6, this);
                org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.MONTH_OF_YEAR;
                return (R) r.z(aVar, r.k(aVar) + ((j6 - jH) * 3));
            }

            @Override // org.threeten.bp.temporal.h
            public m f(e eVar) {
                return d();
            }

            @Override // org.threeten.bp.temporal.h
            public long h(e eVar) {
                if (eVar.i(this)) {
                    return (eVar.k(org.threeten.bp.temporal.a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new l("Unsupported field: QuarterOfYear");
            }
        }

        /* JADX INFO: renamed from: org.threeten.bp.temporal.c$b$c, reason: collision with other inner class name */
        final enum C0488c extends b {
            C0488c(String str, int i10) {
                super(str, i10, null);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekOfWeekBasedYear";
            }

            @Override // org.threeten.bp.temporal.h
            public boolean c(e eVar) {
                return eVar.i(org.threeten.bp.temporal.a.EPOCH_DAY) && b.t(eVar);
            }

            @Override // org.threeten.bp.temporal.h
            public m d() {
                return m.j(1L, 52L, 53L);
            }

            @Override // org.threeten.bp.temporal.h
            public <R extends org.threeten.bp.temporal.d> R b(R r, long j6) {
                d().b(j6, this);
                return (R) r.t(ra.d.o(j6, h(r)), org.threeten.bp.temporal.b.WEEKS);
            }

            @Override // org.threeten.bp.temporal.h
            public m f(e eVar) {
                if (eVar.i(this)) {
                    return b.s(org.threeten.bp.g.A(eVar));
                }
                throw new l("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // org.threeten.bp.temporal.h
            public long h(e eVar) {
                if (eVar.i(this)) {
                    return b.p(org.threeten.bp.g.A(eVar));
                }
                throw new l("Unsupported field: WeekOfWeekBasedYear");
            }
        }

        final enum d extends b {
            d(String str, int i10) {
                super(str, i10, null);
            }

            @Override // java.lang.Enum
            public String toString() {
                return "WeekBasedYear";
            }

            @Override // org.threeten.bp.temporal.h
            public boolean c(e eVar) {
                return eVar.i(org.threeten.bp.temporal.a.EPOCH_DAY) && b.t(eVar);
            }

            @Override // org.threeten.bp.temporal.h
            public m d() {
                return org.threeten.bp.temporal.a.YEAR.d();
            }

            @Override // org.threeten.bp.temporal.h
            public m f(e eVar) {
                return org.threeten.bp.temporal.a.YEAR.d();
            }

            @Override // org.threeten.bp.temporal.h
            public <R extends org.threeten.bp.temporal.d> R b(R r, long j6) {
                if (c(r)) {
                    int iA = d().a(j6, b.WEEK_BASED_YEAR);
                    org.threeten.bp.g gVarA = org.threeten.bp.g.A(r);
                    org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.DAY_OF_WEEK;
                    int iF = gVarA.f(aVar);
                    int iP = b.p(gVarA);
                    if (iP == 53 && b.r(iA) == 52) {
                        iP = 52;
                    }
                    org.threeten.bp.g gVarQ = org.threeten.bp.g.Q(iA, 1, 4);
                    return (R) r.y(gVarQ.V((iF - gVarQ.f(aVar)) + ((iP - 1) * 7)));
                }
                throw new l("Unsupported field: WeekBasedYear");
            }

            @Override // org.threeten.bp.temporal.h
            public long h(e eVar) {
                if (eVar.i(this)) {
                    return b.q(org.threeten.bp.g.A(eVar));
                }
                throw new l("Unsupported field: WeekBasedYear");
            }
        }

        private b(String str, int i10) {
            super(str, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int r(int i10) {
            org.threeten.bp.g gVarQ = org.threeten.bp.g.Q(i10, 1, 1);
            if (gVarQ.E() != org.threeten.bp.d.THURSDAY) {
                return (gVarQ.E() == org.threeten.bp.d.WEDNESDAY && gVarQ.K()) ? 53 : 52;
            }
            return 53;
        }

        @Override // org.threeten.bp.temporal.h
        public boolean a() {
            return true;
        }

        @Override // org.threeten.bp.temporal.h
        public boolean e() {
            return false;
        }

        static {
            a aVar = new a("DAY_OF_QUARTER", 0);
            DAY_OF_QUARTER = aVar;
            C0487b c0487b = new C0487b("QUARTER_OF_YEAR", 1);
            QUARTER_OF_YEAR = c0487b;
            C0488c c0488c = new C0488c("WEEK_OF_WEEK_BASED_YEAR", 2);
            WEEK_OF_WEEK_BASED_YEAR = c0488c;
            d dVar = new d("WEEK_BASED_YEAR", 3);
            WEEK_BASED_YEAR = dVar;
            $VALUES = new b[]{aVar, c0487b, c0488c, dVar};
            QUARTER_DAYS = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
        }

        /* synthetic */ b(String str, int i10, a aVar) {
            this(str, i10);
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int p(org.threeten.bp.g gVar) {
            int iOrdinal = gVar.E().ordinal();
            int iF = gVar.F() - 1;
            int i10 = (3 - iOrdinal) + iF;
            int i11 = i10 - ((i10 / 7) * 7);
            int i12 = i11 - 3;
            if (i12 < -3) {
                i12 = i11 + 4;
            }
            if (iF < i12) {
                return (int) s(gVar.e0(180).P(1L)).c();
            }
            int i13 = ((iF - i12) / 7) + 1;
            if (i13 == 53 && i12 != -3 && (i12 != -2 || !gVar.K())) {
                return 1;
            }
            return i13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int q(org.threeten.bp.g gVar) {
            int iJ = gVar.J();
            int iF = gVar.F();
            if (iF <= 3) {
                if (iF - gVar.E().ordinal() < -2) {
                    return iJ - 1;
                }
                return iJ;
            }
            if (iF >= 363) {
                if (((iF - 363) - (gVar.K() ? 1 : 0)) - gVar.E().ordinal() >= 0) {
                    return iJ + 1;
                }
                return iJ;
            }
            return iJ;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static m s(org.threeten.bp.g gVar) {
            return m.i(1L, r(q(gVar)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean t(e eVar) {
            return org.threeten.bp.chrono.h.h(eVar).equals(org.threeten.bp.chrono.m.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: org.threeten.bp.temporal.c$c, reason: collision with other inner class name */
    private enum EnumC0489c implements k {
        WEEK_BASED_YEARS("WeekBasedYears", org.threeten.bp.e.e(31556952)),
        QUARTER_YEARS("QuarterYears", org.threeten.bp.e.e(7889238));

        private final org.threeten.bp.e duration;
        private final String name;

        @Override // org.threeten.bp.temporal.k
        public boolean a() {
            return true;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.name;
        }

        @Override // org.threeten.bp.temporal.k
        public <R extends d> R b(R r, long j6) {
            int i10 = a.$SwitchMap$org$threeten$bp$temporal$IsoFields$Unit[ordinal()];
            if (i10 == 1) {
                h hVar = c.WEEK_BASED_YEAR;
                return (R) r.z(hVar, ra.d.k(r.f(hVar), j6));
            }
            if (i10 == 2) {
                return (R) r.t(j6 / 256, org.threeten.bp.temporal.b.YEARS).t((j6 % 256) * 3, org.threeten.bp.temporal.b.MONTHS);
            }
            throw new IllegalStateException("Unreachable");
        }

        EnumC0489c(String str, org.threeten.bp.e eVar) {
            this.name = str;
            this.duration = eVar;
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$IsoFields$Unit;

        static {
            int[] iArr = new int[EnumC0489c.values().length];
            $SwitchMap$org$threeten$bp$temporal$IsoFields$Unit = iArr;
            try {
                iArr[EnumC0489c.WEEK_BASED_YEARS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$IsoFields$Unit[EnumC0489c.QUARTER_YEARS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
