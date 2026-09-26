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

/* JADX INFO: loaded from: classes4.dex */
public class OverlayLayout extends RelativeLayout implements AbsListView.OnScrollListener, NVListView.OnOverscrollListener, NVListView.OnLayoutListener {
    protected int height1;
    protected int height2;
    private int layoutId;
    private int overscroll;
    private int scroll;

    public int getHeight1() {
        return this.height1;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i10) {
    }

    public void setHeight1(int i10) {
        this.height1 = i10;
    }

    private void update() {
        int iMax = Math.max(this.height1, (this.height2 - this.scroll) - this.overscroll);
        if (getLayoutParams().height != iMax) {
            getLayoutParams().height = iMax;
            requestLayout();
        }
    }

    public int getCurHeight() {
        return Math.max(this.height1, (this.height2 - this.scroll) - this.overscroll);
    }

    public float getProgress() {
        int iMax = Math.max(this.height1, (this.height2 - this.scroll) - this.overscroll);
        int i10 = this.height1;
        return 1.0f - (((iMax - i10) * 1.0f) / (this.height2 - i10));
    }

    public void setLayout(int i10, int i11) {
        if (this.layoutId != i10) {
            removeAllViews();
            LayoutInflater.from(getContext()).inflate(i10, this);
            this.layoutId = i10;
        }
        this.height2 = i11;
        update();
    }

    public void setOverscroll(int i10) {
        if (this.overscroll != i10) {
            this.overscroll = i10;
            update();
        }
    }

    public void setScroll(int i10) {
        if (this.scroll != i10) {
            this.scroll = i10;
            update();
        }
    }

    public OverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.height1 = getActionBarHeight();
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

    public void attach(NVListView nVListView) {
        nVListView.setOnScrollListener(this);
        nVListView.setOnOverscrollListener(this);
        nVListView.setOnLayoutListener(this);
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

    @Override // com.narvii.widget.NVListView.OnOverscrollListener
    public void onOverscroll(NVListView nVListView, int i10) {
        setOverscroll(i10);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        if (absListView.getChildCount() == 0) {
            setScroll(0);
        } else if (i10 == 0 && absListView.getChildCount() > 0) {
            setScroll(-absListView.getChildAt(0).getTop());
        } else {
            setScroll(10000);
        }
    }
}
