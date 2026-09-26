package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class i implements Parcelable.Creator<ShortDynamicLinkImpl> {
    public static final int CONTENT_DESCRIPTION = 0;

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ShortDynamicLinkImpl[] newArray(int i10) {
        return new ShortDynamicLinkImpl[i10];
    }

    static void c(ShortDynamicLinkImpl shortDynamicLinkImpl, Parcel parcel, int i10) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, shortDynamicLinkImpl.p(), i10, false);
        SafeParcelWriter.writeParcelable(parcel, 2, shortDynamicLinkImpl.m(), i10, false);
        SafeParcelWriter.writeTypedList(parcel, 3, shortDynamicLinkImpl.t0(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ShortDynamicLinkImpl createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        Uri uri = null;
        Uri uri2 = null;
        ArrayList arrayListCreateTypedList = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        SafeParcelReader.skipUnknownField(parcel, header);
                    } else {
                        arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, ShortDynamicLinkImpl.WarningImpl.CREATOR);
                    }
                } else {
                    uri2 = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
                }
            } else {
                uri = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new ShortDynamicLinkImpl(uri, uri2, arrayListCreateTypedList);
    }
}
