package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzpo implements Parcelable {
    public static final Parcelable.Creator<zzpo> CREATOR = new zzpp();
    private final zza[] zzbhv;

    public interface zza extends Parcelable {
    }

    public zzpo(List<? extends zza> list) {
        this.zzbhv = new zza[list.size()];
        list.toArray(this.zzbhv);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    zzpo(Parcel parcel) {
        this.zzbhv = new zza[parcel.readInt()];
        int i = 0;
        while (true) {
            zza[] zzaVarArr = this.zzbhv;
            if (i >= zzaVarArr.length) {
                return;
            }
            zzaVarArr[i] = (zza) parcel.readParcelable(zza.class.getClassLoader());
            i++;
        }
    }

    public final int length() {
        return this.zzbhv.length;
    }

    public final zza zzbc(int i) {
        return this.zzbhv[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzpo.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.zzbhv, ((zzpo) obj).zzbhv);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzbhv);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzbhv.length);
        for (zza zzaVar : this.zzbhv) {
            parcel.writeParcelable(zzaVar, 0);
        }
    }
}
