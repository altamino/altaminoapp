package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdtq<T> implements zzdti<Set<T>> {
    private static final zzdti<Set<Object>> zzhuo = zzdtj.zzar(Collections.emptySet());
    private final List<zzdtu<T>> zzhup;
    private final List<zzdtu<Collection<T>>> zzhuq;

    public static <T> zzdts<T> zzao(int i, int i2) {
        return new zzdts<>(i, i2);
    }

    private zzdtq(List<zzdtu<T>> list, List<zzdtu<Collection<T>>> list2) {
        this.zzhup = list;
        this.zzhuq = list2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        int size = this.zzhup.size();
        ArrayList arrayList = new ArrayList(this.zzhuq.size());
        int size2 = this.zzhuq.size();
        int size3 = size;
        for (int i = 0; i < size2; i++) {
            Collection<T> collection = this.zzhuq.get(i).get();
            size3 += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSetZzhl = zzdtf.zzhl(size3);
        int size4 = this.zzhup.size();
        for (int i2 = 0; i2 < size4; i2++) {
            hashSetZzhl.add(zzdto.checkNotNull(this.zzhup.get(i2).get()));
        }
        int size5 = arrayList.size();
        for (int i3 = 0; i3 < size5; i3++) {
            Iterator it = ((Collection) arrayList.get(i3)).iterator();
            while (it.hasNext()) {
                hashSetZzhl.add(zzdto.checkNotNull(it.next()));
            }
        }
        return Collections.unmodifiableSet(hashSetZzhl);
    }
}
