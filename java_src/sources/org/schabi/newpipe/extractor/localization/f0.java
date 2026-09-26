package org.schabi.newpipe.extractor.localization;

import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalUnit;
import java.util.Collection;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class f0 {
    private static final Pattern DURATION_PATTERN = Pattern.compile("(?:(\\d+) )?([A-z]+)");
    private final OffsetDateTime now = OffsetDateTime.now(ZoneOffset.UTC);
    private final pa.b patternsHolder;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$java$time$temporal$ChronoUnit;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            $SwitchMap$java$time$temporal$ChronoUnit = iArr;
            try {
                iArr[ChronoUnit.SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$time$temporal$ChronoUnit[ChronoUnit.MINUTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$time$temporal$ChronoUnit[ChronoUnit.HOURS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$time$temporal$ChronoUnit[ChronoUnit.DAYS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$time$temporal$ChronoUnit[ChronoUnit.WEEKS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$time$temporal$ChronoUnit[ChronoUnit.MONTHS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$time$temporal$ChronoUnit[ChronoUnit.YEARS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private e d(int i10, ChronoUnit chronoUnit) {
        OffsetDateTime offsetDateTimeMinus = this.now;
        boolean z6 = true;
        switch (a.$SwitchMap$java$time$temporal$ChronoUnit[chronoUnit.ordinal()]) {
            case 1:
            case 2:
            case 3:
                offsetDateTimeMinus = offsetDateTimeMinus.minus(i10, (TemporalUnit) chronoUnit);
                z6 = false;
                break;
            case 4:
            case 5:
            case 6:
                offsetDateTimeMinus = offsetDateTimeMinus.minus(i10, (TemporalUnit) chronoUnit);
                break;
            case 7:
                offsetDateTimeMinus = offsetDateTimeMinus.minusYears(i10).minusDays(1L);
                break;
            default:
                z6 = false;
                break;
        }
        if (z6) {
            offsetDateTimeMinus = offsetDateTimeMinus.truncatedTo(ChronoUnit.HOURS);
        }
        return new e(offsetDateTimeMinus, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ aa.h g(String str) {
        return new aa.h("Unable to parse the date: " + str);
    }

    private ChronoUnit i(final String str) throws aa.h {
        return l.a(this.patternsHolder.a().entrySet().stream().filter(new Predicate() { // from class: org.schabi.newpipe.extractor.localization.u
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f3309a.f(str, (Map.Entry) obj);
            }
        }).map(new Function() { // from class: org.schabi.newpipe.extractor.localization.v
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (ChronoUnit) ((Map.Entry) obj).getKey();
            }
        }).findFirst().orElseThrow(new Supplier() { // from class: org.schabi.newpipe.extractor.localization.w
            @Override // java.util.function.Supplier
            public final Object get() {
                return f0.g(str);
            }
        }));
    }

    private int j(String str) {
        try {
            return Integer.parseInt(str.replaceAll("\\D+", ""));
        } catch (NumberFormatException unused) {
            return 1;
        }
    }

    public e h(String str) throws aa.h {
        for (Map.Entry<ChronoUnit, Map<String, Integer>> entry : this.patternsHolder.g().entrySet()) {
            ChronoUnit chronoUnitA = l.a(entry.getKey());
            for (Map.Entry<String, Integer> entry2 : entry.getValue().entrySet()) {
                String key = entry2.getKey();
                Integer value = entry2.getValue();
                if (e(str, key)) {
                    return d(value.intValue(), chronoUnitA);
                }
            }
        }
        return d(j(str), i(str));
    }

    public f0(pa.b bVar) {
        this.patternsHolder = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean f(final String str, Map.Entry entry) {
        return ((Collection) entry.getValue()).stream().anyMatch(new Predicate() { // from class: org.schabi.newpipe.extractor.localization.x
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f3312a.e(str, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public boolean e(String str, String str2) {
        String strQuote;
        if (str.equals(str2)) {
            return true;
        }
        if (this.patternsHolder.i().isEmpty()) {
            return str.toLowerCase().contains(str2.toLowerCase());
        }
        String strQuote2 = Pattern.quote(str2.toLowerCase());
        if (this.patternsHolder.i().equals(" ")) {
            strQuote = "[ \\t\\xA0\\u1680\\u180e\\u2000-\\u200a\\u202f\\u205f\\u3000\\d]";
        } else {
            strQuote = Pattern.quote(this.patternsHolder.i());
        }
        return qa.n.g("(^|" + strQuote + ")" + strQuote2 + "($|" + strQuote + ")", str.toLowerCase());
    }
}
