package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbqy;
import com.google.android.gms.internal.ads.zzbtv;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcqd extends zzzl {
    private final Executor zzffv;
    private final zzbjm zzgbc;
    private final Context zzgdr;
    private zzado zzgej;
    private zzbbh<zzbvx> zzgek;
    private zzbvx zzgey;
    private final zzcpw zzgef = new zzcpw();
    private final zzcpy zzgeh = new zzcpy();
    private final zzcqc zzgex = new zzcqc();
    private final zzcxx zzgds = new zzcxx();
    private boolean zzgez = false;

    public zzcqd(zzbjm zzbjmVar, Context context, zzyd zzydVar, String str) {
        this.zzgbc = zzbjmVar;
        this.zzgds.zzd(zzydVar).zzft(str);
        this.zzffv = zzbjmVar.zzace();
        this.zzgdr = context;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzaar getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzaax zzaaxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzaqn zzaqnVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzaqt zzaqtVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzyd zzydVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzyw zzywVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzbt(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final IObjectWrapper zzpl() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzpm() {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzyd zzpn() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized boolean zzb(zzxz zzxzVar) {
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        if (this.zzgek == null && !zzalf()) {
            zzcya.zze(this.zzgdr, zzxzVar.zzcgq);
            this.zzgey = null;
            zzcxv zzcxvVarZzamq = this.zzgds.zzg(zzxzVar).zzamq();
            zzbtv.zza zzaVar = new zzbtv.zza();
            if (this.zzgex != null) {
                zzaVar.zza((zzbrl) this.zzgex, this.zzgbc.zzace()).zza((zzbsr) this.zzgex, this.zzgbc.zzace()).zza((zzbro) this.zzgex, this.zzgbc.zzace());
            }
            zzbws zzbwsVarZzaed = this.zzgbc.zzack().zzc(new zzbqy.zza().zzbt(this.zzgdr).zza(zzcxvVarZzamq).zzagh()).zzc(zzaVar.zza((zzbrl) this.zzgef, this.zzgbc.zzace()).zza((zzbsr) this.zzgef, this.zzgbc.zzace()).zza((zzbro) this.zzgef, this.zzgbc.zzace()).zza((zzxr) this.zzgef, this.zzgbc.zzace()).zza(this.zzgeh, this.zzgbc.zzace()).zzagt()).zzb(new zzcow(this.zzgej)).zzaed();
            this.zzgek = zzbwsVarZzaed.zzadu();
            zzbar.zza(this.zzgek, new zzcqe(this, zzbwsVarZzaed), this.zzffv);
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        if (this.zzgey != null) {
            this.zzgey.zzadd().zzbr(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void pause() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzgey != null) {
            this.zzgey.zzadd().zzbp(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzgey != null) {
            this.zzgey.zzadd().zzbq(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzb(zzyz zzyzVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgef.zzc(zzyzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzzs zzzsVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzgeh.zzb(zzzsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void showInterstitial() {
        Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
        if (this.zzgey == null) {
            return;
        }
        if (this.zzgey.zzagz()) {
            this.zzgey.show(this.zzgez);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized String getMediationAdapterClassName() {
        if (this.zzgey == null) {
            return null;
        }
        return this.zzgey.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized String zzpj() {
        if (this.zzgey == null) {
            return null;
        }
        return this.zzgey.zzpj();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void zzb(zzzy zzzyVar) {
        Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
        this.zzgds.zzd(zzzyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void setManualImpressionsEnabled(boolean z) {
        Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
        this.zzgds.zzbc(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    @Override // com.google.android.gms.internal.ads.zzzk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean isLoading() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzbbh<com.google.android.gms.internal.ads.zzbvx> r0 = r1.zzgek     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzbbh<com.google.android.gms.internal.ads.zzbvx> r0 = r1.zzgek     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isDone()     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L10
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            goto L16
        L15:
            throw r0
        L16:
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcqd.isLoading():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized boolean isReady() {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzalf();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized String getAdUnitId() {
        return this.zzgds.zzamp();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzzs zzpo() {
        return this.zzgeh.zzale();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzyz zzpp() {
        return this.zzgef.zzald();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void setImmersiveMode(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzgez = z;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void zza(zzacd zzacdVar) {
        this.zzgds.zzc(zzacdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void zza(zzado zzadoVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzgej = zzadoVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final synchronized boolean zzalf() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzbvx r0 = r1.zzgey     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzbvx r0 = r1.zzgey     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isClosed()     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L10
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            goto L16
        L15:
            throw r0
        L16:
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcqd.zzalf():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzzp zzzpVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzatb zzatbVar) {
        this.zzgex.zzb(zzatbVar);
    }

    static /* synthetic */ zzbbh zza(zzcqd zzcqdVar, zzbbh zzbbhVar) {
        zzcqdVar.zzgek = null;
        return null;
    }
}
