package com.bumptech.glide.load.engine.prefill;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
final class c {
    private final Map<d, Integer> bitmapsPerType;
    private int bitmapsRemaining;
    private int keyIndex;
    private final List<d> keyList;

    public boolean a() {
        return this.bitmapsRemaining == 0;
    }

    public d b() {
        d dVar = this.keyList.get(this.keyIndex);
        Integer num = this.bitmapsPerType.get(dVar);
        if (num.intValue() == 1) {
            this.bitmapsPerType.remove(dVar);
            this.keyList.remove(this.keyIndex);
        } else {
            this.bitmapsPerType.put(dVar, Integer.valueOf(num.intValue() - 1));
        }
        this.bitmapsRemaining--;
        this.keyIndex = this.keyList.isEmpty() ? 0 : (this.keyIndex + 1) % this.keyList.size();
        return dVar;
    }

    public c(Map<d, Integer> map) {
        this.bitmapsPerType = map;
        this.keyList = new ArrayList(map.keySet());
        Iterator<Integer> it = map.values().iterator();
        while (it.hasNext()) {
            this.bitmapsRemaining += it.next().intValue();
        }
    }
}
