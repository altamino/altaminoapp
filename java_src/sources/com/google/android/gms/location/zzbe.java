package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbe implements Parcelable.Creator<LocationAvailability> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationAvailability[] newArray(int i10) {
        return new LocationAvailability[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationAvailability createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i10 = 1000;
        int i11 = 1;
        int i12 = 1;
        long j6 = 0;
        zzbo[] zzboVarArr = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        if (fieldId != 4) {
                            if (fieldId != 5) {
                                SafeParcelReader.skipUnknownField(parcel, header);
                            } else {
                                zzboVarArr = (zzbo[]) SafeParcelReader.createTypedArray(parcel, header, zzbo.CREATOR);
                            }
                        } else {
                            i10 = SafeParcelReader.readInt(parcel, header);
                        }
                    } else {
                        j6 = SafeParcelReader.readLong(parcel, header);
                    }
                } else {
                    i12 = SafeParcelReader.readInt(parcel, header);
                }
            } else {
                i11 = SafeParcelReader.readInt(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new LocationAvailability(i10, i11, i12, j6, zzboVarArr);
    }
}
