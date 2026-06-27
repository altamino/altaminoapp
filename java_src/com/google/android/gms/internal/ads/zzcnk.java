package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcnk implements zzcjz<zzams, zzclb> {
    private final zzclc zzfvd;
    private final Map<String, zzcjy<zzams, zzclb>> zzgbu = new HashMap();

    public zzcnk(zzclc zzclcVar) {
        this.zzfvd = zzclcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjz
    public final zzcjy<zzams, zzclb> zzd(String str, JSONObject jSONObject) throws Throwable {
        synchronized (this) {
            zzcjy<zzams, zzclb> zzcjyVar = this.zzgbu.get(str);
            if (zzcjyVar == null) {
                zzams zzamsVarZze = this.zzfvd.zze(str, jSONObject);
                if (zzamsVarZze == null) {
                    return null;
                }
                zzcjyVar = new zzcjy<>(zzamsVarZze, new zzclb(), str);
                this.zzgbu.put(str, zzcjyVar);
            }
            return zzcjyVar;
        }
    }
}
