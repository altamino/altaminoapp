package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "InitializationParamsCreator")
/* loaded from: classes2.dex */
public final class zzy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzy> CREATOR = new zzz();

    @SafeParcelable.Field(id = 5)
    public final String origin;

    @SafeParcelable.Field(id = 1)
    public final long zzt;

    @SafeParcelable.Field(id = 2)
    public final long zzu;

    @SafeParcelable.Field(id = 3)
    public final boolean zzv;

    @SafeParcelable.Field(id = 4)
    public final String zzw;

    @SafeParcelable.Field(id = 6)
    public final String zzx;

    @SafeParcelable.Field(id = 7)
    public final Bundle zzy;

    @SafeParcelable.Constructor
    public zzy(@SafeParcelable.Param(id = 1) long j, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) String str2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 7) Bundle bundle) {
        this.zzt = j;
        this.zzu = j2;
        this.zzv = z;
        this.zzw = str;
        this.origin = str2;
        this.zzx = str3;
        this.zzy = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.zzt);
        SafeParcelWriter.writeLong(parcel, 2, this.zzu);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzv);
        SafeParcelWriter.writeString(parcel, 4, this.zzw, false);
        SafeParcelWriter.writeString(parcel, 5, this.origin, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzx, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.zzy, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
