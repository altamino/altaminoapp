package com.narvii.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.EdgeEffect;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.OverScroller;
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
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
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
        void onOverscroll(NVListView nVListView, int i);
    }

    private boolean isSignOpposite(int i, int i2) {
        return (i > 0 && i2 < 0) || (i < 0 && i2 > 0);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (i2 == i - 1) {
            return 0;
        }
        return i2 + 1;
    }

    private static class ActionbarOverlayPadding implements ListPaddingProvider {
        NVContext context;

        ActionbarOverlayPadding(NVContext nVContext) {
            this.context = nVContext;
        }

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
    }

    public void setIsNestedScrollingChild(boolean z) {
        this.shouldDispatchNestedScrollingEvents = z;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.mChildHelper.setNestedScrollingEnabled(z);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.mChildHelper.startNestedScroll(i);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.shouldDispatchNestedScrollingEvents && this.mChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.shouldDispatchNestedScrollingEvents && this.mChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.shouldDispatchNestedScrollingEvents && this.mChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.shouldDispatchNestedScrollingEvents && this.mChildHelper.dispatchNestedPreFling(f, f2);
    }

    public void setInterceptTouchEventListener(InterceptTouchEventListener interceptTouchEventListener) {
        this.interceptTouchEventListener = interceptTouchEventListener;
    }

    public void setDispatchTouchEventEndListener(DispatchTouchEventEndListener dispatchTouchEventEndListener) {
        this.dispatchTouchEventEndListener = dispatchTouchEventEndListener;
    }

    public NVListView(Context context) {
        this(context, null);
    }

    public NVListView(Context context, AttributeSet attributeSet) throws IllegalAccessException, IllegalArgumentException {
        super(getNoEdgeGlowEffectContext(context), attributeSet);
        this.shouldDispatchNestedScrollingEvents = true;
        this.footerPadding = -1;
        this.mChildHelper = new NestedScrollingChildHelper(this);
        this.agentScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.widget.NVListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (i == 1) {
                    NVListView.this.overlayTouchCancel();
                }
                if (NVListView.this.scrollListener != null) {
                    NVListView.this.scrollListener.onScrollStateChanged(absListView, i);
                }
                if (NVListView.this.scrollListeners != null) {
                    Iterator it = NVListView.this.scrollListeners.iterator();
                    while (it.hasNext()) {
                        ((AbsListView.OnScrollListener) it.next()).onScrollStateChanged(absListView, i);
                    }
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                if (NVListView.this.scrollListener != null) {
                    NVListView.this.scrollListener.onScroll(absListView, i, i2, i3);
                }
                if (NVListView.this.scrollListeners != null) {
                    Iterator it = NVListView.this.scrollListeners.iterator();
                    while (it.hasNext()) {
                        ((AbsListView.OnScrollListener) it.next()).onScroll(absListView, i, i2, i3);
                    }
                }
            }
        };
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
                if (count > 0) {
                    int i = count - 1;
                    this.lastItem = NVListView.this.adapter.getItem(i);
                    this.lastPos = i;
                } else {
                    this.lastItem = null;
                    this.lastPos = 0;
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
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (NVListView.this.videoListScrollListener != null) {
                    NVListView.this.videoListScrollListener.onScrollStateChanged(NVListView.this, i);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                if (NVListView.this.videoListScrollListener != null) {
                    NVListView.this.videoListScrollListener.onScroll(NVListView.this);
                }
            }
        };
        setNestedScrollingEnabled(true);
        if (initOverscroll()) {
            removeEdgeGlowEffect(this);
        }
        super.setOnScrollListener(this.agentScrollListener);
    }

    public void setSectionHeaderEnabled(boolean z) {
        if (this.sectionHeaderEnabled != z) {
            this.sectionHeaderEnabled = z;
            setChildrenDrawingOrderEnabled(z);
            invalidate();
        }
    }

    public void setHeaderPadding(int i) {
        if (ensureListPadding()) {
            this.headerPadding = Integer.valueOf(i);
            requestLayout();
        }
    }

    public void setHeaderPadding(ListPaddingProvider listPaddingProvider) {
        if (ensureListPadding()) {
            this.headerPadding = listPaddingProvider;
            requestLayout();
        }
    }

    public void addActionBarOverlayHeader(NVContext nVContext) {
        setHeaderPadding(new ActionbarOverlayPadding(nVContext));
    }

    public void setFooterPadding(int i) {
        setScrollBarStyle(33554432);
        setClipToPadding(false);
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), i);
        this.footerPadding = i;
    }

    public int getFooterPadding() {
        return this.footerPadding;
    }

    private boolean ensureListPadding() throws NoSuchFieldException {
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

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.tListPadding != null) {
            int iIntValue = 0;
            Object obj = this.headerPadding;
            if (obj instanceof Integer) {
                iIntValue = ((Integer) obj).intValue();
            } else if (obj instanceof ListPaddingProvider) {
                iIntValue = Integer.valueOf(((ListPaddingProvider) obj).getPadding(this)).intValue();
            }
            if (iIntValue != 0) {
                this.tListPadding.top = iIntValue;
            }
        }
    }

    public Drawable getListContentBackground() {
        return this.listContentBackground;
    }

    public void setListContentBackground(Drawable drawable) {
        this.listContentBackground = drawable;
        invalidate();
    }

    public void setListContentBackground(int i) {
        setListContentBackground(i == 0 ? null : getResources().getDrawable(i));
    }

    public void setListContentBackgroundColor(int i) {
        setListContentBackground(i == 0 ? null : new ColorDrawable(i));
    }

    protected void drawListContentBackground(Canvas canvas) {
        if (this.listContentBackground == null) {
            return;
        }
        int top = (getChildCount() <= 0 || getFirstVisiblePosition() != 0) ? 0 : getChildAt(0).getTop();
        int height = getHeight();
        int i = this.overscrollY;
        if (i > 0) {
            height += i;
        }
        this.listContentBackground.setBounds(0, top, getWidth(), height);
        this.listContentBackground.draw(canvas);
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
        boolean zDispatchTouchEventRelay2 = nVListOverlay.dispatchTouchEventRelay(motionEvent) | false;
        int action = motionEvent.getAction();
        if (action != 1 && action != 3) {
            return zDispatchTouchEventRelay2;
        }
        this.overlayTouchEvents = false;
        return zDispatchTouchEventRelay2;
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

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.scrollListener = onScrollListener;
    }

    public void addOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        if (this.scrollListeners == null) {
            this.scrollListeners = new ArrayList<>();
        }
        this.scrollListeners.add(onScrollListener);
    }

    public void removeOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        ArrayList<AbsListView.OnScrollListener> arrayList = this.scrollListeners;
        if (arrayList != null) {
            arrayList.remove(onScrollListener);
        }
    }

    private boolean initOverscroll() throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        if (!inited) {
            try {
                inited = true;
                fOverflingDistance = AbsListView.class.getDeclaredField("mOverflingDistance");
                fOverflingDistance.setAccessible(true);
                fOverscrollDistance = AbsListView.class.getDeclaredField("mOverscrollDistance");
                fOverscrollDistance.setAccessible(true);
                mTrackMotionScroll = AbsListView.class.getDeclaredMethod("trackMotionScroll", Integer.TYPE, Integer.TYPE);
                mTrackMotionScroll.setAccessible(true);
                fTouchMode = AbsListView.class.getDeclaredField("mTouchMode");
                fTouchMode.setAccessible(true);
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

    protected void setOverflingDistance(int i) throws IllegalAccessException, IllegalArgumentException {
        try {
            fOverflingDistance.set(this, Integer.valueOf(i));
        } catch (Exception unused) {
        }
    }

    public void setOverscrollDistance(int i) throws IllegalAccessException, IllegalArgumentException {
        try {
            fOverscrollDistance.set(this, Integer.valueOf(i));
        } catch (Exception unused) {
        }
    }

    public void setOnOverscrollListener(OnOverscrollListener onOverscrollListener) {
        this.overscrollListener = onOverscrollListener;
    }

    public void addOnOverscrollListener(OnOverscrollListener onOverscrollListener) {
        if (this.overscrollListeners == null) {
            this.overscrollListeners = new ArrayList<>();
        }
        this.overscrollListeners.add(onOverscrollListener);
    }

    public void removeOnOverscrollListener(OnOverscrollListener onOverscrollListener) {
        ArrayList<OnOverscrollListener> arrayList = this.overscrollListeners;
        if (arrayList != null) {
            arrayList.remove(onOverscrollListener);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        this.overscrollStretchY = i2;
        this.overscrollY = i2;
        overlayTouchCancel();
        onSwipeRefreshOverscroll(i2);
        boolean z3 = this.blockLayout;
        this.blockLayout = getOverscrollStretchView() != null && i2 < 0;
        super.onOverScrolled(i, i2, z, z2);
        if (!this.blockLayout && (this.pendingLayout || z3)) {
            this.pendingLayout = false;
            Runnable runnable = this.postRequestLayout;
            if (runnable != null) {
                Utils.handler.removeCallbacks(runnable);
            }
            this.postRequestLayout = new Runnable() { // from class: com.narvii.widget.NVListView.2
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
            Utils.postDelayed(this.postRequestLayout, 60L);
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

    static Context getNoEdgeGlowEffectContext(Context context) {
        return Build.VERSION.SDK_INT < 21 ? new ContextWrapperNoEdgeEffect(context) : context;
    }

    static void removeEdgeGlowEffect(ListView listView) throws IllegalAccessException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (!removeEdgeGlowInited) {
            fEdgeGlowTop = searchDeclaredField(ListView.class, "mEdgeGlowTop");
            fEdgeGlowBottom = searchDeclaredField(ListView.class, "mEdgeGlowBottom");
            removeEdgeGlowInited = true;
        }
        try {
            if (fEdgeGlowTop != null) {
                fEdgeGlowTop.set(listView, new NoEdgeEffect(listView.getContext()));
            }
            if (fEdgeGlowBottom != null) {
                fEdgeGlowBottom.set(listView, new NoEdgeEffect(listView.getContext()));
            }
        } catch (IllegalAccessException unused) {
        }
    }

    static Field searchDeclaredField(Class cls, String str) throws NoSuchFieldException {
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

    static class NoEdgeEffect extends EdgeEffect {
        @Override // android.widget.EdgeEffect
        public boolean draw(Canvas canvas) {
            return false;
        }

        public NoEdgeEffect(Context context) {
            super(context);
        }
    }

    private void onSwipeRefreshOverscroll(int i) {
        if (this.swipeRefreshLayout == null) {
            return;
        }
        this.swipeRefreshOverscrollY = i;
        if (this.swipeRefreshStatus != 1 || i >= 0) {
            return;
        }
        this.swipeRefreshStatus = 2;
        this.swipeRefreshStartY = this.swipeRefreshY;
    }

    private void onSwipeRefreshTouch(MotionEvent motionEvent) {
        int iFindPointerIndex;
        int y;
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
            this.swipeRefreshY = (int) motionEvent.getY(0);
            if (this.swipeRefreshStatus == 2) {
                this.swipeRefreshStartY = this.swipeRefreshY;
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
                int y2 = (((int) motionEvent.getY(iFindPointerIndex2)) - this.swipeRefreshStartY) / 2;
                SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
                swipeRefreshLayout.mIsBeingDragged = true;
                if (y2 > 0) {
                    swipeRefreshLayout.moveSpinner(y2);
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
        if (this.swipeRefreshStatus >= 2 && (iFindPointerIndex = motionEvent.findPointerIndex(this.swipeRefreshActivePointerId)) >= 0 && (y = (((int) motionEvent.getY(iFindPointerIndex)) - this.swipeRefreshStartY) / 2) > 0) {
            SwipeRefreshLayout swipeRefreshLayout2 = this.swipeRefreshLayout;
            swipeRefreshLayout2.mIsBeingDragged = true;
            swipeRefreshLayout2.finishSpinner(y);
        }
        this.swipeRefreshStatus = 0;
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

    public View getOverscrollStretchView() {
        if (getFirstVisiblePosition() != 0 || getChildCount() <= 0) {
            return null;
        }
        View childAt = getChildAt(0);
        if (childAt.getTag(OVERSCROLL_STRETCH_TAG) == Boolean.TRUE) {
            return childAt;
        }
        return null;
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

    @Override // android.widget.ListView, android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int iSave;
        View overscrollStretchView;
        int childCount = getChildCount();
        if (this.overscrollStretchY < 0 && (overscrollStretchView = getOverscrollStretchView()) == view) {
            int width = getWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = (width - paddingLeft) - getPaddingRight();
            int i = overscrollStretchView.getLayoutParams().height;
            if (i < 0) {
                Log.e("overscroll stretch view must have a specific height");
            } else {
                int i2 = i + (-this.overscrollStretchY);
                overscrollStretchView.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
                int i3 = this.overscrollStretchY;
                overscrollStretchView.layout(paddingLeft, i3, paddingRight, i2 + i3);
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
            zDrawChild = super.drawChild(canvas, view, j);
        } catch (Exception unused) {
        }
        if (iSave != -1) {
            canvas.restoreToCount(iSave);
        }
        return zDrawChild;
    }

    public void setOverscrollStretchHeader(Drawable drawable) {
        this.topStretchDrawable = drawable;
        invalidate();
    }

    public void setOverscrollStretchHeader(int i) {
        this.topStretchDrawable = i == 0 ? null : new ColorDrawable(i);
        invalidate();
    }

    public void setOverscrollStretchFooter(Drawable drawable) {
        this.bottomStretchDrawable = drawable;
        invalidate();
    }

    public void setOverscrollStretchFooter(int i) {
        this.bottomStretchDrawable = i == 0 ? null : new ColorDrawable(i);
        invalidate();
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        if (this.changed) {
            return true;
        }
        return super.overScrollBy(i, i2, i3, i4, i5, i6, i7, i8, z);
    }

    public void setOnLayoutListener(OnLayoutListener onLayoutListener) {
        this.layoutListener = onLayoutListener;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = this.overscrollY;
        if (i5 != 0) {
            _scrollListBy(i5);
            this.overscrollY = 0;
        }
        OnLayoutListener onLayoutListener = this.layoutListener;
        if (onLayoutListener != null) {
            onLayoutListener.onLayout(this);
        }
    }

    @SuppressLint({"NewApi"})
    protected void _scrollListBy(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Utils.applyCompat()) {
            try {
                int i2 = -i;
                mTrackMotionScroll.invoke(this, Integer.valueOf(i2), Integer.valueOf(i2));
                return;
            } catch (Exception unused) {
                return;
            }
        }
        scrollListBy(i);
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

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEventCompat = Utils.applyCompat() ? onTouchEventCompat(motionEvent) : super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.isDown = true;
        } else if (action == 1 || action == 3) {
            this.isDown = false;
        }
        return overlayTouchEvent(motionEvent) | zOnTouchEventCompat;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean onTouchEventCompat(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.NVListView.onTouchEventCompat(android.view.MotionEvent):boolean");
    }

    private void resetScrollCompat(MotionEvent motionEvent) {
        if (Utils.applyCompat()) {
            this.lastDy = 0;
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            this.mScrollPointerId = MotionEventCompat.getPointerId(motionEvent, 0);
            this.mLastTouchX = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchY = (int) (motionEvent.getY() + 0.5f);
            startNestedScroll(2);
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws IllegalAccessException, IllegalArgumentException {
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

    public void setClipOffsetRect(Rect rect) {
        this.clipOffsetRect = rect;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
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

    private Boolean isScrollerFinished() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
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

    private void startSpringback() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Method declaredMethod = fFlingRunnable.getType().getDeclaredMethod("startSpringback", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(fFlingRunnable.get(this), new Object[0]);
        } catch (Exception unused) {
        }
    }

    public void setBlinkDrawable(Drawable drawable) {
        this.blDrawable = drawable;
    }

    public void startBlink(int i, int i2, int i3, int i4) {
        this.blPosition = i;
        ListAdapter adapter = getAdapter();
        this.blId = (adapter == null || i >= adapter.getCount()) ? 0L : adapter.getItemId(i);
        this.blStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.blT1 = i2;
        this.blT2 = i3;
        this.blT3 = i4;
        invalidate();
    }

    public void startBlink(View view, int i, int i2, int i3) {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (firstVisiblePosition < 0) {
            return;
        }
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            if (getChildAt(i4) == view) {
                startBlink(i4 + firstVisiblePosition, i, i2, i3);
                return;
            }
        }
    }

    public void startBlinkLong(int i) {
        startBlink(i, 200, 300, 800);
    }

    public void startBlinkLong(View view) {
        startBlink(view, 200, 300, 800);
    }

    public void startBlinkShort(int i) {
        startBlink(i, 0, 200, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00ba  */
    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void dispatchDraw(android.graphics.Canvas r11) {
        /*
            r10 = this;
            android.graphics.drawable.Drawable r0 = r10.blDrawable
            r1 = 0
            if (r0 != 0) goto L8
            goto Lba
        L8:
            long r3 = r10.blStartTime
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L10
            goto Lba
        L10:
            long r3 = android.view.animation.AnimationUtils.currentAnimationTimeMillis()
            long r5 = r10.blStartTime
            long r3 = r3 - r5
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 < 0) goto Lba
            int r0 = r10.blT1
            int r5 = r10.blT2
            int r0 = r0 + r5
            int r5 = r10.blT3
            int r0 = r0 + r5
            long r5 = (long) r0
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 < 0) goto L2a
            goto Lba
        L2a:
            int r0 = r10.getFirstVisiblePosition()
            int r5 = r10.getLastVisiblePosition()
            int r6 = r10.blPosition
            if (r6 < r0) goto Lba
            if (r6 <= r5) goto L3a
            goto Lba
        L3a:
            android.widget.ListAdapter r5 = r10.getAdapter()
            if (r5 != 0) goto L42
            goto Lba
        L42:
            int r6 = r10.blPosition
            int r7 = r5.getCount()
            if (r6 < r7) goto L4c
            goto Lba
        L4c:
            int r6 = r10.blPosition
            long r5 = r5.getItemId(r6)
            long r7 = r10.blId
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 == 0) goto L59
            goto Lba
        L59:
            int r5 = r10.blPosition
            int r5 = r5 - r0
            android.view.View r0 = r10.getChildAt(r5)
            if (r0 != 0) goto L63
            goto Lba
        L63:
            android.graphics.drawable.Drawable r5 = r10.blDrawable
            int r6 = r0.getLeft()
            int r7 = r0.getTop()
            int r8 = r0.getRight()
            int r0 = r0.getBottom()
            r5.setBounds(r6, r7, r8, r0)
            int r0 = r10.blT1
            long r5 = (long) r0
            r7 = 1065353216(0x3f800000, float:1.0)
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 >= 0) goto L88
            float r3 = (float) r3
            float r3 = r3 * r7
            float r0 = (float) r0
            float r7 = r3 / r0
            goto L9e
        L88:
            int r5 = r10.blT2
            int r6 = r0 + r5
            long r8 = (long) r6
            int r6 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r6 >= 0) goto L92
            goto L9e
        L92:
            int r0 = r0 + r5
            int r5 = r10.blT3
            int r0 = r0 + r5
            long r8 = (long) r0
            long r8 = r8 - r3
            float r0 = (float) r8
            float r0 = r0 * r7
            float r3 = (float) r5
            float r7 = r0 / r3
        L9e:
            android.graphics.drawable.Drawable r0 = r10.blDrawable
            boolean r3 = r0 instanceof android.graphics.drawable.StateListDrawable
            if (r3 == 0) goto La9
            int[] r3 = com.narvii.widget.NVListView.STATE_PRESSED
            r0.setState(r3)
        La9:
            android.graphics.drawable.Drawable r0 = r10.blDrawable
            r3 = 1132396544(0x437f0000, float:255.0)
            float r7 = r7 * r3
            int r3 = (int) r7
            r0.setAlpha(r3)
            android.graphics.drawable.Drawable r0 = r10.blDrawable
            r0.draw(r11)
            r0 = 1
            goto Lbb
        Lba:
            r0 = 0
        Lbb:
            if (r0 == 0) goto Lc1
            r10.invalidate()
            goto Lc3
        Lc1:
            r10.blStartTime = r1
        Lc3:
            super.dispatchDraw(r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.NVListView.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView
    public boolean performItemClick(View view, int i, long j) {
        if (!super.performItemClick(view, i, j)) {
            return false;
        }
        this.spState = 1;
        this.spTime = SystemClock.uptimeMillis();
        this.spPosition = i;
        this.spId = j;
        startBlink(i, 0, 200, 100);
        return true;
    }

    public void spOnPause() {
        if (this.spState == 1) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long j = this.spTime;
            if (jUptimeMillis < j || jUptimeMillis >= j + 200) {
                return;
            }
            this.spState = 2;
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 8 && this.spState == 1) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long j = this.spTime;
            if (jUptimeMillis >= j && jUptimeMillis < j + 200) {
                this.spState = 2;
            }
        }
        if (i == 0 && this.spState == 2) {
            try {
                int firstVisiblePosition = getFirstVisiblePosition();
                int lastVisiblePosition = getLastVisiblePosition();
                if (this.spPosition >= firstVisiblePosition && this.spPosition <= lastVisiblePosition) {
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

    public static void smoothScrollToPositionFromTop(NVListView nVListView, final int i, final int i2) {
        if (nVListView == null) {
            return;
        }
        nVListView.addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.widget.NVListView.5
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i3, int i4, int i5) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i3) {
                if (i3 == 0) {
                    NVListView.this.removeOnScrollListener(this);
                    Utils.handler.post(new Runnable() { // from class: com.narvii.widget.NVListView.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            NVListView.this.setSelectionFromTop(i, i2);
                        }
                    });
                }
            }
        });
        Utils.handler.post(new Runnable() { // from class: com.narvii.widget.NVListView.6
            @Override // java.lang.Runnable
            public void run() {
                NVListView.this.smoothScrollToPositionFromTop(i, i2);
            }
        });
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public void addOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener) {
        this.videoListScrollListener = iVideoListScrollListener;
        addOnScrollListener(this.videoListDelegateScrollListener);
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public void removeOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener) {
        this.videoListScrollListener = null;
        removeOnScrollListener(this.videoListDelegateScrollListener);
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public int getTotalCountInAdapter() {
        if (getAdapter() != null) {
            return getAdapter().getCount();
        }
        return 0;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListView
    public Object getItemInAdapter(int i) {
        if (getAdapter() != null) {
            return getAdapter().getItem(i);
        }
        return null;
    }
}
