package com.narvii.list;

import com.narvii.app.NVContext;

/* loaded from: classes3.dex */
public abstract class AdriftAdapter extends NVAdapter {
    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    protected boolean isDarkTheme() {
        return false;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    public AdriftAdapter(NVContext nVContext) {
        super(nVContext);
        setDarkTheme(isDarkTheme());
    }
}
