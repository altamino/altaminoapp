package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes6.dex */
public final class zba implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new BeginSignInRequest[i10];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = null;
        BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;
        String strCreateString = null;
        boolean z6 = false;
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
                                i10 = SafeParcelReader.readInt(parcel, header);
                            }
                        } else {
                            z6 = SafeParcelReader.readBoolean(parcel, header);
                        }
                    } else {
                        strCreateString = SafeParcelReader.createString(parcel, header);
                    }
                } else {
                    googleIdTokenRequestOptions = (BeginSignInRequest.GoogleIdTokenRequestOptions) SafeParcelReader.createParcelable(parcel, header, BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR);
                }
            } else {
                passwordRequestOptions = (BeginSignInRequest.PasswordRequestOptions) SafeParcelReader.createParcelable(parcel, header, BeginSignInRequest.PasswordRequestOptions.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new BeginSignInRequest(passwordRequestOptions, googleIdTokenRequestOptions, strCreateString, z6, i10);
    }
}
