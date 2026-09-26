package com.codemonkeylabs.fpslibrary;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: com.codemonkeylabs.fpslibrary.a$a, reason: collision with other inner class name */
    public enum EnumC0144a {
        GOOD,
        BAD,
        MEDIUM
    }

    public static int b(long j6, long j10, float f) {
        long jConvert = TimeUnit.MILLISECONDS.convert(j10 - j6, TimeUnit.NANOSECONDS);
        long jRound = Math.round(f);
        if (jConvert > jRound) {
            return (int) (jConvert / jRound);
        }
        return 0;
    }

    public static List<Integer> c(b bVar, List<Long> list) {
        ArrayList arrayList = new ArrayList();
        long jLongValue = -1;
        for (Long l : list) {
            if (jLongValue == -1) {
                jLongValue = l.longValue();
            } else {
                int iB = b(jLongValue, l.longValue(), bVar.deviceRefreshRateInMs);
                if (iB > 0) {
                    arrayList.add(Integer.valueOf(iB));
                }
                jLongValue = l.longValue();
            }
        }
        return arrayList;
    }

    protected static long d(long j6, b bVar) {
        return Math.round(TimeUnit.MILLISECONDS.convert(j6, TimeUnit.NANOSECONDS) / bVar.deviceRefreshRateInMs);
    }

    public static AbstractMap.SimpleEntry<EnumC0144a, Long> a(b bVar, List<Long> list, List<Integer> list2) {
        int iIntValue = 0;
        long jD = d(list.get(list.size() - 1).longValue() - list.get(0).longValue(), bVar);
        int iIntValue2 = 0;
        for (Integer num : list2) {
            iIntValue += num.intValue();
            if (num.intValue() >= 2) {
                iIntValue2 += num.intValue();
            }
        }
        float f = jD;
        long jRound = Math.round((bVar.refreshRate / f) * (jD - ((long) iIntValue)));
        float f6 = iIntValue2 / f;
        EnumC0144a enumC0144a = EnumC0144a.GOOD;
        if (f6 >= bVar.redFlagPercentage) {
            enumC0144a = EnumC0144a.BAD;
        } else if (f6 >= bVar.yellowFlagPercentage) {
            enumC0144a = EnumC0144a.MEDIUM;
        }
        return new AbstractMap.SimpleEntry<>(enumC0144a, Long.valueOf(jRound));
    }
}
