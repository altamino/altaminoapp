package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbmt implements zzdti<zzty> {
    private final zzdtu<JSONObject> zzewt;
    private final zzdtu<zzcxm> zzfgo;
    private final zzdtu<zzbai> zzfgp;
    private final zzdtu<String> zzfgq;

    private zzbmt(zzdtu<zzcxm> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<JSONObject> zzdtuVar3, zzdtu<String> zzdtuVar4) {
        this.zzfgo = zzdtuVar;
        this.zzfgp = zzdtuVar2;
        this.zzewt = zzdtuVar3;
        this.zzfgq = zzdtuVar4;
    }

    public static zzbmt zza(zzdtu<zzcxm> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<JSONObject> zzdtuVar3, zzdtu<String> zzdtuVar4) {
        return new zzbmt(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        this.zzfgo.get();
        zzbai zzbaiVar = this.zzfgp.get();
        JSONObject jSONObject = this.zzewt.get();
        String str = this.zzfgq.get();
        boolean zEquals = "native".equals(str);
        com.google.android.gms.ads.internal.zzk.zzlg();
        return (zzty) zzdto.zza(new zzty(zzaxi.zzwb(), zzbaiVar, str, jSONObject, false, zEquals), "Cannot return null from a non-@Nullable @Provides method");
    }
}
