package com.narvii.util;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class PagerGalleryAdapter<T> extends PagerAdapter {
    private Context context;
    private View convertView;
    private LayoutInflater inflater;
    private int layoutId;
    private List<T> list;
    private int width;
    private float widthPercent;

    @Override // android.support.v4.view.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    public abstract View getView(View view, T t);

    public PagerGalleryAdapter(Context context, int i) {
        this(context, i, 0);
    }

    public PagerGalleryAdapter(Context context, int i, int i2) {
        this.context = context;
        this.inflater = LayoutInflater.from(this.context);
        this.layoutId = i;
        if (i2 == 0) {
            this.widthPercent = 1.0f;
            return;
        }
        this.width = context.getResources().getDimensionPixelSize(i2);
        this.widthPercent = this.width / r2.getDisplayMetrics().widthPixels;
    }

    public List<T> list() {
        return this.list;
    }

    public void setList(List<T> list) {
        this.list = list;
        if (Utils.isRtl()) {
            Collections.reverse(this.list);
        }
        notifyDataSetChanged();
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        List<T> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public T getItem(int i) {
        return this.list.get(i);
    }

    @Override // android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view.getTag() == obj;
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        T item = getItem(i);
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

    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getTag() == obj) {
                childAt.setTag(null);
                this.convertView = childAt;
                viewGroup.removeViewAt(i2);
                return;
            }
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public float getPageWidth(int i) {
        return this.widthPercent;
    }
}
