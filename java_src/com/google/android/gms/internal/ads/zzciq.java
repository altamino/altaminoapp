package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzciq implements zzban<ParcelFileDescriptor> {
    private final /* synthetic */ zzarr zzfxr;

    zzciq(zzcig zzcigVar, zzarr zzarrVar) {
        this.zzfxr = zzarrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        try {
            this.zzfxr.zza(zzaym.zza(th, zzcgm.zze(th)));
        } catch (RemoteException e) {
            zzawz.zza("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.zzfxr.zzb(parcelFileDescriptor);
        } catch (RemoteException e) {
            zzawz.zza("Service can't call client", e);
        }
    }
}
