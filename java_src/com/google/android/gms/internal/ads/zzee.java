package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzee extends zzcf<Integer, Long> {
    public Long zzyb;
    public Long zzyc;
    public Long zzyd;
    public Long zzye;
    public Long zzyf;
    public Long zzyg;
    public Long zzyh;
    public Long zzyi;
    public Long zzyj;
    public Long zzyk;
    public Long zzyl;

    public zzee() {
    }

    public zzee(String str) {
        zzak(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final void zzak(String str) {
        HashMap mapZzal = zzcf.zzal(str);
        if (mapZzal != null) {
            this.zzyb = (Long) mapZzal.get(0);
            this.zzyc = (Long) mapZzal.get(1);
            this.zzyd = (Long) mapZzal.get(2);
            this.zzye = (Long) mapZzal.get(3);
            this.zzyf = (Long) mapZzal.get(4);
            this.zzyg = (Long) mapZzal.get(5);
            this.zzyh = (Long) mapZzal.get(6);
            this.zzyi = (Long) mapZzal.get(7);
            this.zzyj = (Long) mapZzal.get(8);
            this.zzyk = (Long) mapZzal.get(9);
            this.zzyl = (Long) mapZzal.get(10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final HashMap<Integer, Long> zzca() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, this.zzyb);
        map.put(1, this.zzyc);
        map.put(2, this.zzyd);
        map.put(3, this.zzye);
        map.put(4, this.zzyf);
        map.put(5, this.zzyg);
        map.put(6, this.zzyh);
        map.put(7, this.zzyi);
        map.put(8, this.zzyj);
        map.put(9, this.zzyk);
        map.put(10, this.zzyl);
        return map;
    }
}
