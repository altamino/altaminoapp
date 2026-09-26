package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public final class zzk implements Parcelable.Creator<ActivityRecognitionResult> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ActivityRecognitionResult[] newArray(int i10) {
        return new ActivityRecognitionResult[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ActivityRecognitionResult createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList arrayListCreateTypedList = null;
        Bundle bundleCreateBundle = null;
        long j6 = 0;
        long j10 = 0;
        int i10 = 0;
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
                                bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                            }
                        } else {
                            i10 = SafeParcelReader.readInt(parcel, header);
                        }
                    } else {
                        j10 = SafeParcelReader.readLong(parcel, header);
                    }
                } else {
                    j6 = SafeParcelReader.readLong(parcel, header);
                }
            } else {
                arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, DetectedActivity.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new ActivityRecognitionResult(arrayListCreateTypedList, j6, j10, i10, bundleCreateBundle);
    }
}
