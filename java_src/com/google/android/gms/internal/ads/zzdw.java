package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzdw extends zzcf<Integer, Object> {
    public Long zzxa;
    public Boolean zzxb;
    public Boolean zzxc;

    public zzdw() {
    }

    public zzdw(String str) {
        zzak(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final void zzak(String str) {
        HashMap mapZzal = zzcf.zzal(str);
        if (mapZzal != null) {
            this.zzxa = (Long) mapZzal.get(0);
            this.zzxb = (Boolean) mapZzal.get(1);
            this.zzxc = (Boolean) mapZzal.get(2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final HashMap<Integer, Object> zzca() {
        HashMap<Integer, Object> map = new HashMap<>();
        map.put(0, this.zzxa);
        map.put(1, this.zzxb);
        map.put(2, this.zzxc);
        return map;
    }
}
