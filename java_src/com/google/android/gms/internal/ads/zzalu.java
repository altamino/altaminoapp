package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzalu<I, O> implements zzalj<I, O> {
    private final zzakh zzddn;
    private final zzall<O> zzddo;
    private final zzalm<I> zzddp;
    private final String zzddq;

    zzalu(zzakh zzakhVar, String str, zzalm<I> zzalmVar, zzall<O> zzallVar) {
        this.zzddn = zzakhVar;
        this.zzddq = str;
        this.zzddp = zzalmVar;
        this.zzddo = zzallVar;
    }

    @Override // com.google.android.gms.internal.ads.zzalj
    public final zzbbh<O> zzi(I i) {
        zzbbr zzbbrVar = new zzbbr();
        zzakw zzakwVarZzb = this.zzddn.zzb((zzdh) null);
        zzakwVarZzb.zza(new zzalv(this, zzakwVarZzb, i, zzbbrVar), new zzalw(this, zzbbrVar, zzakwVarZzb));
        return zzbbrVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzakw zzakwVar, zzalf zzalfVar, I i, zzbbr<O> zzbbrVar) throws JSONException {
        try {
            com.google.android.gms.ads.internal.zzk.zzlg();
            String strZzwb = zzaxi.zzwb();
            zzagz.zzdae.zza(strZzwb, new zzalx(this, zzakwVar, zzbbrVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", strZzwb);
            jSONObject.put("args", this.zzddp.zzj(i));
            zzalfVar.zzb(this.zzddq, jSONObject);
        } catch (Exception e) {
            try {
                zzbbrVar.setException(e);
                zzbad.zzc("Unable to invokeJavascript", e);
            } finally {
                zzakwVar.release();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbal
    public final zzbbh<O> zzf(I i) throws Exception {
        return zzi(i);
    }
}
