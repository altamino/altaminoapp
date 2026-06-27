package com.google.firebase.dynamiclinks.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes2.dex */
public abstract class zzn extends com.google.android.gms.internal.firebase_dynamic_links.zza implements zzk {
    public zzn() {
        super("com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks");
    }

    @Override // com.google.android.gms.internal.firebase_dynamic_links.zza
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza((Status) com.google.android.gms.internal.firebase_dynamic_links.zzd.zza(parcel, Status.CREATOR), (DynamicLinkData) com.google.android.gms.internal.firebase_dynamic_links.zzd.zza(parcel, DynamicLinkData.CREATOR));
        } else {
            if (i != 2) {
                return false;
            }
            zza((Status) com.google.android.gms.internal.firebase_dynamic_links.zzd.zza(parcel, Status.CREATOR), (zzo) com.google.android.gms.internal.firebase_dynamic_links.zzd.zza(parcel, zzo.CREATOR));
        }
        return true;
    }
}
