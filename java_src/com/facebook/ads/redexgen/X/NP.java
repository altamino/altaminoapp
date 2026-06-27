package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.support.annotation.Nullable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class NP {
    private static byte[] A00;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 106);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A00 = new byte[]{29, 11, 12, 12, 27, 16, 10, 63, 29, 10, 23, 8, 23, 10, 7, 42, 22, 12, 27, 31, 26, 114, 99, 119, 113, 103, 102, 40, 4, 38, 49, 44, 51, 44, 49, 44, 32, 54, 45, 34, 40, 62, 35, 37, 40, 98, 45, 60, 60, 98, 13, 47, 56, 37, 58, 37, 56, 53, 24, 36, 62, 41, 45, 40, 92, 94, 73, 84, 75, 84, 73, 68};
    }

    private NP() {
    }

    @Nullable
    public static Activity A00() {
        try {
            return A01();
        } catch (Exception unused) {
            return null;
        }
    }

    private static Activity A01() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Object activityRecord = null;
        Iterator it = null;
        Class<?> cls = null;
        Activity activity = null;
        Class<?> cls2 = Class.forName(A02(38, 26, 38));
        Object objInvoke = cls2.getMethod(A02(0, 21, 20), new Class[0]).invoke(null, new Object[0]);
        Field activitiesField = cls2.getDeclaredField(A02(27, 11, 47));
        activitiesField.setAccessible(true);
        Map map = (Map) activitiesField.get(objInvoke);
        char c = map == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return activity;
                case 3:
                    map = map;
                    it = map.values().iterator();
                    c = 4;
                    break;
                case 4:
                    it = it;
                    if (!it.hasNext()) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    it = it;
                    activityRecord = it.next();
                    cls = activityRecord.getClass();
                    Field declaredField = cls.getDeclaredField(A02(21, 6, 104));
                    declaredField.setAccessible(true);
                    if (!declaredField.getBoolean(activityRecord)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 6:
                    activityRecord = activityRecord;
                    cls = cls;
                    Field declaredField2 = cls.getDeclaredField(A02(64, 8, 87));
                    declaredField2.setAccessible(true);
                    activity = (Activity) declaredField2.get(activityRecord);
                    c = 2;
                    break;
            }
        }
    }
}
