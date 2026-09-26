package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes6.dex */
public class a implements Parcelable.Creator<DynamicLinkData> {
    public static final int CONTENT_DESCRIPTION = 0;

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public DynamicLinkData[] newArray(int i10) {
        return new DynamicLinkData[i10];
    }

    static void c(DynamicLinkData dynamicLinkData, Parcel parcel, int i10) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, dynamicLinkData.t0(), false);
        SafeParcelWriter.writeString(parcel, 2, dynamicLinkData.p(), false);
        SafeParcelWriter.writeInt(parcel, 3, dynamicLinkData.E0());
        SafeParcelWriter.writeLong(parcel, 4, dynamicLinkData.m());
        SafeParcelWriter.writeBundle(parcel, 5, dynamicLinkData.y0(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, dynamicLinkData.F0(), i10, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DynamicLinkData createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        String strCreateString2 = null;
        Bundle bundleCreateBundle = null;
        Uri uri = null;
        int i10 = 0;
        long j6 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 2:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 3:
                    i10 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 4:
                    j6 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 5:
                    bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new DynamicLinkData(strCreateString, strCreateString2, i10, j6, bundleCreateBundle, uri);
    }
}
