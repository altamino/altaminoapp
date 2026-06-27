package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbp;

@SafeParcelable.Class(creator = "GassResponseParcelCreator")
/* loaded from: classes2.dex */
public final class zzdbd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdbd> CREATOR = new zzdbe();

    @SafeParcelable.VersionField(id = 1)
    private final int versionCode;

    @SafeParcelable.Field(getter = "getAfmaSignalsAsBytes", id = 2, type = "byte[]")
    private zzbp.zza zzgow = null;
    private byte[] zzgox;

    @SafeParcelable.Constructor
    zzdbd(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.versionCode = i;
        this.zzgox = bArr;
        zzano();
    }

    public final zzbp.zza zzann() {
        if (!(this.zzgow != null)) {
            try {
                this.zzgow = zzbp.zza.zzb(this.zzgox, zzdno.zzaxe());
                this.zzgox = null;
            } catch (zzdok e) {
                throw new IllegalStateException(e);
            }
        }
        zzano();
        return this.zzgow;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        byte[] byteArray = this.zzgox;
        if (byteArray == null) {
            byteArray = this.zzgow.toByteArray();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, byteArray, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    private final void zzano() {
        if (this.zzgow != null || this.zzgox == null) {
            if (this.zzgow == null || this.zzgox != null) {
                if (this.zzgow != null && this.zzgox != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (this.zzgow == null && this.zzgox == null) {
                    throw new IllegalStateException("Invalid internal representation - empty");
                }
                throw new IllegalStateException("Impossible");
            }
        }
    }
}
