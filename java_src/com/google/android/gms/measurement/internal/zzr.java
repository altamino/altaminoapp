package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ConditionalUserPropertyParcelCreator")
/* loaded from: classes2.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();

    @SafeParcelable.Field(id = 6)
    public boolean active;

    @SafeParcelable.Field(id = 5)
    public long creationTimestamp;

    @SafeParcelable.Field(id = 3)
    public String origin;

    @SafeParcelable.Field(id = 2)
    public String packageName;

    @SafeParcelable.Field(id = 11)
    public long timeToLive;

    @SafeParcelable.Field(id = 7)
    public String triggerEventName;

    @SafeParcelable.Field(id = 9)
    public long triggerTimeout;

    @SafeParcelable.Field(id = 4)
    public zzga zzdv;

    @SafeParcelable.Field(id = 8)
    public zzaj zzdw;

    @SafeParcelable.Field(id = 10)
    public zzaj zzdx;

    @SafeParcelable.Field(id = 12)
    public zzaj zzdy;

    zzr(zzr zzrVar) {
        Preconditions.checkNotNull(zzrVar);
        this.packageName = zzrVar.packageName;
        this.origin = zzrVar.origin;
        this.zzdv = zzrVar.zzdv;
        this.creationTimestamp = zzrVar.creationTimestamp;
        this.active = zzrVar.active;
        this.triggerEventName = zzrVar.triggerEventName;
        this.zzdw = zzrVar.zzdw;
        this.triggerTimeout = zzrVar.triggerTimeout;
        this.zzdx = zzrVar.zzdx;
        this.timeToLive = zzrVar.timeToLive;
        this.zzdy = zzrVar.zzdy;
    }

    @SafeParcelable.Constructor
    zzr(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) zzga zzgaVar, @SafeParcelable.Param(id = 5) long j, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) zzaj zzajVar, @SafeParcelable.Param(id = 9) long j2, @SafeParcelable.Param(id = 10) zzaj zzajVar2, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) zzaj zzajVar3) {
        this.packageName = str;
        this.origin = str2;
        this.zzdv = zzgaVar;
        this.creationTimestamp = j;
        this.active = z;
        this.triggerEventName = str3;
        this.zzdw = zzajVar;
        this.triggerTimeout = j2;
        this.zzdx = zzajVar2;
        this.timeToLive = j3;
        this.zzdy = zzajVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.packageName, false);
        SafeParcelWriter.writeString(parcel, 3, this.origin, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzdv, i, false);
        SafeParcelWriter.writeLong(parcel, 5, this.creationTimestamp);
        SafeParcelWriter.writeBoolean(parcel, 6, this.active);
        SafeParcelWriter.writeString(parcel, 7, this.triggerEventName, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzdw, i, false);
        SafeParcelWriter.writeLong(parcel, 9, this.triggerTimeout);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzdx, i, false);
        SafeParcelWriter.writeLong(parcel, 11, this.timeToLive);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzdy, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
