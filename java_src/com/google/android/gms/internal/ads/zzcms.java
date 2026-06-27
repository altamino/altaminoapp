package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzcms extends zzcmn<zzcdb> {
    private final zzbtv zzeqb;
    private final zzbjm zzgbc;
    private final zzbqy.zza zzgbd;

    public zzcms(zzbjm zzbjmVar, zzbqy.zza zzaVar, zzbtv zzbtvVar) {
        this.zzgbc = zzbjmVar;
        this.zzgbd = zzaVar;
        this.zzeqb = zzbtvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcmn
    protected final zzbbh<zzcdb> zza(zzcxv zzcxvVar, Bundle bundle) {
        return this.zzgbc.zzacm().zzd(this.zzgbd.zza(zzcxvVar).zze(bundle).zzagh()).zzd(this.zzeqb).zzaeh().zzadu();
    }
}
