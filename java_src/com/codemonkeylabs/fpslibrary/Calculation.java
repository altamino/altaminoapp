package com.codemonkeylabs.fpslibrary;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class Calculation {

    public enum Metric {
        GOOD,
        BAD,
        MEDIUM
    }

    public static List<Integer> getDroppedSet(FPSConfig fPSConfig, List<Long> list) {
        ArrayList arrayList = new ArrayList();
        long jLongValue = -1;
        for (Long l : list) {
            if (jLongValue == -1) {
                jLongValue = l.longValue();
            } else {
                int iDroppedCount = droppedCount(jLongValue, l.longValue(), fPSConfig.deviceRefreshRateInMs);
                if (iDroppedCount > 0) {
                    arrayList.add(Integer.valueOf(iDroppedCount));
                }
                jLongValue = l.longValue();
            }
        }
        return arrayList;
    }

    public static int droppedCount(long j, long j2, float f) {
        long jConvert = TimeUnit.MILLISECONDS.convert(j2 - j, TimeUnit.NANOSECONDS);
        long jRound = Math.round(f);
        if (jConvert > jRound) {
            return (int) (jConvert / jRound);
        }
        return 0;
    }

    public static AbstractMap.SimpleEntry<Metric, Long> calculateMetric(FPSConfig fPSConfig, List<Long> list, List<Integer> list2) {
        int iIntValue = 0;
        long numberOfFramesInSet = getNumberOfFramesInSet(list.get(list.size() - 1).longValue() - list.get(0).longValue(), fPSConfig);
        int iIntValue2 = 0;
        for (Integer num : list2) {
            iIntValue += num.intValue();
            if (num.intValue() >= 2) {
                iIntValue2 += num.intValue();
            }
        }
        float f = numberOfFramesInSet;
        long jRound = Math.round((fPSConfig.refreshRate / f) * (numberOfFramesInSet - iIntValue));
        float f2 = iIntValue2 / f;
        Metric metric = Metric.GOOD;
        if (f2 >= fPSConfig.redFlagPercentage) {
            metric = Metric.BAD;
        } else if (f2 >= fPSConfig.yellowFlagPercentage) {
            metric = Metric.MEDIUM;
        }
        return new AbstractMap.SimpleEntry<>(metric, Long.valueOf(jRound));
    }

    protected static long getNumberOfFramesInSet(long j, FPSConfig fPSConfig) {
        return Math.round(TimeUnit.MILLISECONDS.convert(j, TimeUnit.NANOSECONDS) / fPSConfig.deviceRefreshRateInMs);
    }
}
