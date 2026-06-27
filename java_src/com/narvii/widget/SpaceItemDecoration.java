package com.narvii.widget;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class SpaceItemDecoration extends RecyclerView.ItemDecoration {
    boolean landscape;
    private int padding;
    private int space;

    public SpaceItemDecoration(int i) {
        this(i, i);
    }

    public SpaceItemDecoration(int i, int i2) {
        this.space = i;
        this.padding = i2;
    }

    public void setLandscape(boolean z) {
        this.landscape = z;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        if (this.landscape) {
            rect.bottom = this.space;
        } else if (Utils.isRtl()) {
            rect.left = this.space;
        } else {
            rect.right = this.space;
        }
        if (recyclerView.getChildAdapterPosition(view) == 0) {
            if (this.landscape) {
                rect.top = this.padding;
            } else if (Utils.isRtl()) {
                rect.right = this.padding;
            } else {
                rect.left = this.padding;
            }
        }
    }
}
