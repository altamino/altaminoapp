package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbqy;
import com.google.android.gms.internal.ads.zzbtv;

/* loaded from: classes2.dex */
public final class zzcqj extends zzasx {
    private zzbss zzfsq;
    private final zzbjm zzgbc;
    private final Context zzgdr;
    private zzbbh<zzcdb> zzgek;
    private zzcdb zzgfc;
    private final zzcqc zzgfl = new zzcqc();
    private final zzcpx zzgfm = new zzcpx();
    private final zzcpy zzgeh = new zzcpy();
    private boolean zzgfg = false;
    private final zzcxx zzgds = new zzcxx();
    private boolean zzgez = false;

    public zzcqj(zzbjm zzbjmVar, Context context) {
        this.zzgbc = zzbjmVar;
        this.zzgdr = context;
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void setAppPackageName(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final synchronized void zza(zzath zzathVar) throws RemoteException {
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        this.zzgfg = false;
        if (zzathVar.zzchk == null) {
            zzbad.zzen("Ad unit ID should not be null for rewarded video ad.");
            this.zzgbc.zzace().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcqk
                private final zzcqj zzgfn;

                {
                    this.zzgfn = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgfn.zzali();
                }
            });
            return;
        }
        if (zzacw.zzcg(zzathVar.zzchk)) {
            return;
        }
        if (this.zzgek != null) {
            return;
        }
        if (zzalf()) {
            if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcvh)).booleanValue()) {
                return;
            }
        }
        zzcya.zze(this.zzgdr, zzathVar.zzdlk.zzcgq);
        this.zzgfc = null;
        zzcdf zzcdfVarZzaeh = this.zzgbc.zzacm().zzd(new zzbqy.zza().zzbt(this.zzgdr).zza(this.zzgds.zzft(zzathVar.zzchk).zzd(zzyd.zzou()).zzg(zzathVar.zzdlk).zzamq()).zzfg(null).zzagh()).zzd(new zzbtv.zza().zza((zzbrl) this.zzgfl, this.zzgbc.zzace()).zza(new zzcqn(this, this.zzgfl), this.zzgbc.zzace()).zza((zzbro) this.zzgfl, this.zzgbc.zzace()).zza(this.zzgfm, this.zzgbc.zzace()).zza(this.zzgeh, this.zzgbc.zzace()).zzagt()).zzaeh();
        this.zzfsq = zzcdfVarZzaeh.zzaei();
        this.zzgek = zzcdfVarZzaeh.zzadu();
        zzbar.zza(this.zzgek, new zzcql(this, zzcdfVarZzaeh), this.zzgbc.zzace());
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void destroy() throws RemoteException {
        zzn(null);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final synchronized void zzn(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        Context context = null;
        this.zzgfm.zzb(null);
        this.zzgfg = false;
        if (this.zzgfc != null) {
            if (iObjectWrapper != null) {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzgfc.zzadd().zzbr(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void pause() throws RemoteException {
        zzl(null);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final synchronized void zzl(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzgfc != null) {
            this.zzgfc.zzadd().zzbp(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void resume() throws RemoteException {
        zzm(null);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final synchronized void zzm(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzgfc != null) {
            this.zzgfc.zzadd().zzbq(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final synchronized void show() throws RemoteException {
        zzk(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
    @Override // com.google.android.gms.internal.ads.zzasw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzk(com.google.android.gms.dynamic.IObjectWrapper r3) throws android.os.RemoteException {
        /*
            r2 = this;
            monitor-enter(r2)
            java.lang.String r0 = "showAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L23
            com.google.android.gms.internal.ads.zzcdb r0 = r2.zzgfc     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto Lc
            monitor-exit(r2)
            return
        Lc:
            if (r3 == 0) goto L19
            java.lang.Object r3 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r3)     // Catch: java.lang.Throwable -> L23
            boolean r0 = r3 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L23
            if (r0 == 0) goto L19
            android.app.Activity r3 = (android.app.Activity) r3     // Catch: java.lang.Throwable -> L23
            goto L1a
        L19:
            r3 = 0
        L1a:
            com.google.android.gms.internal.ads.zzcdb r0 = r2.zzgfc     // Catch: java.lang.Throwable -> L23
            boolean r1 = r2.zzgez     // Catch: java.lang.Throwable -> L23
            r0.zzb(r1, r3)     // Catch: java.lang.Throwable -> L23
            monitor-exit(r2)
            return
        L23:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcqj.zzk(com.google.android.gms.dynamic.IObjectWrapper):void");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final synchronized String getMediationAdapterClassName() throws RemoteException {
        if (this.zzgfc == null) {
            return null;
        }
        return this.zzgfc.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final boolean isLoaded() throws RemoteException {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzalf();
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void zza(zzatb zzatbVar) throws RemoteException {
        Preconditions.checkMainThread("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzgfl.zzb(zzatbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void zza(zzasu zzasuVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzgfl.zzb(zzasuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void zza(zzzp zzzpVar) {
        Preconditions.checkMainThread("setAdMetadataListener can only be called from the UI thread.");
        this.zzgfm.zzb(new zzcqm(this, zzzpVar));
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final Bundle getAdMetadata() {
        zzbss zzbssVar;
        Preconditions.checkMainThread("getAdMetadata can only be called from the UI thread.");
        if (this.zzgfg && (zzbssVar = this.zzfsq) != null) {
            return zzbssVar.getAdMetadata();
        }
        return new Bundle();
    }

    final void zzalg() {
        this.zzgfg = true;
    }

    final void zzalh() {
        this.zzgfm.onAdMetadataChanged();
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final synchronized void setUserId(String str) throws RemoteException {
        Preconditions.checkMainThread("setUserId must be called on the main UI thread.");
        this.zzgds.zzfu(str);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final synchronized void setCustomData(String str) throws RemoteException {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcow)).booleanValue()) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setCustomData");
            this.zzgds.zzfv(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final synchronized void setImmersiveMode(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzgez = z;
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
            com.google.android.gms.internal.ads.zzcdb r0 = r1.zzgfc     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzcdb r0 = r1.zzgfc     // Catch: java.lang.Throwable -> L12
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcqj.zzalf():boolean");
    }

    final /* synthetic */ void zzali() {
        this.zzgfl.onAdFailedToLoad(1);
    }

    static /* synthetic */ zzbbh zza(zzcqj zzcqjVar, zzbbh zzbbhVar) {
        zzcqjVar.zzgek = null;
        return null;
    }
}
