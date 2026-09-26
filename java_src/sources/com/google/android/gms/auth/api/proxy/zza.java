package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes7.dex */
public final class zza implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ProxyRequest[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i10 = 0;
        int i11 = 0;
        String strCreateString = null;
        byte[] bArrCreateByteArray = null;
        Bundle bundleCreateBundle = null;
        long j6 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        if (fieldId != 4) {
                            if (fieldId != 5) {
                                if (fieldId != 1000) {
                                    SafeParcelReader.skipUnknownField(parcel, header);
                                } else {
                                    i10 = SafeParcelReader.readInt(parcel, header);
                                }
                            } else {
                                bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                            }
                        } else {
                            bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
                        }
                    } else {
                        j6 = SafeParcelReader.readLong(parcel, header);
                    }
                } else {
                    i11 = SafeParcelReader.readInt(parcel, header);
                }
            } else {
                strCreateString = SafeParcelReader.createString(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new ProxyRequest(i10, strCreateString, i11, j6, bArrCreateByteArray, bundleCreateBundle);
    }
}
