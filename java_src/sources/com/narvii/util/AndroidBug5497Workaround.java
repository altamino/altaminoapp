package com.narvii.util;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import com.narvii.app.NVActivity;
import com.narvii.util.statusbar.StatusBarUtils;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public class AndroidBug5497Workaround implements ViewTreeObserver.OnGlobalLayoutListener {
    private static WeakHashMap<Activity, Boolean> assisted = new WeakHashMap<>();
    private static int keyboardHeight;
    private boolean containTargetView;
    private FrameLayout.LayoutParams frameLayoutParams;
    private boolean heightDiffMatchActionBar;
    private Object host;
    private View mChildOfContent;
    private int origHeightParam;
    private int prevBottom;
    private int softBarHeight;
    private View targetView;
    private ViewGroup.LayoutParams targetViewLayoutParams;

    private AndroidBug5497Workaround(Activity activity) {
        this.host = activity;
    }

    public static void assistActivity(Activity activity) {
        if (StatusBarUtils.STATUS_BAR_ENABLE && !assisted.containsKey(activity)) {
            assisted.put(activity, Boolean.TRUE);
            new AndroidBug5497Workaround(activity).prepare();
        }
    }

    private AndroidBug5497Workaround(Dialog dialog) {
        this.host = dialog;
    }

    private int computeBottom() {
        Rect rect = new Rect();
        this.mChildOfContent.getWindowVisibleDisplayFrame(rect);
        return rect.bottom;
    }

    public static int getKeyboardHeight(Activity activity) {
        int i10 = keyboardHeight;
        return i10 == 0 ? KeyboardSharedPreferences.get(activity, 0) : i10;
    }

    private int getNavBarHeight() {
        Resources resources;
        int identifier;
        View view = this.mChildOfContent;
        if (view != null && (identifier = (resources = view.getContext().getResources()).getIdentifier("navigation_bar_height", "dimen", "android")) > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @SuppressLint({"NewApi"})
    private int getSoftButtonsBarHeight() {
        Display defaultDisplay;
        Window window;
        Object obj = this.host;
        if (obj instanceof Activity) {
            defaultDisplay = ((Activity) obj).getWindowManager().getDefaultDisplay();
        } else {
            defaultDisplay = (!(obj instanceof Dialog) || (window = ((Dialog) obj).getWindow()) == null) ? null : window.getWindowManager().getDefaultDisplay();
        }
        if (defaultDisplay == null) {
            return 0;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i10 = displayMetrics.heightPixels;
        defaultDisplay.getRealMetrics(displayMetrics);
        int i11 = displayMetrics.heightPixels;
        if (i11 > i10) {
            return i11 - i10;
        }
        return 0;
    }

    private void prepare() {
        this.softBarHeight = getSoftButtonsBarHeight();
        View view = this.mChildOfContent;
        FrameLayout frameLayout = null;
        if (view != null && !view.isShown()) {
            this.mChildOfContent.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            this.mChildOfContent = null;
            this.frameLayoutParams = null;
            this.origHeightParam = 0;
            this.prevBottom = 0;
        }
        if (this.mChildOfContent == null) {
            Object obj = this.host;
            if (obj instanceof Activity) {
                frameLayout = (FrameLayout) ((Activity) obj).findViewById(R.id.content);
            } else if (obj instanceof Dialog) {
                frameLayout = (FrameLayout) ((Dialog) obj).findViewById(R.id.content);
            }
            if (frameLayout != null) {
                for (int i10 = 0; i10 < frameLayout.getChildCount(); i10++) {
                    if (!(frameLayout.getChildAt(i10) instanceof SkipRequestLayoutFlag)) {
                        this.mChildOfContent = frameLayout.getChildAt(i10);
                        break;
                    }
                }
            }
            View view2 = this.mChildOfContent;
            if (view2 != null) {
                view2.getViewTreeObserver().addOnGlobalLayoutListener(this);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mChildOfContent.getLayoutParams();
                this.frameLayoutParams = layoutParams;
                this.origHeightParam = layoutParams.height;
            }
        }
        if (this.mChildOfContent instanceof ViewGroup) {
            for (int i11 = 0; i11 < ((ViewGroup) this.mChildOfContent).getChildCount(); i11++) {
                View childAt = ((ViewGroup) this.mChildOfContent).getChildAt(i11);
                if ("resizeTarget".equals(childAt.getTag())) {
                    this.targetView = childAt;
                    this.containTargetView = true;
                    this.targetViewLayoutParams = childAt.getLayoutParams();
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x006e  */
    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        int iComputeBottom;
        boolean z6;
        int i10;
        Activity activity;
        int softButtonsBarHeight;
        boolean zIsActionBarOverlaying;
        prepare();
        if (this.mChildOfContent != null && (iComputeBottom = computeBottom()) != this.prevBottom) {
            int height = this.mChildOfContent.getRootView().getHeight() - iComputeBottom;
            boolean z10 = this.heightDiffMatchActionBar;
            int i11 = this.softBarHeight;
            int i12 = 0;
            if (height == i11) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.heightDiffMatchActionBar = z10 | z6;
            if (height > i11) {
                Object obj = this.host;
                if (obj instanceof Activity) {
                    activity = (Activity) obj;
                } else {
                    activity = null;
                }
                if (activity != null) {
                    if (activity.getActionBar() != null && activity.getActionBar().isShowing()) {
                        zIsActionBarOverlaying = true;
                    } else {
                        zIsActionBarOverlaying = false;
                    }
                    boolean z11 = activity instanceof NVActivity;
                    if (z11) {
                        zIsActionBarOverlaying &= true ^ ((NVActivity) activity).isActionBarOverlaying();
                    }
                    if (zIsActionBarOverlaying) {
                        softButtonsBarHeight = Utils.getActionBarHeight(activity);
                        if (z11 && ((NVActivity) activity).isTranslucentStatusBar()) {
                            softButtonsBarHeight += Utils.getStatusBarHeight(activity);
                        }
                    } else {
                        softButtonsBarHeight = 0;
                    }
                } else {
                    softButtonsBarHeight = 0;
                }
                if (StatusBarUtils.isAmazingDevice()) {
                    softButtonsBarHeight = getSoftButtonsBarHeight();
                }
                i10 = iComputeBottom - softButtonsBarHeight;
                if (this.heightDiffMatchActionBar) {
                    i12 = this.softBarHeight;
                }
                keyboardHeight = height - i12;
                int i13 = KeyboardSharedPreferences.get(this.mChildOfContent.getContext(), -1);
                int i14 = keyboardHeight;
                if (i13 != i14 && i14 > 0) {
                    KeyboardSharedPreferences.save(this.mChildOfContent.getContext(), keyboardHeight);
                }
            } else {
                i10 = this.origHeightParam;
            }
            if (this.containTargetView) {
                ViewGroup.LayoutParams layoutParams = this.targetViewLayoutParams;
                if (i10 != layoutParams.height) {
                    layoutParams.height = i10;
                    this.targetView.requestLayout();
                }
            } else {
                FrameLayout.LayoutParams layoutParams2 = this.frameLayoutParams;
                if (i10 != layoutParams2.height) {
                    layoutParams2.height = i10;
                    this.mChildOfContent.requestLayout();
                }
            }
            this.prevBottom = iComputeBottom;
        }
    }

    public static void assistActivity(Dialog dialog) {
        if (StatusBarUtils.STATUS_BAR_ENABLE) {
            new AndroidBug5497Workaround(dialog).prepare();
        }
    }
}
