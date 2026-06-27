package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1f, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C01831f {
    private static byte[] A06;

    @Nullable
    private Application A01;

    @Nullable
    private C01821e A03;
    private final KM A05;
    private long A00 = 0;

    @Nullable
    private String A04 = null;

    @Nullable
    private C1R A02 = null;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 4);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A06 = new byte[]{115, 122, 126, 105, 122, 64, 107, 118, 114, 122, 52, 55, 53, 61, 9, 34, 63, 59, 51, 33, 59, 58, 45, 33, 35, 43};
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.facebook.ads.redexgen.X.1e] */
    private C01831f(KM km, final Activity activity, int i) {
        this.A05 = km;
        this.A01 = activity.getApplication();
        this.A03 = new Application.ActivityLifecycleCallbacks(activity, this) { // from class: com.facebook.ads.redexgen.X.1e

            @Nullable
            private C01831f A00;
            private final WeakReference<Activity> A01;

            {
                this.A01 = new WeakReference<>(activity);
                this.A00 = this;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity2, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity2) {
                C01821e c01821e = this;
                Activity activity3 = null;
                char c = c01821e.A00 == null ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            return;
                        case 3:
                            c01821e = c01821e;
                            activity3 = c01821e.A01.get();
                            if (activity3 == null) {
                                c = 6;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            activity3 = activity3;
                            if (activity3 == null) {
                                c = 2;
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 5:
                            activity2 = activity2;
                            activity3 = activity3;
                            if (!activity2.equals(activity3)) {
                                c = 2;
                                break;
                            } else {
                                c = 6;
                                break;
                            }
                        case 6:
                            c01821e = c01821e;
                            c01821e.A00.A05();
                            c01821e.A00 = null;
                            c = 2;
                            break;
                    }
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity2, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity2) {
            }
        };
    }

    public static C01831f A00(KM km, Activity activity) {
        return A01(km, activity, Build.VERSION.SDK_INT);
    }

    @VisibleForTesting
    @Nullable
    private static C01831f A01(KM km, Activity activity, int i) {
        C01831f c01831f = null;
        char c = activity != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (i < 14) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    km = km;
                    activity = activity;
                    c01831f = new C01831f(km, activity, i);
                    c = 4;
                    break;
                case 4:
                    return c01831f;
                case 5:
                    c01831f = null;
                    c = 4;
                    break;
            }
        }
    }

    private void A04(String str, long j, long j2, @Nullable C1R c1r) {
        HashMap map = new HashMap();
        map.put(A02(0, 10, 27), Long.toString(j));
        map.put(A02(10, 9, 82), Long.toString(j2));
        if (c1r != null) {
            map.put(A02(19, 7, 74), c1r.name());
        }
        this.A05.A4a(str, map);
    }

    @TargetApi(14)
    public final void A05() {
        C01831f c01831f = this;
        c01831f.A04(c01831f.A04, c01831f.A00, System.currentTimeMillis(), c01831f.A02);
        char c = c01831f.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c01831f = c01831f;
                    if (c01831f.A03 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c01831f = c01831f;
                    c01831f.A01.unregisterActivityLifecycleCallbacks(c01831f.A03);
                    c01831f.A03 = null;
                    c01831f.A01 = null;
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A06(@Nullable C1R c1r) {
        this.A02 = c1r;
    }

    @TargetApi(14)
    public final void A07(String str) {
        String str2 = str;
        C01831f c01831f = this;
        c01831f.A04 = str2;
        char c = c01831f.A03 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c01831f = c01831f;
                    if (c01831f.A01 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c01831f = c01831f;
                    c01831f.A00 = System.currentTimeMillis();
                    c01831f.A01.registerActivityLifecycleCallbacks(c01831f.A03);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c01831f = c01831f;
                    str2 = str2;
                    c01831f.A04(str2, -1L, -1L, C1R.A03);
                    c = 4;
                    break;
            }
        }
    }
}
