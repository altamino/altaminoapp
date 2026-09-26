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

/* JADX INFO: loaded from: classes5.dex */
public class NVListOverlay extends RelativeLayout implements AbsListView.OnScrollListener, NVListView.OnOverscrollListener, NVListView.OnLayoutListener, NVListView.ListPaddingProvider {
    boolean attached;
    int heightMax;
    int heightMin;
    private int overscroll;
    private int scroll;

    @Override // com.narvii.widget.NVListView.ListPaddingProvider
    public int getPadding(NVListView nVListView) {
        return this.heightMax;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i10) {
    }

    public int getCurrentHeight() {
        return Math.max(this.heightMin, (this.heightMax - this.scroll) - this.overscroll);
    }

    public float getProgress() {
        int iMax = Math.max(this.heightMin, (this.heightMax - this.scroll) - this.overscroll);
        int i10 = this.heightMin;
        return 1.0f - (((iMax - i10) * 1.0f) / (this.heightMax - i10));
    }

    public void setMaxHeight(int i10) {
        if (this.heightMax != i10) {
            this.heightMax = i10;
            requestLayout();
        }
    }

    public void setMinHeight(int i10) {
        if (this.heightMin != i10) {
            this.heightMin = i10;
            requestLayout();
        }
    }

    public void setOverscroll(int i10) {
        if (this.overscroll != i10) {
            this.overscroll = i10;
            requestLayout();
        }
    }

    public void setScroll(int i10) {
        if (this.scroll != i10) {
            this.scroll = i10;
            requestLayout();
        }
    }

    public NVListOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVListOverlay);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NVListOverlay_listOverlayMinHeight, -1);
        this.heightMin = dimensionPixelSize;
        if (dimensionPixelSize < 0) {
            this.heightMin = getActionBarHeight();
        }
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NVListOverlay_listOverlayMaxHeight, -1);
        this.heightMax = dimensionPixelSize2;
        this.heightMax = Math.max(dimensionPixelSize2, this.heightMin);
    }

    private int getActionBarHeight() {
        if (getContext() instanceof NVActivity) {
            return ((NVActivity) getContext()).getActionBarOverlaySize() + ((NVActivity) getContext()).getStatusBarOverlaySize();
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int currentHeight = getCurrentHeight();
        if (this.attached) {
            float y6 = motionEvent.getY();
            int i10 = this.heightMin;
            if (y6 > i10 && currentHeight > i10) {
                return false;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    boolean dispatchTouchEventRelay(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
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

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(getCurrentHeight(), 1073741824));
    }

    @Override // com.narvii.widget.NVListView.OnOverscrollListener
    public void onOverscroll(NVListView nVListView, int i10) {
        setOverscroll(i10);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        if (absListView.getChildCount() == 0) {
            setScroll(0);
        } else if (i10 == 0 && absListView.getChildCount() > 0) {
            setScroll(this.heightMax - absListView.getChildAt(0).getTop());
        } else {
            setScroll(10000);
        }
    }
}
