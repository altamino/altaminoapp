package com.narvii.widget;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class AutoScrollHorizontalRecyclerView extends HorizontalRecyclerView {
    public boolean autoScroll;
    private final Runnable autoScroller;
    private int currentPos;
    public long delay;
    private LinearLayoutManager linearLayoutManager;
    private IPositionChangeListener listener;

    public interface IPositionChangeListener {
        void onCurrPositionChanged(int i);
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i = this.currentPos;
        if (i != -1) {
            scrollToPosition(i);
            IPositionChangeListener iPositionChangeListener = this.listener;
            if (iPositionChangeListener != null) {
                iPositionChangeListener.onCurrPositionChanged(this.currentPos);
            }
        }
    }

    @Override // com.narvii.widget.recycleview.NVRecyclerView, android.support.v7.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setAutoScroll(boolean z) {
        if (z == this.autoScroll) {
            return;
        }
        this.autoScroll = z;
        if (z) {
            Utils.handler.removeCallbacks(this.autoScroller);
            Utils.postDelayed(this.autoScroller, this.delay);
        } else {
            Utils.handler.removeCallbacks(this.autoScroller);
        }
    }

    public AutoScrollHorizontalRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.delay = DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;
        this.currentPos = -1;
        this.listener = null;
        this.autoScroller = new Runnable() { // from class: com.narvii.widget.AutoScrollHorizontalRecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (AutoScrollHorizontalRecyclerView.this.getAdapter() == null || AutoScrollHorizontalRecyclerView.this.linearLayoutManager == null) {
                    return;
                }
                int iFindLastCompletelyVisibleItemPosition = AutoScrollHorizontalRecyclerView.this.linearLayoutManager.findLastCompletelyVisibleItemPosition();
                if (iFindLastCompletelyVisibleItemPosition != -1) {
                    int itemCount = (iFindLastCompletelyVisibleItemPosition + 1) % AutoScrollHorizontalRecyclerView.this.getAdapter().getItemCount();
                    AutoScrollHorizontalRecyclerView.this.currentPos = itemCount;
                    AutoScrollHorizontalRecyclerView.this.smoothScrollToPosition(itemCount);
                }
                Utils.postDelayed(this, AutoScrollHorizontalRecyclerView.this.delay);
            }
        };
    }

    @Override // android.support.v7.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        LinearLayoutManagerWithSmoothScroller linearLayoutManagerWithSmoothScroller = new LinearLayoutManagerWithSmoothScroller(getContext(), 0, false);
        this.linearLayoutManager = linearLayoutManagerWithSmoothScroller;
        super.setLayoutManager(linearLayoutManagerWithSmoothScroller);
    }

    @Override // com.narvii.widget.HorizontalRecyclerView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            setAutoScroll(false);
        } else if (action == 1 || action == 3) {
            setAutoScroll(true);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public IPositionChangeListener getListener() {
        return this.listener;
    }

    public void setPositionChangeListener(IPositionChangeListener iPositionChangeListener) {
        this.listener = iPositionChangeListener;
    }
}
