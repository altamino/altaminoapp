package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "UserAttributeParcelCreator")
/* loaded from: classes2.dex */
public final class zzga extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzga> CREATOR = new zzgb();

    @SafeParcelable.Field(id = 2)
    public final String name;

    @SafeParcelable.Field(id = 7)
    public final String origin;

    @SafeParcelable.Field(id = 1)
    private final int versionCode;

    @SafeParcelable.Field(id = 6)
    public final String zzki;

    @SafeParcelable.Field(id = 3)
    public final long zzsx;

    @SafeParcelable.Field(id = 4)
    public final Long zzsy;

    @SafeParcelable.Field(id = 5)
    private final Float zzsz;

    @SafeParcelable.Field(id = 8)
    public final Double zzta;

    zzga(zzgc zzgcVar) {
        this(zzgcVar.name, zzgcVar.zzsx, zzgcVar.value, zzgcVar.origin);
    }

    zzga(String str, long j, Object obj, String str2) {
        Preconditions.checkNotEmpty(str);
        this.versionCode = 2;
        this.name = str;
        this.zzsx = j;
        this.origin = str2;
        if (obj == null) {
            this.zzsy = null;
            this.zzsz = null;
            this.zzta = null;
            this.zzki = null;
            return;
        }
        if (obj instanceof Long) {
            this.zzsy = (Long) obj;
            this.zzsz = null;
            this.zzta = null;
            this.zzki = null;
            return;
        }
        if (obj instanceof String) {
            this.zzsy = null;
            this.zzsz = null;
            this.zzta = null;
            this.zzki = (String) obj;
            return;
        }
        if (obj instanceof Double) {
            this.zzsy = null;
            this.zzsz = null;
            this.zzta = (Double) obj;
            this.zzki = null;
            return;
        }
        throw new IllegalArgumentException("User attribute given of un-supported type");
    }

    zzga(String str, long j, String str2) {
        Preconditions.checkNotEmpty(str);
        this.versionCode = 2;
        this.name = str;
        this.zzsx = 0L;
        this.zzsy = null;
        this.zzsz = null;
        this.zzta = null;
        this.zzki = null;
        this.origin = null;
    }

    @SafeParcelable.Constructor
    zzga(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) Long l, @SafeParcelable.Param(id = 5) Float f, @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) Double d) {
        this.versionCode = i;
        this.name = str;
        this.zzsx = j;
        this.zzsy = l;
        this.zzsz = null;
        if (i == 1) {
            this.zzta = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.zzta = d;
        }
        this.zzki = str2;
        this.origin = str3;
    }

    public final Object getValue() {
        Long l = this.zzsy;
        if (l != null) {
            return l;
        }
        Double d = this.zzta;
        if (d != null) {
            return d;
        }
        String str = this.zzki;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeString(parcel, 2, this.name, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzsx);
        SafeParcelWriter.writeLongObject(parcel, 4, this.zzsy, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzki, false);
        SafeParcelWriter.writeString(parcel, 7, this.origin, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, this.zzta, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
