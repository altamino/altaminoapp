package org.threeten.bp.temporal;

/* JADX INFO: loaded from: classes10.dex */
public enum b implements k {
    NANOS("Nanos", org.threeten.bp.e.d(1)),
    MICROS("Micros", org.threeten.bp.e.d(1000)),
    MILLIS("Millis", org.threeten.bp.e.d(1000000)),
    SECONDS("Seconds", org.threeten.bp.e.e(1)),
    MINUTES("Minutes", org.threeten.bp.e.e(60)),
    HOURS("Hours", org.threeten.bp.e.e(3600)),
    HALF_DAYS("HalfDays", org.threeten.bp.e.e(43200)),
    DAYS("Days", org.threeten.bp.e.e(86400)),
    WEEKS("Weeks", org.threeten.bp.e.e(604800)),
    MONTHS("Months", org.threeten.bp.e.e(2629746)),
    YEARS("Years", org.threeten.bp.e.e(31556952)),
    DECADES("Decades", org.threeten.bp.e.e(315569520)),
    CENTURIES("Centuries", org.threeten.bp.e.e(3155695200L)),
    MILLENNIA("Millennia", org.threeten.bp.e.e(31556952000L)),
    ERAS("Eras", org.threeten.bp.e.e(31556952000000000L)),
    FOREVER("Forever", org.threeten.bp.e.f(Long.MAX_VALUE, 999999999));

    private final org.threeten.bp.e duration;
    private final String name;

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }

    @Override // org.threeten.bp.temporal.k
    public boolean a() {
        return compareTo(DAYS) >= 0 && this != FOREVER;
    }

    b(String str, org.threeten.bp.e eVar) {
        this.name = str;
        this.duration = eVar;
    }

    @Override // org.threeten.bp.temporal.k
    public <R extends d> R b(R r, long j6) {
        return (R) r.l(j6, this);
    }
}
