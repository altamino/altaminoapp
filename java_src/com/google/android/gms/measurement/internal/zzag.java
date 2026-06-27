package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;

@SafeParcelable.Class(creator = "EventParamsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes2.dex */
public final class zzag extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzag> CREATOR = new zzai();

    @SafeParcelable.Field(getter = "z", id = 2)
    private final Bundle zzfm;

    @SafeParcelable.Constructor
    zzag(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.zzfm = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, zzct(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    final Object get(String str) {
        return this.zzfm.get(str);
    }

    final Long getLong(String str) {
        return Long.valueOf(this.zzfm.getLong(str));
    }

    final Double zzaj(String str) {
        return Double.valueOf(this.zzfm.getDouble(str));
    }

    final String getString(String str) {
        return this.zzfm.getString(str);
    }

    public final int size() {
        return this.zzfm.size();
    }

    public final String toString() {
        return this.zzfm.toString();
    }

    public final Bundle zzct() {
        return new Bundle(this.zzfm);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzah(this);
    }
}
