package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzch extends zzcf<Integer, Object> {
    public String zzne;
    public long zznf;
    public String zzng;
    public String zznh;
    public String zzni;

    public zzch(String str) {
        this();
        zzak(str);
    }

    public zzch() {
        this.zzne = "E";
        this.zznf = -1L;
        this.zzng = "E";
        this.zznh = "E";
        this.zzni = "E";
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final void zzak(String str) {
        HashMap mapZzal = zzcf.zzal(str);
        if (mapZzal != null) {
            this.zzne = mapZzal.get(0) == null ? "E" : (String) mapZzal.get(0);
            this.zznf = mapZzal.get(1) == null ? -1L : ((Long) mapZzal.get(1)).longValue();
            this.zzng = mapZzal.get(2) == null ? "E" : (String) mapZzal.get(2);
            this.zznh = mapZzal.get(3) == null ? "E" : (String) mapZzal.get(3);
            this.zzni = mapZzal.get(4) != null ? (String) mapZzal.get(4) : "E";
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcf
    protected final HashMap<Integer, Object> zzca() {
        HashMap<Integer, Object> map = new HashMap<>();
        map.put(0, this.zzne);
        map.put(4, this.zzni);
        map.put(3, this.zznh);
        map.put(2, this.zzng);
        map.put(1, Long.valueOf(this.zznf));
        return map;
    }
}
