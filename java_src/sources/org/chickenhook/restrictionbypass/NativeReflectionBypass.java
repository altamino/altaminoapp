package org.chickenhook.restrictionbypass;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
class NativeReflectionBypass {
    public static native Field getDeclaredField(Object obj, String str);

    public static native Method getDeclaredMethod(Object obj, String str, Class<?>[] clsArr);

    public static native Method getMethod(Object obj, String str, Class<?>[] clsArr);

    static {
        System.loadLibrary("nrb");
    }

    NativeReflectionBypass() {
    }
}
