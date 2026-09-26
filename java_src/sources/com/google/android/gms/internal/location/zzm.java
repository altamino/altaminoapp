package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes10.dex */
public final class zzm implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzl[] newArray(int i10) {
        return new zzl[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        zzj zzjVar = null;
        int i10 = 1;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        if (fieldId != 4) {
                            SafeParcelReader.skipUnknownField(parcel, header);
                        } else {
                            iBinder2 = SafeParcelReader.readIBinder(parcel, header);
                        }
                    } else {
                        iBinder = SafeParcelReader.readIBinder(parcel, header);
                    }
                } else {
                    zzjVar = (zzj) SafeParcelReader.createParcelable(parcel, header, zzj.CREATOR);
                }
            } else {
                i10 = SafeParcelReader.readInt(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzl(i10, zzjVar, iBinder, iBinder2);
    }
}
