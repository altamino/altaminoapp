package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@zzard
@SafeParcelable.Class(creator = "VersionInfoParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes2.dex */
public final class zzbai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbai> CREATOR = new zzbaj();

    @SafeParcelable.Field(id = 2)
    public String zzbsx;

    @SafeParcelable.Field(id = 3)
    public int zzdzc;

    @SafeParcelable.Field(id = 4)
    public int zzdzd;

    @SafeParcelable.Field(id = 5)
    public boolean zzdze;

    @SafeParcelable.Field(id = 6)
    private boolean zzdzf;

    public zzbai(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public zzbai(int i, int i2, boolean z, boolean z2) {
        this(i, i2, true, false, false);
    }

    private zzbai(int i, int i2, boolean z, boolean z2, boolean z3) {
        String str = z ? "0" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
        StringBuilder sb = new StringBuilder(str.length() + 36);
        sb.append("afma-sdk-a-v");
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(str);
        this(sb.toString(), i, i2, z, false);
    }

    @SafeParcelable.Constructor
    zzbai(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) boolean z2) {
        this.zzbsx = str;
        this.zzdzc = i;
        this.zzdzd = i2;
        this.zzdze = z;
        this.zzdzf = z2;
    }

    public static zzbai zzxc() {
        return new zzbai(12451009, 12451009, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzbsx, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzdzc);
        SafeParcelWriter.writeInt(parcel, 4, this.zzdzd);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzdze);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzdzf);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
