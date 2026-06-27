package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzcml extends zzcmn<zzbph> {
    private final zzbtv zzeqb;
    private final zzbxk zzeqc;
    private final zzbjm zzgbc;
    private final zzbqy.zza zzgbd;

    public zzcml(zzbjm zzbjmVar, zzbxk zzbxkVar, zzbqy.zza zzaVar, zzbtv zzbtvVar) {
        this.zzgbc = zzbjmVar;
        this.zzeqc = zzbxkVar;
        this.zzgbd = zzaVar;
        this.zzeqb = zzbtvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcmn
    protected final zzbbh<zzbph> zza(zzcxv zzcxvVar, Bundle bundle) {
        return this.zzgbc.zzacl().zza(this.zzgbd.zza(zzcxvVar).zze(bundle).zzagh()).zza(this.zzeqb).zza(this.zzeqc).zzacy().zzada();
    }
}
