package org.chickenhook.restrictionbypass.helpers;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes3.dex */
public class Reflection {
    @Nullable
    public static <T> T getReflective(@NonNull Object obj, @NonNull String str) throws IllegalAccessException, NoSuchFieldException {
        return (T) getReflective(obj, obj.getClass(), str);
    }

    @Nullable
    public static void setReflective(@NonNull Object obj, @NonNull String str, @Nullable Object obj2) throws IllegalAccessException, NoSuchFieldException {
        setReflective(obj, obj.getClass(), str, obj2);
    }

    @Nullable
    public static <T> T getReflective(@Nullable Object obj, @NonNull Class<?> cls, @NonNull String str) throws IllegalAccessException, NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return (T) declaredField.get(obj);
    }

    @Nullable
    public static void setReflective(@Nullable Object obj, @NonNull Class<?> cls, @NonNull String str, @Nullable Object obj2) throws IllegalAccessException, NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }
}
