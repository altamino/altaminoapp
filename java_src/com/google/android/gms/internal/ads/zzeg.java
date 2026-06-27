package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzeg extends zzcf<Integer, Long> {
    public Long zzyn;
    public Long zzyo;
    public Long zzyp;
    public Long zzyq;

    public zzeg() {
    }

    public zzeg(String str) {
        zzak(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final void zzak(String str) {
        HashMap mapZzal = zzcf.zzal(str);
        if (mapZzal != null) {
            this.zzyn = (Long) mapZzal.get(0);
            this.zzyo = (Long) mapZzal.get(1);
            this.zzyp = (Long) mapZzal.get(2);
            this.zzyq = (Long) mapZzal.get(3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final HashMap<Integer, Long> zzca() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, this.zzyn);
        map.put(1, this.zzyo);
        map.put(2, this.zzyp);
        map.put(3, this.zzyq);
        return map;
    }
}
