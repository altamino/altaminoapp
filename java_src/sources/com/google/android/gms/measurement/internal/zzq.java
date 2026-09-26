package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
public final class zzq implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        String strCreateString3 = null;
        String strCreateString4 = null;
        String strCreateString5 = null;
        String strCreateString6 = null;
        String strCreateString7 = null;
        Boolean booleanObject = null;
        ArrayList<String> arrayListCreateStringList = null;
        String strCreateString8 = null;
        String strCreateString9 = null;
        long j6 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        boolean z6 = true;
        boolean z10 = true;
        boolean z11 = false;
        int i10 = 0;
        boolean z12 = false;
        boolean z13 = false;
        int i11 = 0;
        long j16 = -2147483648L;
        String strCreateString10 = "";
        String strCreateString11 = strCreateString10;
        String strCreateString12 = strCreateString11;
        int i12 = 100;
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
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 5:
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 6:
                    j6 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 7:
                    j10 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 8:
                    strCreateString5 = SafeParcelReader.createString(parcel, header);
                    break;
                case 9:
                    z6 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 10:
                    z11 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 11:
                    j16 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 12:
                    strCreateString6 = SafeParcelReader.createString(parcel, header);
                    break;
                case 13:
                    j11 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 14:
                    j12 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 15:
                    i10 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 16:
                    z10 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 17:
                case 20:
                case 33:
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
                case 18:
                    z12 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 19:
                    strCreateString7 = SafeParcelReader.createString(parcel, header);
                    break;
                case 21:
                    booleanObject = SafeParcelReader.readBooleanObject(parcel, header);
                    break;
                case 22:
                    j13 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 23:
                    arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 24:
                    strCreateString8 = SafeParcelReader.createString(parcel, header);
                    break;
                case 25:
                    strCreateString10 = SafeParcelReader.createString(parcel, header);
                    break;
                case 26:
                    strCreateString11 = SafeParcelReader.createString(parcel, header);
                    break;
                case 27:
                    strCreateString9 = SafeParcelReader.createString(parcel, header);
                    break;
                case 28:
                    z13 = SafeParcelReader.readBoolean(parcel, header);
                    break;
                case 29:
                    j14 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 30:
                    i12 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 31:
                    strCreateString12 = SafeParcelReader.createString(parcel, header);
                    break;
                case 32:
                    i11 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 34:
                    j15 = SafeParcelReader.readLong(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzo(strCreateString, strCreateString2, strCreateString3, strCreateString4, j6, j10, strCreateString5, z6, z11, j16, strCreateString6, j11, j12, i10, z10, z12, strCreateString7, booleanObject, j13, arrayListCreateStringList, strCreateString8, strCreateString10, strCreateString11, strCreateString9, z13, j14, i12, strCreateString12, i11, j15);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i10) {
        return new zzo[i10];
    }
}
