package com.bytedance.tea.common.utility.collection;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class MaxSizeLinkedHashMap<K, V> extends LinkedHashMap<K, V> {
    private static final long serialVersionUID = 3805937866184666407L;
    final int mMaxSize;

    public MaxSizeLinkedHashMap(int i10, int i11) {
        this(i10, i11, false);
    }

    public MaxSizeLinkedHashMap(int i10, int i11, boolean z6) {
        super(i11, 0.75f, true);
        this.mMaxSize = i10;
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
        if (size() > this.mMaxSize) {
            return true;
        }
        return false;
    }
}
