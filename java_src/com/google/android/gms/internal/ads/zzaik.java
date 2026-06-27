package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* loaded from: classes2.dex */
final class zzaik extends zzaif {
    private final /* synthetic */ zzbbr zzbxc;

    zzaik(zzaij zzaijVar, zzbbr zzbbrVar) {
        this.zzbxc = zzbbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaie
    public final void zza(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        this.zzbxc.set(parcelFileDescriptor);
    }
}
