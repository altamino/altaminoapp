package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbyj implements zzdti<zzty> {
    private final zzdtu<zzbai> zzfgp;
    private final zzdtu<String> zzfgq;

    public zzbyj(zzdtu<zzbai> zzdtuVar, zzdtu<String> zzdtuVar2) {
        this.zzfgp = zzdtuVar;
        this.zzfgq = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzbai zzbaiVar = this.zzfgp.get();
        String str = this.zzfgq.get();
        com.google.android.gms.ads.internal.zzk.zzlg();
        return (zzty) zzdto.zza(new zzty(zzaxi.zzwb(), zzbaiVar, str, new JSONObject(), false, true), "Cannot return null from a non-@Nullable @Provides method");
    }
}
