package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.RectF;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.util.LazyFragmentPagerAdapter;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class NVViewPager extends ViewPager {
    private PagerAdapter adapter;
    public boolean disableScroll;
    public RectF disableScrollRect;
    private int mActivePointerId;
    private final DataSetObserver observer;
    ScrollCheckListener scrollCheckListener;
    private View touchEventPassView;

    public interface ScrollCheckListener {
        boolean isScrolling();
    }

    public NVViewPager(Context context) {
        this(context, null);
    }

    public NVViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mActivePointerId = -1;
        this.observer = new DataSetObserver() { // from class: com.narvii.widget.NVViewPager.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
            }
        };
    }

    public void setTouchEventPassView(View view) {
        this.touchEventPassView = view;
    }

    @Override // android.support.v4.view.ViewPager
    public void setAdapter(PagerAdapter pagerAdapter) throws Resources.NotFoundException {
        PagerAdapter pagerAdapter2 = this.adapter;
        if (pagerAdapter2 != null) {
            pagerAdapter2.unregisterDataSetObserver(this.observer);
        }
        this.adapter = pagerAdapter;
        super.setAdapter(pagerAdapter);
        if (pagerAdapter != null) {
            pagerAdapter.registerDataSetObserver(this.observer);
        }
        this.observer.onChanged();
    }

    @Override // android.support.v4.view.ViewPager
    public void setCurrentItem(int i) throws Resources.NotFoundException {
        PagerAdapter pagerAdapter;
        if (Utils.isRtl() && (pagerAdapter = this.adapter) != null && pagerAdapter.getCount() > 0) {
            i = (this.adapter.getCount() - i) - 1;
        }
        super.setCurrentItem(i);
    }

    public void setCurrentPosition(int i) throws Resources.NotFoundException {
        super.setCurrentItem(i);
    }

    @Override // android.support.v4.view.ViewPager
    public void setCurrentItem(int i, boolean z) throws Resources.NotFoundException {
        if (z && (this.adapter instanceof LazyFragmentPagerAdapter) && i != getCurrentItem()) {
            ((LazyFragmentPagerAdapter) this.adapter).prepareForJump(i);
        }
        super.setCurrentItem(i, z);
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.disableScroll) {
            return false;
        }
        return super.canScrollHorizontally(i);
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.disableScroll) {
            return false;
        }
        RectF rectF = this.disableScrollRect;
        if (rectF != null && rectF.contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        ScrollCheckListener scrollCheckListener = this.scrollCheckListener;
        if (scrollCheckListener != null && scrollCheckListener.isScrolling()) {
            return false;
        }
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, 0);
        } else if (actionMasked != 1) {
            if (actionMasked == 2 && MotionEventCompat.getPointerCount(motionEvent) > 1) {
                return false;
            }
        } else {
            int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
            if (iFindPointerIndex == -1 || iFindPointerIndex > MotionEventCompat.getPointerCount(motionEvent) || MotionEventCompat.getPointerCount(motionEvent) > 1) {
                return false;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setScrollCheckListener(ScrollCheckListener scrollCheckListener) {
        this.scrollCheckListener = scrollCheckListener;
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = false;
        if (this.disableScroll) {
            return false;
        }
        RectF rectF = this.disableScrollRect;
        if (rectF != null && rectF.contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        ScrollCheckListener scrollCheckListener = this.scrollCheckListener;
        if (scrollCheckListener != null && scrollCheckListener.isScrolling()) {
            View view = this.touchEventPassView;
            if (view != null) {
                view.dispatchTouchEvent(motionEvent);
            }
            return false;
        }
        try {
            zOnTouchEvent = super.onTouchEvent(motionEvent);
        } catch (Exception e) {
            Log.e("view pager onTouchEvent error", e);
        }
        View view2 = this.touchEventPassView;
        if (view2 != null) {
            view2.dispatchTouchEvent(motionEvent);
        }
        return zOnTouchEvent;
    }
}
