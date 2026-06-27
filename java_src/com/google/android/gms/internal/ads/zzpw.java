package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class zzpw extends zzpv {
    public static final Parcelable.Creator<zzpw> CREATOR = new zzpx();
    private final String description;
    private final String value;

    public zzpw(String str, String str2, String str3) {
        super(str);
        this.description = null;
        this.value = str3;
    }

    zzpw(Parcel parcel) {
        super(parcel.readString());
        this.description = parcel.readString();
        this.value = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzpw.class == obj.getClass()) {
            zzpw zzpwVar = (zzpw) obj;
            if (this.zzatl.equals(zzpwVar.zzatl) && zzsy.zza(this.description, zzpwVar.description) && zzsy.zza(this.value, zzpwVar.value)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.zzatl.hashCode() + 527) * 31;
        String str = this.description;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.value;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzatl);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }
}
