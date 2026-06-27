package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbqy;
import com.google.android.gms.internal.ads.zzbtv;
import java.util.Collections;

@zzard
/* loaded from: classes2.dex */
public final class zzcpt extends zzzl implements zzbtf {
    private final ViewGroup zzfgu;
    private final zzbjm zzgbc;
    private zzbnf zzgdo;
    private final Context zzgdr;
    private final zzbtb zzgei;
    private zzado zzgej;
    private zzbbh<zzbnf> zzgek;
    private final zzcpw zzgef = new zzcpw();
    private final zzcpv zzgeg = new zzcpv();
    private final zzcpy zzgeh = new zzcpy();
    private final zzcxx zzgds = new zzcxx();

    public zzcpt(zzbjm zzbjmVar, Context context, zzyd zzydVar, String str) {
        this.zzfgu = new FrameLayout(context);
        this.zzgbc = zzbjmVar;
        this.zzgdr = context;
        this.zzgds.zzd(zzydVar).zzft(str);
        this.zzgei = zzbjmVar.zzacg();
        this.zzgei.zza(this, this.zzgbc.zzace());
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void showInterstitial() {
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
    public final void zza(zzatb zzatbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzbt(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final IObjectWrapper zzpl() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzfgu);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized boolean zzb(zzxz zzxzVar) {
        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        if (this.zzgek != null) {
            return false;
        }
        zzcya.zze(this.zzgdr, zzxzVar.zzcgq);
        zzboc zzbocVarZzb = zzb(this.zzgds.zzg(zzxzVar).zzamq());
        this.zzgek = zzbocVarZzb.zzadu();
        zzbar.zza(this.zzgek, new zzcpu(this, zzbocVarZzb), this.zzgbc.zzace());
        return true;
    }

    private final synchronized zzboc zzb(zzcxv zzcxvVar) {
        return this.zzgbc.zzacj().zzb(new zzbqy.zza().zzbt(this.zzgdr).zza(zzcxvVar).zzagh()).zzb(new zzbtv.zza().zza((zzxr) this.zzgef, this.zzgbc.zzace()).zza(this.zzgeg, this.zzgbc.zzace()).zza((zzbrl) this.zzgef, this.zzgbc.zzace()).zza((zzbsr) this.zzgef, this.zzgbc.zzace()).zza((zzbro) this.zzgef, this.zzgbc.zzace()).zza(this.zzgeh, this.zzgbc.zzace()).zzagt()).zza(new zzcow(this.zzgej)).zzb(new zzbxk(zzbzc.zzfpd, null)).zza(new zzbox(this.zzgei)).zza(new zzbnc(this.zzfgu)).zzads();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        if (this.zzgdo != null) {
            this.zzgdo.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void pause() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzgdo != null) {
            this.zzgdo.zzafy().zzbp(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void resume() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzgdo != null) {
            this.zzgdo.zzafy().zzbq(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzb(zzyz zzyzVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgef.zzc(zzyzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzyz zzpp() {
        return this.zzgef.zzald();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzzs zzzsVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzgeh.zzb(zzzsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzzs zzpo() {
        return this.zzgeh.zzale();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void zzpm() {
        Preconditions.checkMainThread("recordManualImpression must be called on the main UI thread.");
        if (this.zzgdo != null) {
            this.zzgdo.zzpm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized zzyd zzpn() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        if (this.zzgdo != null) {
            return zzcxy.zza(this.zzgdr, Collections.singletonList(this.zzgdo.zzafj()));
        }
        return this.zzgds.zzpn();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void zza(zzyd zzydVar) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        this.zzgds.zzd(zzydVar);
        if (this.zzgdo != null) {
            this.zzgdo.zza(this.zzfgu, zzydVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized String getMediationAdapterClassName() {
        if (this.zzgdo == null) {
            return null;
        }
        return this.zzgdo.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized String zzpj() {
        if (this.zzgdo == null) {
            return null;
        }
        return this.zzgdo.zzpj();
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
            com.google.android.gms.internal.ads.zzbbh<com.google.android.gms.internal.ads.zzbnf> r0 = r1.zzgek     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.zzbbh<com.google.android.gms.internal.ads.zzbnf> r0 = r1.zzgek     // Catch: java.lang.Throwable -> L12
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcpt.isLoading():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized zzaar getVideoController() {
        Preconditions.checkMainThread("getVideoController must be called from the main thread.");
        if (this.zzgdo == null) {
            return null;
        }
        return this.zzgdo.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized String getAdUnitId() {
        return this.zzgds.zzamp();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void zza(zzacd zzacdVar) {
        Preconditions.checkMainThread("setVideoOptions must be called on the main UI thread.");
        this.zzgds.zzc(zzacdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzyw zzywVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgeg.zzb(zzywVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final synchronized void zza(zzado zzadoVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzgej = zzadoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final synchronized void zzagk() {
        boolean zZza;
        Object parent = this.zzfgu.getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            zZza = com.google.android.gms.ads.internal.zzk.zzlg().zza(view, view.getContext());
        } else {
            zZza = false;
        }
        if (zZza) {
            zzb(this.zzgds.zzamo());
        } else {
            this.zzgei.zzdk(60);
        }
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

    static /* synthetic */ zzbbh zza(zzcpt zzcptVar, zzbbh zzbbhVar) {
        zzcptVar.zzgek = null;
        return null;
    }
}
