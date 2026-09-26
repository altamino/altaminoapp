package pa;

import java.time.temporal.ChronoUnit;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
public abstract class b {
    private final Collection<String> days;
    private final Collection<String> hours;
    private final Collection<String> minutes;
    private final Collection<String> months;
    private final Collection<String> seconds;
    private final Map<ChronoUnit, Map<String, Integer>> specialCases;
    private final Collection<String> weeks;
    private final String wordSeparator;
    private final Collection<String> years;

    public Collection<String> b() {
        return this.days;
    }

    public Collection<String> c() {
        return this.hours;
    }

    public Collection<String> d() {
        return this.minutes;
    }

    public Collection<String> e() {
        return this.months;
    }

    public Collection<String> f() {
        return this.seconds;
    }

    public Map<ChronoUnit, Map<String, Integer>> g() {
        return this.specialCases;
    }

    public Collection<String> h() {
        return this.weeks;
    }

    public String i() {
        return this.wordSeparator;
    }

    public Collection<String> j() {
        return this.years;
    }

    public Map<ChronoUnit, Collection<String>> a() {
        EnumMap enumMap = new EnumMap(a.a());
        enumMap.put(ChronoUnit.SECONDS, f());
        enumMap.put(ChronoUnit.MINUTES, d());
        enumMap.put(ChronoUnit.HOURS, c());
        enumMap.put(ChronoUnit.DAYS, b());
        enumMap.put(ChronoUnit.WEEKS, h());
        enumMap.put(ChronoUnit.MONTHS, e());
        enumMap.put(ChronoUnit.YEARS, j());
        return enumMap;
    }
}
