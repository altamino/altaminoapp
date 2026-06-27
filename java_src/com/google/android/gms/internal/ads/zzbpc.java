package com.google.android.gms.internal.ads;

import org.json.JSONException;

/* loaded from: classes2.dex */
public class zzbpc {
    protected zzcxu zzffa;
    protected zzcxm zzfig;
    protected zzbry zzfiq;
    protected zzbso zzfir;
    protected String zzfis;

    public final zzbry zzafy() {
        return this.zzfiq;
    }

    public void zzafl() {
        this.zzfir.onAdLoaded();
    }

    public final String getMediationAdapterClassName() {
        return this.zzfis;
    }

    public final String zzpj() {
        String strZzb = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(this.zzfis) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(this.zzfis) ? zzb(this.zzfig) : null;
        return strZzb == null ? this.zzfis : strZzb;
    }

    public void destroy() {
        this.zzfiq.zzbr(null);
    }

    private static String zzb(zzcxm zzcxmVar) {
        try {
            return zzcxmVar.zzgkh.getString("class_name");
        } catch (JSONException unused) {
            return null;
        }
    }
}
