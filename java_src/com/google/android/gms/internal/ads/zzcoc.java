package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcoc implements zzcjz<zzaov, zzcla> {
    private final zzclc zzfvd;

    public zzcoc(zzclc zzclcVar) {
        this.zzfvd = zzclcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjz
    public final zzcjy<zzaov, zzcla> zzd(String str, JSONObject jSONObject) throws RemoteException {
        zzaov zzaovVarZzcy = this.zzfvd.zzcy(str);
        if (zzaovVarZzcy == null) {
            return null;
        }
        return new zzcjy<>(zzaovVarZzcy, new zzcla(), str);
    }
}
