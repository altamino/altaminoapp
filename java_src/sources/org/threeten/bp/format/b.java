package org.threeten.bp.format;

import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Set;
import org.threeten.bp.chrono.m;
import org.threeten.bp.n;
import org.threeten.bp.r;

/* JADX INFO: loaded from: classes10.dex */
public final class b {
    public static final b BASIC_ISO_DATE;
    public static final b ISO_DATE;
    public static final b ISO_DATE_TIME;
    public static final b ISO_INSTANT;
    public static final b ISO_LOCAL_DATE;
    public static final b ISO_LOCAL_DATE_TIME;
    public static final b ISO_LOCAL_TIME;
    public static final b ISO_OFFSET_DATE;
    public static final b ISO_OFFSET_DATE_TIME;
    public static final b ISO_OFFSET_TIME;
    public static final b ISO_ORDINAL_DATE;
    public static final b ISO_TIME;
    public static final b ISO_WEEK_DATE;
    public static final b ISO_ZONED_DATE_TIME;
    private static final org.threeten.bp.temporal.j<n> PARSED_EXCESS_DAYS;
    private static final org.threeten.bp.temporal.j<Boolean> PARSED_LEAP_SECOND;
    public static final b RFC_1123_DATE_TIME;
    private final org.threeten.bp.chrono.h chrono;
    private final f decimalStyle;
    private final Locale locale;
    private final c.f printerParser;
    private final Set<org.threeten.bp.temporal.h> resolverFields;
    private final g resolverStyle;
    private final r zone;

    class a implements org.threeten.bp.temporal.j<n> {
        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public n a(org.threeten.bp.temporal.e eVar) {
            return eVar instanceof org.threeten.bp.format.a ? ((org.threeten.bp.format.a) eVar).excessDays : n.ZERO;
        }

        a() {
        }
    }

    /* JADX INFO: renamed from: org.threeten.bp.format.b$b, reason: collision with other inner class name */
    class C0485b implements org.threeten.bp.temporal.j<Boolean> {
        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Boolean a(org.threeten.bp.temporal.e eVar) {
            return eVar instanceof org.threeten.bp.format.a ? Boolean.valueOf(((org.threeten.bp.format.a) eVar).leapSecond) : Boolean.FALSE;
        }

        C0485b() {
        }
    }

    public org.threeten.bp.chrono.h c() {
        return this.chrono;
    }

    public f d() {
        return this.decimalStyle;
    }

    public Locale e() {
        return this.locale;
    }

    public r f() {
        return this.zone;
    }

