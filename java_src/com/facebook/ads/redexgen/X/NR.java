package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.facebook.ads.internal.util.common.ANActivityLifecycleCallbacksListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class NR implements Application.ActivityLifecycleCallbacks {
    private static Context A00;
    private static byte[] A01;
    private static final List<InterfaceC0416Aj> A02;
    private static final Map<Activity, Integer> A03;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 71);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{36, 38, 49, 26, 48, 49, 44, 41, 35, 47, 78, 108, 123, 102, 121, 102, 123, 118, 53, 47, 19, 2, 27, 20, 37, 37, 22, 58, 59, 33, 48, 45, 33, 117, 60, 38, 117, 59, 58, 33, 117, 20, 37, 37, 57, 60, 54, 52, 33, 60, 58, 59, 123, 98, 83, 71, 65, 87, 86, 18, 83, 81, 70, 91, 68, 91, 70, 75, 18, 91, 65, 18, 92, 93, 70, 18, 64, 87, 65, 71, 95, 87, 86, 28, 60, 30, 9, 20, 11, 20, 9, 4, 93, 25, 20, 14, 30, 15, 24, 13, 28, 19, 30, 20, 24, 14, 83, 15, 3, 81, 70, 69, 25, 3, 41, 30, 8, 65, 91, 121, 90, 82, 22, 87, 85, 66, 95, 64, 95, 66, 79, 22, 69, 66, 87, 66, 83, 12, 22};
    }

    static {
        A02();
        A03 = Collections.synchronizedMap(new WeakHashMap());
        A02 = Collections.synchronizedList(new ArrayList());
    }

    private NR() {
    }

    @Nullable
    public static synchronized Activity A00() {
        Activity lastResumedActivity;
        boolean z = true;
        synchronized (NR.class) {
            lastResumedActivity = null;
            Iterator<Map.Entry<Activity, Integer>> it = A03.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Activity, Integer> next = it.next();
                if (next.getValue().intValue() == 3) {
                    Activity lastResumedActivity2 = next.getKey();
                    lastResumedActivity = lastResumedActivity2;
                    break;
                }
            }
            Activity activityA00 = null;
            if (lastResumedActivity != null && Build.VERSION.SDK_INT >= 28) {
                z = false;
            }
            if (z) {
                activityA00 = NP.A00();
            }
            if (A00 != null && z && lastResumedActivity != activityA00) {
                PA deLogException = new PA(A01(84, 23, 58), A01(114, 5, 60) + lastResumedActivity + A01(107, 7, 100) + activityA00);
                deLogException.A03(1);
                P7.A07(A00, A01(0, 8, 2), P8.A00, deLogException);
            }
            if (lastResumedActivity == null) {
                lastResumedActivity = activityA00;
            }
        }
        return lastResumedActivity;
    }

    public static synchronized void A03(Context context) {
        A00 = context;
        if (A00 instanceof Application) {
            ANActivityLifecycleCallbacksListener aNActivityLifecycleCallbacksListener = ANActivityLifecycleCallbacksListener.getANActivityLifecycleCallbacksListener();
            if (aNActivityLifecycleCallbacksListener != null) {
                A03.putAll(aNActivityLifecycleCallbacksListener.getActivityStateMap());
                ANActivityLifecycleCallbacksListener.unregisterActivityCallbacks(context);
            }
            ((Application) A00).registerActivityLifecycleCallbacks(new NR());
        } else {
            P7.A07(A00, A01(20, 3, 53), P8.A0Q, new PA(A01(23, 30, 18)));
        }
    }

    public static void A04(InterfaceC0416Aj interfaceC0416Aj) {
        A02.add(interfaceC0416Aj);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        A03.put(activity, 1);
        Iterator<InterfaceC0416Aj> it = A02.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    activity = activity;
                    bundle = bundle;
                    it = it;
                    it.next().onActivityCreated(activity, bundle);
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        A03.put(activity, 6);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Integer num = A03.get(activity);
        char c = num != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    num = num;
                    if (num.intValue() == 3) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    activity = activity;
                    num = num;
                    PA pa = new PA(A01(53, 31, 117), A01(119, 20, 113) + num + A01(8, 12, 72) + activity);
                    pa.A03(0);
                    P7.A07(A00, A01(0, 8, 2), P8.A00, pa);
                    c = 4;
                    break;
                case 4:
                    A03.put(activity, 4);
                    return;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        A03.put(activity, 3);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        A03.put(activity, 2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        A03.put(activity, 5);
    }
}
