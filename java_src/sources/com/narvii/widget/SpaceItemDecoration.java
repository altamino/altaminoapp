package com.narvii.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
public class SpaceItemDecoration extends RecyclerView.ItemDecoration {
    boolean landscape;
    private int padding;
    private int space;

    public SpaceItemDecoration(int i10) {
        this(i10, i10);
    }

    public void setLandscape(boolean z6) {
        this.landscape = z6;
    }

    public SpaceItemDecoration(int i10, int i11) {
        this.space = i10;
        this.padding = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
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
