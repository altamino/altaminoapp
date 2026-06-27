package com.google.android.gms.internal.ads;

import com.narvii.prompt.AccountPopUpUtils;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcma implements zzbal {
    static final zzbal zzbqz = new zzcma();

    private zzcma() {
    }

    @Override // com.google.android.gms.internal.ads.zzbal
    public final zzbbh zzf(Object obj) throws zzali {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("success")) {
            return zzbar.zzm(jSONObject.getJSONObject("json").getJSONArray(AccountPopUpUtils.POPUP_TYPE_ADS));
        }
        throw new zzali("process json failed");
    }
}
