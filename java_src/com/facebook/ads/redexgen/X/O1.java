package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import android.support.annotation.Nullable;
import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class O1 {
    private O1() {
    }

    @Nullable
    public static Serializable A00(@Nullable byte[] bArr) {
        Serializable result = null;
        char c = bArr == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    result = null;
                    c = 3;
                    break;
                case 3:
                    return result;
                case 4:
                    bArr = bArr;
                    Parcel parcelObtain = Parcel.obtain();
                    parcelObtain.unmarshall(bArr, 0, bArr.length);
                    parcelObtain.setDataPosition(0);
                    result = parcelObtain.readSerializable();
                    parcelObtain.recycle();
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public static byte[] A01(@Nullable Serializable serializable) {
        byte[] result = null;
        char c = serializable == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    result = null;
                    c = 3;
                    break;
                case 3:
                    return result;
                case 4:
                    serializable = serializable;
                    Parcel parcelObtain = Parcel.obtain();
                    parcelObtain.writeSerializable(serializable);
                    result = parcelObtain.marshall();
                    parcelObtain.recycle();
                    c = 3;
                    break;
            }
        }
    }
}
