package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.R;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {
    static final Class<?>[] CONSTRUCTOR_PARAMS;
    static final int EVENT_NESTED_SCROLL = 1;
    static final int EVENT_PRE_DRAW = 0;
    static final int EVENT_VIEW_REMOVED = 2;
    static final String TAG = "CoordinatorLayout";
    static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    private static final int TYPE_ON_INTERCEPT = 0;
    private static final int TYPE_ON_TOUCH = 1;
    static final String WIDGET_PACKAGE_NAME;
    static final ThreadLocal<Map<String, Constructor<Behavior>>> sConstructors;
    private static final Pools.Pool<Rect> sRectPool;
    private OnApplyWindowInsetsListener mApplyWindowInsetsListener;
    private final int[] mBehaviorConsumed;
    private View mBehaviorTouchView;
    private final DirectedAcyclicGraph<View> mChildDag;
    private final List<View> mDependencySortedChildren;
    private boolean mDisallowInterceptReset;
    private boolean mDrawStatusBarBackground;
    private boolean mIsAttachedToWindow;
    private int[] mKeylines;
    private WindowInsetsCompat mLastInsets;
    private boolean mNeedsPreDrawListener;
    private final NestedScrollingParentHelper mNestedScrollingParentHelper;
    private View mNestedScrollingTarget;
    private final int[] mNestedScrollingV2ConsumedCompat;
    ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;
    private OnPreDrawListener mOnPreDrawListener;
    private Paint mScrimPaint;
    private Drawable mStatusBarBackground;
    private final List<View> mTempDependenciesList;
    private final List<View> mTempList1;

    public interface AttachedBehavior {
        @NonNull
        Behavior getBehavior();
    }

    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull Rect rect) {
            return false;
        }

        @ColorInt
        public int getScrimColor(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5) {
            return ViewCompat.MEASURED_STATE_MASK;
        }

        @FloatRange
        public float getScrimOpacity(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5) {
            return 0.0f;
        }

        public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view) {
            return false;
        }

        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        public void onAttachedToLayoutParams(@NonNull LayoutParams layoutParams) {
        }

        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view) {
            return false;
        }

        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, int i10) {
            return false;
        }

        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, int i10, int i11, int i12, int i13) {
            return false;
        }

        public boolean onNestedFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, float f, float f6, boolean z6) {
            return false;
        }

        public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, float f, float f6) {
            return false;
        }

        @Deprecated
        public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10, int i11, @NonNull int[] iArr) {
        }

        @Deprecated
        public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10, int i11, int i12, int i13) {
        }

        @Deprecated
        public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, @NonNull View view2, int i10) {
        }

        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull Rect rect, boolean z6) {
            return false;
        }

        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull Parcelable parcelable) {
        }

        @Deprecated
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, @NonNull View view2, int i10) {
            return false;
        }

        @Deprecated
        public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view) {
        }

        public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull MotionEvent motionEvent) {
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10, int i11, @NonNull int[] iArr, int i12) {
            if (i12 == 0) {
                onNestedPreScroll(coordinatorLayout, v5, view, i10, i11, iArr);
            }
        }

        @Deprecated
        public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10, int i11, int i12, int i13, int i14) {
            if (i14 == 0) {
                onNestedScroll(coordinatorLayout, v5, view, i10, i11, i12, i13);
            }
        }

        public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, @NonNull View view2, int i10, int i11) {
            if (i11 == 0) {
                onNestedScrollAccepted(coordinatorLayout, v5, view, view2, i10);
            }
        }

        @Nullable
        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, @NonNull View view2, int i10, int i11) {
            if (i11 == 0) {
                return onStartNestedScroll(coordinatorLayout, v5, view, view2, i10);
            }
            return false;
        }

        public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10) {
            if (i10 == 0) {
                onStopNestedScroll(coordinatorLayout, v5, view);
            }
        }

        @Nullable
        public static Object getTag(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).mBehaviorTag;
        }

        public static void setTag(@NonNull View view, @Nullable Object obj) {
            ((LayoutParams) view.getLayoutParams()).mBehaviorTag = obj;
        }

        public boolean blocksInteractionBelow(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5) {
            if (getScrimOpacity(coordinatorLayout, v5) > 0.0f) {
                return true;
            }
            return false;
        }

        public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
            iArr[0] = iArr[0] + i12;
            iArr[1] = iArr[1] + i13;
            onNestedScroll(coordinatorLayout, v5, view, i10, i11, i12, i13, i14);
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    public @interface DefaultBehavior {
        Class<? extends Behavior> value();
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface DispatchChangeEvent {
    }

    private class HierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        HierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.onChildViewsChanged(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int anchorGravity;
        public int dodgeInsetEdges;
        public int gravity;
        public int insetEdge;
        public int keyline;
        View mAnchorDirectChild;
        int mAnchorId;
        View mAnchorView;
        Behavior mBehavior;
        boolean mBehaviorResolved;
        Object mBehaviorTag;
        private boolean mDidAcceptNestedScrollNonTouch;
        private boolean mDidAcceptNestedScrollTouch;
        private boolean mDidBlockInteraction;
        private boolean mDidChangeAfterNestedScroll;
        int mInsetOffsetX;
        int mInsetOffsetY;
        final Rect mLastChildRect;

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.mBehaviorResolved = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.mAnchorId = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.mLastChildRect = new Rect();
        }

        boolean a() {
            return this.mAnchorView == null && this.mAnchorId != -1;
        }

        boolean c() {
            if (this.mBehavior == null) {
                this.mDidBlockInteraction = false;
            }
            return this.mDidBlockInteraction;
        }

        @IdRes
        public int e() {
            return this.mAnchorId;
        }

        @Nullable
        public Behavior f() {
            return this.mBehavior;
        }

        boolean g() {
            return this.mDidChangeAfterNestedScroll;
        }

        Rect h() {
            return this.mLastChildRect;
        }

        boolean j(int i10) {
            if (i10 == 0) {
                return this.mDidAcceptNestedScrollTouch;
            }
            if (i10 != 1) {
                return false;
            }
            return this.mDidAcceptNestedScrollNonTouch;
        }

        void k() {
            this.mDidChangeAfterNestedScroll = false;
        }

        void l(int i10) {
            r(i10, false);
        }

        void m() {
            this.mDidBlockInteraction = false;
        }

        void p(boolean z6) {
            this.mDidChangeAfterNestedScroll = z6;
        }

        void r(int i10, boolean z6) {
            if (i10 == 0) {
                this.mDidAcceptNestedScrollTouch = z6;
            } else {
                if (i10 != 1) {
                    return;
                }
                this.mDidAcceptNestedScrollNonTouch = z6;
            }
        }

        private void n(View view, CoordinatorLayout coordinatorLayout) {
            View viewFindViewById = coordinatorLayout.findViewById(this.mAnchorId);
            this.mAnchorView = viewFindViewById;
            if (viewFindViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.mAnchorDirectChild = null;
                    this.mAnchorView = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.mAnchorId) + " to anchor view " + view);
            }
            if (viewFindViewById == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return;
            }
            for (ViewParent parent = viewFindViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (!coordinatorLayout.isInEditMode()) {
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    this.mAnchorDirectChild = null;
                    this.mAnchorView = null;
                    return;
                }
                if (parent instanceof View) {
                    viewFindViewById = parent;
                }
            }
            this.mAnchorDirectChild = viewFindViewById;
        }

        private boolean t(View view, CoordinatorLayout coordinatorLayout) {
            if (this.mAnchorView.getId() != this.mAnchorId) {
                return false;
            }
            View view2 = this.mAnchorView;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.mAnchorDirectChild = null;
                    this.mAnchorView = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
            this.mAnchorDirectChild = view2;
            return true;
        }

        boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            Behavior behavior;
            return view2 == this.mAnchorDirectChild || s(view2, ViewCompat.D(coordinatorLayout)) || ((behavior = this.mBehavior) != null && behavior.layoutDependsOn(coordinatorLayout, view, view2));
        }

        View d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.mAnchorId == -1) {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return null;
            }
            if (this.mAnchorView == null || !t(view, coordinatorLayout)) {
                n(view, coordinatorLayout);
            }
            return this.mAnchorView;
        }

        boolean i(CoordinatorLayout coordinatorLayout, View view) {
            boolean z6 = this.mDidBlockInteraction;
            if (z6) {
                return true;
            }
            Behavior behavior = this.mBehavior;
            boolean zBlocksInteractionBelow = (behavior != null ? behavior.blocksInteractionBelow(coordinatorLayout, view) : false) | z6;
            this.mDidBlockInteraction = zBlocksInteractionBelow;
            return zBlocksInteractionBelow;
        }

        public void o(@Nullable Behavior behavior) {
            Behavior behavior2 = this.mBehavior;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.onDetachedFromLayoutParams();
                }
                this.mBehavior = behavior;
                this.mBehaviorTag = null;
                this.mBehaviorResolved = true;
                if (behavior != null) {
                    behavior.onAttachedToLayoutParams(this);
                }
            }
        }

        void q(Rect rect) {
            this.mLastChildRect.set(rect);
        }

        LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mBehaviorResolved = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.mAnchorId = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.mLastChildRect = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
            this.gravity = typedArrayObtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.mAnchorId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.anchorGravity = typedArrayObtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.keyline = typedArrayObtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.insetEdge = typedArrayObtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.dodgeInsetEdges = typedArrayObtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            int i10 = R.styleable.CoordinatorLayout_Layout_layout_behavior;
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i10);
            this.mBehaviorResolved = zHasValue;
            if (zHasValue) {
                this.mBehavior = CoordinatorLayout.parseBehavior(context, attributeSet, typedArrayObtainStyledAttributes.getString(i10));
            }
            typedArrayObtainStyledAttributes.recycle();
            Behavior behavior = this.mBehavior;
            if (behavior != null) {
                behavior.onAttachedToLayoutParams(this);
            }
        }

        private boolean s(View view, int i10) {
            int iB = GravityCompat.b(((LayoutParams) view.getLayoutParams()).insetEdge, i10);
            if (iB != 0 && (GravityCompat.b(this.dodgeInsetEdges, i10) & iB) == iB) {
                return true;
            }
            return false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.mBehaviorResolved = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.mAnchorId = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.mLastChildRect = new Rect();
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mBehaviorResolved = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.mAnchorId = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.mLastChildRect = new Rect();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mBehaviorResolved = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.mAnchorId = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.mLastChildRect = new Rect();
        }
    }

    class OnPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        OnPreDrawListener() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.onChildViewsChanged(0);
            return true;
        }
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    private static int clamp(int i10, int i11, int i12) {
        if (i10 < i11) {
            return i11;
        }
        return i10 > i12 ? i12 : i10;
    }

    private static int resolveAnchoredChildGravity(int i10) {
        if (i10 == 0) {
            return 17;
        }
        return i10;
    }

    private static int resolveGravity(int i10) {
        if ((i10 & 7) == 0) {
            i10 |= GravityCompat.START;
        }
        return (i10 & 112) == 0 ? i10 | 48 : i10;
    }

    private static int resolveKeylineGravity(int i10) {
        if (i10 == 0) {
            return 8388661;
        }
        return i10;
    }

    @RestrictTo
    public final WindowInsetsCompat getLastWindowInsets() {
        return this.mLastInsets;
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.mStatusBarBackground;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        onNestedPreScroll(view, i10, i11, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        onNestedScroll(view, i10, i11, i12, i13, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        onNestedScrollAccepted(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return onStartNestedScroll(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState.1
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
        SparseArray<Parcelable> behaviorStates;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i10 = parcel.readInt();
            int[] iArr = new int[i10];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.behaviorStates = new SparseArray<>(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                this.behaviorStates.append(iArr[i11], parcelableArray[i11]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            int size;
            super.writeToParcel(parcel, i10);
            SparseArray<Parcelable> sparseArray = this.behaviorStates;
            if (sparseArray != null) {
                size = sparseArray.size();
            } else {
                size = 0;
            }
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i11 = 0; i11 < size; i11++) {
                iArr[i11] = this.behaviorStates.keyAt(i11);
                parcelableArr[i11] = this.behaviorStates.valueAt(i11);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i10);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    static class ViewElevationComparator implements Comparator<View> {
        ViewElevationComparator() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            float fQ = ViewCompat.Q(view);
            float fQ2 = ViewCompat.Q(view2);
            if (fQ > fQ2) {
                return -1;
            }
            if (fQ < fQ2) {
                return 1;
            }
            return 0;
        }
    }

    static {
        Package r1 = CoordinatorLayout.class.getPackage();
        WIDGET_PACKAGE_NAME = r1 != null ? r1.getName() : null;
        TOP_SORTED_CHILDREN_COMPARATOR = new ViewElevationComparator();
        CONSTRUCTOR_PARAMS = new Class[]{Context.class, AttributeSet.class};
        sConstructors = new ThreadLocal<>();
        sRectPool = new Pools.SynchronizedPool(12);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    @NonNull
    private static Rect acquireTempRect() {
        Rect rectA = sRectPool.a();
        return rectA == null ? new Rect() : rectA;
    }

    private void getDesiredAnchoredChildRectWithoutConstraints(View view, int i10, Rect rect, Rect rect2, LayoutParams layoutParams, int i11, int i12) {
        int iWidth;
        int iHeight;
        int iB = GravityCompat.b(resolveAnchoredChildGravity(layoutParams.gravity), i10);
        int iB2 = GravityCompat.b(resolveGravity(layoutParams.anchorGravity), i10);
        int i13 = iB & 7;
        int i14 = iB & 112;
        int i15 = iB2 & 7;
        int i16 = iB2 & 112;
        if (i15 != 1) {
            iWidth = i15 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i16 != 16) {
            iHeight = i16 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i13 == 1) {
            iWidth -= i11 / 2;
        } else if (i13 != 5) {
            iWidth -= i11;
        }
        if (i14 == 16) {
            iHeight -= i12 / 2;
        } else if (i14 != 80) {
            iHeight -= i12;
        }
        rect2.set(iWidth, iHeight, i11 + iWidth, i12 + iHeight);
    }

    private int getKeyline(int i10) {
        int[] iArr = this.mKeylines;
        if (iArr == null) {
            Log.e(TAG, "No keylines defined for " + this + " - attempted index lookup " + i10);
            return 0;
        }
        if (i10 >= 0 && i10 < iArr.length) {
            return iArr[i10];
        }
        Log.e(TAG, "Keyline index " + i10 + " out of range for " + this);
        return 0;
    }

    private boolean hasDependencies(View view) {
        return this.mChildDag.j(view);
    }

    private boolean performIntercept(MotionEvent motionEvent, int i10) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.mTempList1;
        getTopSortedChildren(list);
        int size = list.size();
        MotionEvent motionEventObtain = null;
        boolean zOnInterceptTouchEvent = false;
        boolean z6 = false;
        for (int i11 = 0; i11 < size; i11++) {
            View view = list.get(i11);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior behaviorF = layoutParams.f();
            if (!(zOnInterceptTouchEvent || z6) || actionMasked == 0) {
                if (!zOnInterceptTouchEvent && behaviorF != null) {
                    if (i10 == 0) {
                        zOnInterceptTouchEvent = behaviorF.onInterceptTouchEvent(this, view, motionEvent);
                    } else if (i10 == 1) {
                        zOnInterceptTouchEvent = behaviorF.onTouchEvent(this, view, motionEvent);
                    }
                    if (zOnInterceptTouchEvent) {
                        this.mBehaviorTouchView = view;
                    }
                }
                boolean zC = layoutParams.c();
                boolean zI = layoutParams.i(this, view);
                z6 = zI && !zC;
                if (zI && !z6) {
                    break;
                }
            } else if (behaviorF != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i10 == 0) {
                    behaviorF.onInterceptTouchEvent(this, view, motionEventObtain);
                } else if (i10 == 1) {
                    behaviorF.onTouchEvent(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zOnInterceptTouchEvent;
    }

    private void prepareChildren() {
        this.mDependencySortedChildren.clear();
        this.mChildDag.c();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            LayoutParams resolvedLayoutParams = getResolvedLayoutParams(childAt);
            resolvedLayoutParams.d(this, childAt);
            this.mChildDag.b(childAt);
            for (int i11 = 0; i11 < childCount; i11++) {
                if (i11 != i10) {
                    View childAt2 = getChildAt(i11);
                    if (resolvedLayoutParams.b(this, childAt, childAt2)) {
                        if (!this.mChildDag.d(childAt2)) {
                            this.mChildDag.b(childAt2);
                        }
                        this.mChildDag.a(childAt2, childAt);
                    }
                }
            }
        }
        this.mDependencySortedChildren.addAll(this.mChildDag.i());
        Collections.reverse(this.mDependencySortedChildren);
    }

    void addPreDrawListener() {
        if (this.mIsAttachedToWindow) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(@NonNull View view) {
        List listG = this.mChildDag.g(view);
        if (listG == null || listG.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < listG.size(); i10++) {
            View view2 = (View) listG.get(i10);
            Behavior behaviorF = ((LayoutParams) view2.getLayoutParams()).f();
            if (behaviorF != null) {
                behaviorF.onDependentViewChanged(this, view2, view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @NonNull
    public List<View> getDependencies(@NonNull View view) {
        List<View> listH = this.mChildDag.h(view);
        this.mTempDependenciesList.clear();
        if (listH != null) {
            this.mTempDependenciesList.addAll(listH);
        }
        return this.mTempDependenciesList;
    }

    @NonNull
    public List<View> getDependents(@NonNull View view) {
        List listG = this.mChildDag.g(view);
        this.mTempDependenciesList.clear();
        if (listG != null) {
            this.mTempDependenciesList.addAll(listG);
        }
        return this.mTempDependenciesList;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.a();
    }

    void offsetChildToAnchor(View view, int i10) {
        Behavior behaviorF;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.mAnchorView != null) {
            Rect rectAcquireTempRect = acquireTempRect();
            Rect rectAcquireTempRect2 = acquireTempRect();
            Rect rectAcquireTempRect3 = acquireTempRect();
            getDescendantRect(layoutParams.mAnchorView, rectAcquireTempRect);
            getChildRect(view, false, rectAcquireTempRect2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            getDesiredAnchoredChildRectWithoutConstraints(view, i10, rectAcquireTempRect, rectAcquireTempRect3, layoutParams, measuredWidth, measuredHeight);
            boolean z6 = (rectAcquireTempRect3.left == rectAcquireTempRect2.left && rectAcquireTempRect3.top == rectAcquireTempRect2.top) ? false : true;
            constrainChildRect(layoutParams, rectAcquireTempRect3, measuredWidth, measuredHeight);
            int i11 = rectAcquireTempRect3.left - rectAcquireTempRect2.left;
            int i12 = rectAcquireTempRect3.top - rectAcquireTempRect2.top;
            if (i11 != 0) {
                ViewCompat.d0(view, i11);
            }
            if (i12 != 0) {
                ViewCompat.e0(view, i12);
            }
            if (z6 && (behaviorF = layoutParams.f()) != null) {
                behaviorF.onDependentViewChanged(this, view, layoutParams.mAnchorView);
            }
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
            releaseTempRect(rectAcquireTempRect3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00ca  */
    final void onChildViewsChanged(int i10) {
        int i11;
        Behavior behaviorF;
        boolean zOnDependentViewChanged;
        int iD = ViewCompat.D(this);
        int size = this.mDependencySortedChildren.size();
        Rect rectAcquireTempRect = acquireTempRect();
        Rect rectAcquireTempRect2 = acquireTempRect();
        Rect rectAcquireTempRect3 = acquireTempRect();
        for (int i12 = 0; i12 < size; i12++) {
            View view = this.mDependencySortedChildren.get(i12);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (i10 != 0 || view.getVisibility() != 8) {
                for (int i13 = 0; i13 < i12; i13++) {
                    if (layoutParams.mAnchorDirectChild == this.mDependencySortedChildren.get(i13)) {
                        offsetChildToAnchor(view, iD);
                    }
                }
                getChildRect(view, true, rectAcquireTempRect2);
                if (layoutParams.insetEdge != 0 && !rectAcquireTempRect2.isEmpty()) {
                    int iB = GravityCompat.b(layoutParams.insetEdge, iD);
                    int i14 = iB & 112;
                    if (i14 == 48) {
                        rectAcquireTempRect.top = Math.max(rectAcquireTempRect.top, rectAcquireTempRect2.bottom);
                    } else if (i14 == 80) {
                        rectAcquireTempRect.bottom = Math.max(rectAcquireTempRect.bottom, getHeight() - rectAcquireTempRect2.top);
                    }
                    int i15 = iB & 7;
                    if (i15 == 3) {
                        rectAcquireTempRect.left = Math.max(rectAcquireTempRect.left, rectAcquireTempRect2.right);
                    } else if (i15 == 5) {
                        rectAcquireTempRect.right = Math.max(rectAcquireTempRect.right, getWidth() - rectAcquireTempRect2.left);
                    }
                }
                if (layoutParams.dodgeInsetEdges != 0 && view.getVisibility() == 0) {
                    offsetChildByInset(view, rectAcquireTempRect, iD);
                }
                if (i10 != 2) {
                    getLastChildRect(view, rectAcquireTempRect3);
                    if (!rectAcquireTempRect3.equals(rectAcquireTempRect2)) {
                        recordLastChildRect(view, rectAcquireTempRect2);
                        for (i11 = i12 + 1; i11 < size; i11++) {
                            View view2 = this.mDependencySortedChildren.get(i11);
                            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                            behaviorF = layoutParams2.f();
                            if (behaviorF == null && behaviorF.layoutDependsOn(this, view2, view)) {
                                if (i10 == 0 && layoutParams2.g()) {
                                    layoutParams2.k();
                                } else {
                                    if (i10 != 2) {
                                        zOnDependentViewChanged = behaviorF.onDependentViewChanged(this, view2, view);
                                    } else {
                                        behaviorF.onDependentViewRemoved(this, view2, view);
                                        zOnDependentViewChanged = true;
                                    }
                                    if (i10 == 1) {
                                        layoutParams2.p(zOnDependentViewChanged);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    while (i11 < size) {
                        View view3 = this.mDependencySortedChildren.get(i11);
                        LayoutParams layoutParams3 = (LayoutParams) view3.getLayoutParams();
                        behaviorF = layoutParams3.f();
                        if (behaviorF == null) {
                        }
                    }
                }
            }
        }
        releaseTempRect(rectAcquireTempRect);
        releaseTempRect(rectAcquireTempRect2);
        releaseTempRect(rectAcquireTempRect3);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:46:0x011f  */
    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int iMax;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        Behavior behaviorF;
        LayoutParams layoutParams;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        prepareChildren();
        ensurePreDrawListener();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int iD = ViewCompat.D(this);
        boolean z6 = iD == 1;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        int i19 = paddingLeft + paddingRight;
        int i20 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z10 = this.mLastInsets != null && ViewCompat.A(this);
        int size3 = this.mDependencySortedChildren.size();
        int i21 = suggestedMinimumWidth;
        int i22 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i23 = 0;
        while (i23 < size3) {
            View view = this.mDependencySortedChildren.get(i23);
            if (view.getVisibility() == 8) {
                i17 = i23;
                i14 = size3;
                i15 = paddingLeft;
            } else {
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                int i24 = layoutParams2.keyline;
                if (i24 < 0 || mode == 0) {
                    i12 = iCombineMeasuredStates;
                } else {
                    int keyline = getKeyline(i24);
                    int iB = GravityCompat.b(resolveKeylineGravity(layoutParams2.gravity), iD) & 7;
                    i12 = iCombineMeasuredStates;
                    if ((iB == 3 && !z6) || (iB == 5 && z6)) {
                        iMax = Math.max(0, (size - paddingRight) - keyline);
                    } else if ((iB == 5 && !z6) || (iB == 3 && z6)) {
                        iMax = Math.max(0, keyline - paddingLeft);
                    }
                    if (z10 || ViewCompat.A(view)) {
                        iMakeMeasureSpec = i10;
                        iMakeMeasureSpec2 = i11;
                    } else {
                        int iK = this.mLastInsets.k() + this.mLastInsets.l();
                        int iM = this.mLastInsets.m() + this.mLastInsets.j();
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iK, mode);
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iM, mode2);
                    }
                    behaviorF = layoutParams2.f();
                    if (behaviorF != null) {
                        layoutParams = layoutParams2;
                        i16 = i12;
                        i17 = i23;
                        i13 = i22;
                        i15 = paddingLeft;
                        i18 = i21;
                        i14 = size3;
                        if (!behaviorF.onMeasureChild(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                        }
                        LayoutParams layoutParams3 = layoutParams;
                        int iMax2 = Math.max(i18, i19 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin);
                        int iMax3 = Math.max(i13, i20 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(i16, view.getMeasuredState());
                        i21 = iMax2;
                        i22 = iMax3;
                    } else {
                        layoutParams = layoutParams2;
                        i13 = i22;
                        i14 = size3;
                        i15 = paddingLeft;
                        i16 = i12;
                        i17 = i23;
                        i18 = i21;
                    }
                    onMeasureChild(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                    LayoutParams layoutParams4 = layoutParams;
                    int iMax4 = Math.max(i18, i19 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams4).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams4).rightMargin);
                    int iMax5 = Math.max(i13, i20 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i16, view.getMeasuredState());
                    i21 = iMax4;
                    i22 = iMax5;
                }
                iMax = 0;
                if (z10) {
                    iMakeMeasureSpec = i10;
                    iMakeMeasureSpec2 = i11;
                } else {
                    iMakeMeasureSpec = i10;
                    iMakeMeasureSpec2 = i11;
                }
                behaviorF = layoutParams2.f();
                if (behaviorF != null) {
                    layoutParams = layoutParams2;
                    i16 = i12;
                    i17 = i23;
                    i13 = i22;
                    i15 = paddingLeft;
                    i18 = i21;
                    i14 = size3;
                    if (!behaviorF.onMeasureChild(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                    }
                    LayoutParams layoutParams5 = layoutParams;
                    int iMax6 = Math.max(i18, i19 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams5).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams5).rightMargin);
                    int iMax7 = Math.max(i13, i20 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams5).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i16, view.getMeasuredState());
                    i21 = iMax6;
                    i22 = iMax7;
                } else {
                    layoutParams = layoutParams2;
                    i13 = i22;
                    i14 = size3;
                    i15 = paddingLeft;
                    i16 = i12;
                    i17 = i23;
                    i18 = i21;
                }
                onMeasureChild(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                LayoutParams layoutParams6 = layoutParams;
                int iMax8 = Math.max(i18, i19 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams6).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams6).rightMargin);
                int iMax9 = Math.max(i13, i20 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams6).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(i16, view.getMeasuredState());
                i21 = iMax8;
                i22 = iMax9;
            }
            i23 = i17 + 1;
            paddingLeft = i15;
            size3 = i14;
        }
        int i25 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(i21, i10, (-16777216) & i25), View.resolveSizeAndState(i22, i11, i25 << 16));
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        Behavior behaviorF;
        int childCount = getChildCount();
        boolean z6 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.j(i12) && (behaviorF = layoutParams.f()) != null) {
                    int[] iArr2 = this.mBehaviorConsumed;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behaviorF.onNestedPreScroll(this, childAt, view, i10, i11, iArr2, i12);
                    int[] iArr3 = this.mBehaviorConsumed;
                    iMax = i10 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.mBehaviorConsumed;
                    iMax2 = i11 > 0 ? Math.max(iMax2, iArr4[1]) : Math.min(iMax2, iArr4[1]);
                    z6 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z6) {
            onChildViewsChanged(1);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
        onNestedScroll(view, i10, i11, i12, i13, 0, this.mNestedScrollingV2ConsumedCompat);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        Behavior behaviorF;
        this.mNestedScrollingParentHelper.c(view, view2, i10, i11);
        this.mNestedScrollingTarget = view2;
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.j(i11) && (behaviorF = layoutParams.f()) != null) {
                behaviorF.onNestedScrollAccepted(this, childAt, view, view2, i10, i11);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.behaviorStates;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id = childAt.getId();
            Behavior behaviorF = getResolvedLayoutParams(childAt).f();
            if (id != -1 && behaviorF != null && (parcelable2 = sparseArray.get(id)) != null) {
                behaviorF.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id = childAt.getId();
            Behavior behaviorF = ((LayoutParams) childAt.getLayoutParams()).f();
            if (id != -1 && behaviorF != null && (parcelableOnSaveInstanceState = behaviorF.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id, parcelableOnSaveInstanceState);
            }
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        int childCount = getChildCount();
        boolean z6 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Behavior behaviorF = layoutParams.f();
                if (behaviorF != null) {
                    boolean zOnStartNestedScroll = behaviorF.onStartNestedScroll(this, childAt, view, view2, i10, i11);
                    z6 |= zOnStartNestedScroll;
                    layoutParams.r(i11, zOnStartNestedScroll);
                } else {
                    layoutParams.r(i11, false);
                }
            }
        }
        return z6;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i10) {
        this.mNestedScrollingParentHelper.e(view, i10);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.j(i10)) {
                Behavior behaviorF = layoutParams.f();
                if (behaviorF != null) {
                    behaviorF.onStopNestedScroll(this, childAt, view, i10);
                }
                layoutParams.l(i10);
                layoutParams.k();
            }
        }
        this.mNestedScrollingTarget = null;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:15:0x0037 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0039  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015 A[PHI: r3
      0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0024, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zPerformIntercept;
        boolean zOnTouchEvent;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.mBehaviorTouchView == null) {
            zPerformIntercept = performIntercept(motionEvent, 1);
            if (!zPerformIntercept) {
                zOnTouchEvent = false;
            }
            motionEventObtain = null;
            if (this.mBehaviorTouchView == null) {
                zOnTouchEvent |= super.onTouchEvent(motionEvent);
            } else if (zPerformIntercept) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                resetTouchBehaviors(false);
            }
            return zOnTouchEvent;
        }
        zPerformIntercept = false;
        Behavior behaviorF = ((LayoutParams) this.mBehaviorTouchView.getLayoutParams()).f();
        if (behaviorF != null) {
            zOnTouchEvent = behaviorF.onTouchEvent(this, this.mBehaviorTouchView, motionEvent);
        } else {
            zOnTouchEvent = false;
        }
        motionEventObtain = null;
        if (this.mBehaviorTouchView == null) {
            zOnTouchEvent |= super.onTouchEvent(motionEvent);
        } else if (zPerformIntercept) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked != 1) {
            resetTouchBehaviors(false);
        } else {
            resetTouchBehaviors(false);
        }
        return zOnTouchEvent;
    }

    void removePreDrawListener() {
        if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = false;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.mStatusBarBackground;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.mStatusBarBackground = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.mStatusBarBackground.setState(getDrawableState());
                }
                DrawableCompat.m(this.mStatusBarBackground, ViewCompat.D(this));
                this.mStatusBarBackground.setVisible(getVisibility() == 0, false);
                this.mStatusBarBackground.setCallback(this);
            }
            ViewCompat.k0(this);
        }
    }

    public void setStatusBarBackgroundColor(@ColorInt int i10) {
        setStatusBarBackground(new ColorDrawable(i10));
    }

    public void setStatusBarBackgroundResource(@DrawableRes int i10) {
        setStatusBarBackground(i10 != 0 ? ContextCompat.getDrawable(getContext(), i10) : null);
    }

    final WindowInsetsCompat setWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        if (ObjectsCompat.a(this.mLastInsets, windowInsetsCompat)) {
            return windowInsetsCompat;
        }
        this.mLastInsets = windowInsetsCompat;
        boolean z6 = false;
        boolean z10 = windowInsetsCompat != null && windowInsetsCompat.m() > 0;
        this.mDrawStatusBarBackground = z10;
        if (!z10 && getBackground() == null) {
            z6 = true;
        }
        setWillNotDraw(z6);
        WindowInsetsCompat windowInsetsCompatDispatchApplyWindowInsetsToBehaviors = dispatchApplyWindowInsetsToBehaviors(windowInsetsCompat);
        requestLayout();
        return windowInsetsCompatDispatchApplyWindowInsetsToBehaviors;
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i10);
        this.mDependencySortedChildren = new ArrayList();
        this.mChildDag = new DirectedAcyclicGraph<>();
        this.mTempList1 = new ArrayList();
        this.mTempDependenciesList = new ArrayList();
        this.mBehaviorConsumed = new int[2];
        this.mNestedScrollingV2ConsumedCompat = new int[2];
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        if (i10 == 0) {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, 0, R.style.Widget_Support_CoordinatorLayout);
        } else {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, i10, 0);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            if (i10 == 0) {
                saveAttributeDataForStyleable(context, R.styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, 0, R.style.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, R.styleable.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
            }
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.mKeylines = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.mKeylines.length;
            for (int i11 = 0; i11 < length; i11++) {
                int[] iArr = this.mKeylines;
                iArr[i11] = (int) (iArr[i11] * f);
            }
        }
        this.mStatusBarBackground = typedArrayObtainStyledAttributes.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        setupForInsets();
        super.setOnHierarchyChangeListener(new HierarchyChangeListener());
        if (ViewCompat.B(this) == 0) {
            ViewCompat.F0(this, 1);
        }
    }

    private void constrainChildRect(LayoutParams layoutParams, Rect rect, int i10, int i11) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i10) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i11) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        rect.set(iMax, iMax2, i10 + iMax, i11 + iMax2);
    }

    private WindowInsetsCompat dispatchApplyWindowInsetsToBehaviors(WindowInsetsCompat windowInsetsCompat) {
        Behavior behaviorF;
        if (windowInsetsCompat.q()) {
            return windowInsetsCompat;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (ViewCompat.A(childAt) && (behaviorF = ((LayoutParams) childAt.getLayoutParams()).f()) != null) {
                windowInsetsCompat = behaviorF.onApplyWindowInsets(this, childAt, windowInsetsCompat);
                if (windowInsetsCompat.q()) {
                    break;
                }
            }
        }
        return windowInsetsCompat;
    }

    private void getTopSortedChildren(List<View> list) {
        int childDrawingOrder;
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i10 = childCount - 1; i10 >= 0; i10--) {
            if (zIsChildrenDrawingOrderEnabled) {
                childDrawingOrder = getChildDrawingOrder(childCount, i10);
            } else {
                childDrawingOrder = i10;
            }
            list.add(getChildAt(childDrawingOrder));
        }
        Comparator<View> comparator = TOP_SORTED_CHILDREN_COMPARATOR;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    private void layoutChild(View view, int i10) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rectAcquireTempRect = acquireTempRect();
        rectAcquireTempRect.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        if (this.mLastInsets != null && ViewCompat.A(this) && !ViewCompat.A(view)) {
            rectAcquireTempRect.left += this.mLastInsets.k();
            rectAcquireTempRect.top += this.mLastInsets.m();
            rectAcquireTempRect.right -= this.mLastInsets.l();
            rectAcquireTempRect.bottom -= this.mLastInsets.j();
        }
        Rect rectAcquireTempRect2 = acquireTempRect();
        GravityCompat.a(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rectAcquireTempRect, rectAcquireTempRect2, i10);
        view.layout(rectAcquireTempRect2.left, rectAcquireTempRect2.top, rectAcquireTempRect2.right, rectAcquireTempRect2.bottom);
        releaseTempRect(rectAcquireTempRect);
        releaseTempRect(rectAcquireTempRect2);
    }

    private void layoutChildWithAnchor(View view, View view2, int i10) {
        Rect rectAcquireTempRect = acquireTempRect();
        Rect rectAcquireTempRect2 = acquireTempRect();
        try {
            getDescendantRect(view2, rectAcquireTempRect);
            getDesiredAnchoredChildRect(view, i10, rectAcquireTempRect, rectAcquireTempRect2);
            view.layout(rectAcquireTempRect2.left, rectAcquireTempRect2.top, rectAcquireTempRect2.right, rectAcquireTempRect2.bottom);
        } finally {
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
        }
    }

    private void layoutChildWithKeyline(View view, int i10, int i11) {
        int i12;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int iB = GravityCompat.b(resolveKeylineGravity(layoutParams.gravity), i11);
        int i13 = iB & 7;
        int i14 = iB & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i11 == 1) {
            i10 = width - i10;
        }
        int keyline = getKeyline(i10) - measuredWidth;
        if (i13 != 1) {
            if (i13 == 5) {
                keyline += measuredWidth;
            }
        } else {
            keyline += measuredWidth / 2;
        }
        if (i14 != 16) {
            if (i14 != 80) {
                i12 = 0;
            } else {
                i12 = measuredHeight;
            }
        } else {
            i12 = measuredHeight / 2;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(keyline, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(i12, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    private void offsetChildByInset(View view, Rect rect, int i10) {
        boolean z6;
        int width;
        int i11;
        int i12;
        int i13;
        int height;
        int i14;
        int i15;
        int i16;
        if (ViewCompat.X(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior behaviorF = layoutParams.f();
            Rect rectAcquireTempRect = acquireTempRect();
            Rect rectAcquireTempRect2 = acquireTempRect();
            rectAcquireTempRect2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (behaviorF != null && behaviorF.getInsetDodgeRect(this, view, rectAcquireTempRect)) {
                if (!rectAcquireTempRect2.contains(rectAcquireTempRect)) {
                    throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectAcquireTempRect.toShortString() + " | Bounds:" + rectAcquireTempRect2.toShortString());
                }
            } else {
                rectAcquireTempRect.set(rectAcquireTempRect2);
            }
            releaseTempRect(rectAcquireTempRect2);
            if (rectAcquireTempRect.isEmpty()) {
                releaseTempRect(rectAcquireTempRect);
                return;
            }
            int iB = GravityCompat.b(layoutParams.dodgeInsetEdges, i10);
            boolean z10 = true;
            if ((iB & 48) == 48 && (i15 = (rectAcquireTempRect.top - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - layoutParams.mInsetOffsetY) < (i16 = rect.top)) {
                setInsetOffsetY(view, i16 - i15);
                z6 = true;
            } else {
                z6 = false;
            }
            if ((iB & 80) == 80 && (height = ((getHeight() - rectAcquireTempRect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + layoutParams.mInsetOffsetY) < (i14 = rect.bottom)) {
                setInsetOffsetY(view, height - i14);
            } else if (!z6) {
                setInsetOffsetY(view, 0);
            }
            if ((iB & 3) == 3 && (i12 = (rectAcquireTempRect.left - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - layoutParams.mInsetOffsetX) < (i13 = rect.left)) {
                setInsetOffsetX(view, i13 - i12);
            } else {
                z10 = false;
            }
            if ((iB & 5) == 5 && (width = ((getWidth() - rectAcquireTempRect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + layoutParams.mInsetOffsetX) < (i11 = rect.right)) {
                setInsetOffsetX(view, width - i11);
            } else if (!z10) {
                setInsetOffsetX(view, 0);
            }
            releaseTempRect(rectAcquireTempRect);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static Behavior parseBehavior(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            String str2 = WIDGET_PACKAGE_NAME;
            if (!TextUtils.isEmpty(str2)) {
                str = str2 + '.' + str;
            }
        }
        try {
            ThreadLocal<Map<String, Constructor<Behavior>>> threadLocal = sConstructors;
            Map<String, Constructor<Behavior>> map = threadLocal.get();
            if (map == null) {
                map = new HashMap<>();
                threadLocal.set(map);
            }
            Constructor<Behavior> constructor = map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(CONSTRUCTOR_PARAMS);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return constructor.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e);
        }
    }

    private static void releaseTempRect(@NonNull Rect rect) {
        rect.setEmpty();
        sRectPool.b(rect);
    }

    private void resetTouchBehaviors(boolean z6) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            Behavior behaviorF = ((LayoutParams) childAt.getLayoutParams()).f();
            if (behaviorF != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z6) {
                    behaviorF.onInterceptTouchEvent(this, childAt, motionEventObtain);
                } else {
                    behaviorF.onTouchEvent(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            ((LayoutParams) getChildAt(i11).getLayoutParams()).m();
        }
        this.mBehaviorTouchView = null;
        this.mDisallowInterceptReset = false;
    }

    private void setInsetOffsetX(View view, int i10) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i11 = layoutParams.mInsetOffsetX;
        if (i11 != i10) {
            ViewCompat.d0(view, i10 - i11);
            layoutParams.mInsetOffsetX = i10;
        }
    }

    private void setInsetOffsetY(View view, int i10) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i11 = layoutParams.mInsetOffsetY;
        if (i11 != i10) {
            ViewCompat.e0(view, i10 - i11);
            layoutParams.mInsetOffsetY = i10;
        }
    }

    private void setupForInsets() {
        if (ViewCompat.A(this)) {
            if (this.mApplyWindowInsetsListener == null) {
                this.mApplyWindowInsetsListener = new OnApplyWindowInsetsListener() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
                        return CoordinatorLayout.this.setWindowInsets(windowInsetsCompat);
                    }
                };
            }
            ViewCompat.L0(this, this.mApplyWindowInsetsListener);
            setSystemUiVisibility(1280);
            return;
        }
        ViewCompat.L0(this, null);
    }

    public boolean doViewsOverlap(@NonNull View view, @NonNull View view2) {
        boolean z6;
        boolean z10;
        boolean z11 = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect rectAcquireTempRect = acquireTempRect();
        if (view.getParent() != this) {
            z6 = true;
        } else {
            z6 = false;
        }
        getChildRect(view, z6, rectAcquireTempRect);
        Rect rectAcquireTempRect2 = acquireTempRect();
        if (view2.getParent() != this) {
            z10 = true;
        } else {
            z10 = false;
        }
        getChildRect(view2, z10, rectAcquireTempRect2);
        try {
            if (rectAcquireTempRect.left <= rectAcquireTempRect2.right && rectAcquireTempRect.top <= rectAcquireTempRect2.bottom && rectAcquireTempRect.right >= rectAcquireTempRect2.left && rectAcquireTempRect.bottom >= rectAcquireTempRect2.top) {
                z11 = true;
            }
            return z11;
        } finally {
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Behavior behavior = layoutParams.mBehavior;
        if (behavior != null) {
            float scrimOpacity = behavior.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.mScrimPaint == null) {
                    this.mScrimPaint = new Paint();
                }
                this.mScrimPaint.setColor(layoutParams.mBehavior.getScrimColor(this, view));
                this.mScrimPaint.setAlpha(clamp(Math.round(scrimOpacity * 255.0f), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.mScrimPaint);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j6);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mStatusBarBackground;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidate();
        }
    }

    void ensurePreDrawListener() {
        int childCount = getChildCount();
        boolean z6 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            if (hasDependencies(getChildAt(i10))) {
                z6 = true;
                break;
            }
        }
        if (z6 != this.mNeedsPreDrawListener) {
            if (z6) {
                addPreDrawListener();
            } else {
                removePreDrawListener();
            }
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    void getChildRect(View view, boolean z6, Rect rect) {
        if (!view.isLayoutRequested() && view.getVisibility() != 8) {
            if (z6) {
                getDescendantRect(view, rect);
                return;
            } else {
                rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                return;
            }
        }
        rect.setEmpty();
    }

    @VisibleForTesting
    final List<View> getDependencySortedChildren() {
        prepareChildren();
        return Collections.unmodifiableList(this.mDependencySortedChildren);
    }

    void getDescendantRect(View view, Rect rect) {
        ViewGroupUtils.a(this, view, rect);
    }

    void getDesiredAnchoredChildRect(View view, int i10, Rect rect, Rect rect2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        getDesiredAnchoredChildRectWithoutConstraints(view, i10, rect, rect2, layoutParams, measuredWidth, measuredHeight);
        constrainChildRect(layoutParams, rect2, measuredWidth, measuredHeight);
    }

    void getLastChildRect(View view, Rect rect) {
        rect.set(((LayoutParams) view.getLayoutParams()).h());
    }

    /* JADX WARN: Multi-variable type inference failed */
    LayoutParams getResolvedLayoutParams(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.mBehaviorResolved) {
            if (view instanceof AttachedBehavior) {
                Behavior behavior = ((AttachedBehavior) view).getBehavior();
                if (behavior == null) {
                    Log.e(TAG, "Attached behavior class is null");
                }
                layoutParams.o(behavior);
                layoutParams.mBehaviorResolved = true;
            } else {
                DefaultBehavior defaultBehavior = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    defaultBehavior = (DefaultBehavior) superclass.getAnnotation(DefaultBehavior.class);
                    if (defaultBehavior != null) {
                        break;
                    }
                }
                if (defaultBehavior != null) {
                    try {
                        layoutParams.o(defaultBehavior.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e(TAG, "Default behavior class " + defaultBehavior.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                layoutParams.mBehaviorResolved = true;
            }
        }
        return layoutParams;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public boolean isPointInChildBounds(@NonNull View view, int i10, int i11) {
        Rect rectAcquireTempRect = acquireTempRect();
        getDescendantRect(view, rectAcquireTempRect);
        try {
            return rectAcquireTempRect.contains(i10, i11);
        } finally {
            releaseTempRect(rectAcquireTempRect);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mLastInsets == null && ViewCompat.A(this)) {
            ViewCompat.q0(this);
        }
        this.mIsAttachedToWindow = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        View view = this.mNestedScrollingTarget;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.mIsAttachedToWindow = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int iM;
        super.onDraw(canvas);
        if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null) {
            WindowInsetsCompat windowInsetsCompat = this.mLastInsets;
            if (windowInsetsCompat != null) {
                iM = windowInsetsCompat.m();
            } else {
                iM = 0;
            }
            if (iM > 0) {
                this.mStatusBarBackground.setBounds(0, 0, getWidth(), iM);
                this.mStatusBarBackground.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            resetTouchBehaviors(true);
        }
        boolean zPerformIntercept = performIntercept(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            resetTouchBehaviors(true);
        }
        return zPerformIntercept;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        Behavior behaviorF;
        int iD = ViewCompat.D(this);
        int size = this.mDependencySortedChildren.size();
        for (int i14 = 0; i14 < size; i14++) {
            View view = this.mDependencySortedChildren.get(i14);
            if (view.getVisibility() != 8 && ((behaviorF = ((LayoutParams) view.getLayoutParams()).f()) == null || !behaviorF.onLayoutChild(this, view, iD))) {
                onLayoutChild(view, iD);
            }
        }
    }

    public void onLayoutChild(@NonNull View view, int i10) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.a()) {
            View view2 = layoutParams.mAnchorView;
            if (view2 != null) {
                layoutChildWithAnchor(view, view2, i10);
                return;
            }
            int i11 = layoutParams.keyline;
            if (i11 >= 0) {
                layoutChildWithKeyline(view, i11, i10);
                return;
            } else {
                layoutChild(view, i10);
                return;
            }
        }
        throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }

    public void onMeasureChild(View view, int i10, int i11, int i12, int i13) {
        measureChildWithMargins(view, i10, i11, i12, i13);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f6, boolean z6) {
        Behavior behaviorF;
        int childCount = getChildCount();
        boolean zOnNestedFling = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.j(0) && (behaviorF = layoutParams.f()) != null) {
                    zOnNestedFling |= behaviorF.onNestedFling(this, childAt, view, f, f6, z6);
                }
            }
        }
        if (zOnNestedFling) {
            onChildViewsChanged(1);
        }
        return zOnNestedFling;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f6) {
        Behavior behaviorF;
        int childCount = getChildCount();
        boolean zOnNestedPreFling = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.j(0) && (behaviorF = layoutParams.f()) != null) {
                    zOnNestedPreFling |= behaviorF.onNestedPreFling(this, childAt, view, f, f6);
                }
            }
        }
        return zOnNestedPreFling;
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
        Behavior behaviorF;
        int iMin;
        boolean z6;
        int iMin2;
        int childCount = getChildCount();
        boolean z10 = false;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.j(i14) && (behaviorF = layoutParams.f()) != null) {
                    int[] iArr2 = this.mBehaviorConsumed;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behaviorF.onNestedScroll(this, childAt, view, i10, i11, i12, i13, i14, iArr2);
                    int[] iArr3 = this.mBehaviorConsumed;
                    if (i12 > 0) {
                        iMin = Math.max(i15, iArr3[0]);
                    } else {
                        iMin = Math.min(i15, iArr3[0]);
                    }
                    i15 = iMin;
                    if (i13 > 0) {
                        z6 = true;
                        iMin2 = Math.max(i16, this.mBehaviorConsumed[1]);
                    } else {
                        z6 = true;
                        iMin2 = Math.min(i16, this.mBehaviorConsumed[1]);
                    }
                    i16 = iMin2;
                    z10 = z6;
                }
            }
        }
        iArr[0] = iArr[0] + i15;
        iArr[1] = iArr[1] + i16;
        if (z10) {
            onChildViewsChanged(1);
        }
    }

    void recordLastChildRect(View view, Rect rect) {
        ((LayoutParams) view.getLayoutParams()).q(rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z6) {
        Behavior behaviorF = ((LayoutParams) view.getLayoutParams()).f();
        if (behaviorF != null && behaviorF.onRequestChildRectangleOnScreen(this, view, rect, z6)) {
            return true;
        }
        return super.requestChildRectangleOnScreen(view, rect, z6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        super.requestDisallowInterceptTouchEvent(z6);
        if (z6 && !this.mDisallowInterceptReset) {
            resetTouchBehaviors(false);
            this.mDisallowInterceptReset = true;
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z6) {
        super.setFitsSystemWindows(z6);
        setupForInsets();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        boolean z6;
        super.setVisibility(i10);
        if (i10 == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Drawable drawable = this.mStatusBarBackground;
        if (drawable != null && drawable.isVisible() != z6) {
            this.mStatusBarBackground.setVisible(z6, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.mStatusBarBackground) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }
}
