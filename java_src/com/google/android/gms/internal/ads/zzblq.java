package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
public final class zzblq implements zzbal<zzcxu, zzcxu> {
    private Map<String, zzbls> zzfev;

    public zzblq(Map<String, zzbls> map) {
        this.zzfev = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbal
    public final /* synthetic */ zzbbh<zzcxu> zzf(zzcxu zzcxuVar) throws Exception {
        zzcxu zzcxuVar2 = zzcxuVar;
        for (zzcxt zzcxtVar : zzcxuVar2.zzgky.zzgkv) {
            if (this.zzfev.containsKey(zzcxtVar.name)) {
                this.zzfev.get(zzcxtVar.name).zzk(zzcxtVar.zzgkw);
            }
        }
        return zzbar.zzm(zzcxuVar2);
    }
}
