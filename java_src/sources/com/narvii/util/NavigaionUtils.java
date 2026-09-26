package com.narvii.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.Display;
import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class NavigaionUtils {

    public interface OnNavigationChangedListener {
        void onNavigationState(boolean z6, int i10);
    }

    public static int getNavigationBarHeight(@NonNull Context context) {
        Resources resources;
        int identifier;
        if (context != null && (identifier = (resources = context.getResources()).getIdentifier("navigation_bar_height", "dimen", "android")) > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static boolean isNavigationBarShowing(@NonNull Activity activity) {
        if (activity == null) {
            return false;
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        if (defaultDisplay.getRotation() == 1 || defaultDisplay.getRotation() == 3) {
            return point2.x != point.x;
        }
        return point2.y != point.y;
    }

    public static void setOnNavigationChangedListener(@NonNull final Activity activity, final OnNavigationChangedListener onNavigationChangedListener) {
        if (activity == null) {
            return;
        }
        final int navigationBarHeight = getNavigationBarHeight(activity);
        View viewFindViewById = activity.findViewById(R.id.content);
        if (viewFindViewById == null) {
            return;
        }
        viewFindViewById.findViewById(R.id.content).setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.narvii.util.NavigaionUtils.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                boolean z6;
                int systemWindowInsetLeft;
                int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
                int i10 = 0;
                if (windowInsets != null) {
                    if (rotation == 1) {
                        systemWindowInsetLeft = windowInsets.getSystemWindowInsetRight();
                    } else {
                        systemWindowInsetLeft = rotation == 3 ? windowInsets.getSystemWindowInsetLeft() : windowInsets.getSystemWindowInsetBottom();
                    }
                    i10 = systemWindowInsetLeft;
                    z6 = systemWindowInsetLeft == navigationBarHeight ? 1 : 0;
                } else {
                    z6 = 0;
                }
                OnNavigationChangedListener onNavigationChangedListener2 = onNavigationChangedListener;
                if (onNavigationChangedListener2 != null && i10 <= navigationBarHeight) {
                    onNavigationChangedListener2.onNavigationState(z6, i10);
                }
                return windowInsets;
            }
        });
    }
}
