package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes9.dex */
@SafeParcelable.Class(creator = "ActivityTransitionEventCreator")
@SafeParcelable.Reserved({1000})
public class ActivityTransitionEvent extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ActivityTransitionEvent> CREATOR = new zzm();

    @SafeParcelable.Field(getter = "getActivityType", id = 1)
    private final int zza;

    @SafeParcelable.Field(getter = "getTransitionType", id = 2)
    private final int zzb;

    @SafeParcelable.Field(getter = "getElapsedRealTimeNanos", id = 3)
    private final long zzc;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransitionEvent)) {
            return false;
        }
        ActivityTransitionEvent activityTransitionEvent = (ActivityTransitionEvent) obj;
        return this.zza == activityTransitionEvent.zza && this.zzb == activityTransitionEvent.zzb && this.zzc == activityTransitionEvent.zzc;
    }

    public int getActivityType() {
        return this.zza;
    }

    public long getElapsedRealTimeNanos() {
        return this.zzc;
    }

    public int getTransitionType() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Long.valueOf(this.zzc));
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i10 = this.zza;
        StringBuilder sb2 = new StringBuilder(24);
        sb2.append("ActivityType ");
        sb2.append(i10);
        sb.append(sb2.toString());
        sb.append(" ");
        int i11 = this.zzb;
        StringBuilder sb3 = new StringBuilder(26);
        sb3.append("TransitionType ");
        sb3.append(i11);
        sb.append(sb3.toString());
        sb.append(" ");
        long j6 = this.zzc;
        StringBuilder sb4 = new StringBuilder(41);
        sb4.append("ElapsedRealTimeNanos ");
        sb4.append(j6);
        sb.append(sb4.toString());
        return sb.toString();
    }

    @SafeParcelable.Constructor
    public ActivityTransitionEvent(@SafeParcelable.Param(id = 1) int i10, @SafeParcelable.Param(id = 2) int i11, @SafeParcelable.Param(id = 3) long j6) {
        ActivityTransition.zza(i11);
        this.zza = i10;
        this.zzb = i11;
        this.zzc = j6;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        Preconditions.checkNotNull(parcel);
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getActivityType());
        SafeParcelWriter.writeInt(parcel, 2, getTransitionType());
        SafeParcelWriter.writeLong(parcel, 3, getElapsedRealTimeNanos());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
