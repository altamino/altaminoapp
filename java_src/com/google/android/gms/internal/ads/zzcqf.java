package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbqy;
import com.google.android.gms.internal.ads.zzbtv;

/* loaded from: classes2.dex */
public final class zzcqf extends zzatu {
    private final String zzchk;
    private zzbss zzfsq;
    private final zzbjm zzgbc;
    private final zzcxx zzgds;
    private zzbbh<zzcdb> zzgek;
    private zzcdb zzgfc;
    private final zzcqa zzgfd = new zzcqa();
    private final zzcqb zzgfe = new zzcqb();
    private final zzcpz zzgff = new zzcpz();
    private boolean zzgfg = false;
    private final Context zzlj;

    public zzcqf(zzbjm zzbjmVar, Context context, String str) {
        zzcxx zzcxxVar = new zzcxx();
        zzcxxVar.zzglj.add("new_rewarded");
        this.zzgds = zzcxxVar;
        this.zzgbc = zzbjmVar;
        this.zzlj = context;
        this.zzchk = str;
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final synchronized void zza(zzxz zzxzVar, zzaub zzaubVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzgfe.zza(zzaubVar);
        this.zzgfg = false;
        if (this.zzgek != null) {
            return;
        }
        if (this.zzgfc != null) {
            return;
        }
        zzcya.zze(this.zzlj, zzxzVar.zzcgq);
        zzcdf zzcdfVarZzaeh = this.zzgbc.zzacm().zzd(new zzbqy.zza().zzbt(this.zzlj).zza(this.zzgds.zzft(this.zzchk).zzd(zzyd.zzou()).zzg(zzxzVar).zzamq()).zzagh()).zzd(new zzbtv.zza().zza((zzbrl) this.zzgfd, this.zzgbc.zzace()).zza(new zzcqi(this, this.zzgfe), this.zzgbc.zzace()).zza((zzbro) this.zzgfe, this.zzgbc.zzace()).zza((zzbrs) this.zzgfd, this.zzgbc.zzace()).zza(this.zzgff, this.zzgbc.zzace()).zza(new zzcpy(), this.zzgbc.zzace()).zzagt()).zzaeh();
        this.zzfsq = zzcdfVarZzaeh.zzaei();
        this.zzgek = zzcdfVarZzaeh.zzadu();
        zzbar.zza(this.zzgek, new zzcqg(this, zzcdfVarZzaeh), this.zzgbc.zzace());
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final synchronized void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        zza(iObjectWrapper, false);
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final synchronized void zza(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzgfc == null) {
            zzbad.zzep("Rewarded can not be shown before loaded");
            this.zzgfd.zzcs(2);
        } else {
            this.zzgfc.zzb(z, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final synchronized String getMediationAdapterClassName() throws RemoteException {
        if (this.zzgfc == null) {
            return null;
        }
        return this.zzgfc.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final boolean isLoaded() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        return this.zzgfg;
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final void zza(zzatw zzatwVar) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzgfd.zzb(zzatwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final void zza(zzaue zzaueVar) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzgfd.zzb(zzaueVar);
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final void zza(zzaao zzaaoVar) throws RemoteException {
        this.zzgff.zzb(new zzcqh(this, zzaaoVar));
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final Bundle getAdMetadata() throws RemoteException {
        zzbss zzbssVar;
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzgfg && (zzbssVar = this.zzfsq) != null) {
            return zzbssVar.getAdMetadata();
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final zzatq zzqh() {
        zzcdb zzcdbVar;
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (!this.zzgfg || (zzcdbVar = this.zzgfc) == null) {
            return null;
        }
        return zzcdbVar.zzqh();
    }

    final void zzalg() {
        this.zzgfg = true;
    }

    final void zzalh() {
        this.zzgff.onAdMetadataChanged();
    }

    @Override // com.google.android.gms.internal.ads.zzatt
    public final synchronized void zza(zzaum zzaumVar) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzgds.zzfu(zzaumVar.zzdqs);
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcow)).booleanValue()) {
            this.zzgds.zzfv(zzaumVar.zzdqt);
        }
    }

    static /* synthetic */ zzbbh zza(zzcqf zzcqfVar, zzbbh zzbbhVar) {
        zzcqfVar.zzgek = null;
        return null;
    }
}
