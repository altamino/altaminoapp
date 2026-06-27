package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzpq extends zzpv {
    public static final Parcelable.Creator<zzpq> CREATOR = new zzpr();
    private final String description;
    private final String mimeType;
    private final int zzbhw;
    private final byte[] zzbhx;

    public zzpq(String str, String str2, int i, byte[] bArr) {
        super(ApicFrame.ID);
        this.mimeType = str;
        this.description = null;
        this.zzbhw = 3;
        this.zzbhx = bArr;
    }

    zzpq(Parcel parcel) {
        super(ApicFrame.ID);
        this.mimeType = parcel.readString();
        this.description = parcel.readString();
        this.zzbhw = parcel.readInt();
        this.zzbhx = parcel.createByteArray();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzpq.class == obj.getClass()) {
            zzpq zzpqVar = (zzpq) obj;
            if (this.zzbhw == zzpqVar.zzbhw && zzsy.zza(this.mimeType, zzpqVar.mimeType) && zzsy.zza(this.description, zzpqVar.description) && Arrays.equals(this.zzbhx, zzpqVar.zzbhx)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (this.zzbhw + 527) * 31;
        String str = this.mimeType;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.description;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.zzbhx);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.zzbhw);
        parcel.writeByteArray(this.zzbhx);
    }
}
