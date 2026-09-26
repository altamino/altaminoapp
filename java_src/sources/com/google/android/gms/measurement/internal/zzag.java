package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes10.dex */
public final class zzag implements Parcelable.Creator<zzad> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        zznc zzncVar = null;
        String strCreateString3 = null;
        zzbg zzbgVar = null;
        zzbg zzbgVar2 = null;
        zzbg zzbgVar3 = null;
        long j6 = 0;
        long j10 = 0;
        long j11 = 0;
        boolean z6 = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 2:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 3:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 4:
                    zzncVar = (zznc) SafeParcelReader.createParcelable(parcel, header, zznc.CREATOR);
                    break;
                case 5:
                    j6 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 6:
                    z6 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 7:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 8:
                    zzbgVar = (zzbg) SafeParcelReader.createParcelable(parcel, header, zzbg.CREATOR);
                    break;
                case 9:
                    j10 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 10:
                    zzbgVar2 = (zzbg) SafeParcelReader.createParcelable(parcel, header, zzbg.CREATOR);
                    break;
                case 11:
                    j11 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 12:
                    zzbgVar3 = (zzbg) SafeParcelReader.createParcelable(parcel, header, zzbg.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzad(strCreateString, strCreateString2, zzncVar, j6, z6, strCreateString3, zzbgVar, j10, zzbgVar2, j11, zzbgVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad[] newArray(int i10) {
        return new zzad[i10];
    }
}
