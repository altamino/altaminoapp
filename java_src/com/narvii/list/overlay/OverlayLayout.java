package com.narvii.list.overlay;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.widget.AbsListView;
import android.widget.RelativeLayout;
import com.narvii.app.NVActivity;
import com.narvii.util.Utils;
import com.narvii.widget.NVListView;

/* loaded from: classes3.dex */
public class OverlayLayout extends RelativeLayout implements AbsListView.OnScrollListener, NVListView.OnOverscrollListener, NVListView.OnLayoutListener {
    protected int height1;
    protected int height2;
    private int layoutId;
    private int overscroll;
    private int scroll;

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public OverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.height1 = getActionBarHeight();
    }

    public void setHeight1(int i) {
        this.height1 = i;
    }

    private int getActionBarHeight() {
        if (getContext() instanceof NVActivity) {
            return ((NVActivity) getContext()).getActionBarOverlaySize();
        }
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, getResources().getDisplayMetrics());
        }
        return (int) (getResources().getDisplayMetrics().density * 46.0f);
    }

    public void setLayout(int i, int i2) {
        if (this.layoutId != i) {
            removeAllViews();
            LayoutInflater.from(getContext()).inflate(i, this);
            this.layoutId = i;
        }
        this.height2 = i2;
        update();
    }

    public void setOverscroll(int i) {
        if (this.overscroll != i) {
            this.overscroll = i;
            update();
        }
    }

    public void setScroll(int i) {
        if (this.scroll != i) {
            this.scroll = i;
            update();
        }
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
            setScroll(-absListView.getChildAt(0).getTop());
        } else {
            setScroll(10000);
        }
    }

    @Override // com.narvii.widget.NVListView.OnLayoutListener
    public void onLayout(NVListView nVListView) {
        onScroll(nVListView, nVListView.getFirstVisiblePosition(), nVListView.getChildCount(), nVListView.getChildCount());
        Utils.post(new Runnable() { // from class: com.narvii.list.overlay.OverlayLayout.1
            @Override // java.lang.Runnable
            public void run() {
                OverlayLayout.this.requestLayout();
            }
        });
    }

    public void attach(NVListView nVListView) {
        nVListView.setOnScrollListener(this);
        nVListView.setOnOverscrollListener(this);
        nVListView.setOnLayoutListener(this);
    }

    private void update() {
        int iMax = Math.max(this.height1, (this.height2 - this.scroll) - this.overscroll);
        if (getLayoutParams().height != iMax) {
            getLayoutParams().height = iMax;
            requestLayout();
        }
    }

    public float getProgress() {
        int iMax = Math.max(this.height1, (this.height2 - this.scroll) - this.overscroll);
        int i = this.height1;
        return 1.0f - (((iMax - i) * 1.0f) / (this.height2 - i));
    }

    public int getCurHeight() {
        return Math.max(this.height1, (this.height2 - this.scroll) - this.overscroll);
    }

    public int getHeight1() {
        return this.height1;
    }
}
