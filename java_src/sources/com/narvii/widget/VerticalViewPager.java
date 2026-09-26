package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes10.dex */
public class VerticalViewPager extends ViewPager {
    public boolean disableScroll;

    private static final class VerticalPageTransformer implements ViewPager.PageTransformer {
        private VerticalPageTransformer() {
        }

        @Override // androidx.viewpager.widget.ViewPager.PageTransformer
        public void transformPage(View view, float f) {
            int width = view.getWidth();
            int height = view.getHeight();
            if (f < -1.0f) {
                view.setAlpha(0.0f);
            } else {
                if (f <= 1.0f) {
                    view.setAlpha(1.0f);
                    view.setTranslationX(width * (-f));
                    view.setTranslationY(f * height);
                    return;
                }
                view.setAlpha(0.0f);
            }
        }
    }

    public VerticalViewPager(Context context) {
        this(context, null);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean canScrollHorizontally(int i10) {
        return false;
    }

    public VerticalViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        setPageTransformer(true, new VerticalPageTransformer());
        setOverScrollMode(2);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.disableScroll) {
            return false;
        }
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(flipXY(motionEvent));
        flipXY(motionEvent);
        return zOnInterceptTouchEvent;
    }

    private MotionEvent flipXY(MotionEvent motionEvent) {
        float width = getWidth();
        float height = getHeight();
        motionEvent.setLocation((motionEvent.getY() / height) * width, (motionEvent.getX() / width) * height);
        return motionEvent;
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i10) {
        if (super.canScrollHorizontally(i10) && !this.disableScroll) {
            return true;
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(flipXY(motionEvent));
        flipXY(motionEvent);
        return zOnTouchEvent;
    }
}
