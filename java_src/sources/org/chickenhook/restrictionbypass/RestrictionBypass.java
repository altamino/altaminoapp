package org.chickenhook.restrictionbypass;

import android.os.Build;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes11.dex */
public class RestrictionBypass {
    public static Field getDeclaredField(Class cls, String str) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return Build.VERSION.SDK_INT >= 29 ? NativeReflectionBypass.getDeclaredField(cls, str) : (Field) Class.class.getMethod("getDeclaredField", String.class).invoke(cls, str);
    }

    public static Method getDeclaredMethod(Object obj, String str, Class<?>... clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return Build.VERSION.SDK_INT >= 29 ? NativeReflectionBypass.getDeclaredMethod(obj, str, clsArr) : (Method) Class.class.getMethod("getDeclaredMethod", String.class, Class[].class).invoke(obj, str, clsArr);
    }

    public static Method getMethod(Object obj, String str, Class<?>... clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return Build.VERSION.SDK_INT >= 29 ? NativeReflectionBypass.getMethod(obj, str, clsArr) : (Method) Class.class.getMethod("getMethod", String.class, Class[].class).invoke(obj, str, clsArr);
    }
}
