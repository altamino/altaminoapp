package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes10.dex */
class ViewGroupUtils {
    private static Method sGetChildDrawingOrderMethod = null;
    private static boolean sGetChildDrawingOrderMethodFetched = false;
    private static boolean sTryHiddenSuppressLayout = true;

    static int a(@NonNull ViewGroup viewGroup, int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i10);
        }
        if (!sGetChildDrawingOrderMethodFetched) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", cls, cls);
                sGetChildDrawingOrderMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            sGetChildDrawingOrderMethodFetched = true;
        }
        Method method = sGetChildDrawingOrderMethod;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i10))).intValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return i10;
    }

    static ViewGroupOverlayImpl b(@NonNull ViewGroup viewGroup) {
        return new ViewGroupOverlayApi18(viewGroup);
    }

    @RequiresApi
    @SuppressLint({"NewApi"})
    private static void c(@NonNull ViewGroup viewGroup, boolean z6) {
        if (sTryHiddenSuppressLayout) {
            try {
                viewGroup.suppressLayout(z6);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    static void d(@NonNull ViewGroup viewGroup, boolean z6) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z6);
        } else {
            c(viewGroup, z6);
        }
    }

    private ViewGroupUtils() {
    }
}
