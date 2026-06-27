package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzcmq extends zzcmn<zzbvx> {
    private final zzbtv zzeqb;
    private final zzcow zzezu;
    private final zzbjm zzgbc;
    private final zzbqy.zza zzgbd;

    public zzcmq(zzbjm zzbjmVar, zzbqy.zza zzaVar, zzcow zzcowVar, zzbtv zzbtvVar) {
        this.zzgbc = zzbjmVar;
        this.zzgbd = zzaVar;
        this.zzezu = zzcowVar;
        this.zzeqb = zzbtvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcmn
    protected final zzbbh<zzbvx> zza(zzcxv zzcxvVar, Bundle bundle) {
        return this.zzgbc.zzack().zzc(this.zzgbd.zza(zzcxvVar).zze(bundle).zzagh()).zzc(this.zzeqb).zzb(this.zzezu).zzaed().zzadu();
    }
}
