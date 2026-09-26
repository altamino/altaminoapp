package androidx.window.layout;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class WindowMetricsCalculatorCompat implements WindowMetricsCalculator {

    @NotNull
    public static final WindowMetricsCalculatorCompat INSTANCE = new WindowMetricsCalculatorCompat();

    @NotNull
    private static final String TAG;

    static {
        String simpleName = WindowMetricsCalculatorCompat.class.getSimpleName();
        t.i(simpleName, "WindowMetricsCalculatorC…at::class.java.simpleName");
        TAG = simpleName;
    }

    @RequiresApi
    @SuppressLint({"BanUncheckedReflection"})
    private final DisplayCutout f(Display display) {
        try {
            Constructor<?> constructor = Class.forName("android.view.DisplayInfo").getConstructor(new Class[0]);
            constructor.setAccessible(true);
            Object objNewInstance = constructor.newInstance(new Object[0]);
            Method declaredMethod = display.getClass().getDeclaredMethod("getDisplayInfo", objNewInstance.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(display, objNewInstance);
            Field declaredField = objNewInstance.getClass().getDeclaredField("displayCutout");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(objNewInstance);
            if (i.a(obj)) {
                return j.a(obj);
            }
        } catch (ClassNotFoundException e) {
            Log.w(TAG, e);
        } catch (IllegalAccessException e2) {
            Log.w(TAG, e2);
        } catch (InstantiationException e6) {
            Log.w(TAG, e6);
        } catch (NoSuchFieldException e7) {
            Log.w(TAG, e7);
        } catch (NoSuchMethodException e10) {
            Log.w(TAG, e10);
        } catch (InvocationTargetException e11) {
            Log.w(TAG, e11);
        }
        return null;
    }

    @NotNull
    public WindowMetrics a(@NotNull Activity activity) {
        Rect rectC;
        t.j(activity, "activity");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            rectC = ActivityCompatHelperApi30.INSTANCE.a(activity);
        } else if (i10 >= 29) {
            rectC = e(activity);
        } else if (i10 >= 28) {
            rectC = d(activity);
        } else {
            rectC = i10 >= 24 ? c(activity) : b(activity);
        }
        return new WindowMetrics(rectC);
    }

    @RequiresApi
    @NotNull
    public final Rect b(@NotNull Activity activity) {
        int i10;
        t.j(activity, "activity");
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        t.i(defaultDisplay, "defaultDisplay");
        Point pointH = h(defaultDisplay);
        Rect rect = new Rect();
        int i11 = pointH.x;
        if (i11 == 0 || (i10 = pointH.y) == 0) {
            defaultDisplay.getRectSize(rect);
        } else {
            rect.right = i11;
            rect.bottom = i10;
        }
        return rect;
    }

    @RequiresApi
    @NotNull
    public final Rect c(@NotNull Activity activity) {
        t.j(activity, "activity");
        Rect rect = new Rect();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        defaultDisplay.getRectSize(rect);
        if (!ActivityCompatHelperApi24.INSTANCE.a(activity)) {
            t.i(defaultDisplay, "defaultDisplay");
            Point pointH = h(defaultDisplay);
            int iG = g(activity);
            int i10 = rect.bottom;
            if (i10 + iG == pointH.y) {
                rect.bottom = i10 + iG;
            } else {
                int i11 = rect.right;
                if (i11 + iG == pointH.x) {
                    rect.right = i11 + iG;
                }
            }
        }
        return rect;
    }

    @RequiresApi
    @SuppressLint({"BanUncheckedReflection", "BlockedPrivateApi"})
    @NotNull
    public final Rect d(@NotNull Activity activity) {
        DisplayCutout displayCutoutF;
        t.j(activity, "activity");
        Rect rect = new Rect();
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            if (ActivityCompatHelperApi24.INSTANCE.a(activity)) {
                Object objInvoke = obj.getClass().getDeclaredMethod("getBounds", new Class[0]).invoke(obj, new Object[0]);
                if (objInvoke == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.graphics.Rect");
                }
                rect.set((Rect) objInvoke);
            } else {
                Object objInvoke2 = obj.getClass().getDeclaredMethod("getAppBounds", new Class[0]).invoke(obj, new Object[0]);
                if (objInvoke2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.graphics.Rect");
                }
                rect.set((Rect) objInvoke2);
            }
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
            i(activity, rect);
        } catch (NoSuchFieldException e2) {
            Log.w(TAG, e2);
            i(activity, rect);
        } catch (NoSuchMethodException e6) {
            Log.w(TAG, e6);
            i(activity, rect);
        } catch (InvocationTargetException e7) {
            Log.w(TAG, e7);
            i(activity, rect);
        }
        Display currentDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        DisplayCompatHelperApi17 displayCompatHelperApi17 = DisplayCompatHelperApi17.INSTANCE;
        t.i(currentDisplay, "currentDisplay");
        displayCompatHelperApi17.a(currentDisplay, point);
        ActivityCompatHelperApi24 activityCompatHelperApi24 = ActivityCompatHelperApi24.INSTANCE;
        if (!activityCompatHelperApi24.a(activity)) {
            int iG = g(activity);
            int i10 = rect.bottom;
            if (i10 + iG == point.y) {
                rect.bottom = i10 + iG;
            } else {
                int i11 = rect.right;
                if (i11 + iG == point.x) {
                    rect.right = i11 + iG;
                } else if (rect.left == iG) {
                    rect.left = 0;
                }
            }
        }
        if ((rect.width() < point.x || rect.height() < point.y) && !activityCompatHelperApi24.a(activity) && (displayCutoutF = f(currentDisplay)) != null) {
            int i12 = rect.left;
            DisplayCompatHelperApi28 displayCompatHelperApi28 = DisplayCompatHelperApi28.INSTANCE;
            if (i12 == displayCompatHelperApi28.b(displayCutoutF)) {
                rect.left = 0;
            }
            if (point.x - rect.right == displayCompatHelperApi28.c(displayCutoutF)) {
                rect.right += displayCompatHelperApi28.c(displayCutoutF);
            }
            if (rect.top == displayCompatHelperApi28.d(displayCutoutF)) {
                rect.top = 0;
            }
            if (point.y - rect.bottom == displayCompatHelperApi28.a(displayCutoutF)) {
                rect.bottom += displayCompatHelperApi28.a(displayCutoutF);
            }
        }
        return rect;
    }

    @RequiresApi
    @SuppressLint({"BanUncheckedReflection", "BlockedPrivateApi"})
    @NotNull
    public final Rect e(@NotNull Activity activity) {
        t.j(activity, "activity");
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            Object objInvoke = obj.getClass().getDeclaredMethod("getBounds", new Class[0]).invoke(obj, new Object[0]);
            if (objInvoke != null) {
                return new Rect((Rect) objInvoke);
            }
            throw new NullPointerException("null cannot be cast to non-null type android.graphics.Rect");
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
            return d(activity);
        } catch (NoSuchFieldException e2) {
            Log.w(TAG, e2);
            return d(activity);
        } catch (NoSuchMethodException e6) {
            Log.w(TAG, e6);
            return d(activity);
        } catch (InvocationTargetException e7) {
            Log.w(TAG, e7);
            return d(activity);
        }
    }

    @RequiresApi
    @VisibleForTesting
    @NotNull
    public final Point h(@NotNull Display display) {
        t.j(display, "display");
        Point point = new Point();
        DisplayCompatHelperApi17.INSTANCE.a(display, point);
        return point;
    }

    private WindowMetricsCalculatorCompat() {
    }

    private final int g(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private final void i(Activity activity, Rect rect) {
        activity.getWindowManager().getDefaultDisplay().getRectSize(rect);
    }
}