    static {
        c cVar = new c();
        org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.YEAR;
        h hVar = h.EXCEEDS_PAD;
        c cVarE = cVar.l(aVar, 4, 10, hVar).e('-');
        org.threeten.bp.temporal.a aVar2 = org.threeten.bp.temporal.a.MONTH_OF_YEAR;
        c cVarE2 = cVarE.k(aVar2, 2).e('-');
        org.threeten.bp.temporal.a aVar3 = org.threeten.bp.temporal.a.DAY_OF_MONTH;
        c cVarK = cVarE2.k(aVar3, 2);
        g gVar = g.STRICT;
        b bVarU = cVarK.u(gVar);
        m mVar = m.INSTANCE;
        b bVarH = bVarU.h(mVar);
        ISO_LOCAL_DATE = bVarH;
        ISO_OFFSET_DATE = new c().p().a(bVarH).h().u(gVar).h(mVar);
        ISO_DATE = new c().p().a(bVarH).o().h().u(gVar).h(mVar);
        c cVar2 = new c();
        org.threeten.bp.temporal.a aVar4 = org.threeten.bp.temporal.a.HOUR_OF_DAY;
        c cVarE3 = cVar2.k(aVar4, 2).e(kotlinx.serialization.json.internal.b.COLON);
        org.threeten.bp.temporal.a aVar5 = org.threeten.bp.temporal.a.MINUTE_OF_HOUR;
        c cVarE4 = cVarE3.k(aVar5, 2).o().e(kotlinx.serialization.json.internal.b.COLON);
        org.threeten.bp.temporal.a aVar6 = org.threeten.bp.temporal.a.SECOND_OF_MINUTE;
        b bVarU2 = cVarE4.k(aVar6, 2).o().b(org.threeten.bp.temporal.a.NANO_OF_SECOND, 0, 9, true).u(gVar);
        ISO_LOCAL_TIME = bVarU2;
        ISO_OFFSET_TIME = new c().p().a(bVarU2).h().u(gVar);
        ISO_TIME = new c().p().a(bVarU2).o().h().u(gVar);
        b bVarH2 = new c().p().a(bVarH).e('T').a(bVarU2).u(gVar).h(mVar);
        ISO_LOCAL_DATE_TIME = bVarH2;
        b bVarH3 = new c().p().a(bVarH2).h().u(gVar).h(mVar);
        ISO_OFFSET_DATE_TIME = bVarH3;
        ISO_ZONED_DATE_TIME = new c().a(bVarH3).o().e(kotlinx.serialization.json.internal.b.BEGIN_LIST).q().m().e(kotlinx.serialization.json.internal.b.END_LIST).u(gVar).h(mVar);
        ISO_DATE_TIME = new c().a(bVarH2).o().h().o().e(kotlinx.serialization.json.internal.b.BEGIN_LIST).q().m().e(kotlinx.serialization.json.internal.b.END_LIST).u(gVar).h(mVar);
        ISO_ORDINAL_DATE = new c().p().l(aVar, 4, 10, hVar).e('-').k(org.threeten.bp.temporal.a.DAY_OF_YEAR, 3).o().h().u(gVar).h(mVar);
        c cVarE5 = new c().p().l(org.threeten.bp.temporal.c.WEEK_BASED_YEAR, 4, 10, hVar).f("-W").k(org.threeten.bp.temporal.c.WEEK_OF_WEEK_BASED_YEAR, 2).e('-');
        org.threeten.bp.temporal.a aVar7 = org.threeten.bp.temporal.a.DAY_OF_WEEK;
        ISO_WEEK_DATE = cVarE5.k(aVar7, 1).o().h().u(gVar).h(mVar);
        ISO_INSTANT = new c().p().c().u(gVar);
        BASIC_ISO_DATE = new c().p().k(aVar, 4).k(aVar2, 2).k(aVar3, 2).o().g("+HHMMss", "Z").u(gVar).h(mVar);
        HashMap map = new HashMap();
        map.put(1L, "Mon");
        map.put(2L, "Tue");
        map.put(3L, "Wed");
        map.put(4L, "Thu");
        map.put(5L, "Fri");
        map.put(6L, "Sat");
        map.put(7L, "Sun");
        HashMap map2 = new HashMap();
        map2.put(1L, "Jan");
        map2.put(2L, "Feb");
        map2.put(3L, "Mar");
        map2.put(4L, "Apr");
        map2.put(5L, "May");
        map2.put(6L, "Jun");
        map2.put(7L, "Jul");
        map2.put(8L, "Aug");
        map2.put(9L, "Sep");
        map2.put(10L, "Oct");
        map2.put(11L, "Nov");
        map2.put(12L, "Dec");
        RFC_1123_DATE_TIME = new c().p().r().o().i(aVar7, map).f(", ").n().l(aVar3, 1, 2, h.NOT_NEGATIVE).e(' ').i(aVar2, map2).e(' ').k(aVar, 4).e(' ').k(aVar4, 2).e(kotlinx.serialization.json.internal.b.COLON).k(aVar5, 2).o().e(kotlinx.serialization.json.internal.b.COLON).k(aVar6, 2).n().e(' ').g("+HHMM", "GMT").u(g.SMART).h(mVar);
        PARSED_EXCESS_DAYS = new a();
        PARSED_LEAP_SECOND = new C0485b();
    }

    public String a(org.threeten.bp.temporal.e eVar) {
        StringBuilder sb = new StringBuilder(32);
        b(eVar, sb);
        return sb.toString();
    }

    public void b(org.threeten.bp.temporal.e eVar, Appendable appendable) {
        ra.d.i(eVar, "temporal");
        ra.d.i(appendable, "appendable");
        try {
            d dVar = new d(eVar, this);
            if (appendable instanceof StringBuilder) {
                this.printerParser.a(dVar, (StringBuilder) appendable);
                return;
            }
            StringBuilder sb = new StringBuilder(32);
            this.printerParser.a(dVar, sb);
            appendable.append(sb);
        } catch (IOException e) {
            throw new org.threeten.bp.b(e.getMessage(), e);
        }
    }

    c.f g(boolean z6) {
        return this.printerParser.b(z6);
    }

    public b h(org.threeten.bp.chrono.h hVar) {
        return ra.d.c(this.chrono, hVar) ? this : new b(this.printerParser, this.locale, this.decimalStyle, this.resolverStyle, this.resolverFields, hVar, this.zone);
    }

    public b i(g gVar) {
        ra.d.i(gVar, "resolverStyle");
        return ra.d.c(this.resolverStyle, gVar) ? this : new b(this.printerParser, this.locale, this.decimalStyle, gVar, this.resolverFields, this.chrono, this.zone);
    }

    public String toString() {
        String string = this.printerParser.toString();
        return string.startsWith("[") ? string : string.substring(1, string.length() - 1);
    }

    b(c.f fVar, Locale locale, f fVar2, g gVar, Set<org.threeten.bp.temporal.h> set, org.threeten.bp.chrono.h hVar, r rVar) {
        this.printerParser = (c.f) ra.d.i(fVar, "printerParser");
        this.locale = (Locale) ra.d.i(locale, "locale");
        this.decimalStyle = (f) ra.d.i(fVar2, "decimalStyle");
        this.resolverStyle = (g) ra.d.i(gVar, "resolverStyle");
        this.resolverFields = set;
        this.chrono = hVar;
        this.zone = rVar;
    }
}
