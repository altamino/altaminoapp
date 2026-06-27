package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcwt implements zzcuz<JSONObject> {
    private Bundle zzgjm;

    public zzcwt(Bundle bundle) {
        this.zzgjm = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject;
        if (this.zzgjm != null) {
            try {
                zzazc.zzb(zzazc.zzb(jSONObject2, "device"), "play_store").put("parental_controls", com.google.android.gms.ads.internal.zzk.zzlg().zzd(this.zzgjm));
            } catch (JSONException unused) {
                zzawz.zzds("Failed putting parental controls bundle.");
            }
        }
    }
}
