package com.narvii.list;

import com.narvii.app.NVContext;

/* JADX INFO: loaded from: classes10.dex */
public abstract class HeaderAdapter extends NVAdapter {
    protected NVAdapter attachedAdapter;

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return this;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return false;
    }

    public void setAttachedAdapter(NVAdapter nVAdapter) {
        this.attachedAdapter = nVAdapter;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        NVAdapter nVAdapter = this.attachedAdapter;
        return (nVAdapter == null || !nVAdapter.isListShown() || this.attachedAdapter.getCount() == 0) ? 0 : 1;
    }

    public HeaderAdapter(NVContext nVContext) {
        super(nVContext);
    }
}
