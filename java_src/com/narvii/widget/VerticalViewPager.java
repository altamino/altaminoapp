package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes3.dex */
public class VerticalViewPager extends ViewPager {
    public boolean disableScroll;

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean canScrollHorizontally(int i) {
        return false;
    }

    public VerticalViewPager(Context context) {
        this(context, null);
    }

    public VerticalViewPager(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        init();
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return super.canScrollHorizontally(i) && !this.disableScroll;
    }

    private void init() throws Resources.NotFoundException {
        setPageTransformer(true, new VerticalPageTransformer());
        setOverScrollMode(2);
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        if (this.disableScroll) {
            return false;
        }
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(flipXY(motionEvent));
        flipXY(motionEvent);
        return zOnInterceptTouchEvent;
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        boolean zOnTouchEvent = super.onTouchEvent(flipXY(motionEvent));
        flipXY(motionEvent);
        return zOnTouchEvent;
    }

    private MotionEvent flipXY(MotionEvent motionEvent) {
        float width = getWidth();
        float height = getHeight();
        motionEvent.setLocation((motionEvent.getY() / height) * width, (motionEvent.getX() / width) * height);
        return motionEvent;
    }

    private static final class VerticalPageTransformer implements ViewPager.PageTransformer {
        private VerticalPageTransformer() {
        }

        @Override // android.support.v4.view.ViewPager.PageTransformer
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
}
