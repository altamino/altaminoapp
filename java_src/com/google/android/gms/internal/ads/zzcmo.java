package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzcmo extends zzcmn<zzbnf> {
    private final zzbtv zzeqb;
    private final zzbxk zzeqc;
    private final zzcow zzezu;
    private final ViewGroup zzfgu;
    private final zzbtb zzfim;
    private final zzbjm zzgbc;
    private final zzbqy.zza zzgbd;

    public zzcmo(zzbjm zzbjmVar, zzbqy.zza zzaVar, zzcow zzcowVar, zzbtv zzbtvVar, zzbxk zzbxkVar, zzbtb zzbtbVar, ViewGroup viewGroup) {
        this.zzgbc = zzbjmVar;
        this.zzgbd = zzaVar;
        this.zzezu = zzcowVar;
        this.zzeqb = zzbtvVar;
        this.zzeqc = zzbxkVar;
        this.zzfim = zzbtbVar;
        this.zzfgu = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzcmn
    protected final zzbbh<zzbnf> zza(zzcxv zzcxvVar, Bundle bundle) {
        return this.zzgbc.zzacj().zzb(this.zzgbd.zza(zzcxvVar).zze(bundle).zzagh()).zzb(this.zzeqb).zza(this.zzezu).zzb(this.zzeqc).zza(new zzbox(this.zzfim)).zza(new zzbnc(this.zzfgu)).zzads().zzadu();
    }
}
