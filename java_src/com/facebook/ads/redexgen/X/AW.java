package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import com.facebook.ads.internal.bridge.gms.AdvertisingId;
import com.narvii.model.User;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class AW {
    private static byte[] A00;
    public static final String A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 51);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A00 = new byte[]{-51, -21, -8, -8, -7, -2, -86, -15, -17, -2, -86, -21, -18, 0, -17, -4, -2, -13, -3, -13, -8, -15, -86, -13, -8, -16, -7, -86, -7, -8, -86, -9, -21, -13, -8, -86, -2, -14, -4, -17, -21, -18, -72, -76, -78, -63, -114, -79, -61, -78, -65, -63, -74, -64, -74, -69, -76, -106, -79, -106, -69, -77, -68, 27, 37, -7, 33, 33, 25, 30, 23, 2, 30, 19, 43, 5, 23, 36, 40, 27, 21, 23, 37, -13, 40, 19, 27, 30, 19, 20, 30, 23, -76, -78, -69, -78, -65, -74, -80, 4, 14, -25, 4, 8, 4, 15, -36, -1, -17, 13, -4, -2, 6, 4, 9, 2, -32, 9, -4, -3, 7, 0, -1, -1, 11, 9, -54, 3, 11, 11, 3, 8, 1, -54, -3, 10, 0, 14, 11, 5, 0, -54, 3, 9, 15, -54, -3, 0, 15, -54, 5, 0, 1, 10, 16, 5, 2, 5, 1, 14, -54, 15, 1, 14, 18, 5, -1, 1, -54, -17, -16, -35, -18, -16, 24, 22, 37, -6, 21, -40, -28, -30, -93, -36, -28, -28, -36, -31, -38, -93, -42, -29, -39, -25, -28, -34, -39, -93, -36, -30, -24, -93, -40, -28, -30, -30, -28, -29, -93, -68, -28, -28, -36, -31, -38, -59, -31, -42, -18, -56, -38, -25, -21, -34, -40, -38, -24, -54, -23, -34, -31, -27, -15, -17, -80, -23, -15, -15, -23, -18, -25, -80, -29, -16, -26, -12, -15, -21, -26, -80, -23, -17, -11, -91, -79, -81, 112, -87, -79, -79, -87, -82, -89, 112, -93, -80, -90, -76, -79, -85, -90, 112, -87, -81, -75, 112, -93, -90, -75, 112, -85, -90, -89, -80, -74, -85, -88, -85, -89, -76, 112, -125, -90, -72, -89, -76, -74, -85, -75, -85, -80, -87, -117, -90, -123, -82, -85, -89, -80, -74};
    }

    static {
        A05();
        A01 = AO.class.getSimpleName();
    }

    private AW() {
    }

    public static AO A00(Context context) {
        AO aoA01 = null;
        char c = Looper.myLooper() == Looper.getMainLooper() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalStateException(A04(0, 43, 87));
                case 3:
                    context = context;
                    aoA01 = A01(context);
                    if (aoA01 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    aoA01 = aoA01;
                    if (!TextUtils.isEmpty(aoA01.A02())) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    context = context;
                    aoA01 = A02(context);
                    c = 6;
                    break;
                case 6:
                    aoA01 = aoA01;
                    if (aoA01 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    aoA01 = aoA01;
                    if (!TextUtils.isEmpty(aoA01.A02())) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    context = context;
                    aoA01 = A03(context);
                    c = '\t';
                    break;
                case '\t':
                    return aoA01;
            }
        }
    }

    @VisibleForTesting
    @Nullable
    private static AO A01(Context context) {
        AO ao = null;
        AdvertisingId advertisingIdInfoDirectly = AdvertisingId.getAdvertisingIdInfoDirectly(context);
        char c = advertisingIdInfoDirectly != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    advertisingIdInfoDirectly = advertisingIdInfoDirectly;
                    ao = new AO(advertisingIdInfoDirectly.getId(), advertisingIdInfoDirectly.isLimitAdTracking(), AN.A02);
                    c = 3;
                    break;
                case 3:
                    return ao;
                case 4:
                    ao = null;
                    c = 3;
                    break;
            }
        }
    }

    @VisibleForTesting
    @Nullable
    private static AO A02(Context context) {
        Object objA00;
        Method isGooglePlayServicesAvailable;
        Object advertisingInfo;
        AO ao = null;
        Method isGooglePlayServicesAvailable2 = AX.A02(A04(179, 52, 66), A04(63, 29, 127), Context.class);
        if (isGooglePlayServicesAvailable2 != null && (objA00 = AX.A00(null, isGooglePlayServicesAvailable2, context)) != null && ((Integer) objA00).intValue() == 0 && (isGooglePlayServicesAvailable = AX.A02(A04(User.USER_ROLE_NEWS_FEED, 57, 15), A04(43, 20, 26), Context.class)) != null && (advertisingInfo = AX.A00(null, isGooglePlayServicesAvailable, context)) != null) {
            Method methodA01 = AX.A01(advertisingInfo.getClass(), A04(174, 5, 126), new Class[0]);
            Method methodA012 = AX.A01(advertisingInfo.getClass(), A04(99, 24, 104), new Class[0]);
            if (methodA01 != null && methodA012 != null) {
                String str = (String) AX.A00(advertisingInfo, methodA01, new Object[0]);
                Boolean bool = (Boolean) AX.A00(advertisingInfo, methodA012, new Object[0]);
                if (str != null) {
                    ao = new AO(str, bool != null && bool.booleanValue(), AN.A06);
                }
            }
        }
        return ao;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.facebook.ads.internal.attribution.GmsAttributionProvider$GoogleAdInfo] */
    @VisibleForTesting
    @SuppressLint({"CatchGeneralException"})
    private static AO A03(Context context) {
        AV av = new AV();
        Intent intent = new Intent(A04(123, 51, 105));
        intent.setPackage(A04(231, 22, 79));
        try {
            if (context.bindService(intent, av, 1)) {
                final IBinder iBinderA02 = av.A02();
                ?? r1 = new IInterface(iBinderA02) { // from class: com.facebook.ads.internal.attribution.GmsAttributionProvider$GoogleAdInfo
                    private static byte[] A01;
                    private IBinder A00;

                    static {
                        A01();
                    }

                    private static String A00(int i, int i2, int i3) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 59);
                                    i4++;
                                    c = 2;
                                    break;
                                case 4:
                                    return new String(bArrCopyOfRange);
                            }
                        }
                    }

                    private static void A01() {
                        A01 = new byte[]{45, 33, 35, 96, 41, 33, 33, 41, 34, 43, 96, 47, 32, 42, 60, 33, 39, 42, 96, 41, 35, 61, 96, 47, 42, 61, 96, 39, 42, 43, 32, 58, 39, 40, 39, 43, 60, 96, 39, 32, 58, 43, 60, 32, 47, 34, 96, 7, 15, 42, 56, 43, 60, 58, 39, 61, 39, 32, 41, 7, 42, 29, 43, 60, 56, 39, 45, 43};
                    }

                    {
                        this.A00 = iBinderA02;
                    }

                    public final String A02() throws RemoteException {
                        Parcel parcelObtain = Parcel.obtain();
                        Parcel reply = Parcel.obtain();
                        try {
                            parcelObtain.writeInterfaceToken(A00(0, 68, 117));
                            this.A00.transact(1, parcelObtain, reply, 0);
                            reply.readException();
                            return reply.readString();
                        } finally {
                            reply.recycle();
                            parcelObtain.recycle();
                        }
                    }

                    public final boolean A03() throws RemoteException {
                        boolean z = true;
                        Parcel parcelObtain = Parcel.obtain();
                        Parcel parcelObtain2 = Parcel.obtain();
                        char c = 2;
                        while (true) {
                            switch (c) {
                                case 2:
                                    try {
                                        parcelObtain.writeInterfaceToken(A00(0, 68, 117));
                                        parcelObtain.writeInt(1);
                                        this.A00.transact(2, parcelObtain, parcelObtain2, 0);
                                        parcelObtain2.readException();
                                        if (parcelObtain2.readInt() == 0) {
                                            c = '\n';
                                            break;
                                        } else {
                                            c = 11;
                                            break;
                                        }
                                    } catch (Throwable th) {
                                        parcelObtain2.recycle();
                                        parcelObtain.recycle();
                                        throw th;
                                    }
                                case '\n':
                                    z = false;
                                    c = 11;
                                    break;
                                case 11:
                                    parcelObtain2.recycle();
                                    parcelObtain.recycle();
                                    return z;
                            }
                        }
                    }

                    @Override // android.os.IInterface
                    public final IBinder asBinder() {
                        return this.A00;
                    }
                };
                return new AO(r1.A02(), r1.A03(), AN.A07);
            }
        } catch (Throwable t) {
            P7.A07(context, A04(92, 7, 26), P8.A10, new PA(t));
        } finally {
            context.unbindService(av);
        }
        return null;
    }
}
