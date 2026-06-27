package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzcpm extends zzzl {
    private final ViewGroup zzfgu;
    private final zzcxv zzfjp;
    private final zzyz zzfme;
    private final zzbnf zzgdo;
    private final Context zzlj;

    public zzcpm(Context context, zzyz zzyzVar, zzcxv zzcxvVar, zzbnf zzbnfVar) {
        this.zzlj = context;
        this.zzfme = zzyzVar;
        this.zzfjp = zzcxvVar;
        this.zzgdo = zzbnfVar;
        FrameLayout frameLayout = new FrameLayout(this.zzlj);
        frameLayout.removeAllViews();
        frameLayout.addView(this.zzgdo.zzafi(), com.google.android.gms.ads.internal.zzk.zzli().zzwg());
        frameLayout.setMinimumHeight(zzpn().heightPixels);
        frameLayout.setMinimumWidth(zzpn().widthPixels);
        this.zzfgu = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final boolean isReady() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void setImmersiveMode(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void setUserId(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void showInterstitial() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void stopLoading() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzaax zzaaxVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzaqn zzaqnVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzaqt zzaqtVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzatb zzatbVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzbt(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final IObjectWrapper zzpl() throws RemoteException {
        return ObjectWrapper.wrap(this.zzfgu);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void destroy() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzgdo.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final boolean zzb(zzxz zzxzVar) throws RemoteException {
        zzbad.zzeo("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void pause() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzgdo.zzafy().zzbp(null);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void resume() throws RemoteException {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.zzgdo.zzafy().zzbq(null);
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzpm() throws RemoteException {
        this.zzgdo.zzpm();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzyd zzpn() {
        return zzcxy.zza(this.zzlj, Collections.singletonList(this.zzgdo.zzafj()));
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final String getMediationAdapterClassName() throws RemoteException {
        return this.zzgdo.getMediationAdapterClassName();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzaar getVideoController() throws RemoteException {
        return this.zzgdo.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final String getAdUnitId() throws RemoteException {
        return this.zzfjp.zzglb;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzzs zzpo() throws RemoteException {
        return this.zzfjp.zzgli;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final zzyz zzpp() throws RemoteException {
        return this.zzfme;
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final String zzpj() throws RemoteException {
        return this.zzgdo.zzpj();
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzacd zzacdVar) throws RemoteException {
        zzbad.zzeo("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzyd zzydVar) throws RemoteException {
        zzbnf zzbnfVar = this.zzgdo;
        if (zzbnfVar != null) {
            zzbnfVar.zza(this.zzfgu, zzydVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzado zzadoVar) throws RemoteException {
        zzbad.zzeo("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzyw zzywVar) throws RemoteException {
        zzbad.zzeo("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzb(zzzy zzzyVar) throws RemoteException {
        zzbad.zzeo("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        zzbad.zzeo("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zzb(zzyz zzyzVar) throws RemoteException {
        zzbad.zzeo("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzzs zzzsVar) throws RemoteException {
        zzbad.zzeo("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final void zza(zzzp zzzpVar) throws RemoteException {
        zzbad.zzeo("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzzk
    public final Bundle getAdMetadata() throws RemoteException {
        zzbad.zzeo("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }
}
