package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public abstract class zzchj implements zzbal<zzarx, zzcxu> {
    private final zzbtg zzfwt;

    public zzchj(zzbtg zzbtgVar) {
        this.zzfwt = zzbtgVar;
    }

    protected abstract zzbbh<zzcxu> zze(zzarx zzarxVar) throws zzcgm;

    @Override // com.google.android.gms.internal.ads.zzbal
    public final /* synthetic */ zzbbh<zzcxu> zzf(zzarx zzarxVar) throws Exception {
        zzarx zzarxVar2 = zzarxVar;
        this.zzfwt.zzb(zzarxVar2);
        zzbbh<zzcxu> zzbbhVarZze = zze(zzarxVar2);
        zzbar.zza(zzbbhVarZze, new zzchk(this), zzbbm.zzeaf);
        return zzbbhVarZze;
    }
}
