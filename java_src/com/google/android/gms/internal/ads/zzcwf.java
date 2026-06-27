package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzcwf implements zzcva<zzcuz<JSONObject>> {
    private final JSONObject zzgjd;

    zzcwf(Context context) {
        this.zzgjd = zzasj.zzu(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcuz<JSONObject>> zzalm() {
        return zzbar.zzm(new zzcuz(this) { // from class: com.google.android.gms.internal.ads.zzcwg
            private final zzcwf zzgje;

            {
                this.zzgje = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcuz
            public final void zzt(Object obj) throws JSONException {
                this.zzgje.zzo((JSONObject) obj);
            }
        });
    }

    final /* synthetic */ void zzo(JSONObject jSONObject) throws JSONException {
        try {
            jSONObject.put("gms_sdk_env", this.zzgjd);
        } catch (JSONException unused) {
            zzawz.zzds("Failed putting version constants.");
        }
    }
}
