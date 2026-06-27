package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;

/* loaded from: classes2.dex */
public final class zzps extends zzpv {
    public static final Parcelable.Creator<zzps> CREATOR = new zzpt();
    public final String description;
    private final String zzauc;
    public final String zzbhy;

    public zzps(String str, String str2, String str3) {
        super(CommentFrame.ID);
        this.zzauc = str;
        this.description = str2;
        this.zzbhy = str3;
    }

    zzps(Parcel parcel) {
        super(CommentFrame.ID);
        this.zzauc = parcel.readString();
        this.description = parcel.readString();
        this.zzbhy = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzps.class == obj.getClass()) {
            zzps zzpsVar = (zzps) obj;
            if (zzsy.zza(this.description, zzpsVar.description) && zzsy.zza(this.zzauc, zzpsVar.zzauc) && zzsy.zza(this.zzbhy, zzpsVar.zzbhy)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zzauc;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.description;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.zzbhy;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzatl);
        parcel.writeString(this.zzauc);
        parcel.writeString(this.zzbhy);
    }
}
