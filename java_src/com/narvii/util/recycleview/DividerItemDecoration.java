package com.narvii.util.recycleview;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes3.dex */
public class DividerItemDecoration extends RecyclerView.ItemDecoration {
    private Drawable mDivider;

    public DividerItemDecoration(Drawable drawable) {
        this.mDivider = drawable;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        if (recyclerView.getChildAdapterPosition(view) == 0) {
            return;
        }
        rect.left = this.mDivider.getIntrinsicWidth();
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        int paddingTop = recyclerView.getPaddingTop();
        int height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount - 1; i++) {
            View childAt = recyclerView.getChildAt(i);
            int left = childAt.getLeft() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).leftMargin;
            this.mDivider.setBounds(left, paddingTop, this.mDivider.getIntrinsicWidth() + left, height);
            this.mDivider.draw(canvas);
        }
    }
}
