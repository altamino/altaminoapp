package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbv implements Parcelable.Creator<SleepSegmentEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SleepSegmentEvent[] newArray(int i10) {
        return new SleepSegmentEvent[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SleepSegmentEvent createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        long j6 = 0;
        long j10 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
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
                                i12 = SafeParcelReader.readInt(parcel, header);
                            }
                        } else {
                            i11 = SafeParcelReader.readInt(parcel, header);
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
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new SleepSegmentEvent(j6, j10, i10, i11, i12);
    }
}
