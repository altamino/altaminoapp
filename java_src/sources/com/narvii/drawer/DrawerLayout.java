package com.narvii.drawer;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ViewDragHelper;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DrawerLayout extends ViewGroup implements DrawerLayoutImpl {
    private static final boolean ALLOW_EDGE_LOCK = false;
    private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
    private static final int DEFAULT_SCRIM_COLOR = -1728053248;
    private static final int DRAWER_ELEVATION = 10;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final int MIN_DRAWER_MARGIN = 64;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final int PEEK_DELAY = 160;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "DrawerLayout";
    private static final float TOUCH_SLOP_SENSITIVITY = 1.0f;
    public static boolean disallowIntercept;
    private final ChildAccessibilityDelegate mChildAccessibilityDelegate;
    private boolean mChildrenCanceledTouch;
    private boolean mDisallowInterceptRequested;
    private boolean mDrawStatusBarBackground;
    private float mDrawerElevation;
    private int mDrawerState;
    private boolean mFirstLayout;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private Object mLastInsets;
    private final ViewDragCallback mLeftCallback;
    protected final ViewDragHelper mLeftDragger;

    @Nullable
    @Deprecated
    private DrawerListener mListener;
    private List<DrawerListener> mListeners;
    private int mLockModeEnd;
    private int mLockModeLeft;
    private int mLockModeRight;
    private int mLockModeStart;
    private int mMinDrawerMargin;
    private final ArrayList<View> mNonDrawerViews;
    private final ViewDragCallback mRightCallback;
    protected final ViewDragHelper mRightDragger;
    private int mScrimColor;
    private float mScrimOpacity;
    private Paint mScrimPaint;
    private Drawable mShadowEnd;
    private Drawable mShadowLeft;
    private Drawable mShadowLeftResolved;
    private Drawable mShadowRight;
    private Drawable mShadowRightResolved;
    private Drawable mShadowStart;
    private Drawable mStatusBarBackground;
    private CharSequence mTitleLeft;
    private CharSequence mTitleRight;
    private final Runnable requestLayoutRunnable;
    private static final int[] LAYOUT_ATTRS = {R.attr.layout_gravity};
    private static final boolean CAN_HIDE_DESCENDANTS = true;
    private static final boolean SET_DRAWER_SHADOW_FROM_ELEVATION = true;
    static final DrawerLayoutCompatImpl IMPL = new DrawerLayoutCompatImplApi21();

    class AccessibilityDelegate extends AccessibilityDelegateCompat {
        private final Rect mTmpRect = new Rect();

        AccessibilityDelegate() {
        }

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.mTmpRect;
            accessibilityNodeInfoCompat2.m(rect);
            accessibilityNodeInfoCompat.Z(rect);
            accessibilityNodeInfoCompat2.n(rect);
            accessibilityNodeInfoCompat.a0(rect);
            accessibilityNodeInfoCompat.P0(accessibilityNodeInfoCompat2.P());
            accessibilityNodeInfoCompat.x0(accessibilityNodeInfoCompat2.v());
            accessibilityNodeInfoCompat.e0(accessibilityNodeInfoCompat2.p());
            accessibilityNodeInfoCompat.i0(accessibilityNodeInfoCompat2.r());
            accessibilityNodeInfoCompat.m0(accessibilityNodeInfoCompat2.H());
            accessibilityNodeInfoCompat.f0(accessibilityNodeInfoCompat2.G());
            accessibilityNodeInfoCompat.o0(accessibilityNodeInfoCompat2.I());
            accessibilityNodeInfoCompat.p0(accessibilityNodeInfoCompat2.J());
            accessibilityNodeInfoCompat.X(accessibilityNodeInfoCompat2.D());
            accessibilityNodeInfoCompat.G0(accessibilityNodeInfoCompat2.N());
            accessibilityNodeInfoCompat.u0(accessibilityNodeInfoCompat2.K());
            accessibilityNodeInfoCompat.a(accessibilityNodeInfoCompat2.k());
        }

        private void addChildrenForAccessibility(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (DrawerLayout.includeChildForAccessibility(childAt)) {
                    accessibilityNodeInfoCompat.c(childAt);
                }
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View viewFindVisibleDrawer = DrawerLayout.this.findVisibleDrawer();
                if (viewFindVisibleDrawer != null) {
                    CharSequence drawerTitle = DrawerLayout.this.getDrawerTitle(DrawerLayout.this.getDrawerViewAbsoluteGravity(viewFindVisibleDrawer));
                    if (drawerTitle != null) {
                        text.add(drawerTitle);
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.CAN_HIDE_DESCENDANTS) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompatS = AccessibilityNodeInfoCompat.S(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatS);
                accessibilityNodeInfoCompat.I0(view);
                Object objJ = ViewCompat.J(view);
                if (objJ instanceof View) {
                    accessibilityNodeInfoCompat.z0((View) objJ);
                }
                copyNodeInfoNoChildren(accessibilityNodeInfoCompat, accessibilityNodeInfoCompatS);
                accessibilityNodeInfoCompatS.U();
                addChildrenForAccessibility(accessibilityNodeInfoCompat, (ViewGroup) view);
            }
            accessibilityNodeInfoCompat.e0(DrawerLayout.class.getName());
            accessibilityNodeInfoCompat.o0(false);
            accessibilityNodeInfoCompat.p0(false);
            accessibilityNodeInfoCompat.V(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.V(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!DrawerLayout.CAN_HIDE_DESCENDANTS && !DrawerLayout.includeChildForAccessibility(view)) {
                return false;
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    final class ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
        ChildAccessibilityDelegate() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!DrawerLayout.includeChildForAccessibility(view)) {
                accessibilityNodeInfoCompat.z0(null);
            }
        }
    }

    interface DrawerLayoutCompatImpl {
        void applyMarginInsets(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i10);

        void configureApplyInsets(View view);

        void dispatchChildInsets(View view, Object obj, int i10);

        Drawable getDefaultStatusBarBackground(Context context);

        int getTopInset(Object obj);
    }

    public interface DrawerListener {
        void onDrawerClosed(View view);

        void onDrawerOpened(View view);

        void onDrawerSlide(View view, float f);

        void onDrawerStateChanged(int i10);
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface EdgeGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface LockMode {
    }

    public static abstract class SimpleDrawerListener implements DrawerListener {
        @Override // com.narvii.drawer.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerListener
        public void onDrawerSlide(View view, float f) {
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int i10) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface State {
    }

    private class ViewDragCallback extends ViewDragHelper.Callback {
        private final int mAbsGravity;
        private ViewDragHelper mDragger;
        private final Runnable mPeekRunnable = new Runnable() { // from class: com.narvii.drawer.DrawerLayout.ViewDragCallback.1
            @Override // java.lang.Runnable
            public void run() {
                ViewDragCallback.this.peekDrawer();
            }
        };
        private final Runnable mClosePeekRunnable = new Runnable() { // from class: com.narvii.drawer.DrawerLayout.ViewDragCallback.2
            @Override // java.lang.Runnable
            public void run() {
                ViewDragCallback.this.closePeek();
            }
        };

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int i10, int i11) {
            View viewFindDrawerWithGravity = (i10 & 1) == 1 ? DrawerLayout.this.findDrawerWithGravity(3) : DrawerLayout.this.findDrawerWithGravity(5);
            if (viewFindDrawerWithGravity == null || DrawerLayout.this.getDrawerLockMode(viewFindDrawerWithGravity) != 0) {
                return;
            }
            if (!isOtherDrawerOpened()) {
                this.mDragger.c(viewFindDrawerWithGravity, i11);
            } else {
                closeOtherDrawer();
                this.mDragger.a();
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean onEdgeLock(int i10) {
            return false;
        }

        public void setDragger(ViewDragHelper viewDragHelper) {
            this.mDragger = viewDragHelper;
        }

        public ViewDragCallback(int i10) {
            this.mAbsGravity = i10;
        }

        private void closeOtherDrawer() {
            View viewFindDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(this.mAbsGravity == 3 ? 5 : 3);
            if (viewFindDrawerWithGravity != null) {
                DrawerLayout.this.closeDrawer(viewFindDrawerWithGravity);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void closePeek() {
            View viewFindDrawerWithGravity;
            int width;
            if (this.mAbsGravity == 3) {
                viewFindDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(3);
                width = viewFindDrawerWithGravity != null ? -viewFindDrawerWithGravity.getWidth() : 0;
            } else {
                viewFindDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(5);
                width = DrawerLayout.this.getWidth();
            }
            LayoutParams layoutParams = (LayoutParams) viewFindDrawerWithGravity.getLayoutParams();
            if (layoutParams.isPeeking) {
                this.mDragger.R(viewFindDrawerWithGravity, width, viewFindDrawerWithGravity.getTop());
                layoutParams.isPeeking = false;
                DrawerLayout.this.requestLayout();
            }
            removeCallbacks();
        }

        private boolean isOtherDrawerOpened() {
            View viewFindDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(this.mAbsGravity == 3 ? 5 : 3);
            return viewFindDrawerWithGravity != null && DrawerLayout.this.isDrawerOpen(viewFindDrawerWithGravity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void peekAndClose(long j6, long j10) {
            DrawerLayout.this.postDelayed(this.mPeekRunnable, j6);
            DrawerLayout.this.postDelayed(this.mClosePeekRunnable, j6 + j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void peekDrawer() {
            View viewFindDrawerWithGravity;
            int width;
            int iY = this.mDragger.y();
            boolean z6 = this.mAbsGravity == 3;
            if (z6) {
                viewFindDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(3);
                width = (viewFindDrawerWithGravity != null ? -viewFindDrawerWithGravity.getWidth() : 0) + iY;
            } else {
                viewFindDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(5);
                width = DrawerLayout.this.getWidth() - iY;
            }
            if (viewFindDrawerWithGravity != null) {
                if (((!z6 || viewFindDrawerWithGravity.getLeft() >= width) && (z6 || viewFindDrawerWithGravity.getLeft() <= width)) || DrawerLayout.this.getDrawerLockMode(viewFindDrawerWithGravity) != 0) {
                    return;
                }
                LayoutParams layoutParams = (LayoutParams) viewFindDrawerWithGravity.getLayoutParams();
                this.mDragger.R(viewFindDrawerWithGravity, width, viewFindDrawerWithGravity.getTop());
                layoutParams.isPeeking = true;
                DrawerLayout.this.requestLayout();
                closeOtherDrawer();
                DrawerLayout.this.cancelChildViewTouch();
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i10, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i10, width));
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.isDrawerView(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i10) {
            DrawerLayout.this.updateDrawerState(this.mAbsGravity, i10, this.mDragger.w());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f6) {
            int i10;
            float drawerViewOffset = DrawerLayout.this.getDrawerViewOffset(view);
            int width = view.getWidth();
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3)) {
                i10 = (f > 0.0f || (f == 0.0f && drawerViewOffset > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f < 0.0f || (f == 0.0f && drawerViewOffset > 0.5f)) {
                    width2 -= width;
                }
                i10 = width2;
            }
            this.mDragger.P(i10, view.getTop());
            DrawerLayout.this.requestLayout();
        }

        public void removeCallbacks() {
            DrawerLayout.this.removeCallbacks(this.mPeekRunnable);
            DrawerLayout.this.removeCallbacks(this.mClosePeekRunnable);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i10) {
            if (!DrawerLayout.this.isDrawerView(view) || !DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, this.mAbsGravity) || DrawerLayout.this.getDrawerLockMode(view) != 0) {
                return false;
            }
            if (!isOtherDrawerOpened()) {
                return true;
            }
            closeOtherDrawer();
            return false;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeTouched(int i10, int i11) {
            if (isOtherDrawerOpened()) {
                closeOtherDrawer();
                this.mDragger.a();
            } else {
                DrawerLayout.this.postDelayed(this.mPeekRunnable, 160L);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i10) {
            ((LayoutParams) view.getLayoutParams()).isPeeking = false;
            closeOtherDrawer();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            float width;
            int i14;
            int width2 = view.getWidth();
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3)) {
                width = i10 + width2;
            } else {
                width = DrawerLayout.this.getWidth() - i10;
            }
            float f = width / width2;
            DrawerLayout.this.setDrawerViewOffset(view, f);
            if (f == 0.0f) {
                i14 = 4;
            } else {
                i14 = 0;
            }
            view.setVisibility(i14);
            DrawerLayout.this.requestLayout();
        }
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public void closeDrawer(View view) {
        if (!isDrawerView(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.mFirstLayout) {
            layoutParams.onScreen = 0.0f;
            layoutParams.openState = 0;
        } else {
            layoutParams.openState |= 4;
            if (checkDrawerViewAbsoluteGravity(view, 3)) {
                this.mLeftDragger.R(view, -view.getWidth(), view.getTop());
            } else {
                this.mRightDragger.R(view, getWidth(), view.getTop());
            }
        }
        requestLayout();
    }

    public void closeDrawers() {
        closeDrawers(false);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
            return this.mDrawerElevation;
        }
        return 0.0f;
    }

    public int getDrawerLockMode(int i10) {
        int iD = ViewCompat.D(this);
        if (i10 == 3) {
            int i11 = this.mLockModeLeft;
            if (i11 != 3) {
                return i11;
            }
            int i12 = iD == 0 ? this.mLockModeStart : this.mLockModeEnd;
            if (i12 != 3) {
                return i12;
            }
            return 0;
        }
        if (i10 == 5) {
            int i13 = this.mLockModeRight;
            if (i13 != 3) {
                return i13;
            }
            int i14 = iD == 0 ? this.mLockModeEnd : this.mLockModeStart;
            if (i14 != 3) {
                return i14;
            }
            return 0;
        }
        if (i10 == 8388611) {
            int i15 = this.mLockModeStart;
            if (i15 != 3) {
                return i15;
            }
            int i16 = iD == 0 ? this.mLockModeLeft : this.mLockModeRight;
            if (i16 != 3) {
                return i16;
            }
            return 0;
        }
        if (i10 != 8388613) {
            return 0;
        }
        int i17 = this.mLockModeEnd;
        if (i17 != 3) {
            return i17;
        }
        int i18 = iD == 0 ? this.mLockModeRight : this.mLockModeLeft;
        if (i18 != 3) {
            return i18;
        }
        return 0;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.mStatusBarBackground;
    }

    public boolean isDrawerOpen(View view) {
        if (isDrawerView(view)) {
            return (((LayoutParams) view.getLayoutParams()).openState & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isDrawerVisible(View view) {
        if (isDrawerView(view)) {
            return ((LayoutParams) view.getLayoutParams()).onScreen > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4 && hasVisibleDrawer()) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            return super.onKeyUp(i10, keyEvent);
        }
        View viewFindVisibleDrawer = findVisibleDrawer();
        if (viewFindVisibleDrawer != null && getDrawerLockMode(viewFindVisibleDrawer) == 0) {
            closeDrawers();
        }
        return viewFindVisibleDrawer != null;
    }

    public void openDrawer(View view) {
        if (!isDrawerView(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.mFirstLayout) {
            layoutParams.onScreen = 1.0f;
            layoutParams.openState = 1;
            updateChildrenImportantForAccessibility(view, true);
        } else {
            layoutParams.openState |= 2;
            if (checkDrawerViewAbsoluteGravity(view, 3)) {
                this.mLeftDragger.R(view, 0, view.getTop());
            } else {
                this.mRightDragger.R(view, getWidth() - view.getWidth(), view.getTop());
            }
        }
        requestLayout();
    }

    public void peekDrawer(View view, long j6, long j10) {
        if (!isDrawerView(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.openState != 0 || layoutParams.isPeeking) {
            return;
        }
        if (checkDrawerViewAbsoluteGravity(view, 3)) {
            this.mLeftCallback.peekAndClose(j6, j10);
        } else {
            this.mRightCallback.peekAndClose(j6, j10);
        }
    }

    public void setDrawerLockMode(int i10) {
        setDrawerLockMode(i10, 3);
        setDrawerLockMode(i10, 5);
    }

    public void setDrawerShadow(Drawable drawable, int i10) {
        if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
            return;
        }
        if ((i10 & GravityCompat.START) == 8388611) {
            this.mShadowStart = drawable;
        } else if ((i10 & GravityCompat.END) == 8388613) {
            this.mShadowEnd = drawable;
        } else if ((i10 & 3) == 3) {
            this.mShadowLeft = drawable;
        } else if ((i10 & 5) != 5) {
            return;
        } else {
            this.mShadowRight = drawable;
        }
        resolveShadowDrawables();
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.mStatusBarBackground = drawable;
        invalidate();
    }

    static class DrawerLayoutCompatImplApi21 implements DrawerLayoutCompatImpl {
        DrawerLayoutCompatImplApi21() {
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public void applyMarginInsets(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i10) {
            DrawerLayoutCompatApi21.applyMarginInsets(marginLayoutParams, obj, i10);
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public void configureApplyInsets(View view) {
            DrawerLayoutCompatApi21.configureApplyInsets(view);
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public void dispatchChildInsets(View view, Object obj, int i10) {
            DrawerLayoutCompatApi21.dispatchChildInsets(view, obj, i10);
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public Drawable getDefaultStatusBarBackground(Context context) {
            return DrawerLayoutCompatApi21.getDefaultStatusBarBackground(context);
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public int getTopInset(Object obj) {
            return DrawerLayoutCompatApi21.getTopInset(obj);
        }
    }

    static class DrawerLayoutCompatImplBase implements DrawerLayoutCompatImpl {
        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public void applyMarginInsets(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i10) {
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public void configureApplyInsets(View view) {
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public void dispatchChildInsets(View view, Object obj, int i10) {
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public Drawable getDefaultStatusBarBackground(Context context) {
            return null;
        }

        @Override // com.narvii.drawer.DrawerLayout.DrawerLayoutCompatImpl
        public int getTopInset(Object obj) {
            return 0;
        }

        DrawerLayoutCompatImplBase() {
        }
    }

    protected static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.narvii.drawer.DrawerLayout.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        int openDrawerGravity;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.openDrawerGravity = 0;
            this.openDrawerGravity = parcel.readInt();
            this.lockModeLeft = parcel.readInt();
            this.lockModeRight = parcel.readInt();
            this.lockModeStart = parcel.readInt();
            this.lockModeEnd = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.openDrawerGravity);
            parcel.writeInt(this.lockModeLeft);
            parcel.writeInt(this.lockModeRight);
            parcel.writeInt(this.lockModeStart);
            parcel.writeInt(this.lockModeEnd);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.openDrawerGravity = 0;
        }
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    static String gravityToString(int i10) {
        if ((i10 & 3) == 3) {
            return "LEFT";
        }
        return (i10 & 5) == 5 ? "RIGHT" : Integer.toHexString(i10);
    }

    private boolean mirror(Drawable drawable, int i10) {
        if (drawable == null || !DrawableCompat.h(drawable)) {
            return false;
        }
        DrawableCompat.m(drawable, i10);
        return true;
    }

    private void resolveShadowDrawables() {
        if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
            return;
        }
        this.mShadowLeftResolved = resolveLeftShadow();
        this.mShadowRightResolved = resolveRightShadow();
    }

    public void addDrawerListener(@NonNull DrawerListener drawerListener) {
        if (drawerListener == null) {
            return;
        }
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(drawerListener);
    }

    void cancelChildViewTouch() {
        if (this.mChildrenCanceledTouch) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).dispatchTouchEvent(motionEventObtain);
        }
        motionEventObtain.recycle();
        this.mChildrenCanceledTouch = true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    void closeDrawers(boolean z6) {
        int childCount = getChildCount();
        boolean zR = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (isDrawerView(childAt) && (!z6 || layoutParams.isPeeking)) {
                zR |= checkDrawerViewAbsoluteGravity(childAt, 3) ? this.mLeftDragger.R(childAt, -childAt.getWidth(), childAt.getTop()) : this.mRightDragger.R(childAt, getWidth(), childAt.getTop());
                layoutParams.isPeeking = false;
            }
        }
        this.mLeftCallback.removeCallbacks();
        this.mRightCallback.removeCallbacks();
        if (zR) {
            requestLayout();
        }
    }

    void dispatchOnDrawerSlide(View view, float f) {
        List<DrawerListener> list = this.mListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mListeners.get(size).onDrawerSlide(view, f);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public int getDrawerLockMode(View view) {
        if (isDrawerView(view)) {
            return getDrawerLockMode(((LayoutParams) view.getLayoutParams()).gravity);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        float f;
        int i14;
        int i15;
        boolean z10 = true;
        this.mInLayout = true;
        boolean zN = this.mLeftDragger.n(true) | this.mRightDragger.n(true);
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i16 = 0; i16 < childCount; i16++) {
            fMax = Math.max(fMax, ((LayoutParams) getChildAt(i16).getLayoutParams()).onScreen);
        }
        this.mScrimOpacity = fMax;
        int i17 = i12 - i10;
        int i18 = 0;
        while (i18 < childCount) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() == 8) {
                i15 = childCount;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (isContentView(childAt)) {
                    int i19 = ((FrameLayout.LayoutParams) layoutParams).leftMargin;
                    childAt.layout(i19, ((FrameLayout.LayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i19, ((FrameLayout.LayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                    i15 = childCount;
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        float f6 = measuredWidth;
                        i14 = (-measuredWidth) + ((int) (layoutParams.onScreen * f6));
                        f = (measuredWidth + i14) / f6;
                    } else {
                        float f7 = measuredWidth;
                        int i20 = i17 - ((int) (layoutParams.onScreen * f7));
                        f = (i17 - i20) / f7;
                        i14 = i20;
                    }
                    boolean z11 = f != layoutParams.onScreen ? z10 : false;
                    int i21 = layoutParams.gravity & 112;
                    if (i21 != 16) {
                        if (i21 != 80) {
                            int i22 = ((FrameLayout.LayoutParams) layoutParams).topMargin;
                            childAt.layout(i14, i22, measuredWidth + i14, measuredHeight + i22);
                        } else {
                            int i23 = i13 - i11;
                            childAt.layout(i14, (i23 - ((FrameLayout.LayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i14, i23 - ((FrameLayout.LayoutParams) layoutParams).bottomMargin);
                        }
                        i15 = childCount;
                    } else {
                        int i24 = i13 - i11;
                        int i25 = (i24 - measuredHeight) / 2;
                        int i26 = ((FrameLayout.LayoutParams) layoutParams).topMargin;
                        if (i25 < i26) {
                            i15 = childCount;
                            i25 = i26;
                        } else {
                            int i27 = i25 + measuredHeight;
                            int i28 = ((FrameLayout.LayoutParams) layoutParams).bottomMargin;
                            i15 = childCount;
                            if (i27 > i24 - i28) {
                                i25 = (i24 - i28) - measuredHeight;
                            }
                        }
                        childAt.layout(i14, i25, measuredWidth + i14, measuredHeight + i25);
                    }
                    if (z11) {
                        setDrawerViewOffset(childAt, f);
                    }
                    int i29 = layoutParams.onScreen > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i29) {
                        childAt.setVisibility(i29);
                    }
                }
            }
            i18++;
            childCount = i15;
            z10 = true;
        }
        this.mInLayout = false;
        this.mFirstLayout = false;
        if (zN) {
            postRequestLayout();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int i12 = 1073741824;
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
            if (mode2 != Integer.MIN_VALUE && mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        boolean z6 = this.mLastInsets != null && ViewCompat.A(this);
        int iD = ViewCompat.D(this);
        int childCount = getChildCount();
        int i13 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (z6) {
                    int iB = GravityCompat.b(layoutParams.gravity, iD);
                    if (ViewCompat.A(childAt)) {
                        IMPL.dispatchChildInsets(childAt, this.mLastInsets, iB);
                    } else {
                        IMPL.applyMarginInsets(layoutParams, this.mLastInsets, iB);
                    }
                }
                if (isContentView(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((FrameLayout.LayoutParams) layoutParams).leftMargin) - ((FrameLayout.LayoutParams) layoutParams).rightMargin, i12), View.MeasureSpec.makeMeasureSpec((size2 - ((FrameLayout.LayoutParams) layoutParams).topMargin) - ((FrameLayout.LayoutParams) layoutParams).bottomMargin, i12));
                } else {
                    if (!isDrawerView(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i13 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
                        float fY = ViewCompat.y(childAt);
                        float f = this.mDrawerElevation;
                        if (fY != f) {
                            ViewCompat.C0(childAt, f);
                        }
                    }
                    int drawerViewAbsoluteGravity = getDrawerViewAbsoluteGravity(childAt) & 7;
                    boolean z12 = drawerViewAbsoluteGravity == 3;
                    if ((z12 && z10) || (!z12 && z11)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + gravityToString(drawerViewAbsoluteGravity) + " but this " + TAG + " already has a drawer view along that edge");
                    }
                    if (z12) {
                        z10 = true;
                    } else {
                        z11 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i10, this.mMinDrawerMargin + ((FrameLayout.LayoutParams) layoutParams).leftMargin + ((FrameLayout.LayoutParams) layoutParams).rightMargin, ((FrameLayout.LayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(i11, ((FrameLayout.LayoutParams) layoutParams).topMargin + ((FrameLayout.LayoutParams) layoutParams).bottomMargin, ((FrameLayout.LayoutParams) layoutParams).height));
                }
            }
            i13++;
            i12 = 1073741824;
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View viewFindDrawerWithGravity;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i10 = savedState.openDrawerGravity;
        if (i10 != 0 && (viewFindDrawerWithGravity = findDrawerWithGravity(i10)) != null) {
            openDrawer(viewFindDrawerWithGravity);
        }
        int i11 = savedState.lockModeLeft;
        if (i11 != 3) {
            setDrawerLockMode(i11, 3);
        }
        int i12 = savedState.lockModeRight;
        if (i12 != 3) {
            setDrawerLockMode(i12, 5);
        }
        int i13 = savedState.lockModeStart;
        if (i13 != 3) {
            setDrawerLockMode(i13, GravityCompat.START);
        }
        int i14 = savedState.lockModeEnd;
        if (i14 != 3) {
            setDrawerLockMode(i14, GravityCompat.END);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0061  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        View viewFindOpenDrawer;
        this.mLeftDragger.G(motionEvent);
        this.mRightDragger.G(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x6 = motionEvent.getX();
            float y6 = motionEvent.getY();
            this.mInitialMotionX = x6;
            this.mInitialMotionY = y6;
            this.mDisallowInterceptRequested = false;
            disallowIntercept = false;
            this.mChildrenCanceledTouch = false;
        } else if (action == 1) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            View viewU = this.mLeftDragger.u((int) x10, (int) y10);
            if (viewU == null || !isContentView(viewU)) {
                z6 = true;
            } else {
                float f = x10 - this.mInitialMotionX;
                float f6 = y10 - this.mInitialMotionY;
                int iA = this.mLeftDragger.A();
                if ((f * f) + (f6 * f6) >= iA * iA || (viewFindOpenDrawer = findOpenDrawer()) == null || getDrawerLockMode(viewFindOpenDrawer) == 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
            }
            closeDrawers(z6);
            this.mDisallowInterceptRequested = false;
            disallowIntercept = false;
        } else if (action == 3) {
            closeDrawers(true);
            this.mDisallowInterceptRequested = false;
            disallowIntercept = false;
            this.mChildrenCanceledTouch = false;
        }
        return true;
    }

    void postRequestLayout() {
        removeCallbacks(this.requestLayoutRunnable);
        post(this.requestLayoutRunnable);
    }

    public void removeDrawerListener(@NonNull DrawerListener drawerListener) {
        List<DrawerListener> list;
        if (drawerListener == null || (list = this.mListeners) == null) {
            return;
        }
        list.remove(drawerListener);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // com.narvii.drawer.DrawerLayoutImpl
    public void setChildInsets(Object obj, boolean z6) {
        this.mLastInsets = obj;
        this.mDrawStatusBarBackground = z6;
        setWillNotDraw(!z6 && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.mDrawerElevation = f;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (isDrawerView(childAt)) {
                ViewCompat.C0(childAt, this.mDrawerElevation);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(DrawerListener drawerListener) {
        DrawerListener drawerListener2 = this.mListener;
        if (drawerListener2 != null) {
            removeDrawerListener(drawerListener2);
        }
        if (drawerListener != null) {
            addDrawerListener(drawerListener);
        }
        this.mListener = drawerListener;
    }

    public void setScrimColor(@ColorInt int i10) {
        this.mScrimColor = i10;
        invalidate();
    }

    public void setStatusBarBackground(int i10) {
        this.mStatusBarBackground = i10 != 0 ? ContextCompat.getDrawable(getContext(), i10) : null;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int i10) {
        this.mStatusBarBackground = new ColorDrawable(i10);
        invalidate();
    }

    void updateDrawerState(int i10, int i11, View view) {
        int i12;
        int iB = this.mLeftDragger.B();
        int iB2 = this.mRightDragger.B();
        if (iB == 1 || iB2 == 1) {
            i12 = 1;
        } else {
            i12 = 2;
            if (iB != 2 && iB2 != 2) {
                i12 = 0;
            }
        }
        if (view != null && i11 == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).onScreen;
            if (f == 0.0f) {
                dispatchOnDrawerClosed(view);
            } else if (f == 1.0f) {
                dispatchOnDrawerOpened(view);
            }
        }
        if (i12 != this.mDrawerState) {
            this.mDrawerState = i12;
            List<DrawerListener> list = this.mListeners;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.mListeners.get(size).onDrawerStateChanged(i12);
                }
            }
        }
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mChildAccessibilityDelegate = new ChildAccessibilityDelegate();
        this.mScrimColor = DEFAULT_SCRIM_COLOR;
        this.mScrimPaint = new Paint();
        this.mFirstLayout = true;
        this.mLockModeLeft = 3;
        this.mLockModeRight = 3;
        this.mLockModeStart = 3;
        this.mLockModeEnd = 3;
        this.mShadowStart = null;
        this.mShadowEnd = null;
        this.mShadowLeft = null;
        this.mShadowRight = null;
        this.requestLayoutRunnable = new Runnable() { // from class: com.narvii.drawer.DrawerLayout.1
            @Override // java.lang.Runnable
            public void run() {
                DrawerLayout.this.requestLayout();
            }
        };
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.mMinDrawerMargin = (int) ((64.0f * f) + 0.5f);
        float f6 = 400.0f * f;
        ViewDragCallback viewDragCallback = new ViewDragCallback(3);
        this.mLeftCallback = viewDragCallback;
        ViewDragCallback viewDragCallback2 = new ViewDragCallback(5);
        this.mRightCallback = viewDragCallback2;
        ViewDragHelper viewDragHelperO = ViewDragHelper.o(this, 1.0f, viewDragCallback);
        this.mLeftDragger = viewDragHelperO;
        viewDragHelperO.N(1);
        viewDragHelperO.O(f6);
        viewDragCallback.setDragger(viewDragHelperO);
        ViewDragHelper viewDragHelperO2 = ViewDragHelper.o(this, 1.0f, viewDragCallback2);
        this.mRightDragger = viewDragHelperO2;
        viewDragHelperO2.N(2);
        viewDragHelperO2.O(f6);
        viewDragCallback2.setDragger(viewDragHelperO2);
        setFocusableInTouchMode(true);
        ViewCompat.F0(this, 1);
        ViewCompat.u0(this, new AccessibilityDelegate());
        ViewGroupCompat.b(this, false);
        if (ViewCompat.A(this)) {
            DrawerLayoutCompatImpl drawerLayoutCompatImpl = IMPL;
            drawerLayoutCompatImpl.configureApplyInsets(this);
            this.mStatusBarBackground = drawerLayoutCompatImpl.getDefaultStatusBarBackground(context);
        }
        this.mDrawerElevation = f * 10.0f;
        this.mNonDrawerViews = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View findVisibleDrawer() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (isDrawerView(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    private static boolean hasOpaqueBackground(View view) {
        Drawable background = view.getBackground();
        if (background == null || background.getOpacity() != -1) {
            return false;
        }
        return true;
    }

    private boolean hasPeekingDrawer() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((LayoutParams) getChildAt(i10).getLayoutParams()).isPeeking) {
                return true;
            }
        }
        return false;
    }

    private boolean hasVisibleDrawer() {
        if (findVisibleDrawer() != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean includeChildForAccessibility(View view) {
        if (ViewCompat.B(view) != 4 && ViewCompat.B(view) != 2) {
            return true;
        }
        return false;
    }

    private Drawable resolveLeftShadow() {
        int iD = ViewCompat.D(this);
        if (iD == 0) {
            Drawable drawable = this.mShadowStart;
            if (drawable != null) {
                mirror(drawable, iD);
                return this.mShadowStart;
            }
        } else {
            Drawable drawable2 = this.mShadowEnd;
            if (drawable2 != null) {
                mirror(drawable2, iD);
                return this.mShadowEnd;
            }
        }
        return this.mShadowLeft;
    }

    private Drawable resolveRightShadow() {
        int iD = ViewCompat.D(this);
        if (iD == 0) {
            Drawable drawable = this.mShadowEnd;
            if (drawable != null) {
                mirror(drawable, iD);
                return this.mShadowEnd;
            }
        } else {
            Drawable drawable2 = this.mShadowStart;
            if (drawable2 != null) {
                mirror(drawable2, iD);
                return this.mShadowStart;
            }
        }
        return this.mShadowRight;
    }

    private void updateChildrenImportantForAccessibility(View view, boolean z6) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((!z6 && !isDrawerView(childAt)) || (z6 && childAt == view)) {
                ViewCompat.F0(childAt, 1);
            } else {
                ViewCompat.F0(childAt, 4);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z6 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (isDrawerView(childAt)) {
                if (isDrawerOpen(childAt)) {
                    childAt.addFocusables(arrayList, i10, i11);
                    z6 = true;
                }
            } else {
                this.mNonDrawerViews.add(childAt);
            }
        }
        if (!z6) {
            int size = this.mNonDrawerViews.size();
            for (int i13 = 0; i13 < size; i13++) {
                View view = this.mNonDrawerViews.get(i13);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i10, i11);
                }
            }
        }
        this.mNonDrawerViews.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (findOpenDrawer() == null && !isDrawerView(view)) {
            ViewCompat.F0(view, 1);
        } else {
            ViewCompat.F0(view, 4);
        }
        if (!CAN_HIDE_DESCENDANTS) {
            ViewCompat.u0(view, this.mChildAccessibilityDelegate);
        }
    }

    boolean checkDrawerViewAbsoluteGravity(View view, int i10) {
        if ((getDrawerViewAbsoluteGravity(view) & i10) == i10) {
            return true;
        }
        return false;
    }

    void dispatchOnDrawerClosed(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.openState & 1) == 1) {
            layoutParams.openState = 0;
            List<DrawerListener> list = this.mListeners;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.mListeners.get(size).onDrawerClosed(view);
                }
            }
            updateChildrenImportantForAccessibility(view, false);
            if (hasWindowFocus() && (rootView = getRootView()) != null) {
                rootView.sendAccessibilityEvent(32);
            }
        }
    }

    void dispatchOnDrawerOpened(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.openState & 1) == 0) {
            layoutParams.openState = 1;
            List<DrawerListener> list = this.mListeners;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.mListeners.get(size).onDrawerOpened(view);
                }
            }
            updateChildrenImportantForAccessibility(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
            view.requestFocus();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        boolean z6;
        int height = getHeight();
        int i10 = 0;
        if (isContentView(view) && view.findViewById(R.id.content) != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        int width = getWidth();
        int iSave = canvas.save();
        if (z6) {
            int childCount = getChildCount();
            int i11 = 0;
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt != view && childAt.getVisibility() == 0 && hasOpaqueBackground(childAt) && isDrawerView(childAt) && childAt.getHeight() >= height) {
                    if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i11) {
                            i11 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i11, 0, width, getHeight());
            i10 = i11;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j6);
        canvas.restoreToCount(iSave);
        float f = this.mScrimOpacity;
        if (f > 0.0f && z6) {
            int i13 = this.mScrimColor;
            this.mScrimPaint.setColor((i13 & ViewCompat.MEASURED_SIZE_MASK) | (((int) ((((-16777216) & i13) >>> 24) * f)) << 24));
            canvas.drawRect(i10, 0.0f, width, getHeight(), this.mScrimPaint);
        } else if (this.mShadowLeftResolved != null && checkDrawerViewAbsoluteGravity(view, 3)) {
            int intrinsicWidth = this.mShadowLeftResolved.getIntrinsicWidth();
            int right2 = view.getRight();
            float fMax = Math.max(0.0f, Math.min(right2 / this.mLeftDragger.y(), 1.0f));
            this.mShadowLeftResolved.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.mShadowLeftResolved.setAlpha((int) (fMax * 255.0f));
            this.mShadowLeftResolved.draw(canvas);
        } else if (this.mShadowRightResolved != null && checkDrawerViewAbsoluteGravity(view, 5)) {
            int intrinsicWidth2 = this.mShadowRightResolved.getIntrinsicWidth();
            int left2 = view.getLeft();
            float fMax2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.mRightDragger.y(), 1.0f));
            this.mShadowRightResolved.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.mShadowRightResolved.setAlpha((int) (fMax2 * 255.0f));
            this.mShadowRightResolved.draw(canvas);
        }
        return zDrawChild;
    }

    View findDrawerWithGravity(int i10) {
        int iB = GravityCompat.b(i10, ViewCompat.D(this)) & 7;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if ((getDrawerViewAbsoluteGravity(childAt) & 7) == iB) {
                return childAt;
            }
        }
        return null;
    }

    View findOpenDrawer() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((((LayoutParams) childAt.getLayoutParams()).openState & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    @Nullable
    public CharSequence getDrawerTitle(int i10) {
        int iB = GravityCompat.b(i10, ViewCompat.D(this));
        if (iB == 3) {
            return this.mTitleLeft;
        }
        if (iB == 5) {
            return this.mTitleRight;
        }
        return null;
    }

    int getDrawerViewAbsoluteGravity(View view) {
        return GravityCompat.b(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.D(this));
    }

    float getDrawerViewOffset(View view) {
        return ((LayoutParams) view.getLayoutParams()).onScreen;
    }

    boolean isContentView(View view) {
        if (((LayoutParams) view.getLayoutParams()).gravity == 0) {
            return true;
        }
        return false;
    }

    boolean isDrawerView(View view) {
        int iB = GravityCompat.b(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.D(view));
        if ((iB & 3) != 0 || (iB & 5) != 0) {
            return true;
        }
        return false;
    }

    void moveDrawerToOffset(View view, float f) {
        float drawerViewOffset = getDrawerViewOffset(view);
        float width = view.getWidth();
        int i10 = ((int) (width * f)) - ((int) (drawerViewOffset * width));
        if (!checkDrawerViewAbsoluteGravity(view, 3)) {
            i10 = -i10;
        }
        view.offsetLeftAndRight(i10);
        setDrawerViewOffset(view, f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int topInset;
        super.onDraw(canvas);
        if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null && (topInset = IMPL.getTopInset(this.mLastInsets)) > 0) {
            this.mStatusBarBackground.setBounds(0, 0, getWidth(), topInset);
            this.mStatusBarBackground.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0031  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        View viewU;
        int action = motionEvent.getAction();
        boolean zQ = this.mLeftDragger.Q(motionEvent) | this.mRightDragger.Q(motionEvent);
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        closeDrawers(true);
                        this.mDisallowInterceptRequested = false;
                        disallowIntercept = false;
                        this.mChildrenCanceledTouch = false;
                    }
                } else if (this.mLeftDragger.e(3)) {
                    this.mLeftCallback.removeCallbacks();
                    this.mRightCallback.removeCallbacks();
                }
            } else {
                closeDrawers(true);
                this.mDisallowInterceptRequested = false;
                disallowIntercept = false;
                this.mChildrenCanceledTouch = false;
            }
            z6 = false;
        } else {
            float x6 = motionEvent.getX();
            float y6 = motionEvent.getY();
            this.mInitialMotionX = x6;
            this.mInitialMotionY = y6;
            if (this.mScrimOpacity > 0.0f && (viewU = this.mLeftDragger.u((int) x6, (int) y6)) != null && isContentView(viewU)) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.mDisallowInterceptRequested = false;
            disallowIntercept = false;
            this.mChildrenCanceledTouch = false;
            zQ = false;
        }
        if (disallowIntercept) {
            return false;
        }
        if (zQ || z6 || hasPeekingDrawer() || this.mChildrenCanceledTouch) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        resolveShadowDrawables();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        boolean z6;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i10).getLayoutParams();
            int i11 = layoutParams.openState;
            boolean z10 = true;
            if (i11 == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (i11 != 2) {
                z10 = false;
            }
            if (z6 || z10) {
                savedState.openDrawerGravity = layoutParams.gravity;
                break;
            }
        }
        savedState.lockModeLeft = this.mLockModeLeft;
        savedState.lockModeRight = this.mLockModeRight;
        savedState.lockModeStart = this.mLockModeStart;
        savedState.lockModeEnd = this.mLockModeEnd;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        super.requestDisallowInterceptTouchEvent(z6);
        this.mDisallowInterceptRequested = z6;
        if (z6) {
            closeDrawers(true);
        }
    }

    public void setDrawerLockMode(int i10, int i11) {
        View viewFindDrawerWithGravity;
        int iB = GravityCompat.b(i11, ViewCompat.D(this));
        if (i11 == 3) {
            this.mLockModeLeft = i10;
        } else if (i11 == 5) {
            this.mLockModeRight = i10;
        } else if (i11 == 8388611) {
            this.mLockModeStart = i10;
        } else if (i11 == 8388613) {
            this.mLockModeEnd = i10;
        }
        if (i10 != 0) {
            (iB == 3 ? this.mLeftDragger : this.mRightDragger).b();
        }
        if (i10 != 1) {
            if (i10 == 2 && (viewFindDrawerWithGravity = findDrawerWithGravity(iB)) != null) {
                openDrawer(viewFindDrawerWithGravity);
                return;
            }
            return;
        }
        View viewFindDrawerWithGravity2 = findDrawerWithGravity(iB);
        if (viewFindDrawerWithGravity2 != null) {
            closeDrawer(viewFindDrawerWithGravity2);
        }
    }

    public void setDrawerShadow(@DrawableRes int i10, int i11) {
        setDrawerShadow(getResources().getDrawable(i10), i11);
    }

    public void setDrawerTitle(int i10, CharSequence charSequence) {
        int iB = GravityCompat.b(i10, ViewCompat.D(this));
        if (iB == 3) {
            this.mTitleLeft = charSequence;
        } else if (iB == 5) {
            this.mTitleRight = charSequence;
        }
    }

    void setDrawerViewOffset(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f == layoutParams.onScreen) {
            return;
        }
        layoutParams.onScreen = f;
        dispatchOnDrawerSlide(view, f);
    }

    public static class LayoutParams extends FrameLayout.LayoutParams {
        private static final int FLAG_IS_CLOSING = 4;
        private static final int FLAG_IS_OPENED = 1;
        private static final int FLAG_IS_OPENING = 2;
        public int gravity;
        protected boolean isPeeking;
        protected float onScreen;
        protected int openState;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.LAYOUT_ATTRS);
            this.gravity = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.gravity = 0;
        }

        public LayoutParams(int i10, int i11, int i12) {
            this(i10, i11);
            this.gravity = i12;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((FrameLayout.LayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = 0;
        }
    }

    public boolean isDrawerVisible(int i10) {
        View viewFindDrawerWithGravity = findDrawerWithGravity(i10);
        if (viewFindDrawerWithGravity != null) {
            return isDrawerVisible(viewFindDrawerWithGravity);
        }
        return false;
    }

    public boolean isDrawerOpen(int i10) {
        View viewFindDrawerWithGravity = findDrawerWithGravity(i10);
        if (viewFindDrawerWithGravity != null) {
            return isDrawerOpen(viewFindDrawerWithGravity);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void peekDrawer(int i10, long j6, long j10) {
        View viewFindDrawerWithGravity = findDrawerWithGravity(i10);
        if (viewFindDrawerWithGravity != null) {
            peekDrawer(viewFindDrawerWithGravity, j6, j10);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(i10));
    }

    public void setDrawerLockMode(int i10, View view) {
        if (isDrawerView(view)) {
            setDrawerLockMode(i10, ((LayoutParams) view.getLayoutParams()).gravity);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void closeDrawer(int i10) {
        View viewFindDrawerWithGravity = findDrawerWithGravity(i10);
        if (viewFindDrawerWithGravity != null) {
            closeDrawer(viewFindDrawerWithGravity);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(i10));
    }

    public void openDrawer(int i10) {
        View viewFindDrawerWithGravity = findDrawerWithGravity(i10);
        if (viewFindDrawerWithGravity != null) {
            openDrawer(viewFindDrawerWithGravity);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(i10));
    }
}
