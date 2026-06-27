package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzalx implements zzahw {
    private final /* synthetic */ zzalu zzddt;
    private final zzakw zzddu;
    private final zzbbr zzddv;

    public zzalx(zzalu zzaluVar, zzakw zzakwVar, zzbbr zzbbrVar) {
        this.zzddt = zzaluVar;
        this.zzddu = zzakwVar;
        this.zzddv = zzbbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahw
    public final void zzc(JSONObject jSONObject) {
        try {
            try {
                this.zzddv.set(this.zzddt.zzddo.zzd(jSONObject));
                this.zzddu.release();
            } catch (IllegalStateException unused) {
                this.zzddu.release();
            } catch (JSONException e) {
                this.zzddv.set(e);
                this.zzddu.release();
            }
        } catch (Throwable th) {
            this.zzddu.release();
            throw th;
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
        } finally {
            this.zzddu.release();
        }
    }
}
