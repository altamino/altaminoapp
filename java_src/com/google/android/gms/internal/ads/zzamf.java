package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzamf implements zzahw {
    private final zzbbr zzddv;
    private final /* synthetic */ zzamd zzdec;

    public zzamf(zzamd zzamdVar, zzbbr zzbbrVar) {
        this.zzdec = zzamdVar;
        this.zzddv = zzbbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahw
    public final void zzc(JSONObject jSONObject) {
        try {
            this.zzddv.set(this.zzdec.zzddo.zzd(jSONObject));
        } catch (IllegalStateException unused) {
        } catch (JSONException e) {
            this.zzddv.set(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahw
    public final void onFailure(String str) {
        try {
            if (str == null) {
                this.zzddv.setException(new zzali());
            } else {
                this.zzddv.setException(new zzali(str));
            }
        } catch (IllegalStateException unused) {
        }
    }
}
