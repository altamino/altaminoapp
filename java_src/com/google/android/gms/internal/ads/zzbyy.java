package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbyy extends zzbyx {
    private final boolean zzdfr;
    private final boolean zzdfs;
    private final boolean zzdoh;
    private final JSONObject zzfov;

    public zzbyy(zzcxm zzcxmVar, JSONObject jSONObject) {
        super(zzcxmVar);
        this.zzfov = zzazc.zza(jSONObject, "tracking_urls_and_actions", "active_view");
        this.zzdfs = zzazc.zza(false, jSONObject, "allow_pub_owned_ad_view");
        this.zzdfr = zzazc.zza(false, jSONObject, "attribution", "allow_pub_rendering");
        this.zzdoh = zzazc.zza(false, jSONObject, "enable_omid");
    }

    @Override // com.google.android.gms.internal.ads.zzbyx
    public final JSONObject zzaie() {
        JSONObject jSONObject = this.zzfov;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.zzfou.zzdnr);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyx
    public final boolean zzaif() {
        return this.zzdfs;
    }

    @Override // com.google.android.gms.internal.ads.zzbyx
    public final boolean zzaih() {
        return this.zzdoh;
    }

    @Override // com.google.android.gms.internal.ads.zzbyx
    public final boolean zzaig() {
        return this.zzdfr;
    }
}
