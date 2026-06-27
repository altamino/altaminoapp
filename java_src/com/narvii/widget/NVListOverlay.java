package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.RelativeLayout;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.narvii.widget.NVListView;

/* loaded from: classes3.dex */
public class NVListOverlay extends RelativeLayout implements AbsListView.OnScrollListener, NVListView.OnOverscrollListener, NVListView.OnLayoutListener, NVListView.ListPaddingProvider {
    boolean attached;
    int heightMax;
    int heightMin;
    private int overscroll;
    private int scroll;

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public NVListOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVListOverlay);
        this.heightMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NVListOverlay_listOverlayMinHeight, -1);
        if (this.heightMin < 0) {
            this.heightMin = getActionBarHeight();
        }
        this.heightMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NVListOverlay_listOverlayMaxHeight, -1);
        this.heightMax = Math.max(this.heightMax, this.heightMin);
    }

    public void setMinHeight(int i) {
        if (this.heightMin != i) {
            this.heightMin = i;
            requestLayout();
        }
    }

    public void setMaxHeight(int i) {
        if (this.heightMax != i) {
            this.heightMax = i;
            requestLayout();
        }
    }

    private int getActionBarHeight() {
        if (getContext() instanceof NVActivity) {
            return ((NVActivity) getContext()).getActionBarOverlaySize() + ((NVActivity) getContext()).getStatusBarOverlaySize();
        }
        return 0;
    }

    public void setOverscroll(int i) {
        if (this.overscroll != i) {
            this.overscroll = i;
            requestLayout();
        }
    }

    public void setScroll(int i) {
        if (this.scroll != i) {
            this.scroll = i;
            requestLayout();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getCurrentHeight(), 1073741824));
    }

    @Override // com.narvii.widget.NVListView.OnOverscrollListener
    public void onOverscroll(NVListView nVListView, int i) {
        setOverscroll(i);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (absListView.getChildCount() == 0) {
            setScroll(0);
        } else if (i == 0 && absListView.getChildCount() > 0) {
            setScroll(this.heightMax - absListView.getChildAt(0).getTop());
        } else {
            setScroll(10000);
        }
    }

    @Override // com.narvii.widget.NVListView.OnLayoutListener
    public void onLayout(NVListView nVListView) {
        onScroll(nVListView, nVListView.getFirstVisiblePosition(), nVListView.getChildCount(), nVListView.getChildCount());
        Utils.post(new Runnable() { // from class: com.narvii.widget.NVListOverlay.1
            @Override // java.lang.Runnable
            public void run() {
                NVListOverlay.this.requestLayout();
            }
        });
    }

    public float getProgress() {
        int iMax = Math.max(this.heightMin, (this.heightMax - this.scroll) - this.overscroll);
        int i = this.heightMin;
        return 1.0f - (((iMax - i) * 1.0f) / (this.heightMax - i));
    }

    public int getCurrentHeight() {
        return Math.max(this.heightMin, (this.heightMax - this.scroll) - this.overscroll);
    }

    @Override // com.narvii.widget.NVListView.ListPaddingProvider
    public int getPadding(NVListView nVListView) {
        return this.heightMax;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int currentHeight = getCurrentHeight();
        if (this.attached) {
            float y = motionEvent.getY();
            int i = this.heightMin;
            if (y > i && currentHeight > i) {
                return false;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    boolean dispatchTouchEventRelay(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }
}
