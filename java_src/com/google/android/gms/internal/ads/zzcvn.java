package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcvn implements zzcuz<JSONObject> {
    private final AdvertisingIdClient.Info zzgip;
    private final String zzgiq;
    private final Context zzlj;

    public zzcvn(AdvertisingIdClient.Info info, Context context, String str) {
        this.zzlj = context;
        this.zzgip = info;
        this.zzgiq = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(JSONObject jSONObject) throws JSONException {
        try {
            JSONObject jSONObjectZzb = zzazc.zzb(jSONObject, "pii");
            String id = null;
            boolean zIsLimitAdTrackingEnabled = false;
            if (this.zzgip != null) {
                id = this.zzgip.getId();
                zIsLimitAdTrackingEnabled = this.zzgip.isLimitAdTrackingEnabled();
            }
            if (!TextUtils.isEmpty(id)) {
                jSONObjectZzb.put("rdid", id);
                jSONObjectZzb.put("is_lat", zIsLimitAdTrackingEnabled);
                jSONObjectZzb.put("idtype", "adid");
            } else {
                jSONObjectZzb.put("pdid", this.zzgiq);
                jSONObjectZzb.put("pdidtype", "ssaid");
            }
        } catch (JSONException e) {
            zzawz.zza("Failed putting Ad ID.", e);
        }
    }
}
