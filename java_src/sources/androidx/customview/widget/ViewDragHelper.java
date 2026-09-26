package androidx.customview.widget;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class ViewDragHelper {
    private static final int BASE_SETTLE_DURATION = 256;
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    private static final int EDGE_SIZE = 20;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final Interpolator sInterpolator = new Interpolator() { // from class: androidx.customview.widget.ViewDragHelper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f6 = f - 1.0f;
            return (f6 * f6 * f6 * f6 * f6) + 1.0f;
        }
    };
    private final Callback mCallback;
    private View mCapturedView;
    private final int mDefaultEdgeSize;
    private int mDragState;
    private int[] mEdgeDragsInProgress;
    private int[] mEdgeDragsLocked;
    private int mEdgeSize;
    private int[] mInitialEdgesTouched;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private float mMaxVelocity;
    private float mMinVelocity;
    private final ViewGroup mParentView;
    private int mPointersDown;
    private boolean mReleaseInProgress;
    private OverScroller mScroller;
    private int mTouchSlop;
    private int mTrackingEdges;
    private VelocityTracker mVelocityTracker;
    private int mActivePointerId = -1;
    private final Runnable mSetIdleRunnable = new Runnable() { // from class: androidx.customview.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.L(0);
        }
    };

    public static abstract class Callback {
        public int clampViewPositionHorizontal(@NonNull View view, int i10, int i11) {
            return 0;
        }

        public int clampViewPositionVertical(@NonNull View view, int i10, int i11) {
            return 0;
        }

        public int getOrderedChildIndex(int i10) {
            return i10;
        }

        public int getViewHorizontalDragRange(@NonNull View view) {
            return 0;
        }

        public int getViewVerticalDragRange(@NonNull View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i10, int i11) {
        }

        public boolean onEdgeLock(int i10) {
            return false;
        }

        public void onEdgeTouched(int i10, int i11) {
        }

        public void onViewCaptured(@NonNull View view, int i10) {
        }

        public void onViewDragStateChanged(int i10) {
        }

        public void onViewPositionChanged(@NonNull View view, int i10, int i11, @Px int i12, @Px int i13) {
        }

        public void onViewReleased(@NonNull View view, float f, float f6) {
        }

        public abstract boolean tryCaptureView(@NonNull View view, int i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.customview.widget.ViewDragHelper$Callback] */
    /* JADX WARN: Type inference failed for: r4v2 */
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
    private void I(float f, float f6, int i10) {
        int i11;
        boolean zD = d(f, f6, i10, 1);
        ?? r1 = zD;
        if (d(f6, f, i10, 4)) {
            r1 = (zD ? 1 : 0) | 4;
        }
        ?? r5 = r1;
        if (d(f, f6, i10, 2)) {
            r5 = (r1 == true ? 1 : 0) | 2;
        }
        ?? r10 = r5;
        if (d(f6, f, i10, 8)) {
            i11 = (r5 == true ? 1 : 0) | 8;
        }
        if (r10 == 0) {
            r10 = i11;
            return;
        }
        r10 = i11;
        int[] iArr = this.mEdgeDragsInProgress;
        iArr[i10] = (iArr[i10] | r10) == true ? 1 : 0;
        this.mCallback.onEdgeDragStarted(r10, i10);
    }

    private boolean g(View view, float f, float f6) {
        if (view == null) {
            return false;
        }
        boolean z6 = this.mCallback.getViewHorizontalDragRange(view) > 0;
        boolean z10 = this.mCallback.getViewVerticalDragRange(view) > 0;
        if (z6 && z10) {
            float f7 = (f * f) + (f6 * f6);
            int i10 = this.mTouchSlop;
            return f7 > ((float) (i10 * i10));
        }
        if (z6) {
            return Math.abs(f) > ((float) this.mTouchSlop);
        }
        return z10 && Math.abs(f6) > ((float) this.mTouchSlop);
    }

    private void q(float f, float f6) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, f, f6);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            L(0);
        }
    }

    @Px
    public int A() {
        return this.mTouchSlop;
    }

    public int B() {
        return this.mDragState;
    }

    public boolean D(int i10) {
        return ((1 << i10) & this.mPointersDown) != 0;
    }

    public boolean F(@Nullable View view, int i10, int i11) {
        return view != null && i10 >= view.getLeft() && i10 < view.getRight() && i11 >= view.getTop() && i11 < view.getBottom();
    }

    public void M(@IntRange @Px int i10) {
        this.mEdgeSize = i10;
    }

    public void N(int i10) {
        this.mTrackingEdges = i10;
    }

    public void O(float f) {
        this.mMinVelocity = f;
    }

    public void b() {
        this.mActivePointerId = -1;
        j();
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    @Nullable
    public View w() {
        return this.mCapturedView;
    }

    @Px
    public int x() {
        return this.mDefaultEdgeSize;
    }

    @Px
    public int y() {
        return this.mEdgeSize;
    }

    private void H() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        q(h(this.mVelocityTracker.getXVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), h(this.mVelocityTracker.getYVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
    }

    private void j() {
        float[] fArr = this.mInitialMotionX;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.mInitialMotionY, 0.0f);
        Arrays.fill(this.mLastMotionX, 0.0f);
        Arrays.fill(this.mLastMotionY, 0.0f);
        Arrays.fill(this.mInitialEdgesTouched, 0);
        Arrays.fill(this.mEdgeDragsInProgress, 0);
        Arrays.fill(this.mEdgeDragsLocked, 0);
        this.mPointersDown = 0;
    }

    private void k(int i10) {
        if (this.mInitialMotionX == null || !D(i10)) {
            return;
        }
        this.mInitialMotionX[i10] = 0.0f;
        this.mInitialMotionY[i10] = 0.0f;
        this.mLastMotionX[i10] = 0.0f;
        this.mLastMotionY[i10] = 0.0f;
        this.mInitialEdgesTouched[i10] = 0;
        this.mEdgeDragsInProgress[i10] = 0;
        this.mEdgeDragsLocked[i10] = 0;
        this.mPointersDown = (~(1 << i10)) & this.mPointersDown;
    }

    private int l(int i10, int i11, int i12) {
        if (i10 == 0) {
            return 0;
        }
        int width = this.mParentView.getWidth();
        float f = width / 2;
        float fR = f + (r(Math.min(1.0f, Math.abs(i10) / width)) * f);
        int iAbs = Math.abs(i11);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fR / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i10) / i12) + 1.0f) * 256.0f), 600);
    }

    private int m(View view, int i10, int i11, int i12, int i13) {
        float f;
        float f6;
        float f7;
        float f10;
        int i14 = i(i12, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int i15 = i(i13, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int iAbs = Math.abs(i10);
        int iAbs2 = Math.abs(i11);
        int iAbs3 = Math.abs(i14);
        int iAbs4 = Math.abs(i15);
        int i16 = iAbs3 + iAbs4;
        int i17 = iAbs + iAbs2;
        if (i14 != 0) {
            f = iAbs3;
            f6 = i16;
        } else {
            f = iAbs;
            f6 = i17;
        }
        float f11 = f / f6;
        if (i15 != 0) {
            f7 = iAbs4;
            f10 = i16;
        } else {
            f7 = iAbs2;
            f10 = i17;
        }
        return (int) ((l(i10, i14, this.mCallback.getViewHorizontalDragRange(view)) * f11) + (l(i11, i15, this.mCallback.getViewVerticalDragRange(view)) * (f7 / f10)));
    }

    public static ViewDragHelper p(@NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    private float r(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private void s(int i10, int i11, int i12, int i13) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        if (i12 != 0) {
            i10 = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, i10, i12);
            ViewCompat.d0(this.mCapturedView, i10 - left);
        }
        int i14 = i10;
        if (i13 != 0) {
            i11 = this.mCallback.clampViewPositionVertical(this.mCapturedView, i11, i13);
            ViewCompat.e0(this.mCapturedView, i11 - top);
        }
        int i15 = i11;
        if (i12 == 0 && i13 == 0) {
            return;
        }
        this.mCallback.onViewPositionChanged(this.mCapturedView, i14, i15, i14 - left, i15 - top);
    }

    private void t(int i10) {
        float[] fArr = this.mInitialMotionX;
        if (fArr == null || fArr.length <= i10) {
            int i11 = i10 + 1;
            float[] fArr2 = new float[i11];
            float[] fArr3 = new float[i11];
            float[] fArr4 = new float[i11];
            float[] fArr5 = new float[i11];
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int[] iArr3 = new int[i11];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.mInitialMotionY;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.mLastMotionX;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.mLastMotionY;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.mInitialEdgesTouched;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.mEdgeDragsInProgress;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.mEdgeDragsLocked;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.mInitialMotionX = fArr2;
            this.mInitialMotionY = fArr3;
            this.mLastMotionX = fArr4;
            this.mLastMotionY = fArr5;
            this.mInitialEdgesTouched = iArr;
            this.mEdgeDragsInProgress = iArr2;
            this.mEdgeDragsLocked = iArr3;
        }
    }

    private boolean v(int i10, int i11, int i12, int i13) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        int i14 = i10 - left;
        int i15 = i11 - top;
        if (i14 == 0 && i15 == 0) {
            this.mScroller.abortAnimation();
            L(0);
            return false;
        }
        this.mScroller.startScroll(left, top, i14, i15, m(this.mCapturedView, i14, i15, i12, i13));
        L(2);
        return true;
    }

    private int z(int i10, int i11) {
        int i12 = i10 < this.mParentView.getLeft() + this.mEdgeSize ? 1 : 0;
        if (i11 < this.mParentView.getTop() + this.mEdgeSize) {
            i12 |= 4;
        }
        if (i10 > this.mParentView.getRight() - this.mEdgeSize) {
            i12 |= 2;
        }
        return i11 > this.mParentView.getBottom() - this.mEdgeSize ? i12 | 8 : i12;
    }

    public boolean C(int i10, int i11) {
        return F(this.mCapturedView, i10, i11);
    }

    void L(int i10) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != i10) {
            this.mDragState = i10;
            this.mCallback.onViewDragStateChanged(i10);
            if (this.mDragState == 0) {
                this.mCapturedView = null;
            }
        }
    }

    public boolean P(int i10, int i11) {
        if (this.mReleaseInProgress) {
            return v(i10, i11, (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ff  */
    public boolean Q(@NonNull MotionEvent motionEvent) {
        boolean z6;
        View viewU;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            b();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                b();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    b();
                } else if (actionMasked == 5) {
                    int pointerId = motionEvent.getPointerId(actionIndex);
                    float x6 = motionEvent.getX(actionIndex);
                    float y6 = motionEvent.getY(actionIndex);
                    J(x6, y6, pointerId);
                    int i10 = this.mDragState;
                    if (i10 == 0) {
                        int i11 = this.mInitialEdgesTouched[pointerId];
                        int i12 = this.mTrackingEdges;
                        if ((i11 & i12) != 0) {
                            this.mCallback.onEdgeTouched(i11 & i12, pointerId);
                        }
                    } else if (i10 == 2 && (viewU = u((int) x6, (int) y6)) == this.mCapturedView) {
                        S(viewU, pointerId);
                    }
                } else if (actionMasked == 6) {
                    k(motionEvent.getPointerId(actionIndex));
                }
            } else if (this.mInitialMotionX != null && this.mInitialMotionY != null) {
                int pointerCount = motionEvent.getPointerCount();
                for (int i13 = 0; i13 < pointerCount; i13++) {
                    int pointerId2 = motionEvent.getPointerId(i13);
                    if (E(pointerId2)) {
                        float x10 = motionEvent.getX(i13);
                        float y10 = motionEvent.getY(i13);
                        float f = x10 - this.mInitialMotionX[pointerId2];
                        float f6 = y10 - this.mInitialMotionY[pointerId2];
                        View viewU2 = u((int) x10, (int) y10);
                        boolean z10 = viewU2 != null && g(viewU2, f, f6);
                        if (!z10) {
                            I(f, f6, pointerId2);
                            if (this.mDragState != 1) {
                                break;
                            }
                        } else {
                            int left = viewU2.getLeft();
                            int i14 = (int) f;
                            int iClampViewPositionHorizontal = this.mCallback.clampViewPositionHorizontal(viewU2, left + i14, i14);
                            int top = viewU2.getTop();
                            int i15 = (int) f6;
                            int iClampViewPositionVertical = this.mCallback.clampViewPositionVertical(viewU2, top + i15, i15);
                            int viewHorizontalDragRange = this.mCallback.getViewHorizontalDragRange(viewU2);
                            int viewVerticalDragRange = this.mCallback.getViewVerticalDragRange(viewU2);
                            if ((viewHorizontalDragRange == 0 || (viewHorizontalDragRange > 0 && iClampViewPositionHorizontal == left)) && (viewVerticalDragRange == 0 || (viewVerticalDragRange > 0 && iClampViewPositionVertical == top))) {
                                break;
                            }
                            I(f, f6, pointerId2);
                            if (this.mDragState != 1 || (z10 && S(viewU2, pointerId2))) {
                                break;
                            }
                        }
                    }
                }
                K(motionEvent);
            }
            z6 = false;
        } else {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            z6 = false;
            int pointerId3 = motionEvent.getPointerId(0);
            J(x11, y11, pointerId3);
            View viewU3 = u((int) x11, (int) y11);
            if (viewU3 == this.mCapturedView && this.mDragState == 2) {
                S(viewU3, pointerId3);
            }
            int i16 = this.mInitialEdgesTouched[pointerId3];
            int i17 = this.mTrackingEdges;
            if ((i16 & i17) != 0) {
                this.mCallback.onEdgeTouched(i16 & i17, pointerId3);
            }
        }
        if (this.mDragState == 1) {
            return true;
        }
        return z6;
    }

    public boolean R(@NonNull View view, int i10, int i11) {
        this.mCapturedView = view;
        this.mActivePointerId = -1;
        boolean zV = v(i10, i11, 0, 0);
        if (!zV && this.mDragState == 0 && this.mCapturedView != null) {
            this.mCapturedView = null;
        }
        return zV;
    }

    boolean S(View view, int i10) {
        if (view == this.mCapturedView && this.mActivePointerId == i10) {
            return true;
        }
        if (view == null || !this.mCallback.tryCaptureView(view, i10)) {
            return false;
        }
        this.mActivePointerId = i10;
        c(view, i10);
        return true;
    }

    public boolean e(int i10) {
        int length = this.mInitialMotionX.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (f(i10, i11)) {
                return true;
            }
        }
        return false;
    }

    public boolean n(boolean z6) {
        if (this.mDragState == 2) {
            boolean zComputeScrollOffset = this.mScroller.computeScrollOffset();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            int left = currX - this.mCapturedView.getLeft();
            int top = currY - this.mCapturedView.getTop();
            if (left != 0) {
                ViewCompat.d0(this.mCapturedView, left);
            }
            if (top != 0) {
                ViewCompat.e0(this.mCapturedView, top);
            }
            if (left != 0 || top != 0) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.mScroller.getFinalX() && currY == this.mScroller.getFinalY()) {
                this.mScroller.abortAnimation();
            } else if (!zComputeScrollOffset) {
            }
            if (z6) {
                this.mParentView.post(this.mSetIdleRunnable);
            } else {
                L(0);
            }
        }
        return this.mDragState == 2;
    }

    @Nullable
    public View u(int i10, int i11) {
        for (int childCount = this.mParentView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(childCount));
            if (i10 >= childAt.getLeft() && i10 < childAt.getRight() && i11 >= childAt.getTop() && i11 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private ViewDragHelper(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        if (viewGroup != null) {
            if (callback != null) {
                this.mParentView = viewGroup;
                this.mCallback = callback;
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                int i10 = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
                this.mDefaultEdgeSize = i10;
                this.mEdgeSize = i10;
                this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
                this.mMaxVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
                this.mMinVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                this.mScroller = new OverScroller(context, sInterpolator);
                return;
            }
            throw new IllegalArgumentException("Callback may not be null");
        }
        throw new IllegalArgumentException("Parent view may not be null");
    }

    private boolean E(int i10) {
        if (!D(i10)) {
            Log.e(TAG, "Ignoring pointerId=" + i10 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
            return false;
        }
        return true;
    }

    private void J(float f, float f6, int i10) {
        t(i10);
        float[] fArr = this.mInitialMotionX;
        this.mLastMotionX[i10] = f;
        fArr[i10] = f;
        float[] fArr2 = this.mInitialMotionY;
        this.mLastMotionY[i10] = f6;
        fArr2[i10] = f6;
        this.mInitialEdgesTouched[i10] = z((int) f, (int) f6);
        this.mPointersDown |= 1 << i10;
    }

    private void K(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i10 = 0; i10 < pointerCount; i10++) {
            int pointerId = motionEvent.getPointerId(i10);
            if (E(pointerId)) {
                float x6 = motionEvent.getX(i10);
                float y6 = motionEvent.getY(i10);
                this.mLastMotionX[pointerId] = x6;
                this.mLastMotionY[pointerId] = y6;
            }
        }
    }

    private boolean d(float f, float f6, int i10, int i11) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f6);
        if ((this.mInitialEdgesTouched[i10] & i11) != i11 || (this.mTrackingEdges & i11) == 0 || (this.mEdgeDragsLocked[i10] & i11) == i11 || (this.mEdgeDragsInProgress[i10] & i11) == i11) {
            return false;
        }
        int i12 = this.mTouchSlop;
        if (fAbs <= i12 && fAbs2 <= i12) {
            return false;
        }
        if (fAbs < fAbs2 * 0.5f && this.mCallback.onEdgeLock(i11)) {
            int[] iArr = this.mEdgeDragsLocked;
            iArr[i10] = iArr[i10] | i11;
            return false;
        }
        if ((this.mEdgeDragsInProgress[i10] & i11) != 0 || fAbs <= this.mTouchSlop) {
            return false;
        }
        return true;
    }

    private float h(float f, float f6, float f7) {
        float fAbs = Math.abs(f);
        if (fAbs < f6) {
            return 0.0f;
        }
        if (fAbs > f7) {
            if (f <= 0.0f) {
                return -f7;
            }
            return f7;
        }
        return f;
    }

    private int i(int i10, int i11, int i12) {
        int iAbs = Math.abs(i10);
        if (iAbs < i11) {
            return 0;
        }
        if (iAbs > i12) {
            if (i10 <= 0) {
                return -i12;
            }
            return i12;
        }
        return i10;
    }

    public static ViewDragHelper o(@NonNull ViewGroup viewGroup, float f, @NonNull Callback callback) {
        ViewDragHelper viewDragHelperP = p(viewGroup, callback);
        viewDragHelperP.mTouchSlop = (int) (viewDragHelperP.mTouchSlop * (1.0f / f));
        return viewDragHelperP;
    }

    public void G(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            b();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i10 = 0;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                int pointerId = motionEvent.getPointerId(actionIndex);
                                if (this.mDragState == 1 && pointerId == this.mActivePointerId) {
                                    int pointerCount = motionEvent.getPointerCount();
                                    while (i10 < pointerCount) {
                                        int pointerId2 = motionEvent.getPointerId(i10);
                                        if (pointerId2 != this.mActivePointerId) {
                                            View viewU = u((int) motionEvent.getX(i10), (int) motionEvent.getY(i10));
                                            View view = this.mCapturedView;
                                            if (viewU == view && S(view, pointerId2)) {
                                                if (this.mActivePointerId == -1) {
                                                    break;
                                                }
                                            }
                                        }
                                        i10++;
                                    }
                                    H();
                                }
                                k(pointerId);
                                return;
                            }
                            return;
                        }
                        int pointerId3 = motionEvent.getPointerId(actionIndex);
                        float x6 = motionEvent.getX(actionIndex);
                        float y6 = motionEvent.getY(actionIndex);
                        J(x6, y6, pointerId3);
                        if (this.mDragState == 0) {
                            S(u((int) x6, (int) y6), pointerId3);
                            int i11 = this.mInitialEdgesTouched[pointerId3];
                            int i12 = this.mTrackingEdges;
                            if ((i11 & i12) != 0) {
                                this.mCallback.onEdgeTouched(i11 & i12, pointerId3);
                                return;
                            }
                            return;
                        }
                        if (C((int) x6, (int) y6)) {
                            S(this.mCapturedView, pointerId3);
                            return;
                        }
                        return;
                    }
                    if (this.mDragState == 1) {
                        q(0.0f, 0.0f);
                    }
                    b();
                    return;
                }
                if (this.mDragState == 1) {
                    if (E(this.mActivePointerId)) {
                        int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                        float x10 = motionEvent.getX(iFindPointerIndex);
                        float y10 = motionEvent.getY(iFindPointerIndex);
                        float[] fArr = this.mLastMotionX;
                        int i13 = this.mActivePointerId;
                        int i14 = (int) (x10 - fArr[i13]);
                        int i15 = (int) (y10 - this.mLastMotionY[i13]);
                        s(this.mCapturedView.getLeft() + i14, this.mCapturedView.getTop() + i15, i14, i15);
                        K(motionEvent);
                        return;
                    }
                    return;
                }
                int pointerCount2 = motionEvent.getPointerCount();
                while (i10 < pointerCount2) {
                    int pointerId4 = motionEvent.getPointerId(i10);
                    if (E(pointerId4)) {
                        float x11 = motionEvent.getX(i10);
                        float y11 = motionEvent.getY(i10);
                        float f = x11 - this.mInitialMotionX[pointerId4];
                        float f6 = y11 - this.mInitialMotionY[pointerId4];
                        I(f, f6, pointerId4);
                        if (this.mDragState != 1) {
                            View viewU2 = u((int) x11, (int) y11);
                            if (g(viewU2, f, f6) && S(viewU2, pointerId4)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    i10++;
                }
                K(motionEvent);
                return;
            }
            if (this.mDragState == 1) {
                H();
            }
            b();
            return;
        }
        float x12 = motionEvent.getX();
        float y12 = motionEvent.getY();
        int pointerId5 = motionEvent.getPointerId(0);
        View viewU3 = u((int) x12, (int) y12);
        J(x12, y12, pointerId5);
        S(viewU3, pointerId5);
        int i16 = this.mInitialEdgesTouched[pointerId5];
        int i17 = this.mTrackingEdges;
        if ((i16 & i17) != 0) {
            this.mCallback.onEdgeTouched(i16 & i17, pointerId5);
        }
    }

    public void a() {
        b();
        if (this.mDragState == 2) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int currX2 = this.mScroller.getCurrX();
            int currY2 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        L(0);
    }

    public void c(@NonNull View view, int i10) {
        if (view.getParent() == this.mParentView) {
            this.mCapturedView = view;
            this.mActivePointerId = i10;
            this.mCallback.onViewCaptured(view, i10);
            L(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.mParentView + ")");
    }

    public boolean f(int i10, int i11) {
        boolean z6;
        boolean z10;
        if (!D(i11)) {
            return false;
        }
        if ((i10 & 1) == 1) {
            z6 = true;
        } else {
            z6 = false;
        }
        if ((i10 & 2) == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        float f = this.mLastMotionX[i11] - this.mInitialMotionX[i11];
        float f6 = this.mLastMotionY[i11] - this.mInitialMotionY[i11];
        if (z6 && z10) {
            float f7 = (f * f) + (f6 * f6);
            int i12 = this.mTouchSlop;
            if (f7 <= i12 * i12) {
                return false;
            }
            return true;
        }
        if (z6) {
            if (Math.abs(f) <= this.mTouchSlop) {
                return false;
            }
            return true;
        }
        if (!z10 || Math.abs(f6) <= this.mTouchSlop) {
            return false;
        }
        return true;
    }
}
