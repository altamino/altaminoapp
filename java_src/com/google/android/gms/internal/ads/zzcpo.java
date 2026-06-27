package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.util.VisibleForTesting;

/* loaded from: classes2.dex */
public final class zzcpo extends zzzg {
    private zzyz zzcjv;
    private final zzbjm zzgbc;
    private final Context zzgdr;

    @VisibleForTesting
    private final zzcxx zzgds = new zzcxx();

    @VisibleForTesting
    private final zzbze zzgdt = new zzbze();

    public zzcpo(zzbjm zzbjmVar, Context context, String str) {
        this.zzgbc = zzbjmVar;
        this.zzgds.zzft(str);
        this.zzgdr = context;
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final zzzc zzpk() {
        zzbzc zzbzcVarZzaip = this.zzgdt.zzaip();
        this.zzgds.zzb(zzbzcVarZzaip.zzain());
        this.zzgds.zzc(zzbzcVarZzaip.zzaio());
        zzcxx zzcxxVar = this.zzgds;
        if (zzcxxVar.zzpn() == null) {
            zzcxxVar.zzd(zzyd.zzg(this.zzgdr));
        }
        return new zzcpp(this.zzgdr, this.zzgbc, this.zzgds, zzbzcVarZzaip, this.zzcjv);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(zzyz zzyzVar) {
        this.zzcjv = zzyzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(zzafi zzafiVar) {
        this.zzgdt.zzb(zzafiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(zzafx zzafxVar) {
        this.zzgdt.zzb(zzafxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(zzafl zzaflVar) {
        this.zzgdt.zzb(zzaflVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(String str, zzafr zzafrVar, zzafo zzafoVar) {
        this.zzgdt.zzb(str, zzafrVar, zzafoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(zzady zzadyVar) {
        this.zzgds.zzb(zzadyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(zzaiy zzaiyVar) {
        this.zzgds.zzb(zzaiyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(zzaje zzajeVar) {
        this.zzgdt.zzb(zzajeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(zzzy zzzyVar) {
        this.zzgds.zzd(zzzyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(zzafu zzafuVar, zzyd zzydVar) {
        this.zzgdt.zza(zzafuVar);
        this.zzgds.zzd(zzydVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzgds.zzb(publisherAdViewOptions);
    }
}
