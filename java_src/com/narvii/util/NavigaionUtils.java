package com.narvii.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowInsets;

/* loaded from: classes3.dex */
public class NavigaionUtils {

    public interface OnNavigationChangedListener {
        void onNavigationState(boolean z, int i);
    }

    public static boolean isNavigationBarShowing(Activity activity) {
        if (activity == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17) {
            return (ViewConfiguration.get(activity).hasPermanentMenuKey() || KeyCharacterMap.deviceHasKey(4)) ? false : true;
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return (defaultDisplay.getRotation() == 1 || defaultDisplay.getRotation() == 3) ? point2.x != point.x : point2.y != point.y;
    }

    public static int getNavigationBarHeight(Context context) {
        Resources resources;
        int identifier;
        if (context != null && (identifier = (resources = context.getResources()).getIdentifier("navigation_bar_height", "dimen", "android")) > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static void setOnNavigationChangedListener(final Activity activity, final OnNavigationChangedListener onNavigationChangedListener) {
        View viewFindViewById;
        if (activity == null) {
            return;
        }
        final int navigationBarHeight = getNavigationBarHeight(activity);
        if (Build.VERSION.SDK_INT < 20 || (viewFindViewById = activity.findViewById(R.id.content)) == null) {
            return;
        }
        viewFindViewById.findViewById(R.id.content).setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.narvii.util.NavigaionUtils.1
            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                int systemWindowInsetBottom;
                int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
                boolean z = false;
                if (windowInsets != null) {
                    if (rotation == 1) {
                        systemWindowInsetBottom = windowInsets.getSystemWindowInsetRight();
                    } else if (rotation == 3) {
                        systemWindowInsetBottom = windowInsets.getSystemWindowInsetLeft();
                    } else {
                        systemWindowInsetBottom = windowInsets.getSystemWindowInsetBottom();
                    }
                    if (systemWindowInsetBottom == navigationBarHeight) {
                        z = true;
                    }
                } else {
                    systemWindowInsetBottom = 0;
                }
                OnNavigationChangedListener onNavigationChangedListener2 = onNavigationChangedListener;
                if (onNavigationChangedListener2 != null && systemWindowInsetBottom <= navigationBarHeight) {
                    onNavigationChangedListener2.onNavigationState(z, systemWindowInsetBottom);
                }
                return windowInsets;
            }
        });
    }
}
