package com.narvii.list;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;

/* loaded from: classes3.dex */
public abstract class SimpleViewAdapter extends NVAdapter {
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

    protected abstract int getLayoutId();

    public SimpleViewAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return createView(getLayoutId(), viewGroup, view);
    }
}
