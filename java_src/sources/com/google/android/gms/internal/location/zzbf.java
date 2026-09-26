package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzbf implements Parcelable.Creator<zzbe> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbe createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        int i10 = 0;
        short s = 0;
        int i11 = 0;
        double d = 0.0d;
        double d2 = 0.0d;
        float f = 0.0f;
        long j6 = 0;
        int i12 = -1;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 2:
                    j6 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 3:
                    s = SafeParcelReader.readShort(parcel, header);
                    break;
                case 4:
                    d = SafeParcelReader.readDouble(parcel, header);
                    break;
                case 5:
                    d2 = SafeParcelReader.readDouble(parcel, header);
                    break;
                case 6:
                    f = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 7:
                    i10 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 8:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 9:
                    i12 = SafeParcelReader.readInt(parcel, header);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzbe(strCreateString, i10, s, d, d2, f, j6, i11, i12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbe[] newArray(int i10) {
        return new zzbe[i10];
    }
}
