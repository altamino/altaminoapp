package com.narvii.util;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import com.narvii.util.statusbar.StatusBarUtils;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
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

    public static void assistActivity(Activity activity) {
        if (StatusBarUtils.STATUS_BAR_ENABLE && !assisted.containsKey(activity)) {
            assisted.put(activity, Boolean.TRUE);
            new AndroidBug5497Workaround(activity).prepare();
        }
    }

    public static void assistActivity(Dialog dialog) {
        if (StatusBarUtils.STATUS_BAR_ENABLE) {
            new AndroidBug5497Workaround(dialog).prepare();
        }
    }

    public static int getKeyboardHeight(Activity activity) {
        int i = keyboardHeight;
        return i == 0 ? KeyboardSharedPreferences.get(activity, 0) : i;
    }

    private AndroidBug5497Workaround(Activity activity) {
        this.host = activity;
    }

    private AndroidBug5497Workaround(Dialog dialog) {
        this.host = dialog;
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
                int i = 0;
                while (true) {
                    if (i >= frameLayout.getChildCount()) {
                        break;
                    }
                    if (!(frameLayout.getChildAt(i) instanceof SkipRequestLayoutFlag)) {
                        this.mChildOfContent = frameLayout.getChildAt(i);
                        break;
                    }
                    i++;
                }
            }
            View view2 = this.mChildOfContent;
            if (view2 != null) {
                view2.getViewTreeObserver().addOnGlobalLayoutListener(this);
                this.frameLayoutParams = (FrameLayout.LayoutParams) this.mChildOfContent.getLayoutParams();
                this.origHeightParam = this.frameLayoutParams.height;
            }
        }
        if (this.mChildOfContent instanceof ViewGroup) {
            for (int i2 = 0; i2 < ((ViewGroup) this.mChildOfContent).getChildCount(); i2++) {
                View childAt = ((ViewGroup) this.mChildOfContent).getChildAt(i2);
                if ("resizeTarget".equals(childAt.getTag())) {
                    this.targetView = childAt;
                    this.containTargetView = true;
                    this.targetViewLayoutParams = childAt.getLayoutParams();
                    return;
                }
            }
        }
    }

    @SuppressLint({"NewApi"})
    private int getSoftButtonsBarHeight() {
        Window window;
        if (Build.VERSION.SDK_INT < 17) {
            return 0;
        }
        Display defaultDisplay = null;
        Object obj = this.host;
        if (obj instanceof Activity) {
            defaultDisplay = ((Activity) obj).getWindowManager().getDefaultDisplay();
        } else if ((obj instanceof Dialog) && (window = ((Dialog) obj).getWindow()) != null) {
            defaultDisplay = window.getWindowManager().getDefaultDisplay();
        }
        if (defaultDisplay == null) {
            return 0;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        defaultDisplay.getRealMetrics(displayMetrics);
        int i2 = displayMetrics.heightPixels;
        if (i2 > i) {
            return i2 - i;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0083  */
    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onGlobalLayout() {
        /*
            r8 = this;
            r8.prepare()
            android.view.View r0 = r8.mChildOfContent
            if (r0 != 0) goto L8
            return
        L8:
            int r0 = r8.computeBottom()
            int r1 = r8.prevBottom
            if (r0 == r1) goto Lca
            android.view.View r1 = r8.mChildOfContent
            android.view.View r1 = r1.getRootView()
            int r1 = r1.getHeight()
            int r1 = r1 - r0
            boolean r2 = r8.heightDiffMatchActionBar
            int r3 = r8.softBarHeight
            r4 = 1
            r5 = 0
            if (r1 != r3) goto L25
            r3 = 1
            goto L26
        L25:
            r3 = 0
        L26:
            r2 = r2 | r3
            r8.heightDiffMatchActionBar = r2
            int r2 = r8.softBarHeight
            if (r1 <= r2) goto La5
            java.lang.Object r2 = r8.host
            boolean r3 = r2 instanceof android.app.Activity
            if (r3 == 0) goto L36
            android.app.Activity r2 = (android.app.Activity) r2
            goto L37
        L36:
            r2 = 0
        L37:
            if (r2 == 0) goto L72
            android.app.ActionBar r3 = r2.getActionBar()
            if (r3 == 0) goto L4b
            android.app.ActionBar r3 = r2.getActionBar()
            boolean r3 = r3.isShowing()
            if (r3 == 0) goto L4b
            r3 = 1
            goto L4c
        L4b:
            r3 = 0
        L4c:
            boolean r6 = r2 instanceof com.narvii.app.NVActivity
            if (r6 == 0) goto L59
            r7 = r2
            com.narvii.app.NVActivity r7 = (com.narvii.app.NVActivity) r7
            boolean r7 = r7.isActionBarOverlaying()
            r4 = r4 ^ r7
            r3 = r3 & r4
        L59:
            if (r3 == 0) goto L72
            int r3 = com.narvii.util.Utils.getActionBarHeight(r2)
            if (r6 == 0) goto L70
            r4 = r2
            com.narvii.app.NVActivity r4 = (com.narvii.app.NVActivity) r4
            boolean r4 = r4.isTranslucentStatusBar()
            if (r4 == 0) goto L70
            int r2 = com.narvii.util.Utils.getStatusBarHeight(r2)
            int r2 = r2 + r3
            goto L73
        L70:
            r2 = r3
            goto L73
        L72:
            r2 = 0
        L73:
            boolean r3 = com.narvii.util.statusbar.StatusBarUtils.isAmazingDevice()
            if (r3 == 0) goto L7d
            int r2 = r8.getSoftButtonsBarHeight()
        L7d:
            int r2 = r0 - r2
            boolean r3 = r8.heightDiffMatchActionBar
            if (r3 == 0) goto L85
            int r5 = r8.softBarHeight
        L85:
            int r1 = r1 - r5
            com.narvii.util.AndroidBug5497Workaround.keyboardHeight = r1
            android.view.View r1 = r8.mChildOfContent
            android.content.Context r1 = r1.getContext()
            r3 = -1
            int r1 = com.narvii.util.KeyboardSharedPreferences.get(r1, r3)
            int r3 = com.narvii.util.AndroidBug5497Workaround.keyboardHeight
            if (r1 == r3) goto La7
            if (r3 <= 0) goto La7
            android.view.View r1 = r8.mChildOfContent
            android.content.Context r1 = r1.getContext()
            int r3 = com.narvii.util.AndroidBug5497Workaround.keyboardHeight
            com.narvii.util.KeyboardSharedPreferences.save(r1, r3)
            goto La7
        La5:
            int r2 = r8.origHeightParam
        La7:
            boolean r1 = r8.containTargetView
            if (r1 == 0) goto Lb9
            android.view.ViewGroup$LayoutParams r1 = r8.targetViewLayoutParams
            int r3 = r1.height
            if (r2 == r3) goto Lc8
            r1.height = r2
            android.view.View r1 = r8.targetView
            r1.requestLayout()
            goto Lc8
        Lb9:
            android.widget.FrameLayout$LayoutParams r1 = r8.frameLayoutParams
            int r1 = r1.height
            if (r2 == r1) goto Lc8
            android.widget.FrameLayout$LayoutParams r1 = r8.frameLayoutParams
            r1.height = r2
            android.view.View r1 = r8.mChildOfContent
            r1.requestLayout()
        Lc8:
            r8.prevBottom = r0
        Lca:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.AndroidBug5497Workaround.onGlobalLayout():void");
    }

    private int computeBottom() {
        Rect rect = new Rect();
        this.mChildOfContent.getWindowVisibleDisplayFrame(rect);
        return rect.bottom;
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
}
