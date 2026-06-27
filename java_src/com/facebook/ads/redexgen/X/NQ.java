package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl;
import com.facebook.ads.internal.ipc.RemoteANActivity;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class NQ {
    private static byte[] A00;
    public static final Package A01;
    public static final String A02;
    private static final String A03;

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 84);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A00 = new byte[]{126, 17, 20, 30, 7, 15, 31, 2, 25, 23, 25, 30, 17, 28, 15, 21, 8, 4, 2, 17, 3, 125, 79, 88, 75, 74, 14, 93, 90, 79, 90, 75, 14, 76, 91, 64, 74, 66, 75, 14, 71, 93, 14, 75, 67, 94, 90, 87, 15, 84, 59, 62, 52, 45, 37, 41, 59, 44, 63, 62, 37, 41, 46, 59, 46, 63, 37, 62, 59, 46, 59};
    }

    static {
        A05();
        A01 = NQ.class.getPackage();
        A03 = A01 + A04(0, 21, 4);
        A02 = A01 + A04(49, 22, 46);
    }

    private NQ() {
    }

    public static Intent A00(Intent intent) {
        Intent intentCloneFilter = intent.cloneFilter();
        intentCloneFilter.setFlags(intent.getFlags());
        Bundle bundle = new Bundle();
        Parcel parcelObtain = Parcel.obtain();
        byte[] byteArrayExtra = intent.getByteArrayExtra(A03);
        if (byteArrayExtra != null) {
            parcelObtain.unmarshall(byteArrayExtra, 0, byteArrayExtra.length);
            parcelObtain.setDataPosition(0);
            bundle = parcelObtain.readBundle(DynamicLoaderImpl.class.getClassLoader());
            parcelObtain.recycle();
        }
        intentCloneFilter.putExtras(bundle);
        return intentCloneFilter;
    }

    private static Intent A01(Intent cloneIntent) {
        Intent intentCloneFilter = cloneIntent.cloneFilter();
        intentCloneFilter.setFlags(cloneIntent.getFlags());
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(cloneIntent.getExtras());
        intentCloneFilter.putExtra(A03, parcelObtain.marshall());
        parcelObtain.recycle();
        return intentCloneFilter;
    }

    public static Bundle A02(Bundle bundle) {
        Parcel parcelObtain = Parcel.obtain();
        byte[] byteArray = bundle.getByteArray(A02);
        if (byteArray != null) {
            parcelObtain.unmarshall(byteArray, 0, byteArray.length);
            parcelObtain.setDataPosition(0);
            Bundle bundle2 = parcelObtain.readBundle(DynamicLoaderImpl.class.getClassLoader());
            parcelObtain.recycle();
            return bundle2;
        }
        throw new IllegalStateException(A04(21, 28, 122));
    }

    public static Class A03() {
        Class<AudienceNetworkActivity> cls = null;
        char c = ProcessUtils.sRemoteProcess ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    cls = RemoteANActivity.class;
                    c = 3;
                    break;
                case 3:
                    return cls;
                case 4:
                    cls = AudienceNetworkActivity.class;
                    c = 3;
                    break;
            }
        }
    }

    public static void A06(Context context, Intent intent) {
        context.startActivity(A01(intent));
    }

    public static void A07(Bundle bundle, Bundle bundle2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle2);
        bundle.putByteArray(A02, parcelObtain.marshall());
        parcelObtain.recycle();
    }
}
