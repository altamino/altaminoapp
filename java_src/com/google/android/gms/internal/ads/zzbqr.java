package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONException;

/* loaded from: classes2.dex */
public final class zzbqr implements zzbtk {
    private final zzbai zzbrc;
    private final zzaxb zzduk;
    private final zzcgb zzfeh;
    private final zzcxv zzfjp;
    private final Context zzys;

    public zzbqr(Context context, zzcxv zzcxvVar, zzbai zzbaiVar, zzaxb zzaxbVar, zzcgb zzcgbVar) {
        this.zzys = context;
        this.zzfjp = zzcxvVar;
        this.zzbrc = zzbaiVar;
        this.zzduk = zzaxbVar;
        this.zzfeh = zzcgbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zza(zzcxu zzcxuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzb(zzarx zzarxVar) throws JSONException {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcsv)).booleanValue()) {
            com.google.android.gms.ads.internal.zzk.zzlo().zza(this.zzys, this.zzbrc, this.zzfjp.zzglb, this.zzduk.zzvr());
        }
        this.zzfeh.zzakd();
    }
}
