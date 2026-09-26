package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class AutoScrollHorizontalRecyclerView extends HorizontalRecyclerView {
    public boolean autoScroll;
    private final Runnable autoScroller;
    private int currentPos;
    public long delay;
    private LinearLayoutManager linearLayoutManager;
    private IPositionChangeListener listener;

    public interface IPositionChangeListener {
        void onCurrPositionChanged(int i10);
    }

    public IPositionChangeListener getListener() {
        return this.listener;
    }

    public void setPositionChangeListener(IPositionChangeListener iPositionChangeListener) {
        this.listener = iPositionChangeListener;
    }

    public void setAutoScroll(boolean z6) {
        if (z6 == this.autoScroll) {
            return;
        }
        this.autoScroll = z6;
        if (!z6) {
            Utils.handler.removeCallbacks(this.autoScroller);
        } else {
            Utils.handler.removeCallbacks(this.autoScroller);
            Utils.postDelayed(this.autoScroller, this.delay);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        LinearLayoutManagerWithSmoothScroller linearLayoutManagerWithSmoothScroller = new LinearLayoutManagerWithSmoothScroller(getContext(), 0, false);
        this.linearLayoutManager = linearLayoutManagerWithSmoothScroller;
        super.setLayoutManager(linearLayoutManagerWithSmoothScroller);
    }

    public AutoScrollHorizontalRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.delay = 5000L;
        this.currentPos = -1;
        this.listener = null;
        this.autoScroller = new Runnable() { // from class: com.narvii.widget.AutoScrollHorizontalRecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                if (AutoScrollHorizontalRecyclerView.this.getAdapter() == null || AutoScrollHorizontalRecyclerView.this.linearLayoutManager == null) {
                    return;
                }
                int iFindLastCompletelyVisibleItemPosition = AutoScrollHorizontalRecyclerView.this.linearLayoutManager.findLastCompletelyVisibleItemPosition();
                if (iFindLastCompletelyVisibleItemPosition != -1 && AutoScrollHorizontalRecyclerView.this.getAdapter().getItemCount() > 0) {
                    int itemCount = (iFindLastCompletelyVisibleItemPosition + 1) % AutoScrollHorizontalRecyclerView.this.getAdapter().getItemCount();
                    AutoScrollHorizontalRecyclerView.this.currentPos = itemCount;
                    AutoScrollHorizontalRecyclerView.this.smoothScrollToPosition(itemCount);
                }
                Utils.postDelayed(this, AutoScrollHorizontalRecyclerView.this.delay);
            }
        };
    }

    @Override // com.narvii.widget.HorizontalRecyclerView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                setAutoScroll(true);
            }
        } else {
            setAutoScroll(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i10 = this.currentPos;
        if (i10 != -1) {
            scrollToPosition(i10);
            IPositionChangeListener iPositionChangeListener = this.listener;
            if (iPositionChangeListener != null) {
                iPositionChangeListener.onCurrPositionChanged(this.currentPos);
            }
        }
    }

    @Override // com.narvii.widget.recycleview.NVRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
