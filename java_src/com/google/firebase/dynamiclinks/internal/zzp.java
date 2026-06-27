package com.google.firebase.dynamiclinks.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzp extends com.google.android.gms.internal.firebase_dynamic_links.zzb implements zzm {
    zzp(IBinder iBinder) {
        super(iBinder, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
    }

    @Override // com.google.firebase.dynamiclinks.internal.zzm
    public final void zza(zzk zzkVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.firebase_dynamic_links.zzd.zza(parcelZza, zzkVar);
        parcelZza.writeString(str);
        zza(1, parcelZza);
    }
}
