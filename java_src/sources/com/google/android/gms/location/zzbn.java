package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbn implements Parcelable.Creator<LocationSettingsStates> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationSettingsStates[] newArray(int i10) {
        return new LocationSettingsStates[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationSettingsStates createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z6 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    z6 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 2:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 3:
                    z11 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 4:
                    z12 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 5:
                    z13 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 6:
                    z14 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new LocationSettingsStates(z6, z10, z11, z12, z13, z14);
    }
}
