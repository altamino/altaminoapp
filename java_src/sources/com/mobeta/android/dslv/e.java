package com.mobeta.android.dslv;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes11.dex */
public class e implements DragSortListView.k {
    private int mFloatBGColor = ViewCompat.MEASURED_STATE_MASK;
    private Bitmap mFloatBitmap;
    private ImageView mImageView;
    private ListView mListView;

    @Override // com.mobeta.android.dslv.DragSortListView.k
    public void onDragFloatView(View view, Point point, Point point2) {
    }

    public void setBackgroundColor(int i10) {
        this.mFloatBGColor = i10;
    }

    @Override // com.mobeta.android.dslv.DragSortListView.k
    public View onCreateFloatView(int i10) {
        ListView listView = this.mListView;
        View childAt = listView.getChildAt((i10 + listView.getHeaderViewsCount()) - this.mListView.getFirstVisiblePosition());
        if (childAt == null) {
            return null;
        }
        childAt.setPressed(false);
        childAt.setDrawingCacheEnabled(true);
        this.mFloatBitmap = Bitmap.createBitmap(childAt.getDrawingCache());
        childAt.setDrawingCacheEnabled(false);
        if (this.mImageView == null) {
            this.mImageView = new ImageView(this.mListView.getContext());
        }
        this.mImageView.setBackgroundColor(this.mFloatBGColor);
        this.mImageView.setPadding(0, 0, 0, 0);
        this.mImageView.setImageBitmap(this.mFloatBitmap);
        this.mImageView.setLayoutParams(new ViewGroup.LayoutParams(childAt.getWidth(), childAt.getHeight()));
        return this.mImageView;
    }

    @Override // com.mobeta.android.dslv.DragSortListView.k
    public void onDestroyFloatView(View view) {
        ((ImageView) view).setImageDrawable(null);
        this.mFloatBitmap.recycle();
        this.mFloatBitmap = null;
    }

    public e(ListView listView) {
        this.mListView = listView;
    }
}
