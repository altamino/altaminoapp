package com.narvii.util.statusbar;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.theme.PageBackgroundView;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class StatusBarUtils {
    public static final boolean STATUS_BAR_ENABLE;

    static {
        STATUS_BAR_ENABLE = Build.VERSION.SDK_INT >= 19;
    }

    @TargetApi(19)
    public static void setStatusBarColor(final Activity activity, final int i) {
        ViewGroup viewGroup;
        if (!STATUS_BAR_ENABLE || activity == null || (viewGroup = (ViewGroup) activity.getWindow().findViewById(R.id.content)) == null) {
            return;
        }
        if (viewGroup.getChildCount() == 0) {
            viewGroup.getViewTreeObserver().addOnWindowAttachListener(new ViewTreeObserver.OnWindowAttachListener() { // from class: com.narvii.util.statusbar.StatusBarUtils.1
                @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                public void onWindowDetached() {
                }

                @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                public void onWindowAttached() {
                    StatusBarUtils.beginToSetStatusBarColor(activity, i);
                }
            });
        } else {
            addFakeStatusBar(activity, new ColorDrawable(i), 256, true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void beginToSetStatusBarColor(Activity activity, int i) {
        Window window = activity.getWindow();
        if (((ViewGroup) window.findViewById(R.id.content)) == null) {
            return;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(i);
            window.getDecorView().setSystemUiVisibility(0);
        } else if (i2 >= 19) {
            window.addFlags(67108864);
        }
        addFakeStatusBar(activity, new ColorDrawable(i), 256, true, true);
    }

    public static void setTranslucentStatusBar(NVContext nVContext) {
        setTranslucentStatusBar(nVContext, 0);
    }

    public static void setTranslucentStatusBar(NVContext nVContext, int i) {
        setTranslucentStatusBar(nVContext, null, i, true);
    }

    public static void setTranslucentStatusBar(NVContext nVContext, boolean z) {
        setTranslucentStatusBar(nVContext, null, 0, z);
    }

    public static void setTranslucentStatusBar(NVContext nVContext, Drawable drawable) {
        setTranslucentStatusBar(nVContext, drawable, 0, true);
    }

    public static void setTranslucentStatusBar(NVContext nVContext, Drawable drawable, boolean z) {
        setTranslucentStatusBar(nVContext, drawable, 0, z);
    }

    public static void setTranslucentStatusBar(NVContext nVContext, final Drawable drawable, final int i, final boolean z) {
        final FragmentActivity activity;
        if (STATUS_BAR_ENABLE) {
            if (nVContext instanceof NVActivity) {
                activity = (NVActivity) nVContext;
            } else if (!(nVContext instanceof NVFragment)) {
                return;
            } else {
                activity = ((NVFragment) nVContext).getActivity();
            }
            if (activity == null) {
                return;
            }
            boolean z2 = activity instanceof NVActivity;
            if (z2) {
                ((NVActivity) activity).setActionBarCustomed(true);
            }
            ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(R.id.content);
            if (drawable == null) {
                drawable = getFakeActionBarDrawable(nVContext);
            }
            if (viewGroup.getChildCount() == 0) {
                if (Build.VERSION.SDK_INT >= 18) {
                    ViewTreeObserver.OnWindowAttachListener onWindowAttachListener = (ViewTreeObserver.OnWindowAttachListener) viewGroup.getTag(com.narvii.lib.R.id.window_attach_listener);
                    if (onWindowAttachListener != null) {
                        viewGroup.getViewTreeObserver().removeOnWindowAttachListener(onWindowAttachListener);
                    }
                    ViewTreeObserver.OnWindowAttachListener onWindowAttachListener2 = new ViewTreeObserver.OnWindowAttachListener() { // from class: com.narvii.util.statusbar.StatusBarUtils.2
                        @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                        public void onWindowDetached() {
                        }

                        @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                        public void onWindowAttached() {
                            Activity activity2 = activity;
                            StatusBarUtils.translucentStatusBar(activity2, drawable, i, (activity2 instanceof NVActivity) && ((NVActivity) activity2).isActionBarOverlaying(), z);
                        }
                    };
                    viewGroup.getViewTreeObserver().addOnWindowAttachListener(onWindowAttachListener2);
                    viewGroup.setTag(com.narvii.lib.R.id.window_attach_listener, onWindowAttachListener2);
                    return;
                }
                return;
            }
            ViewTreeObserver.OnWindowAttachListener onWindowAttachListener3 = (ViewTreeObserver.OnWindowAttachListener) viewGroup.getTag(com.narvii.lib.R.id.window_attach_listener);
            if (onWindowAttachListener3 != null) {
                viewGroup.getViewTreeObserver().removeOnWindowAttachListener(onWindowAttachListener3);
            }
            translucentStatusBar(activity, drawable, i, z2 && ((NVActivity) activity).isActionBarOverlaying(), z);
        }
    }

    public static void setSystemUiFlagLightStatusBar(NVContext nVContext, final boolean z) {
        final FragmentActivity activity;
        if (Build.VERSION.SDK_INT >= 23) {
            if (nVContext instanceof NVActivity) {
                activity = (NVActivity) nVContext;
            } else if (!(nVContext instanceof NVFragment)) {
                return;
            } else {
                activity = ((NVFragment) nVContext).getActivity();
            }
            if (activity == null) {
                return;
            }
            ((ViewGroup) activity.getWindow().findViewById(R.id.content)).getViewTreeObserver().addOnWindowAttachListener(new ViewTreeObserver.OnWindowAttachListener() { // from class: com.narvii.util.statusbar.StatusBarUtils.3
                @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                public void onWindowDetached() {
                }

                @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                public void onWindowAttached() {
                    StatusBarUtils.setSystemUiFlagLightStatusBar(activity, z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public static void setSystemUiFlagLightStatusBar(Activity activity, boolean z) {
        activity.getWindow().addFlags(Integer.MIN_VALUE);
        activity.getWindow().clearFlags(67108864);
        int systemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
        if (z) {
            activity.getWindow().getDecorView().setSystemUiVisibility((systemUiVisibility & (-1)) | 8192 | 8192);
        } else {
            activity.getWindow().getDecorView().setSystemUiVisibility((systemUiVisibility & 8192) | (-1) | 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void translucentStatusBar(Activity activity, Drawable drawable, int i, boolean z, boolean z2) {
        if (Build.VERSION.SDK_INT < 19 || activity == null) {
            return;
        }
        Window window = activity.getWindow();
        if (((ViewGroup) window.findViewById(R.id.content)).getChildCount() == 0) {
            return;
        }
        addTranslucentFlags(window);
        addFakeStatusBar(activity, drawable, i, z, z2);
    }

    public static void addTranslucentFlags(Window window) {
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (i >= 19) {
                window.addFlags(67108864);
            }
        } else {
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
            window.setStatusBarColor(0);
            window.getDecorView().setSystemUiVisibility(1280);
        }
    }

    private static void addFakeStatusBar(Activity activity, Drawable drawable, int i, boolean z, boolean z2) {
        addFakeStatusBar(activity, drawable, i, z, false, z2);
    }

    private static void addFakeStatusBar(Activity activity, Drawable drawable, int i, boolean z, boolean z2, boolean z3) {
        if (activity == null || drawable == null) {
            return;
        }
        Window window = activity.getWindow();
        ViewGroup viewGroup = (ViewGroup) window.findViewById(R.id.content);
        if (viewGroup.getChildCount() == 0) {
            return;
        }
        boolean z4 = actionBarShown(activity) && !z;
        Object tag = window.getDecorView().getTag(com.narvii.lib.R.id.flag_fake_status);
        if (tag != null && (tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
            boolean z5 = viewGroup.getChildCount() > 0 && (viewGroup.getChildAt(0) instanceof PageBackgroundView);
            View childAt = viewGroup.getChildCount() > 1 ? viewGroup.getChildAt(1) : viewGroup.getChildAt(0);
            if (z5 && viewGroup.getChildCount() > 2) {
                childAt = viewGroup.getChildAt(2);
            }
            if (childAt instanceof StatusBarLayout) {
                if (!z4) {
                    drawable = new ColorDrawable(0);
                }
                childAt.setBackgroundDrawable(drawable);
                ((StatusBarLayout) childAt).setStatusBarDrawable(new ColorDrawable(Color.argb(i, 0, 0, 0)));
                return;
            }
            return;
        }
        boolean zShouldShowPageBackground = activity instanceof NVActivity ? ((NVActivity) activity).shouldShowPageBackground() : false;
        View childAt2 = viewGroup.getChildAt(0);
        if (zShouldShowPageBackground) {
            if (viewGroup.getChildCount() == 1 && viewGroup.getChildAt(0).getTag(com.narvii.lib.R.id.page_background) != null) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= viewGroup.getChildCount()) {
                    break;
                }
                View childAt3 = viewGroup.getChildAt(i2);
                if (childAt3.getTag(com.narvii.lib.R.id.page_background) == null) {
                    childAt2 = childAt3;
                    break;
                }
                i2++;
            }
        }
        ViewCompat.setFitsSystemWindows(childAt2, false);
        if (!z4 && !z2) {
            drawable = new ColorDrawable(Color.argb(0, 0, 0, 0));
        }
        viewGroup.addView(createFakeStatusBar(activity, drawable, i), 1);
        if (z4 && activity.getActionBar() != null) {
            activity.getActionBar().setBackgroundDrawable(new ColorDrawable(0));
        }
        window.getDecorView().setTag(com.narvii.lib.R.id.flag_fake_status, true);
        int fakeActionBarOffset = getFakeActionBarOffset(activity);
        if (z3) {
            if (!z4 && !z2) {
                fakeActionBarOffset = 0;
            }
            addMarginTopToContentChild(childAt2, fakeActionBarOffset);
        }
    }

    private static StatusBarLayout createFakeStatusBar(Activity activity, Drawable drawable, int i) {
        StatusBarLayout statusBarLayout = (StatusBarLayout) LayoutInflater.from(activity).inflate(com.narvii.lib.R.layout.status_layout, (ViewGroup) null);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, getFakeActionBarOffset(activity));
        layoutParams.gravity = 48;
        statusBarLayout.setLayoutParams(layoutParams);
        statusBarLayout.setStatusBarDrawable(new ColorDrawable(Color.argb(i, 0, 0, 0)));
        statusBarLayout.setBackgroundDrawable(drawable);
        return statusBarLayout;
    }

    private static Drawable getFakeActionBarDrawable(NVContext nVContext) {
        return ((ConfigService) nVContext.getService("config")).getTheme().fakeActionbarBackground();
    }

    private static int getFakeActionBarOffset(Activity activity) {
        if (activity == null) {
            return 0;
        }
        int statusBarHeight = isAmazingDevice() ? 0 : Utils.getStatusBarHeight(activity);
        return (!(activity instanceof NVActivity) || (!((NVActivity) activity).isActionBarOverlaying() && actionBarShown(activity))) ? statusBarHeight + Utils.getActionBarHeight(activity) : statusBarHeight;
    }

    public static void addMarginTopToContentChild(Activity activity, View view) {
        if (STATUS_BAR_ENABLE) {
            addMarginTopToContentChild(view, getFakeActionBarOffset(activity));
        }
    }

    public static void addMarginTopToContentChild(View view, int i) {
        if (STATUS_BAR_ENABLE && view != null && i != 0 && (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.topMargin += i;
            view.setLayoutParams(marginLayoutParams);
        }
    }

    private static boolean actionBarShown(Activity activity) {
        return activity.getActionBar() != null && activity.getActionBar().isShowing();
    }

    public static void addPaddingToChild(Activity activity, View view) {
        if (activity == null || view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop() + ((NVActivity) activity).getStatusBarOverlaySize(), view.getPaddingRight(), view.getPaddingBottom());
    }

    public static void setAsActionBar(Activity activity, View view) {
        if (!STATUS_BAR_ENABLE || activity == null || view == null) {
            return;
        }
        int actionBarHeight = Utils.getActionBarHeight(activity) + ((NVActivity) activity).getStatusBarOverlaySize();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = actionBarHeight;
        addPaddingToChild(activity, view);
        view.setLayoutParams(layoutParams);
    }

    public static void setStatusBarDrawable(Activity activity, Drawable drawable) {
        if (activity == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(R.id.content);
        if (viewGroup.getChildCount() == 0) {
            return;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof StatusBarLayout) {
                childAt.setBackgroundDrawable(drawable);
                return;
            }
        }
    }

    public static boolean isAmazingDevice() {
        return "PH-1".equals(Build.MODEL);
    }
}
