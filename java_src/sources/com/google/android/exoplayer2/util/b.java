package com.google.android.exoplayer2.util;

import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public final class b {
    private static final String TAG = "BundleUtil";

    @Nullable
    private static Method getIBinderMethod;

    @Nullable
    private static Method putIBinderMethod;

    @Nullable
    public static IBinder a(Bundle bundle, @Nullable String str) {
        return o0.SDK_INT >= 18 ? bundle.getBinder(str) : b(bundle, str);
    }

    @Nullable
    private static IBinder b(Bundle bundle, @Nullable String str) {
        Method method = getIBinderMethod;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                getIBinderMethod = method2;
                method2.setAccessible(true);
                method = getIBinderMethod;
            } catch (NoSuchMethodException e) {
                t.g(TAG, "Failed to retrieve getIBinder method", e);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            t.g(TAG, "Failed to invoke getIBinder via reflection", e2);
            return null;
        }
    }

    public static void c(Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        if (o0.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            d(bundle, str, iBinder);
        }
    }

    private static void d(Bundle bundle, @Nullable String str, @Nullable IBinder iBinder) {
        Method method = putIBinderMethod;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                putIBinderMethod = method2;
                method2.setAccessible(true);
                method = putIBinderMethod;
            } catch (NoSuchMethodException e) {
                t.g(TAG, "Failed to retrieve putIBinder method", e);
                return;
            }
        }
        try {
            method.invoke(bundle, str, iBinder);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            t.g(TAG, "Failed to invoke putIBinder via reflection", e2);
        }
    }
}
