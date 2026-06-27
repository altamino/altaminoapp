package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdts<T> {
    private final List<zzdtu<T>> zzhup;
    private final List<zzdtu<Collection<T>>> zzhuq;

    private zzdts(int i, int i2) {
        this.zzhup = zzdtf.zzhk(i);
        this.zzhuq = zzdtf.zzhk(i2);
    }

    public final zzdts<T> zzaq(zzdtu<? extends T> zzdtuVar) {
        this.zzhup.add(zzdtuVar);
        return this;
    }

    public final zzdts<T> zzar(zzdtu<? extends Collection<? extends T>> zzdtuVar) {
        this.zzhuq.add(zzdtuVar);
        return this;
    }

    public final zzdtq<T> zzbbh() {
        return new zzdtq<>(this.zzhup, this.zzhuq);
    }
}
