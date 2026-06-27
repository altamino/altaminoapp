package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzdl extends zzcf<Integer, Long> {
    public long zzwu;
    public long zzwv;

    public zzdl() {
        this.zzwu = -1L;
        this.zzwv = -1L;
    }

    public zzdl(String str) {
        this();
        zzak(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final HashMap<Integer, Long> zzca() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, Long.valueOf(this.zzwu));
        map.put(1, Long.valueOf(this.zzwv));
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final void zzak(String str) {
        HashMap mapZzal = zzcf.zzal(str);
        if (mapZzal != null) {
            this.zzwu = ((Long) mapZzal.get(0)).longValue();
            this.zzwv = ((Long) mapZzal.get(1)).longValue();
        }
    }
}
