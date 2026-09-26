package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzbb implements Parcelable.Creator<zzba> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzba createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        List<ClientIdentity> listCreateTypedList = zzba.zza;
        LocationRequest locationRequest = null;
        String strCreateString = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        boolean z6 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        long j6 = Long.MAX_VALUE;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId != 1) {
                switch (fieldId) {
                    case 5:
                        listCreateTypedList = SafeParcelReader.createTypedList(parcel, header, ClientIdentity.CREATOR);
                        break;
                    case 6:
                        strCreateString = SafeParcelReader.createString(parcel, header);
                        break;
                    case 7:
                        z6 = SafeParcelReader.readBoolean(parcel, header);
                        break;
                    case 8:
                        z10 = SafeParcelReader.readBoolean(parcel, header);
                        break;
                    case 9:
                        z11 = SafeParcelReader.readBoolean(parcel, header);
                        break;
                    case 10:
                        strCreateString2 = SafeParcelReader.createString(parcel, header);
                        break;
                    case 11:
                        z12 = SafeParcelReader.readBoolean(parcel, header);
                        break;
                    case 12:
                        z13 = SafeParcelReader.readBoolean(parcel, header);
                        break;
                    case 13:
                        strCreateString3 = SafeParcelReader.createString(parcel, header);
                        break;
                    case 14:
                        j6 = SafeParcelReader.readLong(parcel, header);
                        break;
                    default:
                        SafeParcelReader.skipUnknownField(parcel, header);
                        break;
                }
            } else {
                locationRequest = (LocationRequest) SafeParcelReader.createParcelable(parcel, header, LocationRequest.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzba(locationRequest, listCreateTypedList, strCreateString, z6, z10, z11, strCreateString2, z12, z13, strCreateString3, j6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzba[] newArray(int i10) {
        return new zzba[i10];
    }
}
