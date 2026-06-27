package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "DynamicLinkDataCreator")
/* loaded from: classes2.dex */
public class DynamicLinkData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DynamicLinkData> CREATOR = new zza();

    @SafeParcelable.Field(getter = "getDynamicLink", id = 1)
    private String zzj;

    @SafeParcelable.Field(getter = "getDeepLink", id = 2)
    private String zzk;

    @SafeParcelable.Field(getter = "getMinVersion", id = 3)
    private int zzl;

    @SafeParcelable.Field(getter = "getClickTimestamp", id = 4)
    private long zzm;

    @SafeParcelable.Field(getter = "getExtensionBundle", id = 5)
    private Bundle zzn;

    @SafeParcelable.Field(getter = "getRedirectUrl", id = 6)
    private Uri zzo;

    public final String zzd() {
        return this.zzk;
    }

    public final long getClickTimestamp() {
        return this.zzm;
    }

    public final void zza(long j) {
        this.zzm = j;
    }

    public final Bundle zzf() {
        Bundle bundle = this.zzn;
        return bundle == null ? new Bundle() : bundle;
    }

    @SafeParcelable.Constructor
    public DynamicLinkData(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) long j, @SafeParcelable.Param(id = 5) Bundle bundle, @SafeParcelable.Param(id = 6) Uri uri) {
        this.zzm = 0L;
        this.zzn = null;
        this.zzj = str;
        this.zzk = str2;
        this.zzl = i;
        this.zzm = j;
        this.zzn = bundle;
        this.zzo = uri;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzj, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzk, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzl);
        SafeParcelWriter.writeLong(parcel, 4, this.zzm);
        SafeParcelWriter.writeBundle(parcel, 5, zzf(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzo, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
