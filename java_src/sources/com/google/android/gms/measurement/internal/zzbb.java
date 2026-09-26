package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;
import org.apache.commons.compress.compressors.CompressorStreamFactory;

/* JADX INFO: loaded from: classes10.dex */
@SafeParcelable.Class(creator = "EventParamsCreator")
@SafeParcelable.Reserved({1})
public final class zzbb extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzbb> CREATOR = new zzbd();

    @SafeParcelable.Field(getter = CompressorStreamFactory.Z, id = 2)
    private final Bundle zza;

    public final Bundle zzb() {
        return new Bundle(this.zza);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzbe(this);
    }

    public final String toString() {
        return this.zza.toString();
    }

    public final int zza() {
        return this.zza.size();
    }

    final Long zzb(String str) {
        return Long.valueOf(this.zza.getLong(str));
    }

    final Object zzc(String str) {
        return this.zza.get(str);
    }

    final String zzd(String str) {
        return this.zza.getString(str);
    }

    @SafeParcelable.Constructor
    zzbb(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.zza = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, zzb(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    final Double zza(String str) {
        return Double.valueOf(this.zza.getDouble(str));
    }
}
