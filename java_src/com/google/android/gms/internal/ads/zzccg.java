package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzccg extends zzagh {
    private final String zzfis;
    private final zzbyt zzfmq;
    private final zzbyn zzfpj;

    public zzccg(String str, zzbyn zzbynVar, zzbyt zzbytVar) {
        this.zzfis = str;
        this.zzfpj = zzbynVar;
        this.zzfmq = zzbytVar;
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final IObjectWrapper zzrh() throws RemoteException {
        return ObjectWrapper.wrap(this.zzfpj);
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final String getHeadline() throws RemoteException {
        return this.zzfmq.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final List getImages() throws RemoteException {
        return this.zzfmq.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final List getMuteThisAdReasons() throws RemoteException {
        if (isCustomMuteThisAdEnabled()) {
            return this.zzfmq.getMuteThisAdReasons();
        }
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final boolean isCustomMuteThisAdEnabled() throws RemoteException {
        return (this.zzfmq.getMuteThisAdReasons().isEmpty() || this.zzfmq.zzahx() == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final String getBody() throws RemoteException {
        return this.zzfmq.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final zzaei zzri() throws RemoteException {
        return this.zzfmq.zzri();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final String getCallToAction() throws RemoteException {
        return this.zzfmq.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final String getAdvertiser() throws RemoteException {
        return this.zzfmq.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final double getStarRating() throws RemoteException {
        return this.zzfmq.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final String getStore() throws RemoteException {
        return this.zzfmq.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final String getPrice() throws RemoteException {
        return this.zzfmq.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void destroy() throws RemoteException {
        this.zzfpj.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final zzaar getVideoController() throws RemoteException {
        return this.zzfmq.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void performClick(Bundle bundle) throws RemoteException {
        this.zzfpj.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final boolean recordImpression(Bundle bundle) throws RemoteException {
        return this.zzfpj.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void reportTouchEvent(Bundle bundle) throws RemoteException {
        this.zzfpj.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final zzaea zzrj() throws RemoteException {
        return this.zzfmq.zzrj();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final IObjectWrapper zzrk() throws RemoteException {
        return this.zzfmq.zzrk();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final String getMediationAdapterClassName() throws RemoteException {
        return this.zzfis;
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final Bundle getExtras() throws RemoteException {
        return this.zzfmq.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void zza(zzagd zzagdVar) throws RemoteException {
        this.zzfpj.zza(zzagdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void zza(zzaak zzaakVar) throws RemoteException {
        this.zzfpj.zza(zzaakVar);
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void zza(zzaag zzaagVar) throws RemoteException {
        this.zzfpj.zza(zzaagVar);
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void zzro() {
        this.zzfpj.zzro();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void recordCustomClickGesture() {
        this.zzfpj.recordCustomClickGesture();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void cancelUnconfirmedClick() throws RemoteException {
        this.zzfpj.cancelUnconfirmedClick();
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final zzaee zzrp() throws RemoteException {
        return this.zzfpj.zzrp();
    }
}
