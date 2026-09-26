package com.narvii.widget.recycleview.layoutmanager;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes10.dex */
public class CustomLinearLayoutManager extends LinearLayoutManager {
    public static final float MILLISECONDS_PER_INCH = 100.0f;
    private float speed;

    public CustomLinearLayoutManager(Context context) {
        this(context, 100.0f);
    }

    public CustomLinearLayoutManager(Context context, float f) {
        super(context);
        this.speed = f;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.narvii.widget.recycleview.layoutmanager.CustomLinearLayoutManager.1
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return CustomLinearLayoutManager.this.speed / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public PointF computeScrollVectorForPosition(int i11) {
                return CustomLinearLayoutManager.this.computeScrollVectorForPosition(i11);
            }
        };
        linearSmoothScroller.setTargetPosition(i10);
        startSmoothScroll(linearSmoothScroller);
    }

    public CustomLinearLayoutManager(Context context, int i10, boolean z6) {
        this(context, i10, z6, 100.0f);
    }

    public CustomLinearLayoutManager(Context context, int i10, boolean z6, float f) {
        super(context, i10, z6);
        this.speed = f;
    }
}
