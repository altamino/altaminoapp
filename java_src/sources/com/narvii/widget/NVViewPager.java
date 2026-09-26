package com.narvii.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.narvii.util.LazyFragmentPagerAdapter;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
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

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i10) {
        PagerAdapter pagerAdapter;
        if (Utils.isRtl() && (pagerAdapter = this.adapter) != null && pagerAdapter.getCount() > 0) {
            i10 = (this.adapter.getCount() - i10) - 1;
        }
        super.setCurrentItem(i10);
    }

    public void setScrollCheckListener(ScrollCheckListener scrollCheckListener) {
        this.scrollCheckListener = scrollCheckListener;
    }

    public void setTouchEventPassView(View view) {
        this.touchEventPassView = view;
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

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean canScrollHorizontally(int i10) {
        if (this.disableScroll) {
            return false;
        }
        return super.canScrollHorizontally(i10);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
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
        int iC = MotionEventCompat.c(motionEvent);
        if (iC == 0) {
            this.mActivePointerId = MotionEventCompat.e(motionEvent, 0);
        } else {
            if (iC == 1) {
                int iA = MotionEventCompat.a(motionEvent, this.mActivePointerId);
                if (iA == -1 || iA > MotionEventCompat.d(motionEvent) || MotionEventCompat.d(motionEvent) > 1) {
                    return false;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }
            if (iC == 2 && MotionEventCompat.d(motionEvent) > 1) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
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

    @Override // androidx.viewpager.widget.ViewPager
    public void setAdapter(PagerAdapter pagerAdapter) {
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

    public void setCurrentPosition(int i10) {
        super.setCurrentItem(i10);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i10, boolean z6) {
        if (z6 && (this.adapter instanceof LazyFragmentPagerAdapter) && i10 != getCurrentItem()) {
            ((LazyFragmentPagerAdapter) this.adapter).prepareForJump(i10);
        }
        super.setCurrentItem(i10, z6);
    }
}
