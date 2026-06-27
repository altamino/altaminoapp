package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzabn extends zzzd {
    final /* synthetic */ zzabl zzcjw;

    private zzabn(zzabl zzablVar) {
        this.zzcjw = zzablVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final String zzpj() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zza(zzxz zzxzVar) throws RemoteException {
        zza(zzxzVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zza(zzxz zzxzVar, int i) throws RemoteException {
        zzbad.zzen("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzazt.zzyr.post(new zzabo(this));
    }
}
