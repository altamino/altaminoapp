package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes10.dex */
public final class zzbf implements Parcelable.Creator<zzbg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbg[] newArray(int i10) {
        return new zzbg[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbg createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        zzbb zzbbVar = null;
        String strCreateString2 = null;
        long j6 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId != 2) {
                if (fieldId != 3) {
                    if (fieldId != 4) {
                        if (fieldId != 5) {
                            SafeParcelReader.skipUnknownField(parcel, header);
                        } else {
                            j6 = SafeParcelReader.readLong(parcel, header);
                        }
                    } else {
                        strCreateString2 = SafeParcelReader.createString(parcel, header);
                    }
                } else {
                    zzbbVar = (zzbb) SafeParcelReader.createParcelable(parcel, header, zzbb.CREATOR);
                }
            } else {
                strCreateString = SafeParcelReader.createString(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzbg(strCreateString, zzbbVar, strCreateString2, j6);
    }
}
