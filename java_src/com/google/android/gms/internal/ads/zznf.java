package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
final class zznf implements Parcelable.Creator<zzne> {
    zznf() {
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzne[] newArray(int i) {
        return new zzne[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzne createFromParcel(Parcel parcel) {
        return new zzne(parcel);
    }
}
