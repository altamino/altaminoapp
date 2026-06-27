package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzcbz extends zzaex {
    private final String zzfis;
    private final zzbyt zzfmq;
    private final zzbyn zzfpj;

    public zzcbz(String str, zzbyn zzbynVar, zzbyt zzbytVar) {
        this.zzfis = str;
        this.zzfpj = zzbynVar;
        this.zzfmq = zzbytVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final IObjectWrapper zzrh() throws RemoteException {
        return ObjectWrapper.wrap(this.zzfpj);
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final String getHeadline() throws RemoteException {
        return this.zzfmq.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final List getImages() throws RemoteException {
        return this.zzfmq.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final String getBody() throws RemoteException {
        return this.zzfmq.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final zzaei zzri() throws RemoteException {
        return this.zzfmq.zzri();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final String getCallToAction() throws RemoteException {
        return this.zzfmq.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final double getStarRating() throws RemoteException {
        return this.zzfmq.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final String getStore() throws RemoteException {
        return this.zzfmq.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final String getPrice() throws RemoteException {
        return this.zzfmq.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final Bundle getExtras() throws RemoteException {
        return this.zzfmq.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final void destroy() throws RemoteException {
        this.zzfpj.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final zzaar getVideoController() throws RemoteException {
        return this.zzfmq.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final void performClick(Bundle bundle) throws RemoteException {
        this.zzfpj.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final boolean recordImpression(Bundle bundle) throws RemoteException {
        return this.zzfpj.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final void reportTouchEvent(Bundle bundle) throws RemoteException {
        this.zzfpj.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final zzaea zzrj() throws RemoteException {
        return this.zzfmq.zzrj();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final IObjectWrapper zzrk() throws RemoteException {
        return this.zzfmq.zzrk();
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final String getMediationAdapterClassName() throws RemoteException {
        return this.zzfis;
    }
}
