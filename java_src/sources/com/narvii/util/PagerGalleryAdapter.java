package com.narvii.util;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PagerGalleryAdapter<T> extends PagerAdapter {
    private Context context;
    private View convertView;
    private LayoutInflater inflater;
    private int layoutId;
    private List<T> list;
    private int width;
    private float widthPercent;

    public PagerGalleryAdapter(Context context, int i10) {
        this(context, i10, 0);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public float getPageWidth(int i10) {
        return this.widthPercent;
    }

    public abstract View getView(View view, T t5);

    public List<T> list() {
        return this.list;
    }

    public PagerGalleryAdapter(Context context, int i10, int i11) {
        this.context = context;
        this.inflater = LayoutInflater.from(context);
        this.layoutId = i10;
        if (i11 == 0) {
            this.widthPercent = 1.0f;
            return;
        }
        Resources resources = context.getResources();
        this.width = resources.getDimensionPixelSize(i11);
        this.widthPercent = this.width / resources.getDisplayMetrics().widthPixels;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<T> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public T getItem(int i10) {
        return this.list.get(i10);
    }

    public void setList(List<T> list) {
        this.list = list;
        if (Utils.isRtl()) {
            Collections.reverse(this.list);
        }
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt.getTag() == obj) {
                childAt.setTag(null);
                this.convertView = childAt;
                viewGroup.removeViewAt(i11);
                return;
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i10) {
        T item = getItem(i10);
        View viewInflate = this.convertView;
        this.convertView = null;
        if (viewInflate == null) {
            viewInflate = this.inflater.inflate(this.layoutId, viewGroup, false);
        }
        getView(viewInflate, item);
        viewInflate.setTag(item);
        viewGroup.addView(viewInflate);
        return item;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        if (view.getTag() == obj) {
            return true;
        }
        return false;
    }
}
