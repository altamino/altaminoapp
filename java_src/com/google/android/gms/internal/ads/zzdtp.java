package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdtp<T> {
    private final List<T> zzhun = new ArrayList(11);

    private zzdtp(int i) {
    }

    public static <T> zzdtp<T> zzhp(int i) {
        return new zzdtp<>(11);
    }

    public final zzdtp<T> zzas(T t) {
        this.zzhun.add(zzdto.zza(t, "Set contributions cannot be null"));
        return this;
    }

    public final zzdtp<T> zzb(Collection<? extends T> collection) {
        Iterator<? extends T> it = collection.iterator();
        while (it.hasNext()) {
            zzdto.zza(it.next(), "Set contributions cannot be null");
        }
        this.zzhun.addAll(collection);
        return this;
    }

    public final Set<T> zzbbg() {
        int size = this.zzhun.size();
        if (size == 0) {
            return Collections.emptySet();
        }
        if (size == 1) {
            return Collections.singleton(this.zzhun.get(0));
        }
        return Collections.unmodifiableSet(new HashSet(this.zzhun));
    }
}
