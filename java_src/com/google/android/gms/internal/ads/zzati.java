package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes2.dex */
public final class zzati implements Parcelable.Creator<zzath> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzath[] newArray(int i) {
        return new zzath[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzath createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzxz zzxzVar = null;
        String strCreateString = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 2) {
                zzxzVar = (zzxz) SafeParcelReader.createParcelable(parcel, header, zzxz.CREATOR);
            } else if (fieldId == 3) {
                strCreateString = SafeParcelReader.createString(parcel, header);
            } else {
                SafeParcelReader.skipUnknownField(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzath(zzxzVar, strCreateString);
    }
}
