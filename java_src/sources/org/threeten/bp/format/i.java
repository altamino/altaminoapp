package org.threeten.bp.format;

import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;

/* JADX INFO: loaded from: classes5.dex */
final class i extends e {
    private static final Comparator<Map.Entry<String, Long>> COMPARATOR = new a();
    private final ConcurrentMap<Map.Entry<org.threeten.bp.temporal.h, Locale>, Object> cache;

    static final class b {
        private final Map<j, List<Map.Entry<String, Long>>> parsable;
        private final Map<j, Map<Long, String>> valueTextMap;

        String a(long j6, j jVar) {
            Map<Long, String> map = this.valueTextMap.get(jVar);
            if (map != null) {
                return map.get(Long.valueOf(j6));
            }
            return null;
        }

        b(Map<j, Map<Long, String>> map) {
            this.valueTextMap = map;
            HashMap map2 = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (j jVar : map.keySet()) {
                HashMap map3 = new HashMap();
                for (Map.Entry<Long, String> entry : map.get(jVar).entrySet()) {
                    map3.put(entry.getValue(), i.d(entry.getValue(), entry.getKey()));
                }
                ArrayList arrayList2 = new ArrayList(map3.values());
                Collections.sort(arrayList2, i.COMPARATOR);
                map2.put(jVar, arrayList2);
                arrayList.addAll(arrayList2);
                map2.put(null, arrayList);
            }
            Collections.sort(arrayList, i.COMPARATOR);
            this.parsable = map2;
        }
    }

    private Object f(org.threeten.bp.temporal.h hVar, Locale locale) {
        if (hVar == org.threeten.bp.temporal.a.MONTH_OF_YEAR) {
            DateFormatSymbols dateFormatSymbols = DateFormatSymbols.getInstance(locale);
            HashMap map = new HashMap();
            String[] months = dateFormatSymbols.getMonths();
            HashMap map2 = new HashMap();
            map2.put(1L, months[0]);
            map2.put(2L, months[1]);
            map2.put(3L, months[2]);
            map2.put(4L, months[3]);
            map2.put(5L, months[4]);
            map2.put(6L, months[5]);
            map2.put(7L, months[6]);
            map2.put(8L, months[7]);
            map2.put(9L, months[8]);
            map2.put(10L, months[9]);
            map2.put(11L, months[10]);
            map2.put(12L, months[11]);
            map.put(j.FULL, map2);
            HashMap map3 = new HashMap();
            map3.put(1L, i(1, months[0], locale));
            map3.put(2L, i(2, months[1], locale));
            map3.put(3L, i(3, months[2], locale));
            map3.put(4L, i(4, months[3], locale));
            map3.put(5L, i(5, months[4], locale));
            map3.put(6L, i(6, months[5], locale));
            map3.put(7L, i(7, months[6], locale));
            map3.put(8L, i(8, months[7], locale));
            map3.put(9L, i(9, months[8], locale));
            map3.put(10L, i(10, months[9], locale));
            map3.put(11L, i(11, months[10], locale));
            map3.put(12L, i(12, months[11], locale));
            map.put(j.NARROW, map3);
            String[] shortMonths = dateFormatSymbols.getShortMonths();
            HashMap map4 = new HashMap();
            map4.put(1L, shortMonths[0]);
            map4.put(2L, shortMonths[1]);
            map4.put(3L, shortMonths[2]);
            map4.put(4L, shortMonths[3]);
            map4.put(5L, shortMonths[4]);
            map4.put(6L, shortMonths[5]);
            map4.put(7L, shortMonths[6]);
            map4.put(8L, shortMonths[7]);
            map4.put(9L, shortMonths[8]);
            map4.put(10L, shortMonths[9]);
            map4.put(11L, shortMonths[10]);
            map4.put(12L, shortMonths[11]);
            map.put(j.SHORT, map4);
            return e(map);
        }
        if (hVar == org.threeten.bp.temporal.a.DAY_OF_WEEK) {
            DateFormatSymbols dateFormatSymbols2 = DateFormatSymbols.getInstance(locale);
            HashMap map5 = new HashMap();
            String[] weekdays = dateFormatSymbols2.getWeekdays();
            HashMap map6 = new HashMap();
            map6.put(1L, weekdays[2]);
            map6.put(2L, weekdays[3]);
            map6.put(3L, weekdays[4]);
            map6.put(4L, weekdays[5]);
            map6.put(5L, weekdays[6]);
            map6.put(6L, weekdays[7]);
            map6.put(7L, weekdays[1]);
            map5.put(j.FULL, map6);
            HashMap map7 = new HashMap();
            map7.put(1L, h(1, weekdays[2], locale));
            map7.put(2L, h(2, weekdays[3], locale));
            map7.put(3L, h(3, weekdays[4], locale));
            map7.put(4L, h(4, weekdays[5], locale));
            map7.put(5L, h(5, weekdays[6], locale));
            map7.put(6L, h(6, weekdays[7], locale));
            map7.put(7L, h(7, weekdays[1], locale));
            map5.put(j.NARROW, map7);
            String[] shortWeekdays = dateFormatSymbols2.getShortWeekdays();
            HashMap map8 = new HashMap();
            map8.put(1L, shortWeekdays[2]);
            map8.put(2L, shortWeekdays[3]);
            map8.put(3L, shortWeekdays[4]);
            map8.put(4L, shortWeekdays[5]);
            map8.put(5L, shortWeekdays[6]);
            map8.put(6L, shortWeekdays[7]);
            map8.put(7L, shortWeekdays[1]);
            map5.put(j.SHORT, map8);
            return e(map5);
        }
        if (hVar == org.threeten.bp.temporal.a.AMPM_OF_DAY) {
            DateFormatSymbols dateFormatSymbols3 = DateFormatSymbols.getInstance(locale);
            HashMap map9 = new HashMap();
            String[] amPmStrings = dateFormatSymbols3.getAmPmStrings();
            HashMap map10 = new HashMap();
            map10.put(0L, amPmStrings[0]);
            map10.put(1L, amPmStrings[1]);
            map9.put(j.FULL, map10);
            map9.put(j.SHORT, map10);
            return e(map9);
        }
        if (hVar != org.threeten.bp.temporal.a.ERA) {
            if (hVar != org.threeten.bp.temporal.c.QUARTER_OF_YEAR) {
                return "";
            }
            HashMap map11 = new HashMap();
            HashMap map12 = new HashMap();
            map12.put(1L, "Q1");
            map12.put(2L, "Q2");
            map12.put(3L, "Q3");
            map12.put(4L, "Q4");
            map11.put(j.SHORT, map12);
            HashMap map13 = new HashMap();
            map13.put(1L, "1st quarter");
            map13.put(2L, "2nd quarter");
            map13.put(3L, "3rd quarter");
            map13.put(4L, "4th quarter");
            map11.put(j.FULL, map13);
            return e(map11);
        }
        DateFormatSymbols dateFormatSymbols4 = DateFormatSymbols.getInstance(locale);
        HashMap map14 = new HashMap();
        String[] eras = dateFormatSymbols4.getEras();
        HashMap map15 = new HashMap();
        map15.put(0L, eras[0]);
        map15.put(1L, eras[1]);
        map14.put(j.SHORT, map15);
        if (locale.getLanguage().equals(Locale.ENGLISH.getLanguage())) {
            HashMap map16 = new HashMap();
            map16.put(0L, "Before Christ");
            map16.put(1L, "Anno Domini");
            map14.put(j.FULL, map16);
        } else {
            map14.put(j.FULL, map15);
        }
        HashMap map17 = new HashMap();
        map17.put(0L, eras[0].substring(0, 1));
        map17.put(1L, eras[1].substring(0, 1));
        map14.put(j.NARROW, map17);
        return e(map14);
    }

