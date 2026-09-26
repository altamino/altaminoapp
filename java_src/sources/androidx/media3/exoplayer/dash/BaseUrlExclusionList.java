package androidx.media3.exoplayer.dash;

import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.dash.manifest.BaseUrl;
import com.google.common.collect.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class BaseUrlExclusionList {
    private final Map<Integer, Long> excludedPriorities;
    private final Map<String, Long> excludedServiceLocations;
    private final Random random;
    private final Map<List<Pair<String, Integer>>, BaseUrl> selectionsTaken;

    public BaseUrlExclusionList() {
        this(new Random());
    }

    private BaseUrl k(List<BaseUrl> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            i10 += list.get(i11).weight;
        }
        int iNextInt = this.random.nextInt(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            BaseUrl baseUrl = list.get(i13);
            i12 += baseUrl.weight;
            if (iNextInt < i12) {
                return baseUrl;
            }
        }
        return (BaseUrl) h0.e(list);
    }

    @VisibleForTesting
    BaseUrlExclusionList(Random random) {
        this.selectionsTaken = new HashMap();
        this.random = random;
        this.excludedServiceLocations = new HashMap();
        this.excludedPriorities = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(BaseUrl baseUrl, BaseUrl baseUrl2) {
        int iCompare = Integer.compare(baseUrl.priority, baseUrl2.priority);
        return iCompare != 0 ? iCompare : baseUrl.serviceLocation.compareTo(baseUrl2.serviceLocation);
    }

    public static int f(List<BaseUrl> list) {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            hashSet.add(Integer.valueOf(list.get(i10).priority));
        }
        return hashSet.size();
    }

    private static <T> void h(long j6, Map<T, Long> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<T, Long> entry : map.entrySet()) {
            if (entry.getValue().longValue() <= j6) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            map.remove(arrayList.get(i10));
        }
    }

    public int g(List<BaseUrl> list) {
        HashSet hashSet = new HashSet();
        List<BaseUrl> listC = c(list);
        for (int i10 = 0; i10 < listC.size(); i10++) {
            hashSet.add(Integer.valueOf(listC.get(i10).priority));
        }
        return hashSet.size();
    }

    public void i() {
        this.excludedServiceLocations.clear();
        this.excludedPriorities.clear();
        this.selectionsTaken.clear();
    }

    private static <T> void b(T t5, long j6, Map<T, Long> map) {
        if (map.containsKey(t5)) {
            j6 = Math.max(j6, ((Long) Util.j(map.get(t5))).longValue());
        }
        map.put(t5, Long.valueOf(j6));
    }

    private List<BaseUrl> c(List<BaseUrl> list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        h(jElapsedRealtime, this.excludedServiceLocations);
        h(jElapsedRealtime, this.excludedPriorities);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            BaseUrl baseUrl = list.get(i10);
            if (!this.excludedServiceLocations.containsKey(baseUrl.serviceLocation) && !this.excludedPriorities.containsKey(Integer.valueOf(baseUrl.priority))) {
                arrayList.add(baseUrl);
            }
        }
        return arrayList;
    }

    public void e(BaseUrl baseUrl, long j6) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j6;
        b(baseUrl.serviceLocation, jElapsedRealtime, this.excludedServiceLocations);
        int i10 = baseUrl.priority;
        if (i10 != Integer.MIN_VALUE) {
            b(Integer.valueOf(i10), jElapsedRealtime, this.excludedPriorities);
        }
    }

    @Nullable
    public BaseUrl j(List<BaseUrl> list) {
        List<BaseUrl> listC = c(list);
        if (listC.size() < 2) {
            return (BaseUrl) h0.d(listC, null);
        }
        Collections.sort(listC, new Comparator() { // from class: androidx.media3.exoplayer.dash.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return BaseUrlExclusionList.d((BaseUrl) obj, (BaseUrl) obj2);
            }
        });
        ArrayList arrayList = new ArrayList();
        int i10 = listC.get(0).priority;
        for (int i11 = 0; i11 < listC.size(); i11++) {
            BaseUrl baseUrl = listC.get(i11);
            if (i10 != baseUrl.priority) {
                if (arrayList.size() != 1) {
                    break;
                }
                return listC.get(0);
            }
            arrayList.add(new Pair(baseUrl.serviceLocation, Integer.valueOf(baseUrl.weight)));
        }
        BaseUrl baseUrl2 = this.selectionsTaken.get(arrayList);
        if (baseUrl2 == null) {
            BaseUrl baseUrlK = k(listC.subList(0, arrayList.size()));
            this.selectionsTaken.put(arrayList, baseUrlK);
            return baseUrlK;
        }
        return baseUrl2;
    }
}
