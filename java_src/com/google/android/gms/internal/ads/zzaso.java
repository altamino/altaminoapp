package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzaso implements zzasb {
    private zzalj<JSONObject, JSONObject> zzdqj;
    private zzalj<JSONObject, JSONObject> zzdql;

    public zzaso(Context context) {
        zzalr zzalrVarZza = com.google.android.gms.ads.internal.zzk.zzlt().zza(context, zzbai.zzxc());
        zzaln<JSONObject> zzalnVar = zzalo.zzddi;
        this.zzdql = zzalrVarZza.zza("google.afma.request.getAdDictionary", zzalnVar, zzalnVar);
        zzalr zzalrVarZza2 = com.google.android.gms.ads.internal.zzk.zzlt().zza(context, zzbai.zzxc());
        zzaln<JSONObject> zzalnVar2 = zzalo.zzddi;
        this.zzdqj = zzalrVarZza2.zza("google.afma.sdkConstants.getSdkConstants", zzalnVar2, zzalnVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzasb
    public final zzalj<JSONObject, JSONObject> zztt() {
        return this.zzdqj;
    }
}
