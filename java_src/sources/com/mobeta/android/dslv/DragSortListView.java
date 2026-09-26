package com.mobeta.android.dslv;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.compose.material.TextFieldImplKt;
import androidx.core.view.ViewCompat;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class DragSortListView extends ListView {
    private static final int DRAGGING = 4;
    public static final int DRAG_NEG_X = 2;
    public static final int DRAG_NEG_Y = 8;
    public static final int DRAG_POS_X = 1;
    public static final int DRAG_POS_Y = 4;
    private static final int DROPPING = 2;
    private static final int IDLE = 0;
    private static final int NO_CANCEL = 0;
    private static final int ON_INTERCEPT_TOUCH_EVENT = 2;
    private static final int ON_TOUCH_EVENT = 1;
    private static final int STOPPED = 3;
    private static final int sCacheSize = 3;
    private c mAdapterWrapper;
    private boolean mAnimate;
    private boolean mBlockLayoutRequests;
    private MotionEvent mCancelEvent;
    private int mCancelMethod;
    private boolean mCancelOnDataChanged;
    private l mChildHeightCache;
    private float mCurrFloatAlpha;
    private int mDownScrollStartY;
    private float mDownScrollStartYF;
    private int mDragDeltaX;
    private int mDragDeltaY;
    private float mDragDownScrollHeight;
    private float mDragDownScrollStartFrac;
    private boolean mDragEnabled;
    private int mDragFlags;
    private d mDragListener;
    private f mDragScroller;
    private h mDragSortTracker;
    private int mDragStartY;
    private int mDragState;
    private float mDragUpScrollHeight;
    private float mDragUpScrollStartFrac;
    private i mDropAnimator;
    private j mDropListener;
    private int mFirstExpPos;
    private float mFloatAlpha;
    private Point mFloatLoc;
    private int mFloatPos;
    private View mFloatView;
    private int mFloatViewHeight;
    private int mFloatViewHeightHalf;
    private boolean mFloatViewInvalidated;
    private k mFloatViewManager;
    private int mFloatViewMid;
    private boolean mFloatViewOnMeasured;
    private boolean mIgnoreTouchEvent;
    private boolean mInTouchEvent;
    private int mItemHeightCollapsed;
    private boolean mLastCallWasIntercept;
    private int mLastX;
    private int mLastY;
    private m mLiftAnimator;
    private boolean mListViewIntercepted;
    private float mMaxScrollSpeed;
    private DataSetObserver mObserver;
    private int mOffsetX;
    private int mOffsetY;
    private n mRemoveListener;
    private float mRemoveVelocityX;
    private View[] mSampleViewTypes;
    private e mScrollProfile;
    private int mSecondExpPos;
    private float mSlideFrac;
    private float mSlideRegionFrac;
    private int mSrcPos;
    private Point mTouchLoc;
    private boolean mTrackDragSort;
    private int mUpScrollStartY;
    private float mUpScrollStartYF;
    private boolean mUseRemoveVelocity;
    private int mWidthMeasureSpec;
    private int mX;
    private int mY;

    class a implements e {
        a() {
        }

        @Override // com.mobeta.android.dslv.DragSortListView.e
        public float a(float f, long j6) {
            return DragSortListView.this.mMaxScrollSpeed * f;
        }
    }

    class b extends DataSetObserver {
        b() {
        }

        private void a() {
            if (DragSortListView.this.mDragState == 4) {
                DragSortListView.this.K();
            }
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (DragSortListView.this.mCancelOnDataChanged) {
                a();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a();
        }
    }

    private class c extends BaseAdapter {
        private ListAdapter mAdapter;

        class a extends DataSetObserver {
            final /* synthetic */ DragSortListView val$this$0;

            a(DragSortListView dragSortListView) {
                this.val$this$0 = dragSortListView;
            }

            @Override // android.database.DataSetObserver
            public void onChanged() {
                c.this.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                c.this.notifyDataSetInvalidated();
            }
        }

        public ListAdapter a() {
            return this.mAdapter;
        }

        public c(ListAdapter listAdapter) {
            this.mAdapter = listAdapter;
            listAdapter.registerDataSetObserver(new a(DragSortListView.this));
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return this.mAdapter.areAllItemsEnabled();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mAdapter.getCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this.mAdapter.getItem(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return this.mAdapter.getItemId(i10);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            return this.mAdapter.getItemViewType(i10);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            com.mobeta.android.dslv.b bVar;
            if (view != null) {
                bVar = (com.mobeta.android.dslv.b) view;
                View childAt = bVar.getChildAt(0);
                View view2 = this.mAdapter.getView(i10, childAt, DragSortListView.this);
                if (view2 != childAt) {
                    if (childAt != null) {
                        bVar.removeViewAt(0);
                    }
                    bVar.addView(view2);
                }
            } else {
                View view3 = this.mAdapter.getView(i10, null, DragSortListView.this);
                com.mobeta.android.dslv.b cVar = view3 instanceof Checkable ? new com.mobeta.android.dslv.c(DragSortListView.this.getContext()) : new com.mobeta.android.dslv.b(DragSortListView.this.getContext());
                cVar.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
                cVar.addView(view3);
                bVar = cVar;
            }
            DragSortListView dragSortListView = DragSortListView.this;
            dragSortListView.F(i10 + dragSortListView.getHeaderViewsCount(), bVar, true);
            return bVar;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return this.mAdapter.getViewTypeCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return this.mAdapter.hasStableIds();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.mAdapter.isEmpty();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return this.mAdapter.isEnabled(i10);
        }
    }

    public interface d {
        void a(int i10, int i11);
    }

    public interface e {
        float a(float f, long j6);
    }

    private class f implements Runnable {
        public static final int DOWN = 1;
        public static final int STOP = -1;
        public static final int UP = 0;
        private float dt;
        private int dy;
        private boolean mAbort;
        private long mCurrTime;
        private int mFirstFooter;
        private int mLastHeader;
        private long mPrevTime;
        private float mScrollSpeed;
        private boolean mScrolling = false;
        private int scrollDir;
        private long tStart;

        public int a() {
            if (this.mScrolling) {
                return this.scrollDir;
            }
            return -1;
        }

        public boolean b() {
            return this.mScrolling;
        }

        public f() {
        }

        public void c(int i10) {
            if (this.mScrolling) {
                return;
            }
            this.mAbort = false;
            this.mScrolling = true;
            long jUptimeMillis = SystemClock.uptimeMillis();
            this.tStart = jUptimeMillis;
            this.mPrevTime = jUptimeMillis;
            this.scrollDir = i10;
            DragSortListView.this.post(this);
        }

        public void d(boolean z6) {
            if (!z6) {
                this.mAbort = true;
            } else {
                DragSortListView.this.removeCallbacks(this);
                this.mScrolling = false;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mAbort) {
                this.mScrolling = false;
                return;
            }
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            int lastVisiblePosition = DragSortListView.this.getLastVisiblePosition();
            int count = DragSortListView.this.getCount();
            int paddingTop = DragSortListView.this.getPaddingTop();
            int height = (DragSortListView.this.getHeight() - paddingTop) - DragSortListView.this.getPaddingBottom();
            int iMin = Math.min(DragSortListView.this.mY, DragSortListView.this.mFloatViewMid + DragSortListView.this.mFloatViewHeightHalf);
            int iMax = Math.max(DragSortListView.this.mY, DragSortListView.this.mFloatViewMid - DragSortListView.this.mFloatViewHeightHalf);
            if (this.scrollDir == 0) {
                View childAt = DragSortListView.this.getChildAt(0);
                if (childAt == null) {
                    this.mScrolling = false;
                    return;
                } else {
                    if (firstVisiblePosition == 0 && childAt.getTop() == paddingTop) {
                        this.mScrolling = false;
                        return;
                    }
                    this.mScrollSpeed = DragSortListView.this.mScrollProfile.a((DragSortListView.this.mUpScrollStartYF - iMax) / DragSortListView.this.mDragUpScrollHeight, this.mPrevTime);
                }
            } else {
                View childAt2 = DragSortListView.this.getChildAt(lastVisiblePosition - firstVisiblePosition);
                if (childAt2 == null) {
                    this.mScrolling = false;
                    return;
                } else {
                    if (lastVisiblePosition == count - 1 && childAt2.getBottom() <= height + paddingTop) {
                        this.mScrolling = false;
                        return;
                    }
                    this.mScrollSpeed = -DragSortListView.this.mScrollProfile.a((iMin - DragSortListView.this.mDownScrollStartYF) / DragSortListView.this.mDragDownScrollHeight, this.mPrevTime);
                }
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            this.mCurrTime = jUptimeMillis;
            float f = jUptimeMillis - this.mPrevTime;
            this.dt = f;
            int iRound = Math.round(this.mScrollSpeed * f);
            this.dy = iRound;
            if (iRound >= 0) {
                this.dy = Math.min(height, iRound);
                lastVisiblePosition = firstVisiblePosition;
            } else {
                this.dy = Math.max(-height, iRound);
            }
            View childAt3 = DragSortListView.this.getChildAt(lastVisiblePosition - firstVisiblePosition);
            int top = childAt3.getTop() + this.dy;
            if (lastVisiblePosition == 0 && top > paddingTop) {
                top = paddingTop;
            }
            DragSortListView.this.mBlockLayoutRequests = true;
            DragSortListView.this.setSelectionFromTop(lastVisiblePosition, top - paddingTop);
            DragSortListView.this.layoutChildren();
            DragSortListView.this.invalidate();
            DragSortListView.this.mBlockLayoutRequests = false;
            DragSortListView.this.P(lastVisiblePosition, childAt3, false);
            this.mPrevTime = this.mCurrTime;
            DragSortListView.this.post(this);
        }
    }

    public interface g extends j, d, n {
    }

    private class h {
        File mFile;
        StringBuilder mBuilder = new StringBuilder();
        private int mNumInBuffer = 0;
        private int mNumFlushes = 0;
        private boolean mTracking = false;

        public h() {
            File file = new File(DragSortListView.this.getContext().getFilesDir(), "dslv_state.txt");
            this.mFile = file;
            if (file.exists()) {
                return;
            }
            try {
                this.mFile.createNewFile();
                Log.d("mobeta", "file created");
            } catch (IOException e) {
                Log.w("mobeta", "Could not create dslv_state.txt");
                Log.d("mobeta", e.getMessage());
            }
        }

        public void a() {
            if (this.mTracking) {
                this.mBuilder.append("<DSLVState>\n");
                int childCount = DragSortListView.this.getChildCount();
                int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
                this.mBuilder.append("    <Positions>");
                for (int i10 = 0; i10 < childCount; i10++) {
                    StringBuilder sb = this.mBuilder;
                    sb.append(firstVisiblePosition + i10);
                    sb.append(",");
                }
                this.mBuilder.append("</Positions>\n");
                this.mBuilder.append("    <Tops>");
                for (int i11 = 0; i11 < childCount; i11++) {
                    StringBuilder sb2 = this.mBuilder;
                    sb2.append(DragSortListView.this.getChildAt(i11).getTop());
                    sb2.append(",");
                }
                this.mBuilder.append("</Tops>\n");
                this.mBuilder.append("    <Bottoms>");
                for (int i12 = 0; i12 < childCount; i12++) {
                    StringBuilder sb3 = this.mBuilder;
                    sb3.append(DragSortListView.this.getChildAt(i12).getBottom());
                    sb3.append(",");
                }
                this.mBuilder.append("</Bottoms>\n");
                StringBuilder sb4 = this.mBuilder;
                sb4.append("    <FirstExpPos>");
                sb4.append(DragSortListView.this.mFirstExpPos);
                sb4.append("</FirstExpPos>\n");
                StringBuilder sb5 = this.mBuilder;
                sb5.append("    <FirstExpBlankHeight>");
                DragSortListView dragSortListView = DragSortListView.this;
                int iV = dragSortListView.V(dragSortListView.mFirstExpPos);
                DragSortListView dragSortListView2 = DragSortListView.this;
                sb5.append(iV - dragSortListView2.T(dragSortListView2.mFirstExpPos));
                sb5.append("</FirstExpBlankHeight>\n");
                StringBuilder sb6 = this.mBuilder;
                sb6.append("    <SecondExpPos>");
                sb6.append(DragSortListView.this.mSecondExpPos);
                sb6.append("</SecondExpPos>\n");
                StringBuilder sb7 = this.mBuilder;
                sb7.append("    <SecondExpBlankHeight>");
                DragSortListView dragSortListView3 = DragSortListView.this;
                int iV2 = dragSortListView3.V(dragSortListView3.mSecondExpPos);
                DragSortListView dragSortListView4 = DragSortListView.this;
                sb7.append(iV2 - dragSortListView4.T(dragSortListView4.mSecondExpPos));
                sb7.append("</SecondExpBlankHeight>\n");
                StringBuilder sb8 = this.mBuilder;
                sb8.append("    <SrcPos>");
                sb8.append(DragSortListView.this.mSrcPos);
                sb8.append("</SrcPos>\n");
                StringBuilder sb9 = this.mBuilder;
                sb9.append("    <SrcHeight>");
                sb9.append(DragSortListView.this.mFloatViewHeight + DragSortListView.this.getDividerHeight());
                sb9.append("</SrcHeight>\n");
                StringBuilder sb10 = this.mBuilder;
                sb10.append("    <ViewHeight>");
                sb10.append(DragSortListView.this.getHeight());
                sb10.append("</ViewHeight>\n");
                StringBuilder sb11 = this.mBuilder;
                sb11.append("    <LastY>");
                sb11.append(DragSortListView.this.mLastY);
                sb11.append("</LastY>\n");
                StringBuilder sb12 = this.mBuilder;
                sb12.append("    <FloatY>");
                sb12.append(DragSortListView.this.mFloatViewMid);
                sb12.append("</FloatY>\n");
                this.mBuilder.append("    <ShuffleEdges>");
                for (int i13 = 0; i13 < childCount; i13++) {
                    StringBuilder sb13 = this.mBuilder;
                    DragSortListView dragSortListView5 = DragSortListView.this;
                    sb13.append(dragSortListView5.W(firstVisiblePosition + i13, dragSortListView5.getChildAt(i13).getTop()));
                    sb13.append(",");
                }
                this.mBuilder.append("</ShuffleEdges>\n");
                this.mBuilder.append("</DSLVState>\n");
                int i14 = this.mNumInBuffer + 1;
                this.mNumInBuffer = i14;
                if (i14 > 1000) {
                    b();
                    this.mNumInBuffer = 0;
                }
            }
        }

        public void b() {
            if (this.mTracking) {
                try {
                    FileWriter fileWriter = new FileWriter(this.mFile, this.mNumFlushes != 0);
                    fileWriter.write(this.mBuilder.toString());
                    StringBuilder sb = this.mBuilder;
                    sb.delete(0, sb.length());
                    fileWriter.flush();
                    fileWriter.close();
                    this.mNumFlushes++;
                } catch (IOException unused) {
                }
            }
        }

        public void c() {
            this.mBuilder.append("<DSLVStates>\n");
            this.mNumFlushes = 0;
            this.mTracking = true;
        }

        public void d() {
            if (this.mTracking) {
                this.mBuilder.append("</DSLVStates>\n");
                b();
                this.mTracking = false;
            }
        }
    }

    private class i extends o {
        private int mDropPos;
        private float mInitDeltaX;
        private float mInitDeltaY;
        private int srcPos;

        public i(float f, int i10) {
            super(f, i10);
        }

        private int g() {
            int bottom;
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            int dividerHeight = (DragSortListView.this.mItemHeightCollapsed + DragSortListView.this.getDividerHeight()) / 2;
            View childAt = DragSortListView.this.getChildAt(this.mDropPos - firstVisiblePosition);
            if (childAt == null) {
                a();
                return -1;
            }
            int i10 = this.mDropPos;
            int i11 = this.srcPos;
            if (i10 == i11) {
                return childAt.getTop();
            }
            if (i10 < i11) {
                bottom = childAt.getTop();
            } else {
                bottom = childAt.getBottom() + dividerHeight;
                dividerHeight = DragSortListView.this.mFloatViewHeight;
            }
            return bottom - dividerHeight;
        }

        @Override // com.mobeta.android.dslv.DragSortListView.o
        public void b() {
            this.mDropPos = DragSortListView.this.mFloatPos;
            this.srcPos = DragSortListView.this.mSrcPos;
            DragSortListView.this.mDragState = 2;
            this.mInitDeltaY = DragSortListView.this.mFloatLoc.y - g();
            this.mInitDeltaX = DragSortListView.this.mFloatLoc.x - DragSortListView.this.getPaddingLeft();
        }

        @Override // com.mobeta.android.dslv.DragSortListView.o
        public void c() {
            DragSortListView.this.S();
        }

        @Override // com.mobeta.android.dslv.DragSortListView.o
        public void d(float f, float f6) {
            int iG = g();
            int paddingLeft = DragSortListView.this.getPaddingLeft();
            float f7 = DragSortListView.this.mFloatLoc.y - iG;
            float f10 = DragSortListView.this.mFloatLoc.x - paddingLeft;
            float f11 = 1.0f - f6;
            if (f11 < Math.abs(f7 / this.mInitDeltaY) || f11 < Math.abs(f10 / this.mInitDeltaX)) {
                DragSortListView.this.mFloatLoc.y = iG + ((int) (this.mInitDeltaY * f11));
                DragSortListView.this.mFloatLoc.x = DragSortListView.this.getPaddingLeft() + ((int) (this.mInitDeltaX * f11));
                DragSortListView.this.Q(true);
            }
        }
    }

    public interface j {
        void drop(int i10, int i11);
    }

    public interface k {
        View onCreateFloatView(int i10);

        void onDestroyFloatView(View view);

        void onDragFloatView(View view, Point point, Point point2);
    }

    private class l {
        private SparseIntArray mMap;
        private int mMaxSize;
        private ArrayList<Integer> mOrder;

        public l(int i10) {
            this.mMap = new SparseIntArray(i10);
            this.mOrder = new ArrayList<>(i10);
            this.mMaxSize = i10;
        }

        public void a(int i10, int i11) {
            int i12 = this.mMap.get(i10, -1);
            if (i12 != i11) {
                if (i12 != -1) {
                    this.mOrder.remove(Integer.valueOf(i10));
                } else if (this.mMap.size() == this.mMaxSize) {
                    this.mMap.delete(this.mOrder.remove(0).intValue());
                }
                this.mMap.put(i10, i11);
                this.mOrder.add(Integer.valueOf(i10));
            }
        }

        public void b() {
            this.mMap.clear();
            this.mOrder.clear();
        }

        public int c(int i10) {
            return this.mMap.get(i10, -1);
        }
    }

    private class m extends o {
        private float mFinalDragDeltaY;
        private float mInitDragDeltaY;

        public m(float f, int i10) {
            super(f, i10);
        }

        @Override // com.mobeta.android.dslv.DragSortListView.o
        public void b() {
            this.mInitDragDeltaY = DragSortListView.this.mDragDeltaY;
            this.mFinalDragDeltaY = DragSortListView.this.mFloatViewHeightHalf;
        }

        @Override // com.mobeta.android.dslv.DragSortListView.o
        public void d(float f, float f6) {
            if (DragSortListView.this.mDragState != 4) {
                a();
                return;
            }
            DragSortListView.this.mDragDeltaY = (int) ((this.mFinalDragDeltaY * f6) + ((1.0f - f6) * this.mInitDragDeltaY));
            DragSortListView.this.mFloatLoc.y = DragSortListView.this.mY - DragSortListView.this.mDragDeltaY;
            DragSortListView.this.Q(true);
        }
    }

    public interface n {
        void remove(int i10);
    }

    private class o implements Runnable {
        private float mA;
        private float mAlpha;
        private float mB;
        private float mC;
        private boolean mCanceled;
        private float mD;
        private float mDurationF;
        protected long mStartTime;

        public void a() {
            this.mCanceled = true;
        }

        public void b() {
        }

        public void c() {
        }

        public void d(float f, float f6) {
        }

        public float f(float f) {
            float f6 = this.mAlpha;
            if (f < f6) {
                return this.mA * f * f;
            }
            if (f < 1.0f - f6) {
                return this.mB + (this.mC * f);
            }
            float f7 = f - 1.0f;
            return 1.0f - ((this.mD * f7) * f7);
        }

        public o(float f, int i10) {
            this.mAlpha = f;
            this.mDurationF = i10;
            float f6 = 1.0f / ((f * 2.0f) * (1.0f - f));
            this.mD = f6;
            this.mA = f6;
            this.mB = f / ((f - 1.0f) * 2.0f);
            this.mC = 1.0f / (1.0f - f);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mCanceled) {
                return;
            }
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.mStartTime) / this.mDurationF;
            if (fUptimeMillis >= 1.0f) {
                d(1.0f, 1.0f);
                c();
            } else {
                d(fUptimeMillis, f(fUptimeMillis));
                DragSortListView.this.post(this);
            }
        }

        public void e() {
            this.mStartTime = SystemClock.uptimeMillis();
            this.mCanceled = false;
            b();
            DragSortListView.this.post(this);
        }
    }

    private void L() {
        this.mSrcPos = -1;
        this.mFirstExpPos = -1;
        this.mSecondExpPos = -1;
        this.mFloatPos = -1;
    }

    private void O() {
        this.mCancelMethod = 0;
        this.mInTouchEvent = false;
        if (this.mDragState == 3) {
            this.mDragState = 0;
        }
        this.mCurrFloatAlpha = this.mFloatAlpha;
        this.mListViewIntercepted = false;
        this.mChildHeightCache.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(int i10, View view, boolean z6) {
        this.mBlockLayoutRequests = true;
        k0();
        int i11 = this.mFirstExpPos;
        int i12 = this.mSecondExpPos;
        boolean zL0 = l0();
        if (zL0) {
            E();
            setSelectionFromTop(i10, (view.getTop() + H(i10, view, i11, i12)) - getPaddingTop());
            layoutChildren();
        }
        if (zL0 || z6) {
            invalidate();
        }
        this.mBlockLayoutRequests = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        int i10;
        this.mDragState = 2;
        if (this.mDropListener != null && (i10 = this.mFloatPos) >= 0 && i10 < getCount()) {
            int headerViewsCount = getHeaderViewsCount();
            this.mDropListener.drop(this.mSrcPos - headerViewsCount, this.mFloatPos - headerViewsCount);
        }
        N();
        G();
        L();
        E();
        if (this.mInTouchEvent) {
            this.mDragState = 3;
        } else {
            this.mDragState = 0;
        }
    }

    public boolean X() {
        return this.mDragEnabled;
    }

    public boolean Y() {
        return this.mListViewIntercepted;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.mobeta.android.dslv", this, me);
        return super.dispatchTouchEvent(me);
    }

    public float getFloatAlpha() {
        return this.mCurrFloatAlpha;
    }

    public boolean h0() {
        this.mUseRemoveVelocity = false;
        return i0(0.0f);
    }

    public boolean j0(float f6) {
        this.mUseRemoveVelocity = true;
        return i0(f6);
    }

    public void setCancelOnDataChanged(boolean z6) {
        this.mCancelOnDataChanged = z6;
    }

    public void setDragEnabled(boolean z6) {
        this.mDragEnabled = z6;
    }

    public void setDragListener(d dVar) {
        this.mDragListener = dVar;
    }

    public void setDragScrollProfile(e eVar) {
        if (eVar != null) {
            this.mScrollProfile = eVar;
        }
    }

    public void setDropListener(j jVar) {
        this.mDropListener = jVar;
    }

    public void setFloatAlpha(float f6) {
        this.mCurrFloatAlpha = f6;
    }

    public void setFloatViewManager(k kVar) {
        this.mFloatViewManager = kVar;
    }

    public void setMaxScrollSpeed(float f6) {
        this.mMaxScrollSpeed = f6;
    }

    public void setRemoveListener(n nVar) {
        this.mRemoveListener = nVar;
    }

    public DragSortListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFloatLoc = new Point();
        this.mTouchLoc = new Point();
        this.mFloatViewOnMeasured = false;
        this.mFloatAlpha = 1.0f;
        this.mCurrFloatAlpha = 1.0f;
        this.mAnimate = false;
        this.mDragEnabled = true;
        this.mDragState = 0;
        this.mItemHeightCollapsed = 1;
        this.mWidthMeasureSpec = 0;
        this.mSampleViewTypes = new View[1];
        this.mDragUpScrollStartFrac = 0.33333334f;
        this.mDragDownScrollStartFrac = 0.33333334f;
        this.mMaxScrollSpeed = 0.5f;
        this.mScrollProfile = new a();
        this.mDragFlags = 0;
        this.mLastCallWasIntercept = false;
        this.mInTouchEvent = false;
        this.mFloatViewManager = null;
        this.mCancelMethod = 0;
        this.mSlideRegionFrac = 0.25f;
        this.mSlideFrac = 0.0f;
        this.mTrackDragSort = false;
        this.mBlockLayoutRequests = false;
        this.mIgnoreTouchEvent = false;
        this.mChildHeightCache = new l(3);
        this.mRemoveVelocityX = 0.0f;
        this.mCancelOnDataChanged = true;
        this.mListViewIntercepted = false;
        this.mFloatViewInvalidated = false;
        int i10 = TextFieldImplKt.AnimationDuration;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, com.mobeta.android.dslv.d.DragSortListView, 0, 0);
            this.mItemHeightCollapsed = Math.max(1, typedArrayObtainStyledAttributes.getDimensionPixelSize(com.mobeta.android.dslv.d.DragSortListView_collapsed_height, 1));
            boolean z6 = typedArrayObtainStyledAttributes.getBoolean(com.mobeta.android.dslv.d.DragSortListView_track_drag_sort, false);
            this.mTrackDragSort = z6;
            if (z6) {
                this.mDragSortTracker = new h();
            }
            float f6 = typedArrayObtainStyledAttributes.getFloat(com.mobeta.android.dslv.d.DragSortListView_float_alpha, this.mFloatAlpha);
            this.mFloatAlpha = f6;
            this.mCurrFloatAlpha = f6;
            this.mDragEnabled = typedArrayObtainStyledAttributes.getBoolean(com.mobeta.android.dslv.d.DragSortListView_drag_enabled, this.mDragEnabled);
            float fMax = Math.max(0.0f, Math.min(1.0f, 1.0f - typedArrayObtainStyledAttributes.getFloat(com.mobeta.android.dslv.d.DragSortListView_slide_shuffle_speed, 0.75f)));
            this.mSlideRegionFrac = fMax;
            this.mAnimate = fMax > 0.0f;
            setDragScrollStart(typedArrayObtainStyledAttributes.getFloat(com.mobeta.android.dslv.d.DragSortListView_drag_scroll_start, this.mDragUpScrollStartFrac));
            this.mMaxScrollSpeed = typedArrayObtainStyledAttributes.getFloat(com.mobeta.android.dslv.d.DragSortListView_max_drag_scroll_speed, this.mMaxScrollSpeed);
            typedArrayObtainStyledAttributes.getInt(com.mobeta.android.dslv.d.DragSortListView_remove_animation_duration, TextFieldImplKt.AnimationDuration);
            int i11 = typedArrayObtainStyledAttributes.getInt(com.mobeta.android.dslv.d.DragSortListView_drop_animation_duration, TextFieldImplKt.AnimationDuration);
            if (typedArrayObtainStyledAttributes.getBoolean(com.mobeta.android.dslv.d.DragSortListView_use_default_controller, true)) {
                boolean z10 = typedArrayObtainStyledAttributes.getBoolean(com.mobeta.android.dslv.d.DragSortListView_remove_enabled, false);
                int i12 = typedArrayObtainStyledAttributes.getInt(com.mobeta.android.dslv.d.DragSortListView_remove_mode, 1);
                boolean z11 = typedArrayObtainStyledAttributes.getBoolean(com.mobeta.android.dslv.d.DragSortListView_sort_enabled, true);
                int i13 = typedArrayObtainStyledAttributes.getInt(com.mobeta.android.dslv.d.DragSortListView_drag_start_mode, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(com.mobeta.android.dslv.d.DragSortListView_drag_handle_id, 0);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(com.mobeta.android.dslv.d.DragSortListView_fling_handle_id, 0);
                int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(com.mobeta.android.dslv.d.DragSortListView_click_remove_id, 0);
                int color = typedArrayObtainStyledAttributes.getColor(com.mobeta.android.dslv.d.DragSortListView_float_background_color, ViewCompat.MEASURED_STATE_MASK);
                com.mobeta.android.dslv.a aVar = new com.mobeta.android.dslv.a(this, resourceId, i13, i12, resourceId3, resourceId2);
                aVar.setRemoveEnabled(z10);
                aVar.setSortEnabled(z11);
                aVar.setBackgroundColor(color);
                this.mFloatViewManager = aVar;
                setOnTouchListener(aVar);
            }
            typedArrayObtainStyledAttributes.recycle();
            i10 = i11;
        }
        this.mDragScroller = new f();
        if (i10 > 0) {
            this.mDropAnimator = new i(0.5f, i10);
        }
        this.mCancelEvent = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        this.mObserver = new b();
    }

    private void M(int i10, int i11) {
        Point point = this.mFloatLoc;
        point.x = i10 - this.mDragDeltaX;
        point.y = i11 - this.mDragDeltaY;
        Q(true);
        int iMin = Math.min(i11, this.mFloatViewMid + this.mFloatViewHeightHalf);
        int iMax = Math.max(i11, this.mFloatViewMid - this.mFloatViewHeightHalf);
        int iA = this.mDragScroller.a();
        int i12 = this.mLastY;
        if (iMin > i12 && iMin > this.mDownScrollStartY && iA != 1) {
            if (iA != -1) {
                this.mDragScroller.d(true);
            }
            this.mDragScroller.c(1);
        } else if (iMax < i12 && iMax < this.mUpScrollStartY && iA != 0) {
            if (iA != -1) {
                this.mDragScroller.d(true);
            }
            this.mDragScroller.c(0);
        } else {
            if (iMax < this.mUpScrollStartY || iMin > this.mDownScrollStartY || !this.mDragScroller.b()) {
                return;
            }
            this.mDragScroller.d(true);
        }
    }

    private void N() {
        View view = this.mFloatView;
        if (view != null) {
            view.setVisibility(8);
            k kVar = this.mFloatViewManager;
            if (kVar != null) {
                kVar.onDestroyFloatView(this.mFloatView);
            }
            this.mFloatView = null;
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int T(int i10) {
        View view;
        if (i10 == this.mSrcPos) {
            return 0;
        }
        View childAt = getChildAt(i10 - getFirstVisiblePosition());
        if (childAt != null) {
            return U(i10, childAt, false);
        }
        int iC = this.mChildHeightCache.c(i10);
        if (iC != -1) {
            return iC;
        }
        ListAdapter adapter = getAdapter();
        int itemViewType = adapter.getItemViewType(i10);
        int viewTypeCount = adapter.getViewTypeCount();
        if (viewTypeCount != this.mSampleViewTypes.length) {
            this.mSampleViewTypes = new View[viewTypeCount];
        }
        if (itemViewType >= 0) {
            View view2 = this.mSampleViewTypes[itemViewType];
            if (view2 == null) {
                view = adapter.getView(i10, null, this);
                this.mSampleViewTypes[itemViewType] = view;
            } else {
                view = adapter.getView(i10, view2, this);
            }
        } else {
            view = adapter.getView(i10, null, this);
        }
        int iU = U(i10, view, true);
        this.mChildHeightCache.a(i10, iU);
        return iU;
    }

    private int U(int i10, View view, boolean z6) {
        int i11;
        if (i10 == this.mSrcPos) {
            return 0;
        }
        if (i10 >= getHeaderViewsCount() && i10 < getCount() - getFooterViewsCount()) {
            view = ((ViewGroup) view).getChildAt(0);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && (i11 = layoutParams.height) > 0) {
            return i11;
        }
        int height = view.getHeight();
        if (height != 0 && !z6) {
            return height;
        }
        a0(view);
        return view.getMeasuredHeight();
    }

    private void Z() {
        View view = this.mFloatView;
        if (view != null) {
            a0(view);
            int measuredHeight = this.mFloatView.getMeasuredHeight();
            this.mFloatViewHeight = measuredHeight;
            this.mFloatViewHeightHalf = measuredHeight / 2;
        }
    }

    private void k0() {
        int i10;
        int i11;
        if (this.mFloatViewManager != null) {
            this.mTouchLoc.set(this.mX, this.mY);
            this.mFloatViewManager.onDragFloatView(this.mFloatView, this.mFloatLoc, this.mTouchLoc);
        }
        Point point = this.mFloatLoc;
        int i12 = point.x;
        int i13 = point.y;
        int paddingLeft = getPaddingLeft();
        int i14 = this.mDragFlags;
        if ((i14 & 1) == 0 && i12 > paddingLeft) {
            this.mFloatLoc.x = paddingLeft;
        } else if ((i14 & 2) == 0 && i12 < paddingLeft) {
            this.mFloatLoc.x = paddingLeft;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int paddingTop = getPaddingTop();
        if (firstVisiblePosition < headerViewsCount) {
            paddingTop = getChildAt((headerViewsCount - firstVisiblePosition) - 1).getBottom();
        }
        if ((this.mDragFlags & 8) == 0 && firstVisiblePosition <= (i11 = this.mSrcPos)) {
            paddingTop = Math.max(getChildAt(i11 - firstVisiblePosition).getTop(), paddingTop);
        }
        int height = getHeight() - getPaddingBottom();
        if (lastVisiblePosition >= (getCount() - footerViewsCount) - 1) {
            height = getChildAt(((getCount() - footerViewsCount) - 1) - firstVisiblePosition).getBottom();
        }
        if ((this.mDragFlags & 4) == 0 && lastVisiblePosition >= (i10 = this.mSrcPos)) {
            height = Math.min(getChildAt(i10 - firstVisiblePosition).getBottom(), height);
        }
        if (i13 < paddingTop) {
            this.mFloatLoc.y = paddingTop;
        } else {
            int i15 = this.mFloatViewHeight;
            if (i13 + i15 > height) {
                this.mFloatLoc.y = height - i15;
            }
        }
        this.mFloatViewMid = this.mFloatLoc.y + this.mFloatViewHeightHalf;
    }

    public void K() {
        if (this.mDragState == 4) {
            this.mDragScroller.d(true);
            N();
            L();
            E();
            if (this.mInTouchEvent) {
                this.mDragState = 3;
            } else {
                this.mDragState = 0;
            }
        }
    }

    public void c0(int i10) {
        n nVar = this.mRemoveListener;
        if (nVar != null) {
            nVar.remove(i10);
        }
        N();
        G();
        L();
        this.mDragState = 0;
    }

    public void e0(float f6, float f7) {
        if (f7 > 0.5f) {
            this.mDragDownScrollStartFrac = 0.5f;
        } else {
            this.mDragDownScrollStartFrac = f7;
        }
        if (f6 > 0.5f) {
            this.mDragUpScrollStartFrac = 0.5f;
        } else {
            this.mDragUpScrollStartFrac = f6;
        }
        if (getHeight() != 0) {
            m0();
        }
    }

    public boolean f0(int i10, int i11, int i12, int i13) {
        k kVar;
        View viewOnCreateFloatView;
        if (!this.mInTouchEvent || (kVar = this.mFloatViewManager) == null || (viewOnCreateFloatView = kVar.onCreateFloatView(i10)) == null) {
            return false;
        }
        return g0(i10, viewOnCreateFloatView, i11, i12, i13);
    }

    public boolean g0(int i10, View view, int i11, int i12, int i13) {
        if (this.mDragState != 0 || !this.mInTouchEvent || this.mFloatView != null || view == null || !this.mDragEnabled) {
            return false;
        }
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        int headerViewsCount = i10 + getHeaderViewsCount();
        this.mFirstExpPos = headerViewsCount;
        this.mSecondExpPos = headerViewsCount;
        this.mSrcPos = headerViewsCount;
        this.mFloatPos = headerViewsCount;
        this.mDragState = 4;
        this.mDragFlags = i11;
        this.mFloatView = view;
        Z();
        this.mDragDeltaX = i12;
        this.mDragDeltaY = i13;
        int i14 = this.mY;
        this.mDragStartY = i14;
        Point point = this.mFloatLoc;
        point.x = this.mX - i12;
        point.y = i14 - i13;
        View childAt = getChildAt(this.mSrcPos - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setVisibility(4);
        }
        if (this.mTrackDragSort) {
            this.mDragSortTracker.c();
        }
        int i15 = this.mCancelMethod;
        if (i15 == 1) {
            super.onTouchEvent(this.mCancelEvent);
        } else if (i15 == 2) {
            super.onInterceptTouchEvent(this.mCancelEvent);
        }
        requestLayout();
        m mVar = this.mLiftAnimator;
        if (mVar != null) {
            mVar.e();
        }
        return true;
    }

    public ListAdapter getInputAdapter() {
        c cVar = this.mAdapterWrapper;
        if (cVar == null) {
            return null;
        }
        return cVar.a();
    }

    public boolean i0(float f6) {
        if (this.mFloatView == null) {
            return false;
        }
        this.mDragScroller.d(true);
        i iVar = this.mDropAnimator;
        if (iVar != null) {
            iVar.e();
        } else {
            S();
        }
        if (this.mTrackDragSort) {
            this.mDragSortTracker.d();
        }
        return true;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        if (!this.mDragEnabled) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        d0(motionEvent);
        this.mLastCallWasIntercept = true;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            if (this.mDragState != 0) {
                this.mIgnoreTouchEvent = true;
                return true;
            }
            this.mInTouchEvent = true;
        }
        if (this.mFloatView != null) {
            z6 = true;
        } else {
            if (super.onInterceptTouchEvent(motionEvent)) {
                this.mListViewIntercepted = true;
                z6 = true;
            } else {
                z6 = false;
            }
            if (action == 1 || action == 3) {
                O();
            } else if (z6) {
                this.mCancelMethod = 1;
            } else {
                this.mCancelMethod = 2;
            }
        }
        if (action == 1 || action == 3) {
            this.mInTouchEvent = false;
        }
        return z6;
    }

    @Override // android.widget.AbsListView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z6 = false;
        if (this.mIgnoreTouchEvent) {
            this.mIgnoreTouchEvent = false;
            return false;
        }
        if (!this.mDragEnabled) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z10 = this.mLastCallWasIntercept;
        this.mLastCallWasIntercept = false;
        if (!z10) {
            d0(motionEvent);
        }
        int i10 = this.mDragState;
        if (i10 == 4) {
            b0(motionEvent);
            return true;
        }
        if (i10 == 0 && super.onTouchEvent(motionEvent)) {
            z6 = true;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 1 || action == 3) {
            O();
        } else if (z6) {
            this.mCancelMethod = 1;
        }
        return z6;
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mBlockLayoutRequests) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != null) {
            this.mAdapterWrapper = new c(listAdapter);
            listAdapter.registerDataSetObserver(this.mObserver);
            if (listAdapter instanceof j) {
                setDropListener((j) listAdapter);
            }
            if (listAdapter instanceof d) {
                setDragListener((d) listAdapter);
            }
            if (listAdapter instanceof n) {
                setRemoveListener((n) listAdapter);
            }
        } else {
            this.mAdapterWrapper = null;
        }
        super.setAdapter((ListAdapter) this.mAdapterWrapper);
    }

    private void E() {
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int iMin = Math.min(lastVisiblePosition - firstVisiblePosition, ((getCount() - 1) - getFooterViewsCount()) - firstVisiblePosition);
        for (int iMax = Math.max(0, getHeaderViewsCount() - firstVisiblePosition); iMax <= iMin; iMax++) {
            View childAt = getChildAt(iMax);
            if (childAt != null) {
                F(firstVisiblePosition + iMax, childAt, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(int i10, View view, boolean z6) {
        int iJ;
        int i11;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i10 != this.mSrcPos && i10 != this.mFirstExpPos && i10 != this.mSecondExpPos) {
            iJ = -2;
        } else {
            iJ = J(i10, view, z6);
        }
        if (iJ != layoutParams.height) {
            layoutParams.height = iJ;
            view.setLayoutParams(layoutParams);
        }
        if (i10 == this.mFirstExpPos || i10 == this.mSecondExpPos) {
            int i12 = this.mSrcPos;
            if (i10 < i12) {
                ((com.mobeta.android.dslv.b) view).setGravity(80);
            } else if (i10 > i12) {
                ((com.mobeta.android.dslv.b) view).setGravity(48);
            }
        }
        int visibility = view.getVisibility();
        if (i10 == this.mSrcPos && this.mFloatView != null) {
            i11 = 4;
        } else {
            i11 = 0;
        }
        if (i11 != visibility) {
            view.setVisibility(i11);
        }
    }

    private void G() {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (this.mSrcPos < firstVisiblePosition) {
            int top = 0;
            View childAt = getChildAt(0);
            if (childAt != null) {
                top = childAt.getTop();
            }
            setSelectionFromTop(firstVisiblePosition - 1, top - getPaddingTop());
        }
    }

    private int H(int i10, View view, int i11, int i12) {
        int i13;
        int i14;
        int iT = T(i10);
        int height = view.getHeight();
        int I = I(i10, iT);
        int i15 = this.mSrcPos;
        if (i10 != i15) {
            i13 = height - iT;
            i14 = I - iT;
        } else {
            i13 = height;
            i14 = I;
        }
        int i16 = this.mFloatViewHeight;
        int i17 = this.mFirstExpPos;
        if (i15 != i17 && i15 != this.mSecondExpPos) {
            i16 -= this.mItemHeightCollapsed;
        }
        if (i10 <= i11) {
            if (i10 > i17) {
                return i16 - i14;
            }
        } else {
            if (i10 == i12) {
                if (i10 <= i17) {
                    return i13 - i16;
                }
                if (i10 == this.mSecondExpPos) {
                    return height - I;
                }
                return i13;
            }
            if (i10 <= i17) {
                return 0 - i16;
            }
            if (i10 == this.mSecondExpPos) {
                return 0 - i14;
            }
        }
        return 0;
    }

    private int I(int i10, int i11) {
        boolean z6;
        getDividerHeight();
        if (this.mAnimate && this.mFirstExpPos != this.mSecondExpPos) {
            z6 = true;
        } else {
            z6 = false;
        }
        int i12 = this.mFloatViewHeight;
        int i13 = this.mItemHeightCollapsed;
        int i14 = i12 - i13;
        int i15 = (int) (this.mSlideFrac * i14);
        int i16 = this.mSrcPos;
        if (i10 == i16) {
            if (i16 == this.mFirstExpPos) {
                if (z6) {
                    return i15 + i13;
                }
                return i12;
            }
            if (i16 == this.mSecondExpPos) {
                return i12 - i15;
            }
            return i13;
        }
        if (i10 == this.mFirstExpPos) {
            if (z6) {
                return i11 + i15;
            }
            return i11 + i14;
        }
        if (i10 == this.mSecondExpPos) {
            return (i11 + i14) - i15;
        }
        return i11;
    }

    private int J(int i10, View view, boolean z6) {
        return I(i10, U(i10, view, z6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(boolean z6) {
        int firstVisiblePosition = getFirstVisiblePosition() + (getChildCount() / 2);
        View childAt = getChildAt(getChildCount() / 2);
        if (childAt == null) {
            return;
        }
        P(firstVisiblePosition, childAt, z6);
    }

    private void R(int i10, Canvas canvas) {
        ViewGroup viewGroup;
        int i11;
        int top;
        Drawable divider = getDivider();
        int dividerHeight = getDividerHeight();
        if (divider != null && dividerHeight != 0 && (viewGroup = (ViewGroup) getChildAt(i10 - getFirstVisiblePosition())) != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int height = viewGroup.getChildAt(0).getHeight();
            if (i10 > this.mSrcPos) {
                top = viewGroup.getTop() + height;
                i11 = dividerHeight + top;
            } else {
                int bottom = viewGroup.getBottom() - height;
                int i12 = bottom - dividerHeight;
                i11 = bottom;
                top = i12;
            }
            canvas.save();
            canvas.clipRect(paddingLeft, top, width, i11);
            divider.setBounds(paddingLeft, top, width, i11);
            divider.draw(canvas);
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int V(int i10) {
        View childAt = getChildAt(i10 - getFirstVisiblePosition());
        if (childAt != null) {
            return childAt.getHeight();
        }
        return I(i10, T(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int W(int i10, int i11) {
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        if (i10 > headerViewsCount && i10 < getCount() - footerViewsCount) {
            int dividerHeight = getDividerHeight();
            int i12 = this.mFloatViewHeight - this.mItemHeightCollapsed;
            int iT = T(i10);
            int iV = V(i10);
            int i13 = this.mSecondExpPos;
            int i14 = this.mSrcPos;
            if (i13 <= i14) {
                if (i10 == i13 && this.mFirstExpPos != i13) {
                    if (i10 == i14) {
                        i11 += iV;
                        i12 = this.mFloatViewHeight;
                    } else {
                        i11 += iV - iT;
                    }
                } else if (i10 > i13 && i10 <= i14) {
                }
                i11 -= i12;
            } else if (i10 > i14 && i10 <= this.mFirstExpPos) {
                i11 += i12;
            } else if (i10 == i13 && this.mFirstExpPos != i13) {
                i11 += iV - iT;
            }
            if (i10 <= i14) {
                return i11 + (((this.mFloatViewHeight - dividerHeight) - T(i10 - 1)) / 2);
            }
            return i11 + (((iT - dividerHeight) - this.mFloatViewHeight) / 2);
        }
        return i11;
    }

    private void a0(View view) {
        int iMakeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2);
            view.setLayoutParams(layoutParams);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, getListPaddingLeft() + getListPaddingRight(), layoutParams.width);
        int i10 = layoutParams.height;
        if (i10 > 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10, 1073741824);
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, iMakeMeasureSpec);
    }

    private void d0(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            this.mLastX = this.mX;
            this.mLastY = this.mY;
        }
        this.mX = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        this.mY = y6;
        if (action == 0) {
            this.mLastX = this.mX;
            this.mLastY = y6;
        }
        this.mOffsetX = ((int) motionEvent.getRawX()) - this.mX;
        this.mOffsetY = ((int) motionEvent.getRawY()) - this.mY;
    }

    private boolean l0() {
        int i10;
        int i11;
        boolean z6;
        int firstVisiblePosition = getFirstVisiblePosition();
        int count = this.mFirstExpPos;
        View childAt = getChildAt(count - firstVisiblePosition);
        if (childAt == null) {
            count = (getChildCount() / 2) + firstVisiblePosition;
            childAt = getChildAt(count - firstVisiblePosition);
        }
        int top = childAt.getTop();
        int height = childAt.getHeight();
        int iW = W(count, top);
        int dividerHeight = getDividerHeight();
        if (this.mFloatViewMid >= iW) {
            int count2 = getCount();
            while (true) {
                if (count >= count2) {
                    i11 = iW;
                    break;
                }
                if (count == count2 - 1) {
                    i10 = top + dividerHeight + height;
                    int i12 = iW;
                    iW = i10;
                    i11 = i12;
                    break;
                }
                top += height + dividerHeight;
                int i13 = count + 1;
                int iV = V(i13);
                int iW2 = W(i13, top);
                if (this.mFloatViewMid < iW2) {
                    i11 = iW;
                    iW = iW2;
                    break;
                }
                count = i13;
                height = iV;
                iW = iW2;
            }
        } else {
            while (true) {
                if (count >= 0) {
                    count--;
                    int iV2 = V(count);
                    if (count == 0) {
                        i10 = (top - dividerHeight) - iV2;
                        int i14 = iW;
                        iW = i10;
                        i11 = i14;
                        break;
                    }
                    top -= iV2 + dividerHeight;
                    int iW3 = W(count, top);
                    if (this.mFloatViewMid >= iW3) {
                        i11 = iW;
                        iW = iW3;
                        break;
                    }
                    iW = iW3;
                } else {
                    i11 = iW;
                    break;
                }
            }
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        int i15 = this.mFirstExpPos;
        int i16 = this.mSecondExpPos;
        float f6 = this.mSlideFrac;
        if (this.mAnimate) {
            int iAbs = Math.abs(iW - i11);
            int i17 = this.mFloatViewMid;
            if (i17 < iW) {
                int i18 = iW;
                iW = i11;
                i11 = i18;
            }
            int i19 = (int) (this.mSlideRegionFrac * 0.5f * iAbs);
            float f7 = i19;
            int i20 = iW + i19;
            int i21 = i11 - i19;
            if (i17 < i20) {
                this.mFirstExpPos = count - 1;
                this.mSecondExpPos = count;
                this.mSlideFrac = ((i20 - i17) * 0.5f) / f7;
            } else if (i17 < i21) {
                this.mFirstExpPos = count;
                this.mSecondExpPos = count;
            } else {
                this.mFirstExpPos = count;
                this.mSecondExpPos = count + 1;
                this.mSlideFrac = (((i11 - i17) / f7) + 1.0f) * 0.5f;
            }
        } else {
            this.mFirstExpPos = count;
            this.mSecondExpPos = count;
        }
        if (this.mFirstExpPos < headerViewsCount) {
            this.mFirstExpPos = headerViewsCount;
            this.mSecondExpPos = headerViewsCount;
            count = headerViewsCount;
        } else if (this.mSecondExpPos >= getCount() - footerViewsCount) {
            count = (getCount() - footerViewsCount) - 1;
            this.mFirstExpPos = count;
            this.mSecondExpPos = count;
        }
        if (this.mFirstExpPos == i15 && this.mSecondExpPos == i16 && this.mSlideFrac == f6) {
            z6 = false;
        } else {
            z6 = true;
        }
        int i22 = this.mFloatPos;
        if (count != i22) {
            d dVar = this.mDragListener;
            if (dVar != null) {
                dVar.a(i22 - headerViewsCount, count - headerViewsCount);
            }
            this.mFloatPos = count;
            return true;
        }
        return z6;
    }

    private void m0() {
        int paddingTop = getPaddingTop();
        int height = (getHeight() - paddingTop) - getPaddingBottom();
        float f6 = height;
        float f7 = paddingTop;
        float f10 = (this.mDragUpScrollStartFrac * f6) + f7;
        this.mUpScrollStartYF = f10;
        float f11 = ((1.0f - this.mDragDownScrollStartFrac) * f6) + f7;
        this.mDownScrollStartYF = f11;
        this.mUpScrollStartY = (int) f10;
        this.mDownScrollStartY = (int) f11;
        this.mDragUpScrollHeight = f10 - f7;
        this.mDragDownScrollHeight = (paddingTop + height) - f11;
    }

    protected boolean b0(MotionEvent motionEvent) {
        motionEvent.getAction();
        int action = motionEvent.getAction() & 255;
        if (action != 1) {
            if (action != 2) {
                if (action == 3) {
                    if (this.mDragState == 4) {
                        K();
                    }
                    O();
                }
            } else {
                M((int) motionEvent.getX(), (int) motionEvent.getY());
            }
        } else {
            if (this.mDragState == 4) {
                h0();
            }
            O();
        }
        return true;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f6;
        super.dispatchDraw(canvas);
        if (this.mDragState != 0) {
            int i10 = this.mFirstExpPos;
            if (i10 != this.mSrcPos) {
                R(i10, canvas);
            }
            int i11 = this.mSecondExpPos;
            if (i11 != this.mFirstExpPos && i11 != this.mSrcPos) {
                R(i11, canvas);
            }
        }
        View view = this.mFloatView;
        if (view != null) {
            int width = view.getWidth();
            int height = this.mFloatView.getHeight();
            int i12 = this.mFloatLoc.x;
            int width2 = getWidth();
            if (i12 < 0) {
                i12 = -i12;
            }
            if (i12 < width2) {
                float f7 = (width2 - i12) / width2;
                f6 = f7 * f7;
            } else {
                f6 = 0.0f;
            }
            int i13 = (int) (this.mCurrFloatAlpha * 255.0f * f6);
            canvas.save();
            Point point = this.mFloatLoc;
            canvas.translate(point.x, point.y);
            canvas.clipRect(0, 0, width, height);
            canvas.saveLayerAlpha(0.0f, 0.0f, width, height, i13, 31);
            this.mFloatView.draw(canvas);
            canvas.restore();
            canvas.restore();
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    protected void layoutChildren() {
        super.layoutChildren();
        View view = this.mFloatView;
        if (view != null) {
            if (view.isLayoutRequested() && !this.mFloatViewOnMeasured) {
                Z();
            }
            View view2 = this.mFloatView;
            view2.layout(0, 0, view2.getMeasuredWidth(), this.mFloatView.getMeasuredHeight());
            this.mFloatViewOnMeasured = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mTrackDragSort) {
            this.mDragSortTracker.a();
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        View view = this.mFloatView;
        if (view != null) {
            if (view.isLayoutRequested()) {
                Z();
            }
            this.mFloatViewOnMeasured = true;
        }
        this.mWidthMeasureSpec = i10;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        m0();
    }

    public void setDragScrollStart(float f6) {
        e0(f6, f6);
    }

    public void setDragSortListener(g gVar) {
        setDropListener(gVar);
        setDragListener(gVar);
        setRemoveListener(gVar);
    }
}
