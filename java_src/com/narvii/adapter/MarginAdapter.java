package com.narvii.adapter;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class MarginAdapter extends NVAdapter {
    int height;

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    public MarginAdapter(NVContext nVContext) {
        this(nVContext, (int) Utils.dpToPx(nVContext.getContext(), 50.0f));
    }

    public MarginAdapter(NVContext nVContext, int i) {
        super(nVContext);
        this.height = i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.adapter_margin_item, viewGroup, view);
        viewCreateView.getLayoutParams().height = this.height;
        return viewCreateView;
    }
}
