package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzdx extends zzcf<Integer, Long> {
    public Long zzxd;
    public Long zzxe;

    public zzdx() {
    }

    public zzdx(String str) {
        zzak(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final void zzak(String str) {
        HashMap mapZzal = zzcf.zzal(str);
        if (mapZzal != null) {
            this.zzxd = (Long) mapZzal.get(0);
            this.zzxe = (Long) mapZzal.get(1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final HashMap<Integer, Long> zzca() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, this.zzxd);
        map.put(1, this.zzxe);
        return map;
    }
}
