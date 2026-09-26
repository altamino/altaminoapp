package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbl implements Parcelable.Creator<LocationSettingsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationSettingsRequest[] newArray(int i10) {
        return new LocationSettingsRequest[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationSettingsRequest createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayListCreateTypedList = null;
        boolean z6 = false;
        boolean z10 = false;
        zzbj zzbjVar = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        if (fieldId != 5) {
                            SafeParcelReader.skipUnknownField(parcel, header);
                        } else {
                            zzbjVar = (zzbj) SafeParcelReader.createParcelable(parcel, header, zzbj.CREATOR);
                        }
                    } else {
                        z10 = SafeParcelReader.readBoolean(parcel, header);
                    }
                } else {
                    z6 = SafeParcelReader.readBoolean(parcel, header);
                }
            } else {
                arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, LocationRequest.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new LocationSettingsRequest(arrayListCreateTypedList, z6, z10, zzbjVar);
    }
}
