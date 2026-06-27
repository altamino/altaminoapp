package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.support.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class NN {
    private static byte[] A00;

    static {
        A04();
    }

    private static String A03(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A00 = new byte[]{61, 43, 44, 44, 59, 48, 42, 31, 61, 42, 55, 40, 55, 42, 39, 10, 54, 44, 59, 63, 58, 13, 2, 8, 30, 3, 5, 8, 66, 5, 2, 24, 9, 2, 24, 66, 15, 13, 24, 9, 11, 3, 30, 21, 66, 32, 45, 57, 34, 47, 36, 41, 62, 41, 5, 39, 48, 45, 50, 45, 48, 45, 33, 55, 92, 83, 89, 79, 82, 84, 89, 19, 92, 77, 77, 19, 124, 94, 73, 84, 75, 84, 73, 68, 105, 85, 79, 88, 92, 89, 75, 73, 94, 67, 92, 67, 94, 83};
    }

    private NN() {
    }

    private static NM A00() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        NM nm = null;
        Iterator it = null;
        Activity activity = null;
        Class<?> cls = Class.forName(A03(64, 26, 98));
        Object objInvoke = cls.getMethod(A03(0, 21, 1), new Class[0]).invoke(null, new Object[0]);
        Field declaredField = cls.getDeclaredField(A03(53, 11, 27));
        declaredField.setAccessible(true);
        Map map = (Map) declaredField.get(objInvoke);
        char c = map == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    nm = NM.A0B;
                    c = 3;
                    break;
                case 3:
                    return nm;
                case 4:
                    map = map;
                    it = map.values().iterator();
                    c = 5;
                    break;
                case 5:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    it = it;
                    Object next = it.next();
                    Field activityField = next.getClass().getDeclaredField(A03(90, 8, 117));
                    activityField.setAccessible(true);
                    activity = (Activity) activityField.get(next);
                    if (!activity.isTaskRoot()) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    activity = activity;
                    if (!activity.getIntent().getCategories().contains(A03(21, 32, 51))) {
                        c = 5;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    nm = NM.A06;
                    c = 3;
                    break;
                case '\t':
                    nm = NM.A09;
                    c = 3;
                    break;
            }
        }
    }

    public static NM A01(Context context) {
        NM nmA00 = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT < 21) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    try {
                        context = context;
                        nmA00 = A02(context);
                        c = '\t';
                        break;
                    } catch (Exception unused) {
                        nmA00 = NM.A04;
                        c = '\t';
                        break;
                    }
                case 6:
                    nmA00 = A00();
                    c = '\t';
                    break;
                case '\t':
                    return nmA00;
            }
        }
    }

    @RequiresApi(api = 21)
    private static NM A02(Context context) {
        NM nm = null;
        Iterator<ActivityManager.AppTask> it = null;
        ActivityManager activityManager = null;
        List<ActivityManager.AppTask> appTasks = null;
        ActivityManager.RecentTaskInfo taskInfo = null;
        char c = context == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    nm = NM.A0C;
                    c = 3;
                    break;
                case 3:
                    return nm;
                case 4:
                    context = context;
                    activityManager = (ActivityManager) context.getSystemService(A03(90, 8, 117));
                    if (activityManager != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    nm = NM.A07;
                    c = 3;
                    break;
                case 6:
                    activityManager = activityManager;
                    appTasks = activityManager.getAppTasks();
                    if (!appTasks.isEmpty()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    nm = NM.A0A;
                    c = 3;
                    break;
                case '\b':
                    appTasks = appTasks;
                    it = appTasks.iterator();
                    c = '\t';
                    break;
                case '\t':
                    it = it;
                    if (!it.hasNext()) {
                        c = 15;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    it = it;
                    taskInfo = it.next().getTaskInfo();
                    if (taskInfo == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    taskInfo = taskInfo;
                    if (taskInfo.baseIntent == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    taskInfo = taskInfo;
                    if (taskInfo.baseIntent.getCategories() == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    taskInfo = taskInfo;
                    if (!taskInfo.baseIntent.getCategories().contains(A03(21, 32, 51))) {
                        c = '\t';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    nm = NM.A05;
                    c = 3;
                    break;
                case 15:
                    nm = NM.A08;
                    c = 3;
                    break;
            }
        }
    }
}
