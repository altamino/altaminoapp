package com.narvii.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class LinearLayoutManagerWithSmoothScroller extends LinearLayoutManager {

    private class TopSnappedSmoothScroller extends LinearSmoothScroller {
        private static final float SPEED = 50.0f;

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected int getHorizontalSnapPreference() {
            return -1;
        }

        public TopSnappedSmoothScroller(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 50.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public PointF computeScrollVectorForPosition(int i10) {
            return LinearLayoutManagerWithSmoothScroller.this.computeScrollVectorForPosition(i10);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        TopSnappedSmoothScroller topSnappedSmoothScroller = new TopSnappedSmoothScroller(recyclerView.getContext());
        topSnappedSmoothScroller.setTargetPosition(i10);
        startSmoothScroll(topSnappedSmoothScroller);
    }

    public LinearLayoutManagerWithSmoothScroller(Context context, int i10, boolean z6) {
        super(context, i10, z6);
    }
}
