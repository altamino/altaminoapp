package com.narvii.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.EdgeEffect;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.OverScroller;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.nvplayerview.delegate.IVideoListScrollListener;
import com.narvii.nvplayerview.delegate.IVideoListView;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ws.WsMessage;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class NVListView extends ListView implements NestedScrollingChild, IVideoListView {
    private static final int SP_WAIT_TIME = 200;
    private static Field fEdgeGlowBottom;
    private static Field fEdgeGlowTop;
    private static Field fFlingRunnable;
    private static Field fOverflingDistance;
    private static Field fOverscrollDistance;
    private static Field fScroller;
    private static boolean fScrollerInited;
    private static Field fTouchMode;
    private static boolean inited;
    private static Method mTrackMotionScroll;
    private static boolean removeEdgeGlowInited;
    private ListAdapter adapter;
    private final AbsListView.OnScrollListener agentScrollListener;
    private Drawable blDrawable;
    private long blId;
    private int blPosition;
    private long blStartTime;
    private int blT1;
    private int blT2;
    private int blT3;
    private boolean blockLayout;
    private Drawable bottomStretchDrawable;
    private boolean changed;
    private Rect clipOffsetRect;
    DispatchTouchEventEndListener dispatchTouchEventEndListener;
    int footerPadding;
    private Object headerPadding;
    InterceptTouchEventListener interceptTouchEventListener;
    private boolean isDown;
    private boolean isFirst;
    private int lastDy;
    private OnLayoutListener layoutListener;
    private Drawable listContentBackground;
    private NestedScrollingChildHelper mChildHelper;
    private int mLastTouchX;
    private int mLastTouchY;
    private int[] mNestedOffsets;
    private int[] mScrollConsumed;
    private int[] mScrollOffset;
    private int mScrollPointerId;
    private final DataSetObserver observer;
    NVListOverlay overlay;
    private boolean overlayTouchEvents;
    private OnOverscrollListener overscrollListener;
    private ArrayList<OnOverscrollListener> overscrollListeners;
    private int overscrollStretchY;
    private int overscrollY;
    private boolean pendingLayout;
    private Runnable postRequestLayout;
    private final Runnable resetChanged;
    private AbsListView.OnScrollListener scrollListener;
    private ArrayList<AbsListView.OnScrollListener> scrollListeners;
    private boolean sectionHeaderEnabled;
    private boolean shouldDispatchNestedScrollingEvents;
    private long spId;
    private int spPosition;
    private int spState;
    private long spTime;
    private int swipeRefreshActivePointerId;
    public SwipeRefreshLayout swipeRefreshLayout;
    private int swipeRefreshOverscrollY;
    private int swipeRefreshStartY;
    private int swipeRefreshStatus;
    private int swipeRefreshY;
    private Rect tListPadding;
    private Drawable topStretchDrawable;
    private AbsListView.OnScrollListener videoListDelegateScrollListener;
    private IVideoListScrollListener videoListScrollListener;
    public static final int OVERSCROLL_STRETCH_TAG = R.id.list_overscroll_stretch;
    public static final int SECTION_HEADER_TAG = R.id.list_section_header;
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final int[] STATE_PRESSED = {android.R.attr.state_pressed};

    private static class ActionbarOverlayPadding implements ListPaddingProvider {
        NVContext context;

        @Override // com.narvii.widget.NVListView.ListPaddingProvider
        public int getPadding(NVListView nVListView) {
            int actionBarOverlaySize;
            int statusBarOverlaySize;
            NVContext nVContext = this.context;
            if (nVContext instanceof NVFragment) {
                NVFragment nVFragment = (NVFragment) nVContext;
                actionBarOverlaySize = nVFragment.getActionBarOverlaySize();
                statusBarOverlaySize = nVFragment.getStatusBarOverlaySize();
            } else {
                if (!(nVContext instanceof NVActivity)) {
                    return 0;
                }
                NVActivity nVActivity = (NVActivity) nVContext;
                actionBarOverlaySize = nVActivity.getActionBarOverlaySize();
                statusBarOverlaySize = nVActivity.getStatusBarOverlaySize();
            }
            return actionBarOverlaySize + statusBarOverlaySize;
        }

        ActionbarOverlayPadding(NVContext nVContext) {
            this.context = nVContext;
        }
    }

    public interface DispatchTouchEventEndListener {
        void onDispatchTouchEventEnd(MotionEvent motionEvent);
    }

    public interface InterceptTouchEventListener {
        boolean onInterceptTouchEvent(MotionEvent motionEvent);
    }

    public interface ListPaddingProvider {
        int getPadding(NVListView nVListView);
    }

    public interface OnLayoutListener {
        void onLayout(NVListView nVListView);
    }

    public interface OnOverscrollListener {
        void onOverscroll(NVListView nVListView, int i10);
    }

    public NVListView(Context context) {
        this(context, null);
    }

    static Context getNoEdgeGlowEffectContext(Context context) {
        return context;
    }

    private boolean isSignOpposite(int i10, int i11) {
        return (i10 > 0 && i11 < 0) || (i10 < 0 && i11 > 0);
    }

    private void onSwipeRefreshOverscroll(int i10) {
        if (this.swipeRefreshLayout == null) {
            return;
        }
        this.swipeRefreshOverscrollY = i10;
        if (this.swipeRefreshStatus != 1 || i10 >= 0) {
            return;
        }
        this.swipeRefreshStatus = 2;
        this.swipeRefreshStartY = this.swipeRefreshY;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        if (i11 == i10 - 1) {
            return 0;
        }
        return i11 + 1;
    }

    public int getFooterPadding() {
        return this.footerPadding;
    }

    public Drawable getListContentBackground() {
        return this.listContentBackground;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public void removeOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener) {
        this.videoListScrollListener = null;
        removeOnScrollListener(this.videoListDelegateScrollListener);
    }

    public void setBlinkDrawable(Drawable drawable) {
        this.blDrawable = drawable;
    }

    public void setDispatchTouchEventEndListener(DispatchTouchEventEndListener dispatchTouchEventEndListener) {
        this.dispatchTouchEventEndListener = dispatchTouchEventEndListener;
    }

    public void setHeaderPadding(int i10) {
        if (ensureListPadding()) {
            this.headerPadding = Integer.valueOf(i10);
            requestLayout();
        }
    }

    public void setInterceptTouchEventListener(InterceptTouchEventListener interceptTouchEventListener) {
        this.interceptTouchEventListener = interceptTouchEventListener;
    }

    public void setIsNestedScrollingChild(boolean z6) {
        this.shouldDispatchNestedScrollingEvents = z6;
    }

    public void setListContentBackground(Drawable drawable) {
        this.listContentBackground = drawable;
        invalidate();
    }

    public void setOnLayoutListener(OnLayoutListener onLayoutListener) {
        this.layoutListener = onLayoutListener;
    }

    public void setOnOverscrollListener(OnOverscrollListener onOverscrollListener) {
        this.overscrollListener = onOverscrollListener;
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.scrollListener = onScrollListener;
    }

    public void setOverscrollStretchFooter(Drawable drawable) {
        this.bottomStretchDrawable = drawable;
        invalidate();
    }

    public void setOverscrollStretchHeader(Drawable drawable) {
        this.topStretchDrawable = drawable;
        invalidate();
    }

    public void startBlink(int i10, int i11, int i12, int i13) {
        this.blPosition = i10;
        ListAdapter adapter = getAdapter();
        this.blId = (adapter == null || i10 >= adapter.getCount()) ? 0L : adapter.getItemId(i10);
        this.blStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.blT1 = i11;
        this.blT2 = i12;
        this.blT3 = i13;
        invalidate();
    }

    public void startBlinkLong(int i10) {
        startBlink(i10, 200, 300, 800);
    }

    static class NoEdgeEffect extends EdgeEffect {
        @Override // android.widget.EdgeEffect
        public boolean draw(Canvas canvas) {
            return false;
        }

        public NoEdgeEffect(Context context) {
            super(context);
        }
    }

    public NVListView(Context context, AttributeSet attributeSet) {
        super(getNoEdgeGlowEffectContext(context), attributeSet);
        this.shouldDispatchNestedScrollingEvents = true;
        this.footerPadding = -1;
        this.mChildHelper = new NestedScrollingChildHelper(this);
        AbsListView.OnScrollListener onScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.widget.NVListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i10) {
                if (i10 == 1) {
                    NVListView.this.overlayTouchCancel();
                }
                if (NVListView.this.scrollListener != null) {
                    NVListView.this.scrollListener.onScrollStateChanged(absListView, i10);
                }
                if (NVListView.this.scrollListeners != null) {
                    Iterator it = NVListView.this.scrollListeners.iterator();
                    while (it.hasNext()) {
                        ((AbsListView.OnScrollListener) it.next()).onScrollStateChanged(absListView, i10);
                    }
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                if (NVListView.this.scrollListener != null) {
                    NVListView.this.scrollListener.onScroll(absListView, i10, i11, i12);
                }
                if (NVListView.this.scrollListeners != null) {
                    Iterator it = NVListView.this.scrollListeners.iterator();
                    while (it.hasNext()) {
                        ((AbsListView.OnScrollListener) it.next()).onScroll(absListView, i10, i11, i12);
                    }
                }
            }
        };
        this.agentScrollListener = onScrollListener;
        this.observer = new DataSetObserver() { // from class: com.narvii.widget.NVListView.3
            Object lastItem;
            int lastPos;

            @Override // android.database.DataSetObserver
            public void onChanged() {
                int count = NVListView.this.adapter == null ? 0 : NVListView.this.adapter.getCount();
                if (NVListView.this.overscrollY > 0) {
                    Object item = this.lastPos < count ? NVListView.this.adapter.getItem(this.lastPos) : null;
                    Object obj = this.lastItem;
                    if (obj == NVPagedAdapter.LOADING && obj != item) {
                        NVListView.this.changed = true;
                        NVListView.this.pendingLayout = false;
                        NVListView.this.setScrollY(0);
                        NVListView.handler.postDelayed(NVListView.this.resetChanged, 200L);
                    }
                }
                if (count <= 0) {
                    this.lastItem = null;
                    this.lastPos = 0;
                } else {
                    int i10 = count - 1;
                    this.lastItem = NVListView.this.adapter.getItem(i10);
                    this.lastPos = i10;
                }
            }
        };
        this.resetChanged = new Runnable() { // from class: com.narvii.widget.NVListView.4
            @Override // java.lang.Runnable
            public void run() {
                NVListView.this.changed = false;
            }
        };
        this.mNestedOffsets = new int[2];
        this.mScrollConsumed = new int[2];
        this.mScrollOffset = new int[2];
        this.isFirst = true;
        this.videoListScrollListener = null;
        this.videoListDelegateScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.widget.NVListView.7
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                if (NVListView.this.videoListScrollListener != null) {
                    NVListView.this.videoListScrollListener.onScroll(NVListView.this);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i10) {
                if (NVListView.this.videoListScrollListener != null) {
                    NVListView.this.videoListScrollListener.onScrollStateChanged(NVListView.this, i10);
                }
            }
        };
        setNestedScrollingEnabled(true);
        if (initOverscroll()) {
            removeEdgeGlowEffect(this);
        }
        super.setOnScrollListener(onScrollListener);
    }

    private boolean ensureListPadding() {
        if (this.tListPadding == null) {
            try {
                Field declaredField = AbsListView.class.getDeclaredField("mListPadding");
                declaredField.setAccessible(true);
                this.tListPadding = (Rect) declaredField.get(this);
            } catch (Exception e) {
                Log.e("fail to setup HF padding", e);
                return false;
            }
        }
        return true;
    }

    private boolean initOverscroll() {
        if (!inited) {
            try {
                inited = true;
                Field declaredField = AbsListView.class.getDeclaredField("mOverflingDistance");
                fOverflingDistance = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = AbsListView.class.getDeclaredField("mOverscrollDistance");
                fOverscrollDistance = declaredField2;
                declaredField2.setAccessible(true);
                Class cls = Integer.TYPE;
                Method declaredMethod = AbsListView.class.getDeclaredMethod("trackMotionScroll", cls, cls);
                mTrackMotionScroll = declaredMethod;
                declaredMethod.setAccessible(true);
                Field declaredField3 = AbsListView.class.getDeclaredField("mTouchMode");
                fTouchMode = declaredField3;
                declaredField3.setAccessible(true);
            } catch (Exception e) {
                Log.e("fail to init overscroll", e);
            }
        }
        if (fOverscrollDistance != null && fOverflingDistance != null) {
            try {
                int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.overscroll_height);
                fOverflingDistance.set(this, Integer.valueOf(dimensionPixelSize));
                fOverscrollDistance.set(this, Integer.valueOf(dimensionPixelSize));
                setOverScrollMode(0);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private Boolean isScrollerFinished() {
        if (!fScrollerInited) {
            fScrollerInited = true;
            try {
                Field declaredField = AbsListView.class.getDeclaredField("mFlingRunnable");
                declaredField.setAccessible(true);
                fFlingRunnable = declaredField;
                Field declaredField2 = declaredField.getType().getDeclaredField("mScroller");
                declaredField2.setAccessible(true);
                fScroller = declaredField2;
                Object obj = fFlingRunnable.get(this);
                if (obj != null) {
                    return Boolean.valueOf(((OverScroller) fScroller.get(obj)).isFinished());
                }
                return null;
            } catch (Exception unused) {
                Log.e("overscroll unknown scroller");
            }
        } else if (fScroller != null) {
            try {
                Object obj2 = fFlingRunnable.get(this);
                if (obj2 != null) {
                    return Boolean.valueOf(((OverScroller) fScroller.get(obj2)).isFinished());
                }
            } catch (Exception unused2) {
            }
        }
        return null;
    }

    private void onSwipeRefreshTouch(MotionEvent motionEvent) {
        int iFindPointerIndex;
        int y6;
        int pointerId;
        if (this.swipeRefreshLayout == null) {
            return;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            if (this.swipeRefreshLayout.isRefreshing()) {
                this.swipeRefreshStatus = 0;
                return;
            }
            this.swipeRefreshActivePointerId = motionEvent.getPointerId(0);
            this.swipeRefreshStatus = this.swipeRefreshOverscrollY < 0 ? 2 : 1;
            int y10 = (int) motionEvent.getY(0);
            this.swipeRefreshY = y10;
            if (this.swipeRefreshStatus == 2) {
                this.swipeRefreshStartY = y10;
                return;
            }
            return;
        }
        if (action != 1) {
            if (action == 2) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.swipeRefreshActivePointerId);
                if (iFindPointerIndex2 < 0 || this.swipeRefreshStatus < 2) {
                    return;
                }
                int y11 = (((int) motionEvent.getY(iFindPointerIndex2)) - this.swipeRefreshStartY) / 2;
                SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
                swipeRefreshLayout.mIsBeingDragged = true;
                if (y11 > 0) {
                    swipeRefreshLayout.moveSpinner(y11);
                    return;
                } else {
                    swipeRefreshLayout.finishSpinner(0.0f);
                    return;
                }
            }
            if (action != 3) {
                if (action == 5) {
                    this.swipeRefreshActivePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                    return;
                } else {
                    if (action == 6 && (pointerId = motionEvent.getPointerId(motionEvent.getActionIndex())) == this.swipeRefreshActivePointerId) {
                        this.swipeRefreshActivePointerId = motionEvent.getPointerId(pointerId == 0 ? 1 : 0);
                        return;
                    }
                    return;
                }
            }
        }
        if (this.swipeRefreshStatus >= 2 && (iFindPointerIndex = motionEvent.findPointerIndex(this.swipeRefreshActivePointerId)) >= 0 && (y6 = (((int) motionEvent.getY(iFindPointerIndex)) - this.swipeRefreshStartY) / 2) > 0) {
            SwipeRefreshLayout swipeRefreshLayout2 = this.swipeRefreshLayout;
            swipeRefreshLayout2.mIsBeingDragged = true;
            swipeRefreshLayout2.finishSpinner(y6);
        }
        this.swipeRefreshStatus = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void overlayTouchCancel() {
        if (!this.overlayTouchEvents || this.overlay == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        motionEventObtain.setSource(4098);
        this.overlay.dispatchTouchEventRelay(motionEventObtain);
        motionEventObtain.recycle();
    }

    private boolean overlayTouchEvent(MotionEvent motionEvent) {
        NVListOverlay nVListOverlay;
        if (this.overlay != null && !this.overlayTouchEvents && getChildCount() > 0 && getFirstVisiblePosition() == 0 && motionEvent.getAction() == 0) {
            if (motionEvent.getY() < getChildAt(0).getTop()) {
                boolean zDispatchTouchEventRelay = this.overlay.dispatchTouchEventRelay(motionEvent);
                this.overlayTouchEvents = zDispatchTouchEventRelay;
                return zDispatchTouchEventRelay;
            }
        }
        if (!this.overlayTouchEvents || (nVListOverlay = this.overlay) == null) {
            return false;
        }
        boolean zDispatchTouchEventRelay2 = nVListOverlay.dispatchTouchEventRelay(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            this.overlayTouchEvents = false;
        }
        return zDispatchTouchEventRelay2;
    }

    static void removeEdgeGlowEffect(ListView listView) {
        if (!removeEdgeGlowInited) {
            fEdgeGlowTop = searchDeclaredField(ListView.class, "mEdgeGlowTop");
            fEdgeGlowBottom = searchDeclaredField(ListView.class, "mEdgeGlowBottom");
            removeEdgeGlowInited = true;
        }
        try {
            Field field = fEdgeGlowTop;
            if (field != null) {
                field.set(listView, new NoEdgeEffect(listView.getContext()));
            }
            Field field2 = fEdgeGlowBottom;
            if (field2 != null) {
                field2.set(listView, new NoEdgeEffect(listView.getContext()));
            }
        } catch (IllegalAccessException unused) {
        }
    }

    public static void smoothScrollToPositionFromTop(NVListView nVListView, final int i10, final int i11) {
        if (nVListView == null) {
            return;
        }
        nVListView.addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.widget.NVListView.5
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i12, int i13, int i14) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i12) {
                if (i12 == 0) {
                    NVListView.this.removeOnScrollListener(this);
                    Utils.handler.post(new Runnable() { // from class: com.narvii.widget.NVListView.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            NVListView.this.setSelectionFromTop(i10, i11);
                        }
                    });
                }
            }
        });
        Utils.handler.post(new Runnable() { // from class: com.narvii.widget.NVListView.6
            @Override // java.lang.Runnable
            public void run() {
                NVListView.this.smoothScrollToPositionFromTop(i10, i11);
            }
        });
    }

    private void startSpringback() {
        try {
            Method declaredMethod = fFlingRunnable.getType().getDeclaredMethod("startSpringback", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(fFlingRunnable.get(this), new Object[0]);
        } catch (Exception unused) {
        }
    }

    public void addActionBarOverlayHeader(NVContext nVContext) {
        setHeaderPadding(new ActionbarOverlayPadding(nVContext));
    }

    public void addOnOverscrollListener(OnOverscrollListener onOverscrollListener) {
        if (this.overscrollListeners == null) {
            this.overscrollListeners = new ArrayList<>();
        }
        this.overscrollListeners.add(onOverscrollListener);
    }

    public void addOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        if (this.scrollListeners == null) {
            this.scrollListeners = new ArrayList<>();
        }
        this.scrollListeners.add(onScrollListener);
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public void addOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener) {
        this.videoListScrollListener = iVideoListScrollListener;
        addOnScrollListener(this.videoListDelegateScrollListener);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b8  */
    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        ListAdapter adapter;
        View childAt;
        if (this.blDrawable == null || this.blStartTime == 0) {
            this.blStartTime = 0L;
        } else {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.blStartTime;
            if (jCurrentAnimationTimeMillis < 0 || jCurrentAnimationTimeMillis >= this.blT1 + this.blT2 + this.blT3) {
                this.blStartTime = 0L;
            } else {
                int firstVisiblePosition = getFirstVisiblePosition();
                int lastVisiblePosition = getLastVisiblePosition();
                int i10 = this.blPosition;
                if (i10 < firstVisiblePosition || i10 > lastVisiblePosition || (adapter = getAdapter()) == null || this.blPosition >= adapter.getCount() || adapter.getItemId(this.blPosition) != this.blId || (childAt = getChildAt(this.blPosition - firstVisiblePosition)) == null) {
                    this.blStartTime = 0L;
                } else {
                    this.blDrawable.setBounds(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                    int i11 = this.blT1;
                    float f = 1.0f;
                    if (jCurrentAnimationTimeMillis < i11) {
                        f = (jCurrentAnimationTimeMillis * 1.0f) / i11;
                    } else {
                        int i12 = this.blT2;
                        if (jCurrentAnimationTimeMillis >= i11 + i12) {
                            int i13 = i11 + i12;
                            int i14 = this.blT3;
                            f = ((((long) (i13 + i14)) - jCurrentAnimationTimeMillis) * 1.0f) / i14;
                        }
                    }
                    Drawable drawable = this.blDrawable;
                    if (drawable instanceof StateListDrawable) {
                        drawable.setState(STATE_PRESSED);
                    }
                    this.blDrawable.setAlpha((int) (f * 255.0f));
                    this.blDrawable.draw(canvas);
                    invalidate();
                }
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f6, boolean z6) {
        return this.shouldDispatchNestedScrollingEvents && this.mChildHelper.a(f, f6, z6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f6) {
        return this.shouldDispatchNestedScrollingEvents && this.mChildHelper.b(f, f6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.shouldDispatchNestedScrollingEvents && this.mChildHelper.c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.shouldDispatchNestedScrollingEvents && this.mChildHelper.f(i10, i11, i12, i13, iArr);
    }

    protected void drawListContentBackground(Canvas canvas) {
        if (this.listContentBackground == null) {
            return;
        }
        int top = (getChildCount() <= 0 || getFirstVisiblePosition() != 0) ? 0 : getChildAt(0).getTop();
        int height = getHeight();
        int i10 = this.overscrollY;
        if (i10 > 0) {
            height += i10;
        }
        this.listContentBackground.setBounds(0, top, getWidth(), height);
        this.listContentBackground.draw(canvas);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.k();
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.m();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.overscrollY != 0 && !this.isDown && isScrollerFinished() == Boolean.TRUE) {
            startSpringback();
            this.overscrollY = 0;
        }
        if (this.clipOffsetRect != null) {
            canvas.clipRect(getLeft() + this.clipOffsetRect.left, getTop() + this.clipOffsetRect.top, getRight() - this.clipOffsetRect.right, getBottom() - this.clipOffsetRect.bottom);
        }
        super.onDraw(canvas);
        drawListContentBackground(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        InterceptTouchEventListener interceptTouchEventListener = this.interceptTouchEventListener;
        if (interceptTouchEventListener != null && interceptTouchEventListener.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        if (super.onInterceptTouchEvent(motionEvent)) {
            this.isDown = true;
            return true;
        }
        if (motionEvent.getActionMasked() == 0) {
            try {
                resetScrollCompat(motionEvent);
                if (fTouchMode.getInt(this) == -1) {
                    fTouchMode.setInt(this, 0);
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @Override // android.widget.AbsListView, android.view.View
    protected void onOverScrolled(int i10, int i11, boolean z6, boolean z10) {
        this.overscrollStretchY = i11;
        this.overscrollY = i11;
        overlayTouchCancel();
        onSwipeRefreshOverscroll(i11);
        boolean z11 = this.blockLayout;
        this.blockLayout = getOverscrollStretchView() != null && i11 < 0;
        super.onOverScrolled(i10, i11, z6, z10);
        if (!this.blockLayout && (this.pendingLayout || z11)) {
            this.pendingLayout = false;
            Runnable runnable = this.postRequestLayout;
            if (runnable != null) {
                Utils.handler.removeCallbacks(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: com.narvii.widget.NVListView.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!NVListView.this.blockLayout) {
                        NVListView.this.requestLayout();
                    }
                    if (NVListView.this.postRequestLayout == this) {
                        NVListView.this.postRequestLayout = null;
                    }
                }
            };
            this.postRequestLayout = runnable2;
            Utils.postDelayed(runnable2, 60L);
        }
        OnOverscrollListener onOverscrollListener = this.overscrollListener;
        if (onOverscrollListener != null) {
            onOverscrollListener.onOverscroll(this, this.overscrollY);
        }
        ArrayList<OnOverscrollListener> arrayList = this.overscrollListeners;
        if (arrayList != null) {
            Iterator<OnOverscrollListener> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onOverscroll(this, this.overscrollY);
            }
        }
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z6) {
        if (this.changed) {
            return true;
        }
        return super.overScrollBy(i10, i11, i12, i13, i14, i15, i16, i17, z6);
    }

    public void removeOnOverscrollListener(OnOverscrollListener onOverscrollListener) {
        ArrayList<OnOverscrollListener> arrayList = this.overscrollListeners;
        if (arrayList != null) {
            arrayList.remove(onOverscrollListener);
        }
    }

    public void removeOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        ArrayList<AbsListView.OnScrollListener> arrayList = this.scrollListeners;
        if (arrayList != null) {
            arrayList.remove(onScrollListener);
        }
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.blockLayout) {
            this.pendingLayout = true;
            return;
        }
        Runnable runnable = this.postRequestLayout;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        super.requestLayout();
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        ListAdapter listAdapter2 = this.adapter;
        if (listAdapter2 != listAdapter) {
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(this.observer);
            }
            super.setAdapter(listAdapter);
            this.adapter = listAdapter;
            if (listAdapter != null) {
                listAdapter.registerDataSetObserver(this.observer);
            }
        }
    }

    public void setClipOffsetRect(Rect rect) {
        this.clipOffsetRect = rect;
        invalidate();
    }

    public void setFooterPadding(int i10) {
        setScrollBarStyle(33554432);
        setClipToPadding(false);
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), i10);
        this.footerPadding = i10;
    }

    public void setHeaderOverlay(NVListOverlay nVListOverlay) {
        this.overlay = nVListOverlay;
        if (nVListOverlay != null) {
            addOnScrollListener(nVListOverlay);
            addOnOverscrollListener(nVListOverlay);
            setOnLayoutListener(nVListOverlay);
            setHeaderPadding(nVListOverlay);
            nVListOverlay.attached = true;
        }
    }

    public void setListContentBackground(int i10) {
        setListContentBackground(i10 == 0 ? null : getResources().getDrawable(i10));
    }

    public void setListContentBackgroundColor(int i10) {
        setListContentBackground(i10 == 0 ? null : new ColorDrawable(i10));
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z6) {
        this.mChildHelper.n(z6);
    }

    protected void setOverflingDistance(int i10) {
        try {
            fOverflingDistance.set(this, Integer.valueOf(i10));
        } catch (Exception unused) {
        }
    }

    public void setOverscrollDistance(int i10) {
        try {
            fOverscrollDistance.set(this, Integer.valueOf(i10));
        } catch (Exception unused) {
        }
    }

    public void setOverscrollStretchFooter(int i10) {
        this.bottomStretchDrawable = i10 == 0 ? null : new ColorDrawable(i10);
        invalidate();
    }

    public void setOverscrollStretchHeader(int i10) {
        this.topStretchDrawable = i10 == 0 ? null : new ColorDrawable(i10);
        invalidate();
    }

    public void setSectionHeaderEnabled(boolean z6) {
        if (this.sectionHeaderEnabled != z6) {
            this.sectionHeaderEnabled = z6;
            setChildrenDrawingOrderEnabled(z6);
            invalidate();
        }
    }

    public void spOnPause() {
        if (this.spState == 1) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long j6 = this.spTime;
            if (jUptimeMillis < j6 || jUptimeMillis >= j6 + 200) {
                return;
            }
            this.spState = 2;
        }
    }

    public void startBlinkLong(View view) {
        startBlink(view, 200, 300, 800);
    }

    public void startBlinkShort(int i10) {
        startBlink(i10, 0, 200, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return this.mChildHelper.p(i10);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.mChildHelper.r();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0122  */
    private boolean onTouchEventCompat(MotionEvent motionEvent) {
        int i10;
        int i11;
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int iC = MotionEventCompat.c(motionEvent);
        int iB = MotionEventCompat.b(motionEvent);
        if (iC == 0) {
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        int[] iArr2 = this.mNestedOffsets;
        motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
        if (iC != 1) {
            if (iC != 2) {
                if (iC != 3) {
                    if (iC == 5) {
                        this.mScrollPointerId = MotionEventCompat.e(motionEvent, iB);
                        this.mLastTouchX = (int) (MotionEventCompat.f(motionEvent, iB) + 0.5f);
                        this.mLastTouchY = (int) (MotionEventCompat.g(motionEvent, iB) + 0.5f);
                    }
                } else {
                    stopNestedScroll();
                    this.isFirst = true;
                }
            } else {
                int iA = MotionEventCompat.a(motionEvent, this.mScrollPointerId);
                if (iA < 0) {
                    return false;
                }
                int iF = (int) (MotionEventCompat.f(motionEvent, iA) + 0.5f);
                int iG = (int) (MotionEventCompat.g(motionEvent, iA) + 0.5f);
                int i12 = this.mLastTouchX - iF;
                int i13 = this.mLastTouchY - iG;
                if (this.isFirst) {
                    Log.i("pyt", "FIRST");
                    this.isFirst = false;
                    resetScrollCompat(motionEvent);
                    return true;
                }
                if (!isSignOpposite(this.lastDy, i13)) {
                    this.lastDy = i13;
                    Log.i("pyt", "move lastY" + this.mLastTouchY + ",y=" + iG + ",dy=" + i13);
                    if (dispatchNestedPreScroll(i12, i13, this.mScrollConsumed, this.mScrollOffset)) {
                        int[] iArr3 = this.mScrollOffset;
                        motionEventObtain.offsetLocation(iArr3[0], iArr3[1]);
                        int[] iArr4 = this.mNestedOffsets;
                        int i14 = iArr4[0];
                        int[] iArr5 = this.mScrollOffset;
                        iArr4[0] = i14 + iArr5[0];
                        iArr4[1] = iArr4[1] + iArr5[1];
                        i10 = this.mScrollConsumed[1];
                    } else {
                        i10 = 0;
                    }
                    int i15 = this.mLastTouchY;
                    int i16 = iG - i15;
                    if (i15 != Integer.MIN_VALUE) {
                        i11 = (iG - i15) + i10;
                    } else {
                        i11 = i16;
                    }
                    try {
                        if (fTouchMode.getInt(this) == 3 && iG != this.mLastTouchY && i11 != 0 && ((Boolean) mTrackMotionScroll.invoke(this, Integer.valueOf(i16), Integer.valueOf(i11))).booleanValue()) {
                            dispatchNestedScroll(0, 0, 0, this.mLastTouchY - iG, this.mScrollOffset);
                        }
                    } catch (Exception unused) {
                    }
                    int[] iArr6 = this.mScrollOffset;
                    this.mLastTouchX = iF - iArr6[0];
                    this.mLastTouchY = iG - iArr6[1];
                }
            }
        } else {
            stopNestedScroll();
            this.isFirst = true;
        }
        super.onTouchEvent(motionEvent);
        return true;
    }

    private void resetScrollCompat(MotionEvent motionEvent) {
        if (Utils.applyCompat()) {
            this.lastDy = 0;
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            this.mScrollPointerId = MotionEventCompat.e(motionEvent, 0);
            this.mLastTouchX = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchY = (int) (motionEvent.getY() + 0.5f);
            startNestedScroll(2);
        }
    }

    static Field searchDeclaredField(Class cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException unused) {
            Class superclass = cls.getSuperclass();
            if (superclass == null) {
                return null;
            }
            return searchDeclaredField(superclass, str);
        }
    }

    @SuppressLint({"NewApi"})
    protected void _scrollListBy(int i10) {
        if (Utils.applyCompat()) {
            try {
                int i11 = -i10;
                mTrackMotionScroll.invoke(this, Integer.valueOf(i11), Integer.valueOf(i11));
                return;
            } catch (Exception unused) {
                return;
            }
        }
        scrollListBy(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (getChildCount() == 0) {
            return true;
        }
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        onSwipeRefreshTouch(motionEvent);
        DispatchTouchEventEndListener dispatchTouchEventEndListener = this.dispatchTouchEventEndListener;
        if (dispatchTouchEventEndListener != null) {
            dispatchTouchEventEndListener.onDispatchTouchEventEnd(motionEvent);
        }
        return zDispatchTouchEvent;
    }

    @Override // android.widget.ListView, android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        int iSave;
        View overscrollStretchView;
        int childCount = getChildCount();
        if (this.overscrollStretchY < 0 && (overscrollStretchView = getOverscrollStretchView()) == view) {
            int width = getWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = (width - paddingLeft) - getPaddingRight();
            int i10 = overscrollStretchView.getLayoutParams().height;
            if (i10 < 0) {
                Log.e("overscroll stretch view must have a specific height");
            } else {
                int i11 = i10 + (-this.overscrollStretchY);
                overscrollStretchView.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
                int i12 = this.overscrollStretchY;
                overscrollStretchView.layout(paddingLeft, i12, paddingRight, i11 + i12);
                this.overscrollStretchY = 0;
            }
        } else if (this.overscrollY < 0 && childCount > 0 && this.topStretchDrawable != null && view == getChildAt(0) && view.getTop() >= 0) {
            this.topStretchDrawable.setBounds(0, this.overscrollY, getWidth(), view.getTop());
            this.topStretchDrawable.draw(canvas);
        }
        boolean zDrawChild = true;
        if (childCount > 0 && this.bottomStretchDrawable != null && view == getChildAt(childCount - 1) && view.getBottom() <= getHeight()) {
            this.bottomStretchDrawable.setBounds(0, view.getBottom(), getWidth(), getHeight() + this.overscrollY);
            this.bottomStretchDrawable.draw(canvas);
        }
        if (this.sectionHeaderEnabled && view.getTag(SECTION_HEADER_TAG) == Boolean.TRUE && view.getTop() < 0) {
            iSave = canvas.save();
            canvas.translate(0.0f, 0 - view.getTop());
        } else {
            iSave = -1;
        }
        try {
            zDrawChild = super.drawChild(canvas, view, j6);
        } catch (Exception unused) {
        }
        if (iSave != -1) {
            canvas.restoreToCount(iSave);
        }
        return zDrawChild;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public Object getItemInAdapter(int i10) {
        if (getAdapter() != null) {
            return getAdapter().getItem(i10);
        }
        return null;
    }

    public View getOverscrollStretchView() {
        if (getFirstVisiblePosition() == 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getTag(OVERSCROLL_STRETCH_TAG) == Boolean.TRUE) {
                return childAt;
            }
            return null;
        }
        return null;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public int getTotalCountInAdapter() {
        if (getAdapter() != null) {
            return getAdapter().getCount();
        }
        return 0;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int i14 = this.overscrollY;
        if (i14 != 0) {
            _scrollListBy(i14);
            this.overscrollY = 0;
        }
        OnLayoutListener onLayoutListener = this.layoutListener;
        if (onLayoutListener != null) {
            onLayoutListener.onLayout(this);
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iIntValue;
        super.onMeasure(i10, i11);
        if (this.tListPadding != null) {
            Object obj = this.headerPadding;
            if (obj instanceof Integer) {
                iIntValue = ((Integer) obj).intValue();
            } else if (obj instanceof ListPaddingProvider) {
                iIntValue = Integer.valueOf(((ListPaddingProvider) obj).getPadding(this)).intValue();
            } else {
                iIntValue = 0;
            }
            if (iIntValue != 0) {
                this.tListPadding.top = iIntValue;
            }
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent;
        if (Utils.applyCompat()) {
            zOnTouchEvent = onTouchEventCompat(motionEvent);
        } else {
            zOnTouchEvent = super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                this.isDown = false;
            }
        } else {
            this.isDown = true;
        }
        return overlayTouchEvent(motionEvent) | zOnTouchEvent;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (i10 == 8 && this.spState == 1) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long j6 = this.spTime;
            if (jUptimeMillis >= j6 && jUptimeMillis < j6 + 200) {
                this.spState = 2;
            }
        }
        if (i10 == 0 && this.spState == 2) {
            try {
                int firstVisiblePosition = getFirstVisiblePosition();
                int lastVisiblePosition = getLastVisiblePosition();
                int i11 = this.spPosition;
                if (i11 >= firstVisiblePosition && i11 <= lastVisiblePosition) {
                    ListAdapter adapter = getAdapter();
                    if (this.spPosition < adapter.getCount() && adapter.getItemId(this.spPosition) == this.spId) {
                        startBlinkShort(this.spPosition);
                        this.spState = 3;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView
    public boolean performItemClick(View view, int i10, long j6) {
        if (!super.performItemClick(view, i10, j6)) {
            return false;
        }
        this.spState = 1;
        this.spTime = SystemClock.uptimeMillis();
        this.spPosition = i10;
        this.spId = j6;
        startBlink(i10, 0, 200, 100);
        return true;
    }

    public void setHeaderPadding(ListPaddingProvider listPaddingProvider) {
        if (ensureListPadding()) {
            this.headerPadding = listPaddingProvider;
            requestLayout();
        }
    }

    public void startBlink(View view, int i10, int i11, int i12) {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (firstVisiblePosition < 0) {
            return;
        }
        int childCount = getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            if (getChildAt(i13) == view) {
                startBlink(i13 + firstVisiblePosition, i10, i11, i12);
                return;
            }
        }
    }
}
