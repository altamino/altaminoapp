package com.narvii.util.statusbar;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.theme.PageBackgroundView;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes6.dex */
public class StatusBarUtils {
    public static final boolean STATUS_BAR_ENABLE = true;

    private static void addFakeStatusBar(Activity activity, Drawable drawable, int i10, boolean z6, boolean z10) {
        addFakeStatusBar(activity, drawable, i10, z6, false, z10);
    }

    public static void addMarginTopToContentChild(Activity activity, View view) {
        if (STATUS_BAR_ENABLE) {
            addMarginTopToContentChild(view, getFakeActionBarOffset(activity));
        }
    }

    private static int getFakeActionBarOffset(Activity activity) {
        if (activity == null) {
            return 0;
        }
        int statusBarHeight = isAmazingDevice() ? 0 : Utils.getStatusBarHeight(activity);
        return (!(activity instanceof NVActivity) || (!((NVActivity) activity).isActionBarOverlaying() && actionBarShown(activity))) ? statusBarHeight + Utils.getActionBarHeight(activity) : statusBarHeight;
    }

    public static void setSystemUiFlagLightStatusBar(NVContext nVContext, final boolean z6) {
        final FragmentActivity activity;
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
                StatusBarUtils.setSystemUiFlagLightStatusBar(activity, z6);
            }
        });
    }

    public static void setTranslucentStatusBar(NVContext nVContext) {
        setTranslucentStatusBar(nVContext, 0);
    }

    private static void addFakeStatusBar(Activity activity, Drawable drawable, int i10, boolean z6, boolean z10, boolean z11) {
        if (activity == null || drawable == null) {
            return;
        }
        Window window = activity.getWindow();
        ViewGroup viewGroup = (ViewGroup) window.findViewById(R.id.content);
        if (viewGroup.getChildCount() == 0) {
            return;
        }
        boolean z12 = actionBarShown(activity) && !z6;
        Object tag = window.getDecorView().getTag(com.narvii.lib.R.id.flag_fake_status);
        if (tag != null && (tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
            boolean z13 = viewGroup.getChildCount() > 0 && (viewGroup.getChildAt(0) instanceof PageBackgroundView);
            View childAt = viewGroup.getChildCount() > 1 ? viewGroup.getChildAt(1) : viewGroup.getChildAt(0);
            if (z13 && viewGroup.getChildCount() > 2) {
                childAt = viewGroup.getChildAt(2);
            }
            if (childAt instanceof StatusBarLayout) {
                if (!z12) {
                    drawable = new ColorDrawable(0);
                }
                childAt.setBackgroundDrawable(drawable);
                ((StatusBarLayout) childAt).setStatusBarDrawable(new ColorDrawable(Color.argb(i10, 0, 0, 0)));
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
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                View childAt3 = viewGroup.getChildAt(i11);
                if (childAt3.getTag(com.narvii.lib.R.id.page_background) == null) {
                    childAt2 = childAt3;
                    break;
                }
            }
        }
        ViewCompat.D0(childAt2, false);
        if (!z12 && !z10) {
            drawable = new ColorDrawable(Color.argb(0, 0, 0, 0));
        }
        viewGroup.addView(createFakeStatusBar(activity, drawable, i10), 1);
        if (z12 && activity.getActionBar() != null) {
            activity.getActionBar().setBackgroundDrawable(new ColorDrawable(0));
        }
        window.getDecorView().setTag(com.narvii.lib.R.id.flag_fake_status, Boolean.TRUE);
        int fakeActionBarOffset = getFakeActionBarOffset(activity);
        if (z11) {
            addMarginTopToContentChild(childAt2, (z12 || z10) ? fakeActionBarOffset : 0);
        }
    }

    public static void addPaddingToChild(Activity activity, View view) {
        if (activity == null || view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop() + ((NVActivity) activity).getStatusBarOverlaySize(), view.getPaddingRight(), view.getPaddingBottom());
    }

    public static void addTranslucentFlags(Window window) {
        window.addFlags(Integer.MIN_VALUE);
        window.clearFlags(67108864);
        window.setStatusBarColor(0);
        window.getDecorView().setSystemUiVisibility(1280);
    }

    private static Drawable getFakeActionBarDrawable(NVContext nVContext) {
        return ((ConfigService) nVContext.getService("config")).getTheme().fakeActionbarBackground();
    }

    public static boolean isAmazingDevice() {
        return "PH-1".equals(Build.MODEL);
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

    @TargetApi(19)
    public static void setStatusBarColor(final Activity activity, final int i10) {
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
                    StatusBarUtils.beginToSetStatusBarColor(activity, i10);
                }
            });
        } else {
            addFakeStatusBar(activity, new ColorDrawable(i10), 256, true, true);
        }
    }

    public static void setStatusBarDrawable(Activity activity, Drawable drawable) {
        if (activity == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(R.id.content);
        if (viewGroup.getChildCount() == 0) {
            return;
        }
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof StatusBarLayout) {
                childAt.setBackgroundDrawable(drawable);
                return;
            }
        }
    }

    public static void setTranslucentStatusBar(NVContext nVContext, int i10) {
        setTranslucentStatusBar(nVContext, null, i10, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void translucentStatusBar(Activity activity, Drawable drawable, int i10, boolean z6, boolean z10) {
        if (activity == null) {
            return;
        }
        Window window = activity.getWindow();
        if (((ViewGroup) window.findViewById(R.id.content)).getChildCount() == 0) {
            return;
        }
        addTranslucentFlags(window);
        addFakeStatusBar(activity, drawable, i10, z6, z10);
    }

    private static boolean actionBarShown(Activity activity) {
        if (activity.getActionBar() != null && activity.getActionBar().isShowing()) {
            return true;
        }
        return false;
    }

    public static void addMarginTopToContentChild(View view, int i10) {
        if (STATUS_BAR_ENABLE && view != null && i10 != 0 && (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.topMargin += i10;
            view.setLayoutParams(marginLayoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void beginToSetStatusBarColor(Activity activity, int i10) {
        Window window = activity.getWindow();
        if (((ViewGroup) window.findViewById(R.id.content)) == null) {
            return;
        }
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(i10);
        window.getDecorView().setSystemUiVisibility(0);
        addFakeStatusBar(activity, new ColorDrawable(i10), 256, true, true);
    }

    private static StatusBarLayout createFakeStatusBar(Activity activity, Drawable drawable, int i10) {
        StatusBarLayout statusBarLayout = (StatusBarLayout) LayoutInflater.from(activity).inflate(com.narvii.lib.R.layout.status_layout, (ViewGroup) null);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, getFakeActionBarOffset(activity));
        layoutParams.gravity = 48;
        statusBarLayout.setLayoutParams(layoutParams);
        statusBarLayout.setStatusBarDrawable(new ColorDrawable(Color.argb(i10, 0, 0, 0)));
        statusBarLayout.setBackgroundDrawable(drawable);
        return statusBarLayout;
    }

    public static void setTranslucentStatusBar(NVContext nVContext, boolean z6) {
        setTranslucentStatusBar(nVContext, null, 0, z6);
    }

    public static void setTranslucentStatusBar(NVContext nVContext, Drawable drawable) {
        setTranslucentStatusBar(nVContext, drawable, 0, true);
    }

    public static void setTranslucentStatusBar(NVContext nVContext, Drawable drawable, boolean z6) {
        setTranslucentStatusBar(nVContext, drawable, 0, z6);
    }

    public static void setTranslucentStatusBar(NVContext nVContext, final Drawable drawable, final int i10, final boolean z6) {
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
            boolean z10 = activity instanceof NVActivity;
            if (z10) {
                ((NVActivity) activity).setActionBarCustomed(true);
            }
            ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(R.id.content);
            if (drawable == null) {
                drawable = getFakeActionBarDrawable(nVContext);
            }
            if (viewGroup != null) {
                if (viewGroup.getChildCount() == 0) {
                    int i11 = com.narvii.lib.R.id.window_attach_listener;
                    ViewTreeObserver.OnWindowAttachListener onWindowAttachListener = (ViewTreeObserver.OnWindowAttachListener) viewGroup.getTag(i11);
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
                            StatusBarUtils.translucentStatusBar(activity2, drawable, i10, (activity2 instanceof NVActivity) && ((NVActivity) activity2).isActionBarOverlaying(), z6);
                        }
                    };
                    viewGroup.getViewTreeObserver().addOnWindowAttachListener(onWindowAttachListener2);
                    viewGroup.setTag(i11, onWindowAttachListener2);
                    return;
                }
                ViewTreeObserver.OnWindowAttachListener onWindowAttachListener3 = (ViewTreeObserver.OnWindowAttachListener) viewGroup.getTag(com.narvii.lib.R.id.window_attach_listener);
                if (onWindowAttachListener3 != null) {
                    viewGroup.getViewTreeObserver().removeOnWindowAttachListener(onWindowAttachListener3);
                }
                translucentStatusBar(activity, drawable, i10, z10 && ((NVActivity) activity).isActionBarOverlaying(), z6);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public static void setSystemUiFlagLightStatusBar(Activity activity, boolean z6) {
        activity.getWindow().addFlags(Integer.MIN_VALUE);
        activity.getWindow().clearFlags(67108864);
        int systemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
        if (z6) {
            activity.getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility | 8192);
        } else {
            activity.getWindow().getDecorView().setSystemUiVisibility(-1);
        }
    }
}
