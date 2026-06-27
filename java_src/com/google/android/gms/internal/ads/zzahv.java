package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzahv implements zzahw {
    private final /* synthetic */ zzbbr zzdar;

    zzahv(zzahu zzahuVar, zzbbr zzbbrVar) {
        this.zzdar = zzbbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahw
    public final void zzc(JSONObject jSONObject) {
        this.zzdar.set(jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzahw
    public final void onFailure(String str) {
        this.zzdar.setException(new zzali(str));
    }
}
