package com.google.android.gms.internal.ads;

import org.json.JSONException;

/* loaded from: classes2.dex */
final class zzalv implements zzbbv<zzalf> {
    private final /* synthetic */ zzbbr zzdar;
    private final /* synthetic */ zzakw zzddr;
    private final /* synthetic */ Object zzdds;
    private final /* synthetic */ zzalu zzddt;

    zzalv(zzalu zzaluVar, zzakw zzakwVar, Object obj, zzbbr zzbbrVar) {
        this.zzddt = zzaluVar;
        this.zzddr = zzakwVar;
        this.zzdds = obj;
        this.zzdar = zzbbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbv
    public final /* synthetic */ void zzh(zzalf zzalfVar) throws JSONException {
        this.zzddt.zza(this.zzddr, zzalfVar, this.zzdds, this.zzdar);
    }
}