    class a implements Comparator<Map.Entry<String, Long>> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Map.Entry<String, Long> entry, Map.Entry<String, Long> entry2) {
            return entry2.getKey().length() - entry.getKey().length();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <A, B> Map.Entry<A, B> d(A a7, B b7) {
        return new AbstractMap.SimpleImmutableEntry(a7, b7);
    }

    private static b e(Map<j, Map<Long, String>> map) {
        map.put(j.FULL_STANDALONE, map.get(j.FULL));
        map.put(j.SHORT_STANDALONE, map.get(j.SHORT));
        j jVar = j.NARROW;
        if (map.containsKey(jVar)) {
            j jVar2 = j.NARROW_STANDALONE;
            if (!map.containsKey(jVar2)) {
                map.put(jVar2, map.get(jVar));
            }
        }
        return new b(map);
    }

    private Object g(org.threeten.bp.temporal.h hVar, Locale locale) {
        Map.Entry<org.threeten.bp.temporal.h, Locale> entryD = d(hVar, locale);
        Object obj = this.cache.get(entryD);
        if (obj == null) {
            this.cache.putIfAbsent(entryD, f(hVar, locale));
            return this.cache.get(entryD);
        }
        return obj;
    }

    private String h(int i10, String str, Locale locale) {
        if (locale.getLanguage().equals("zh") && locale.getCountry().equals("CN")) {
            switch (i10) {
                case 1:
                    return "一";
                case 2:
                    return "二";
                case 3:
                    return "三";
                case 4:
                    return "四";
                case 5:
                    return "五";
                case 6:
                    return "六";
                case 7:
                    return "日";
            }
        }
        if (locale.getLanguage().equals(ArchiveStreamFactory.AR)) {
            switch (i10) {
                case 1:
                    return "ن";
                case 2:
                    return "ث";
                case 3:
                    return "ر";
                case 4:
                    return "خ";
                case 5:
                    return "ج";
                case 6:
                    return "س";
                case 7:
                    return "ح";
            }
        }
        return str.substring(0, 1);
    }

    private String i(int i10, String str, Locale locale) {
        if (locale.getLanguage().equals("zh") && locale.getCountry().equals("CN")) {
            switch (i10) {
                case 1:
                    return "一";
                case 2:
                    return "二";
                case 3:
                    return "三";
                case 4:
                    return "四";
                case 5:
                    return "五";
                case 6:
                    return "六";
                case 7:
                    return "七";
                case 8:
                    return "八";
                case 9:
                    return "九";
                case 10:
                    return "十";
                case 11:
                    return "十一";
                case 12:
                    return "十二";
            }
        }
        if (locale.getLanguage().equals(ArchiveStreamFactory.AR)) {
            switch (i10) {
                case 1:
                    return "ي";
                case 2:
                    return "ف";
                case 3:
                    return "م";
                case 4:
                    return "أ";
                case 5:
                    return "و";
                case 6:
                    return "ن";
                case 7:
                    return "ل";
                case 8:
                    return "غ";
                case 9:
                    return "س";
                case 10:
                    return "ك";
                case 11:
                    return "ب";
                case 12:
                    return "د";
            }
        }
        if (locale.getLanguage().equals("ja") && locale.getCountry().equals("JP")) {
            return Integer.toString(i10);
        }
        return str.substring(0, 1);
    }

    @Override // org.threeten.bp.format.e
    public String a(org.threeten.bp.temporal.h hVar, long j6, j jVar, Locale locale) {
        Object objG = g(hVar, locale);
        if (objG instanceof b) {
            return ((b) objG).a(j6, jVar);
        }
        return null;
    }
}
