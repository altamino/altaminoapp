package com.narvii.widget;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;

/* loaded from: classes3.dex */
public class LinearLayoutManagerWithSmoothScroller extends LinearLayoutManager {
    public LinearLayoutManagerWithSmoothScroller(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        TopSnappedSmoothScroller topSnappedSmoothScroller = new TopSnappedSmoothScroller(recyclerView.getContext());
        topSnappedSmoothScroller.setTargetPosition(i);
        startSmoothScroll(topSnappedSmoothScroller);
    }

    private class TopSnappedSmoothScroller extends LinearSmoothScroller {
        private static final float SPEED = 50.0f;

        @Override // android.support.v7.widget.LinearSmoothScroller
        protected int getHorizontalSnapPreference() {
            return -1;
        }

        public TopSnappedSmoothScroller(Context context) {
            super(context);
        }

        @Override // android.support.v7.widget.LinearSmoothScroller
        public PointF computeScrollVectorForPosition(int i) {
            return LinearLayoutManagerWithSmoothScroller.this.computeScrollVectorForPosition(i);
        }

        @Override // android.support.v7.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return SPEED / displayMetrics.densityDpi;
        }
    }
}
