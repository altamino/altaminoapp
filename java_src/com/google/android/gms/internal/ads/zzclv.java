package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzclv implements zzcjz<zzams, zzcla> {
    private final zzclc zzfvd;

    public zzclv(zzclc zzclcVar) {
        this.zzfvd = zzclcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjz
    public final zzcjy<zzams, zzcla> zzd(String str, JSONObject jSONObject) throws Throwable {
        zzams zzamsVarZze = this.zzfvd.zze(str, jSONObject);
        if (zzamsVarZze == null) {
            return null;
        }
        return new zzcjy<>(zzamsVarZze, new zzcla(), str);
    }
}
