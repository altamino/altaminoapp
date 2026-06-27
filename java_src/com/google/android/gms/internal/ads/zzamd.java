package com.google.android.gms.internal.ads;

import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzamd<I, O> implements zzbal<I, O> {
    private final zzall<O> zzddo;
    private final zzalm<I> zzddp;
    private final String zzddq;
    private final zzbbh<zzalf> zzddz;

    zzamd(zzbbh<zzalf> zzbbhVar, String str, zzalm<I> zzalmVar, zzall<O> zzallVar) {
        this.zzddz = zzbbhVar;
        this.zzddq = str;
        this.zzddp = zzalmVar;
        this.zzddo = zzallVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbal
    public final zzbbh<O> zzf(final I i) throws Exception {
        return zzbar.zza(this.zzddz, new zzbal(this, i) { // from class: com.google.android.gms.internal.ads.zzame
            private final zzamd zzdea;
            private final Object zzdeb;

            {
                this.zzdea = this;
                this.zzdeb = i;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzdea.zza(this.zzdeb, (zzalf) obj);
            }
        }, zzbbm.zzeaf);
    }

    final /* synthetic */ zzbbh zza(Object obj, zzalf zzalfVar) throws Exception {
        zzbbr zzbbrVar = new zzbbr();
        com.google.android.gms.ads.internal.zzk.zzlg();
        String strZzwb = zzaxi.zzwb();
        zzagz.zzdae.zza(strZzwb, new zzamf(this, zzbbrVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", strZzwb);
        jSONObject.put("args", this.zzddp.zzj(obj));
        zzalfVar.zzb(this.zzddq, jSONObject);
        return zzbbrVar;
    }
}
