package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzccb extends zzafb {
    private final String zzfis;
    private final zzbyt zzfmq;
    private final zzbyn zzfpj;

    public zzccb(String str, zzbyn zzbynVar, zzbyt zzbytVar) {
        this.zzfis = str;
        this.zzfpj = zzbynVar;
        this.zzfmq = zzbytVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final IObjectWrapper zzrh() throws RemoteException {
        return ObjectWrapper.wrap(this.zzfpj);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final String getHeadline() throws RemoteException {
        return this.zzfmq.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final List getImages() throws RemoteException {
        return this.zzfmq.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final String getBody() throws RemoteException {
        return this.zzfmq.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final zzaei zzrl() throws RemoteException {
        return this.zzfmq.zzrl();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final String getCallToAction() throws RemoteException {
        return this.zzfmq.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final String getAdvertiser() throws RemoteException {
        return this.zzfmq.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final Bundle getExtras() throws RemoteException {
        return this.zzfmq.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final void destroy() throws RemoteException {
        this.zzfpj.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final zzaar getVideoController() throws RemoteException {
        return this.zzfmq.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final void performClick(Bundle bundle) throws RemoteException {
        this.zzfpj.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final boolean recordImpression(Bundle bundle) throws RemoteException {
        return this.zzfpj.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final void reportTouchEvent(Bundle bundle) throws RemoteException {
        this.zzfpj.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final zzaea zzrj() throws RemoteException {
        return this.zzfmq.zzrj();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final IObjectWrapper zzrk() throws RemoteException {
        return this.zzfmq.zzrk();
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final String getMediationAdapterClassName() throws RemoteException {
        return this.zzfis;
    }
}
