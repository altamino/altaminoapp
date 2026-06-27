package com.narvii.widget.recycleview.layoutmanager;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;

/* loaded from: classes3.dex */
public class CustomLinearLayoutManager extends LinearLayoutManager {
    public static final float MILLISECONDS_PER_INCH = 100.0f;
    private float speed;

    public CustomLinearLayoutManager(Context context) {
        this(context, 100.0f);
    }

    public CustomLinearLayoutManager(Context context, float f) {
        super(context);
        this.speed = 100.0f;
        this.speed = f;
    }

    public CustomLinearLayoutManager(Context context, int i, boolean z) {
        this(context, i, z, 100.0f);
    }

    public CustomLinearLayoutManager(Context context, int i, boolean z, float f) {
        super(context, i, z);
        this.speed = 100.0f;
        this.speed = f;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.narvii.widget.recycleview.layoutmanager.CustomLinearLayoutManager.1
            @Override // android.support.v7.widget.LinearSmoothScroller
            public PointF computeScrollVectorForPosition(int i2) {
                return CustomLinearLayoutManager.this.computeScrollVectorForPosition(i2);
            }

            @Override // android.support.v7.widget.LinearSmoothScroller
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return CustomLinearLayoutManager.this.speed / displayMetrics.densityDpi;
            }
        };
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }
}
