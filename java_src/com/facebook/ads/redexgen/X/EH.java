package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class EH extends C0454Bw {

    @Nullable
    private static Class A01;

    @Nullable
    private static Method A02;
    private static byte[] A03;
    private static final String A04;
    private final Context A00;

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 57);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A03 = new byte[]{-124, -79, -79, -82, -79, 95, -91, -92, -77, -94, -89, -88, -83, -90, 95, -110, -72, -78, -77, -92, -84, 95, -126, -85, -96, -78, -78, -26, 19, 19, 16, 19, -63, 7, 6, 21, 4, 9, 10, 15, 8, -63, -12, 26, 20, 21, 6, 14, -63, -18, 6, 21, 9, 16, 5, -93, -80, -90, -76, -79, -85, -90, 112, -79, -75, 112, -107, -69, -75, -74, -89, -81, -110, -76, -79, -78, -89, -76, -74, -85, -89, -75, -79, -81, -66};
    }

    static {
        A07();
        A04 = EH.class.getSimpleName();
    }

    public EH(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A00 = context;
        A01 = A03(this.A00);
        A02 = A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC0528Es A01(HashMap<String, EG> map) {
        return new F3(SystemClock.elapsedRealtime(), A01, map, F9.A0C);
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private static Class A03(Context context) {
        try {
            return context.getClassLoader().loadClass(A04(55, 27, 9));
        } catch (ClassNotFoundException e) {
            Log.e(A04, A04(0, 27, 6), e);
            return null;
        }
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    private static Method A05() throws NoSuchMethodException, SecurityException {
        Class<?>[] clsArr = null;
        Method method = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    clsArr = new Class[]{String.class};
                    if (A01 != null) {
                        c = 7;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case 7:
                    try {
                        method = A01.getMethod(A04(82, 3, 17), clsArr);
                        c = '\f';
                        break;
                    } catch (NoSuchMethodException e) {
                        Log.e(A04, A04(27, 28, 104), e);
                        c = '\f';
                        break;
                    }
                case '\f':
                    return method;
            }
        }
    }

    public final InterfaceC0442Bk A0G(List<C0521El> list) {
        return new EF(this, list);
    }
}
