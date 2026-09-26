package androidx.drawerlayout.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.Openable;
import androidx.customview.widget.ViewDragHelper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DrawerLayout extends ViewGroup implements Openable {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.drawerlayout.widget.DrawerLayout";
    private static final boolean ALLOW_EDGE_LOCK = false;
    static final boolean CAN_HIDE_DESCENDANTS;
    private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
    private static final int DEFAULT_SCRIM_COLOR = -1728053248;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final int MIN_DRAWER_MARGIN = 64;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final int PEEK_DELAY = 160;
    private static final boolean SET_DRAWER_SHADOW_FROM_ELEVATION;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "DrawerLayout";
    private static final float TOUCH_SLOP_SENSITIVITY = 1.0f;
    private static boolean sEdgeSizeUsingSystemGestureInsets;
    private final AccessibilityViewCommand mActionDismiss;
    private final ChildAccessibilityDelegate mChildAccessibilityDelegate;
    private Rect mChildHitRect;
    private Matrix mChildInvertedMatrix;
    private boolean mChildrenCanceledTouch;
    private boolean mDrawStatusBarBackground;
    private float mDrawerElevation;
    private int mDrawerState;
    private boolean mFirstLayout;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private Object mLastInsets;
    private final ViewDragCallback mLeftCallback;
    private final ViewDragHelper mLeftDragger;

    @Nullable
    private DrawerListener mListener;
    private List<DrawerListener> mListeners;
    private int mLockModeEnd;
    private int mLockModeLeft;
    private int mLockModeRight;
    private int mLockModeStart;
    private int mMinDrawerMargin;
    private final ArrayList<View> mNonDrawerViews;
    private final ViewDragCallback mRightCallback;
    private final ViewDragHelper mRightDragger;
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
    private static final int[] THEME_ATTRS = {R.attr.colorPrimaryDark};
    static final int[] LAYOUT_ATTRS = {R.attr.layout_gravity};

    class AccessibilityDelegate extends AccessibilityDelegateCompat {
        private final Rect mTmpRect = new Rect();

        AccessibilityDelegate() {
        }

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.mTmpRect;
            accessibilityNodeInfoCompat2.n(rect);
            accessibilityNodeInfoCompat.a0(rect);
            accessibilityNodeInfoCompat.P0(accessibilityNodeInfoCompat2.P());
            accessibilityNodeInfoCompat.x0(accessibilityNodeInfoCompat2.v());
            accessibilityNodeInfoCompat.e0(accessibilityNodeInfoCompat2.p());
            accessibilityNodeInfoCompat.i0(accessibilityNodeInfoCompat2.r());
            accessibilityNodeInfoCompat.m0(accessibilityNodeInfoCompat2.H());
            accessibilityNodeInfoCompat.p0(accessibilityNodeInfoCompat2.J());
            accessibilityNodeInfoCompat.X(accessibilityNodeInfoCompat2.D());
            accessibilityNodeInfoCompat.G0(accessibilityNodeInfoCompat2.N());
            accessibilityNodeInfoCompat.a(accessibilityNodeInfoCompat2.k());
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
            accessibilityNodeInfoCompat.e0(DrawerLayout.ACCESSIBILITY_CLASS_NAME);
            accessibilityNodeInfoCompat.o0(false);
            accessibilityNodeInfoCompat.p0(false);
            accessibilityNodeInfoCompat.V(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.V(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.CAN_HIDE_DESCENDANTS || DrawerLayout.A(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        private void addChildrenForAccessibility(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (DrawerLayout.A(childAt)) {
                    accessibilityNodeInfoCompat.c(childAt);
                }
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View viewP = DrawerLayout.this.p();
                if (viewP != null) {
                    CharSequence charSequenceS = DrawerLayout.this.s(DrawerLayout.this.t(viewP));
                    if (charSequenceS != null) {
                        text.add(charSequenceS);
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
            accessibilityEvent.setClassName(DrawerLayout.ACCESSIBILITY_CLASS_NAME);
        }
    }

    public interface DrawerListener {
        void onDrawerClosed(@NonNull View view);

        void onDrawerOpened(@NonNull View view);

        void onDrawerSlide(@NonNull View view, float f);

        void onDrawerStateChanged(int i10);
    }

    public static abstract class SimpleDrawerListener implements DrawerListener {
        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerSlide(View view, float f) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int i10) {
        }
    }

    private class ViewDragCallback extends ViewDragHelper.Callback {
        private final int mAbsGravity;
        private ViewDragHelper mDragger;
        private final Runnable mPeekRunnable = new Runnable() { // from class: androidx.drawerlayout.widget.DrawerLayout.ViewDragCallback.1
            @Override // java.lang.Runnable
            public void run() {
                ViewDragCallback.this.peekDrawer();
            }
        };

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int i10, int i11) {
            View viewN = (i10 & 1) == 1 ? DrawerLayout.this.n(3) : DrawerLayout.this.n(5);
            if (viewN == null || DrawerLayout.this.r(viewN) != 0) {
                return;
            }
            this.mDragger.c(viewN, i11);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean onEdgeLock(int i10) {
            return false;
        }

        public void setDragger(ViewDragHelper viewDragHelper) {
            this.mDragger = viewDragHelper;
        }

        ViewDragCallback(int i10) {
            this.mAbsGravity = i10;
        }

        private void closeOtherDrawer() {
            View viewN = DrawerLayout.this.n(this.mAbsGravity == 3 ? 5 : 3);
            if (viewN != null) {
                DrawerLayout.this.f(viewN);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            if (DrawerLayout.this.c(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i10, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i10, width));
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.D(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeTouched(int i10, int i11) {
            DrawerLayout.this.postDelayed(this.mPeekRunnable, 160L);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i10) {
            DrawerLayout.this.W(i10, this.mDragger.w());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f6) {
            int i10;
            float fU = DrawerLayout.this.u(view);
            int width = view.getWidth();
            if (DrawerLayout.this.c(view, 3)) {
                i10 = (f > 0.0f || (f == 0.0f && fU > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f < 0.0f || (f == 0.0f && fU > 0.5f)) {
                    width2 -= width;
                }
                i10 = width2;
            }
            this.mDragger.P(i10, view.getTop());
            DrawerLayout.this.invalidate();
        }

        void peekDrawer() {
            View viewN;
            int width;
            int iY = this.mDragger.y();
            boolean z6 = this.mAbsGravity == 3;
            if (z6) {
                viewN = DrawerLayout.this.n(3);
                width = (viewN != null ? -viewN.getWidth() : 0) + iY;
            } else {
                viewN = DrawerLayout.this.n(5);
                width = DrawerLayout.this.getWidth() - iY;
            }
            if (viewN != null) {
                if (((!z6 || viewN.getLeft() >= width) && (z6 || viewN.getLeft() <= width)) || DrawerLayout.this.r(viewN) != 0) {
                    return;
                }
                LayoutParams layoutParams = (LayoutParams) viewN.getLayoutParams();
                this.mDragger.R(viewN, width, viewN.getTop());
                layoutParams.isPeeking = true;
                DrawerLayout.this.invalidate();
                closeOtherDrawer();
                DrawerLayout.this.b();
            }
        }

        public void removeCallbacks() {
            DrawerLayout.this.removeCallbacks(this.mPeekRunnable);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i10) {
            return DrawerLayout.this.D(view) && DrawerLayout.this.c(view, this.mAbsGravity) && DrawerLayout.this.r(view) == 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
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
            if (DrawerLayout.this.c(view, 3)) {
                width = i10 + width2;
            } else {
                width = DrawerLayout.this.getWidth() - i10;
            }
            float f = width / width2;
            DrawerLayout.this.T(view, f);
            if (f == 0.0f) {
                i14 = 4;
            } else {
                i14 = 0;
            }
            view.setVisibility(i14);
            DrawerLayout.this.invalidate();
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        CAN_HIDE_DESCENDANTS = true;
        SET_DRAWER_SHADOW_FROM_ELEVATION = true;
        sEdgeSizeUsingSystemGestureInsets = i10 >= 29;
    }

    public DrawerLayout(@NonNull Context context) {
        this(context, null);
    }

    public void J(int i10) {
        K(i10, true);
    }

    public void L(@NonNull View view) {
        M(view, true);
    }

    public void d(int i10) {
        e(i10, true);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        int height = getHeight();
        boolean zB = B(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i10 = 0;
        if (zB) {
            int childCount = getChildCount();
            int i11 = 0;
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt != view && childAt.getVisibility() == 0 && x(childAt) && D(childAt) && childAt.getHeight() >= height) {
                    if (c(childAt, 3)) {
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
        if (f > 0.0f && zB) {
            int i13 = this.mScrimColor;
            this.mScrimPaint.setColor((i13 & ViewCompat.MEASURED_SIZE_MASK) | (((int) ((((-16777216) & i13) >>> 24) * f)) << 24));
            canvas.drawRect(i10, 0.0f, width, getHeight(), this.mScrimPaint);
        } else if (this.mShadowLeftResolved != null && c(view, 3)) {
            int intrinsicWidth = this.mShadowLeftResolved.getIntrinsicWidth();
            int right2 = view.getRight();
            float fMax = Math.max(0.0f, Math.min(right2 / this.mLeftDragger.y(), 1.0f));
            this.mShadowLeftResolved.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.mShadowLeftResolved.setAlpha((int) (fMax * 255.0f));
            this.mShadowLeftResolved.draw(canvas);
        } else if (this.mShadowRightResolved != null && c(view, 5)) {
            int intrinsicWidth2 = this.mShadowRightResolved.getIntrinsicWidth();
            int left2 = view.getLeft();
            float fMax2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.mRightDragger.y(), 1.0f));
            this.mShadowRightResolved.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.mShadowRightResolved.setAlpha((int) (fMax2 * 255.0f));
            this.mShadowRightResolved.draw(canvas);
        }
        return zDrawChild;
    }

    public void f(@NonNull View view) {
        g(view, true);
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

    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.mStatusBarBackground;
    }

    public void h() {
        i(false);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 != 4 || !z()) {
            return super.onKeyDown(i10, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            return super.onKeyUp(i10, keyEvent);
        }
        View viewP = p();
        if (viewP != null && r(viewP) == 0) {
            h();
        }
        return viewP != null;
    }

    public void setDrawerLockMode(int i10) {
        S(i10, 3);
        S(i10, 5);
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.mStatusBarBackground = drawable;
        invalidate();
    }

    static final class ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
        ChildAccessibilityDelegate() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!DrawerLayout.A(view)) {
                accessibilityNodeInfoCompat.z0(null);
            }
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.drawerlayout.widget.DrawerLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        int openDrawerGravity;

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.openDrawerGravity = 0;
            this.openDrawerGravity = parcel.readInt();
            this.lockModeLeft = parcel.readInt();
            this.lockModeRight = parcel.readInt();
            this.lockModeStart = parcel.readInt();
            this.lockModeEnd = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.openDrawerGravity);
            parcel.writeInt(this.lockModeLeft);
            parcel.writeInt(this.lockModeRight);
            parcel.writeInt(this.lockModeStart);
            parcel.writeInt(this.lockModeEnd);
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
            this.openDrawerGravity = 0;
        }
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, androidx.drawerlayout.R.attr.drawerLayoutStyle);
    }

    private boolean G(float f, float f6, View view) {
        if (this.mChildHitRect == null) {
            this.mChildHitRect = new Rect();
        }
        view.getHitRect(this.mChildHitRect);
        return this.mChildHitRect.contains((int) f, (int) f6);
    }

    private void H(Drawable drawable, int i10) {
        if (drawable == null || !DrawableCompat.h(drawable)) {
            return;
        }
        DrawableCompat.m(drawable, i10);
    }

    private void Q() {
        if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
            return;
        }
        this.mShadowLeftResolved = O();
        this.mShadowRightResolved = P();
    }

    private void U(View view) {
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS;
        ViewCompat.n0(view, accessibilityActionCompat.b());
        if (!C(view) || r(view) == 2) {
            return;
        }
        ViewCompat.p0(view, accessibilityActionCompat, null, this.mActionDismiss);
    }

    static String w(int i10) {
        if ((i10 & 3) == 3) {
            return "LEFT";
        }
        return (i10 & 5) == 5 ? "RIGHT" : Integer.toHexString(i10);
    }

    public void N(@NonNull DrawerListener drawerListener) {
        List<DrawerListener> list;
        if (drawerListener == null || (list = this.mListeners) == null) {
            return;
        }
        list.remove(drawerListener);
    }

    @RestrictTo
    public void R(Object obj, boolean z6) {
        this.mLastInsets = obj;
        this.mDrawStatusBarBackground = z6;
        setWillNotDraw(!z6 && getBackground() == null);
        requestLayout();
    }

    void W(int i10, View view) {
        int i11;
        int iB = this.mLeftDragger.B();
        int iB2 = this.mRightDragger.B();
        if (iB == 1 || iB2 == 1) {
            i11 = 1;
        } else {
            i11 = 2;
            if (iB != 2 && iB2 != 2) {
                i11 = 0;
            }
        }
        if (view != null && i10 == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).onScreen;
            if (f == 0.0f) {
                j(view);
            } else if (f == 1.0f) {
                k(view);
            }
        }
        if (i11 != this.mDrawerState) {
            this.mDrawerState = i11;
            List<DrawerListener> list = this.mListeners;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.mListeners.get(size).onDrawerStateChanged(i11);
                }
            }
        }
    }

    public void a(@NonNull DrawerListener drawerListener) {
        if (drawerListener == null) {
            return;
        }
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(drawerListener);
    }

    void b() {
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

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    void l(View view, float f) {
        List<DrawerListener> list = this.mListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mListeners.get(size).onDrawerSlide(view, f);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        WindowInsets rootWindowInsets;
        float f;
        int i14;
        boolean z10 = true;
        this.mInLayout = true;
        int i15 = i12 - i10;
        int childCount = getChildCount();
        int i16 = 0;
        while (i16 < childCount) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (B(childAt)) {
                    int i17 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i17, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i17, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (c(childAt, 3)) {
                        float f6 = measuredWidth;
                        i14 = (-measuredWidth) + ((int) (layoutParams.onScreen * f6));
                        f = (measuredWidth + i14) / f6;
                    } else {
                        float f7 = measuredWidth;
                        int i18 = i15 - ((int) (layoutParams.onScreen * f7));
                        f = (i15 - i18) / f7;
                        i14 = i18;
                    }
                    boolean z11 = f != layoutParams.onScreen ? z10 : false;
                    int i19 = layoutParams.gravity & 112;
                    if (i19 == 16) {
                        int i20 = i13 - i11;
                        int i21 = (i20 - measuredHeight) / 2;
                        int i22 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i21 < i22) {
                            i21 = i22;
                        } else {
                            int i23 = i21 + measuredHeight;
                            int i24 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i23 > i20 - i24) {
                                i21 = (i20 - i24) - measuredHeight;
                            }
                        }
                        childAt.layout(i14, i21, measuredWidth + i14, measuredHeight + i21);
                    } else if (i19 != 80) {
                        int i25 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i14, i25, measuredWidth + i14, measuredHeight + i25);
                    } else {
                        int i26 = i13 - i11;
                        childAt.layout(i14, (i26 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i14, i26 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z11) {
                        T(childAt, f);
                    }
                    int i27 = layoutParams.onScreen > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i27) {
                        childAt.setVisibility(i27);
                    }
                }
            }
            i16++;
            z10 = true;
        }
        if (sEdgeSizeUsingSystemGestureInsets && (rootWindowInsets = getRootWindowInsets()) != null) {
            Insets insetsI = WindowInsetsCompat.y(rootWindowInsets).i();
            ViewDragHelper viewDragHelper = this.mLeftDragger;
            viewDragHelper.M(Math.max(viewDragHelper.x(), insetsI.left));
            ViewDragHelper viewDragHelper2 = this.mRightDragger;
            viewDragHelper2.M(Math.max(viewDragHelper2.x(), insetsI.right));
        }
        this.mInLayout = false;
        this.mFirstLayout = false;
    }

    @Override // android.view.View
    @SuppressLint({"WrongConstant"})
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode == 0) {
                size = 300;
            }
            if (mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        boolean z6 = this.mLastInsets != null && ViewCompat.A(this);
        int iD = ViewCompat.D(this);
        int childCount = getChildCount();
        boolean z10 = false;
        boolean z11 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (z6) {
                    int iB = GravityCompat.b(layoutParams.gravity, iD);
                    if (ViewCompat.A(childAt)) {
                        WindowInsets windowInsetsReplaceSystemWindowInsets = (WindowInsets) this.mLastInsets;
                        if (iB == 3) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        } else if (iB == 5) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsetsReplaceSystemWindowInsets);
                    } else {
                        WindowInsets windowInsetsReplaceSystemWindowInsets2 = (WindowInsets) this.mLastInsets;
                        if (iB == 3) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        } else if (iB == 5) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (B(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, 1073741824));
                } else {
                    if (!D(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i12 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
                        float fY = ViewCompat.y(childAt);
                        float f = this.mDrawerElevation;
                        if (fY != f) {
                            ViewCompat.C0(childAt, f);
                        }
                    }
                    int iT = t(childAt) & 7;
                    boolean z12 = iT == 3;
                    if ((z12 && z10) || (!z12 && z11)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + w(iT) + " but this " + TAG + " already has a drawer view along that edge");
                    }
                    if (z12) {
                        z10 = true;
                    } else {
                        z11 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i10, this.mMinDrawerMargin + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(i11, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, ((ViewGroup.MarginLayoutParams) layoutParams).height));
                }
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View viewN;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i10 = savedState.openDrawerGravity;
        if (i10 != 0 && (viewN = n(i10)) != null) {
            L(viewN);
        }
        int i11 = savedState.lockModeLeft;
        if (i11 != 3) {
            S(i11, 3);
        }
        int i12 = savedState.lockModeRight;
        if (i12 != 3) {
            S(i12, 5);
        }
        int i13 = savedState.lockModeStart;
        if (i13 != 3) {
            S(i13, GravityCompat.START);
        }
        int i14 = savedState.lockModeEnd;
        if (i14 != 3) {
            S(i14, GravityCompat.END);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        View viewO;
        this.mLeftDragger.G(motionEvent);
        this.mRightDragger.G(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x6 = motionEvent.getX();
            float y6 = motionEvent.getY();
            this.mInitialMotionX = x6;
            this.mInitialMotionY = y6;
            this.mChildrenCanceledTouch = false;
        } else if (action == 1) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            View viewU = this.mLeftDragger.u((int) x10, (int) y10);
            if (viewU != null && B(viewU)) {
                float f = x10 - this.mInitialMotionX;
                float f6 = y10 - this.mInitialMotionY;
                int iA = this.mLeftDragger.A();
                z6 = (f * f) + (f6 * f6) >= ((float) (iA * iA)) || (viewO = o()) == null || r(viewO) == 2;
            }
            i(z6);
        } else if (action == 3) {
            i(true);
            this.mChildrenCanceledTouch = false;
        }
        return true;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInLayout) {
            return;
        }
        super.requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.mDrawerElevation = f;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (D(childAt)) {
                ViewCompat.C0(childAt, this.mDrawerElevation);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(DrawerListener drawerListener) {
        DrawerListener drawerListener2 = this.mListener;
        if (drawerListener2 != null) {
            N(drawerListener2);
        }
        if (drawerListener != null) {
            a(drawerListener);
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

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
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
        this.mActionDismiss = new AccessibilityViewCommand() { // from class: androidx.drawerlayout.widget.DrawerLayout.1
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean a(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                if (!DrawerLayout.this.C(view) || DrawerLayout.this.r(view) == 2) {
                    return false;
                }
                DrawerLayout.this.f(view);
                return true;
            }
        };
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.mMinDrawerMargin = (int) ((64.0f * f) + 0.5f);
        float f6 = f * 400.0f;
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
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.A(this)) {
            setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.drawerlayout.widget.DrawerLayout.2
                @Override // android.view.View.OnApplyWindowInsetsListener
                public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    ((DrawerLayout) view).R(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
                    return windowInsets.consumeSystemWindowInsets();
                }
            });
            setSystemUiVisibility(1280);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(THEME_ATTRS);
            try {
                this.mStatusBarBackground = typedArrayObtainStyledAttributes.getDrawable(0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, androidx.drawerlayout.R.styleable.DrawerLayout, i10, 0);
        try {
            int i11 = androidx.drawerlayout.R.styleable.DrawerLayout_elevation;
            if (typedArrayObtainStyledAttributes2.hasValue(i11)) {
                this.mDrawerElevation = typedArrayObtainStyledAttributes2.getDimension(i11, 0.0f);
            } else {
                this.mDrawerElevation = getResources().getDimension(androidx.drawerlayout.R.dimen.def_drawer_elevation);
            }
            typedArrayObtainStyledAttributes2.recycle();
            this.mNonDrawerViews = new ArrayList<>();
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th2;
        }
    }

    static boolean A(View view) {
        if (ViewCompat.B(view) != 4 && ViewCompat.B(view) != 2) {
            return true;
        }
        return false;
    }

    private Drawable O() {
        int iD = ViewCompat.D(this);
        if (iD == 0) {
            Drawable drawable = this.mShadowStart;
            if (drawable != null) {
                H(drawable, iD);
                return this.mShadowStart;
            }
        } else {
            Drawable drawable2 = this.mShadowEnd;
            if (drawable2 != null) {
                H(drawable2, iD);
                return this.mShadowEnd;
            }
        }
        return this.mShadowLeft;
    }

    private Drawable P() {
        int iD = ViewCompat.D(this);
        if (iD == 0) {
            Drawable drawable = this.mShadowEnd;
            if (drawable != null) {
                H(drawable, iD);
                return this.mShadowEnd;
            }
        } else {
            Drawable drawable2 = this.mShadowStart;
            if (drawable2 != null) {
                H(drawable2, iD);
                return this.mShadowStart;
            }
        }
        return this.mShadowRight;
    }

    private void V(View view, boolean z6) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((!z6 && !D(childAt)) || (z6 && childAt == view)) {
                ViewCompat.F0(childAt, 1);
            } else {
                ViewCompat.F0(childAt, 4);
            }
        }
    }

    private boolean m(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent motionEventV = v(motionEvent, view);
            boolean zDispatchGenericMotionEvent = view.dispatchGenericMotionEvent(motionEventV);
            motionEventV.recycle();
            return zDispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean zDispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return zDispatchGenericMotionEvent2;
    }

    private MotionEvent v(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.mChildInvertedMatrix == null) {
                this.mChildInvertedMatrix = new Matrix();
            }
            matrix.invert(this.mChildInvertedMatrix);
            motionEventObtain.transform(this.mChildInvertedMatrix);
        }
        return motionEventObtain;
    }

    private static boolean x(View view) {
        Drawable background = view.getBackground();
        if (background == null || background.getOpacity() != -1) {
            return false;
        }
        return true;
    }

    private boolean y() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((LayoutParams) getChildAt(i10).getLayoutParams()).isPeeking) {
                return true;
            }
        }
        return false;
    }

    private boolean z() {
        if (p() != null) {
            return true;
        }
        return false;
    }

    boolean B(View view) {
        if (((LayoutParams) view.getLayoutParams()).gravity == 0) {
            return true;
        }
        return false;
    }

    public boolean C(@NonNull View view) {
        if (D(view)) {
            if ((((LayoutParams) view.getLayoutParams()).openState & 1) == 1) {
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    boolean D(View view) {
        int iB = GravityCompat.b(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.D(view));
        if ((iB & 3) != 0 || (iB & 5) != 0) {
            return true;
        }
        return false;
    }

    public boolean E(int i10) {
        View viewN = n(i10);
        if (viewN != null) {
            return F(viewN);
        }
        return false;
    }

    public boolean F(@NonNull View view) {
        if (D(view)) {
            if (((LayoutParams) view.getLayoutParams()).onScreen > 0.0f) {
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    void I(View view, float f) {
        float fU = u(view);
        float width = view.getWidth();
        int i10 = ((int) (width * f)) - ((int) (fU * width));
        if (!c(view, 3)) {
            i10 = -i10;
        }
        view.offsetLeftAndRight(i10);
        T(view, f);
    }

    public void K(int i10, boolean z6) {
        View viewN = n(i10);
        if (viewN != null) {
            M(viewN, z6);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + w(i10));
    }

    public void M(@NonNull View view, boolean z6) {
        if (D(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.mFirstLayout) {
                layoutParams.onScreen = 1.0f;
                layoutParams.openState = 1;
                V(view, true);
                U(view);
            } else if (z6) {
                layoutParams.openState |= 2;
                if (c(view, 3)) {
                    this.mLeftDragger.R(view, 0, view.getTop());
                } else {
                    this.mRightDragger.R(view, getWidth() - view.getWidth(), view.getTop());
                }
            } else {
                I(view, 1.0f);
                W(0, view);
                view.setVisibility(0);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void S(int i10, int i11) {
        View viewN;
        ViewDragHelper viewDragHelper;
        int iB = GravityCompat.b(i11, ViewCompat.D(this));
        if (i11 != 3) {
            if (i11 != 5) {
                if (i11 != 8388611) {
                    if (i11 == 8388613) {
                        this.mLockModeEnd = i10;
                    }
                } else {
                    this.mLockModeStart = i10;
                }
            } else {
                this.mLockModeRight = i10;
            }
        } else {
            this.mLockModeLeft = i10;
        }
        if (i10 != 0) {
            if (iB == 3) {
                viewDragHelper = this.mLeftDragger;
            } else {
                viewDragHelper = this.mRightDragger;
            }
            viewDragHelper.b();
        }
        if (i10 != 1) {
            if (i10 == 2 && (viewN = n(iB)) != null) {
                L(viewN);
                return;
            }
            return;
        }
        View viewN2 = n(iB);
        if (viewN2 != null) {
            f(viewN2);
        }
    }

    void T(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f == layoutParams.onScreen) {
            return;
        }
        layoutParams.onScreen = f;
        l(view, f);
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
            if (D(childAt)) {
                if (C(childAt)) {
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
        if (o() == null && !D(view)) {
            ViewCompat.F0(view, 1);
        } else {
            ViewCompat.F0(view, 4);
        }
        if (!CAN_HIDE_DESCENDANTS) {
            ViewCompat.u0(view, this.mChildAccessibilityDelegate);
        }
    }

    boolean c(View view, int i10) {
        if ((t(view) & i10) == i10) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < childCount; i10++) {
            fMax = Math.max(fMax, ((LayoutParams) getChildAt(i10).getLayoutParams()).onScreen);
        }
        this.mScrimOpacity = fMax;
        boolean zN = this.mLeftDragger.n(true);
        boolean zN2 = this.mRightDragger.n(true);
        if (zN || zN2) {
            ViewCompat.k0(this);
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() != 10 && this.mScrimOpacity > 0.0f) {
            int childCount = getChildCount();
            if (childCount != 0) {
                float x6 = motionEvent.getX();
                float y6 = motionEvent.getY();
                for (int i10 = childCount - 1; i10 >= 0; i10--) {
                    View childAt = getChildAt(i10);
                    if (G(x6, y6, childAt) && !B(childAt) && m(motionEvent, childAt)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    public void e(int i10, boolean z6) {
        View viewN = n(i10);
        if (viewN != null) {
            g(viewN, z6);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + w(i10));
    }

    public void g(@NonNull View view, boolean z6) {
        if (D(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.mFirstLayout) {
                layoutParams.onScreen = 0.0f;
                layoutParams.openState = 0;
            } else if (z6) {
                layoutParams.openState |= 4;
                if (c(view, 3)) {
                    this.mLeftDragger.R(view, -view.getWidth(), view.getTop());
                } else {
                    this.mRightDragger.R(view, getWidth(), view.getTop());
                }
            } else {
                I(view, 0.0f);
                W(0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    void i(boolean z6) {
        boolean zR;
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (D(childAt) && (!z6 || layoutParams.isPeeking)) {
                int width = childAt.getWidth();
                if (c(childAt, 3)) {
                    zR = this.mLeftDragger.R(childAt, -width, childAt.getTop());
                } else {
                    zR = this.mRightDragger.R(childAt, getWidth(), childAt.getTop());
                }
                z10 |= zR;
                layoutParams.isPeeking = false;
            }
        }
        this.mLeftCallback.removeCallbacks();
        this.mRightCallback.removeCallbacks();
        if (z10) {
            invalidate();
        }
    }

    void j(View view) {
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
            V(view, false);
            U(view);
            if (hasWindowFocus() && (rootView = getRootView()) != null) {
                rootView.sendAccessibilityEvent(32);
            }
        }
    }

    void k(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.openState & 1) == 0) {
            layoutParams.openState = 1;
            List<DrawerListener> list = this.mListeners;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.mListeners.get(size).onDrawerOpened(view);
                }
            }
            V(view, true);
            U(view);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    View n(int i10) {
        int iB = GravityCompat.b(i10, ViewCompat.D(this)) & 7;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if ((t(childAt) & 7) == iB) {
                return childAt;
            }
        }
        return null;
    }

    View o() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((((LayoutParams) childAt.getLayoutParams()).openState & 1) == 1) {
                return childAt;
            }
        }
        return null;
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
        int systemWindowInsetTop;
        super.onDraw(canvas);
        if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null) {
            Object obj = this.mLastInsets;
            if (obj != null) {
                systemWindowInsetTop = ((WindowInsets) obj).getSystemWindowInsetTop();
            } else {
                systemWindowInsetTop = 0;
            }
            if (systemWindowInsetTop > 0) {
                this.mStatusBarBackground.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.mStatusBarBackground.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0031  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        View viewU;
        int actionMasked = motionEvent.getActionMasked();
        boolean zQ = this.mLeftDragger.Q(motionEvent) | this.mRightDragger.Q(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        i(true);
                        this.mChildrenCanceledTouch = false;
                    }
                } else if (this.mLeftDragger.e(3)) {
                    this.mLeftCallback.removeCallbacks();
                    this.mRightCallback.removeCallbacks();
                }
            } else {
                i(true);
                this.mChildrenCanceledTouch = false;
            }
            z6 = false;
        } else {
            float x6 = motionEvent.getX();
            float y6 = motionEvent.getY();
            this.mInitialMotionX = x6;
            this.mInitialMotionY = y6;
            if (this.mScrimOpacity > 0.0f && (viewU = this.mLeftDragger.u((int) x6, (int) y6)) != null && B(viewU)) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.mChildrenCanceledTouch = false;
        }
        if (zQ || z6 || y() || this.mChildrenCanceledTouch) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        Q();
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

    View p() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (D(childAt) && F(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    public int q(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int iD = ViewCompat.D(this);
        if (i10 != 3) {
            if (i10 != 5) {
                if (i10 != 8388611) {
                    if (i10 == 8388613) {
                        int i15 = this.mLockModeEnd;
                        if (i15 != 3) {
                            return i15;
                        }
                        if (iD == 0) {
                            i14 = this.mLockModeRight;
                        } else {
                            i14 = this.mLockModeLeft;
                        }
                        if (i14 != 3) {
                            return i14;
                        }
                        return 0;
                    }
                    return 0;
                }
                int i16 = this.mLockModeStart;
                if (i16 != 3) {
                    return i16;
                }
                if (iD == 0) {
                    i13 = this.mLockModeLeft;
                } else {
                    i13 = this.mLockModeRight;
                }
                if (i13 != 3) {
                    return i13;
                }
                return 0;
            }
            int i17 = this.mLockModeRight;
            if (i17 != 3) {
                return i17;
            }
            if (iD == 0) {
                i12 = this.mLockModeEnd;
            } else {
                i12 = this.mLockModeStart;
            }
            if (i12 != 3) {
                return i12;
            }
            return 0;
        }
        int i18 = this.mLockModeLeft;
        if (i18 != 3) {
            return i18;
        }
        if (iD == 0) {
            i11 = this.mLockModeStart;
        } else {
            i11 = this.mLockModeEnd;
        }
        if (i11 != 3) {
            return i11;
        }
        return 0;
    }

    public int r(@NonNull View view) {
        if (D(view)) {
            return q(((LayoutParams) view.getLayoutParams()).gravity);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        super.requestDisallowInterceptTouchEvent(z6);
        if (z6) {
            i(true);
        }
    }

    @Nullable
    public CharSequence s(int i10) {
        int iB = GravityCompat.b(i10, ViewCompat.D(this));
        if (iB == 3) {
            return this.mTitleLeft;
        }
        if (iB == 5) {
            return this.mTitleRight;
        }
        return null;
    }

    int t(View view) {
        return GravityCompat.b(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.D(this));
    }

    float u(View view) {
        return ((LayoutParams) view.getLayoutParams()).onScreen;
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int FLAG_IS_CLOSING = 4;
        private static final int FLAG_IS_OPENED = 1;
        private static final int FLAG_IS_OPENING = 2;
        public int gravity;
        boolean isPeeking;
        float onScreen;
        int openState;

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
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

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = 0;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
