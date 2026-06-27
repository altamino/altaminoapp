package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AppMetadataCreator")
@SafeParcelable.Reserved({1, 20})
/* loaded from: classes2.dex */
public final class zzm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();

    @SafeParcelable.Field(id = 2)
    public final String packageName;

    @SafeParcelable.Field(id = 3)
    public final String zzch;

    @SafeParcelable.Field(id = 12)
    public final String zzcj;

    @SafeParcelable.Field(id = 4)
    public final String zzcn;

    @SafeParcelable.Field(defaultValueUnchecked = "Integer.MIN_VALUE", id = 11)
    public final long zzco;

    @SafeParcelable.Field(id = 5)
    public final String zzcp;

    @SafeParcelable.Field(id = 7)
    public final long zzcq;

    @SafeParcelable.Field(defaultValue = "true", id = 9)
    public final boolean zzcr;

    @SafeParcelable.Field(id = 13)
    public final long zzcs;

    @SafeParcelable.Field(defaultValue = "true", id = 16)
    public final boolean zzct;

    @SafeParcelable.Field(defaultValue = "true", id = 17)
    public final boolean zzcu;

    @SafeParcelable.Field(id = 19)
    public final String zzcv;

    @SafeParcelable.Field(id = 21)
    public final Boolean zzcw;

    @SafeParcelable.Field(id = 8)
    public final String zzdn;

    @SafeParcelable.Field(id = 10)
    public final boolean zzdo;

    @SafeParcelable.Field(id = 14)
    public final long zzdp;

    @SafeParcelable.Field(id = 15)
    public final int zzdq;

    @SafeParcelable.Field(id = 18)
    public final boolean zzdr;

    @SafeParcelable.Field(id = 6)
    public final long zzt;

    @SafeParcelable.Field(id = 22)
    public final long zzu;

    zzm(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5, String str7, Boolean bool, long j6) {
        Preconditions.checkNotEmpty(str);
        this.packageName = str;
        this.zzch = TextUtils.isEmpty(str2) ? null : str2;
        this.zzcn = str3;
        this.zzco = j;
        this.zzcp = str4;
        this.zzt = j2;
        this.zzcq = j3;
        this.zzdn = str5;
        this.zzcr = z;
        this.zzdo = z2;
        this.zzcj = str6;
        this.zzcs = j4;
        this.zzdp = j5;
        this.zzdq = i;
        this.zzct = z3;
        this.zzcu = z4;
        this.zzdr = z5;
        this.zzcv = str7;
        this.zzcw = bool;
        this.zzu = j6;
    }

    @SafeParcelable.Constructor
    zzm(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) long j, @SafeParcelable.Param(id = 7) long j2, @SafeParcelable.Param(id = 8) String str5, @SafeParcelable.Param(id = 9) boolean z, @SafeParcelable.Param(id = 10) boolean z2, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) String str6, @SafeParcelable.Param(id = 13) long j4, @SafeParcelable.Param(id = 14) long j5, @SafeParcelable.Param(id = 15) int i, @SafeParcelable.Param(id = 16) boolean z3, @SafeParcelable.Param(id = 17) boolean z4, @SafeParcelable.Param(id = 18) boolean z5, @SafeParcelable.Param(id = 19) String str7, @SafeParcelable.Param(id = 21) Boolean bool, @SafeParcelable.Param(id = 22) long j6) {
        this.packageName = str;
        this.zzch = str2;
        this.zzcn = str3;
        this.zzco = j3;
        this.zzcp = str4;
        this.zzt = j;
        this.zzcq = j2;
        this.zzdn = str5;
        this.zzcr = z;
        this.zzdo = z2;
        this.zzcj = str6;
        this.zzcs = j4;
        this.zzdp = j5;
        this.zzdq = i;
        this.zzct = z3;
        this.zzcu = z4;
        this.zzdr = z5;
        this.zzcv = str7;
        this.zzcw = bool;
        this.zzu = j6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.packageName, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzch, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzcn, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzcp, false);
        SafeParcelWriter.writeLong(parcel, 6, this.zzt);
        SafeParcelWriter.writeLong(parcel, 7, this.zzcq);
        SafeParcelWriter.writeString(parcel, 8, this.zzdn, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzcr);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzdo);
        SafeParcelWriter.writeLong(parcel, 11, this.zzco);
        SafeParcelWriter.writeString(parcel, 12, this.zzcj, false);
        SafeParcelWriter.writeLong(parcel, 13, this.zzcs);
        SafeParcelWriter.writeLong(parcel, 14, this.zzdp);
        SafeParcelWriter.writeInt(parcel, 15, this.zzdq);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzct);
        SafeParcelWriter.writeBoolean(parcel, 17, this.zzcu);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzdr);
        SafeParcelWriter.writeString(parcel, 19, this.zzcv, false);
        SafeParcelWriter.writeBooleanObject(parcel, 21, this.zzcw, false);
        SafeParcelWriter.writeLong(parcel, 22, this.zzu);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
