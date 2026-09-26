package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes11.dex */
public final class zzmk implements Parcelable.Creator<zzmh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzmh[] newArray(int i10) {
        return new zzmh[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzmh createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        long j6 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header);
                    } else {
                        i10 = SafeParcelReader.readInt(parcel, header);
                    }
                } else {
                    j6 = SafeParcelReader.readLong(parcel, header);
                }
            } else {
                strCreateString = SafeParcelReader.createString(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzmh(strCreateString, j6, i10);
    }
}
