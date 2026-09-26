package com.narvii.list;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.util.Tag;

/* JADX INFO: loaded from: classes3.dex */
public class DividerAdapter extends ProxyAdapter {
    protected static final Tag DIVIDER = new Tag("divider");
    public static final int SHOW_DIVIDER_AT_BOTTOM = 2;
    public static final int SHOW_DIVIDER_AT_TOP = 1;
    public static final int SHOW_DIVIDER_WHEN_EMPTY = 8;
    protected int flags;
    private boolean isDarkTheme;

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    protected int getDividerLayoutId() {
        return this.isDarkTheme ? R.layout.list_divider_dark : R.layout.list_divider;
    }

    @Override // com.narvii.list.ProxyAdapter
    public void setAdapter(ListAdapter listAdapter) {
        setAdapter(listAdapter, 0);
    }

    @Override // com.narvii.list.NVAdapter
    protected boolean supportNVTheme() {
        return true;
    }

    private int getPos(int i10) {
        int i11;
        ListAdapter listAdapter = this.wrapped;
        if (listAdapter == null) {
            return -1;
        }
        if ((this.flags & 1) != 0) {
            if (i10 == 0) {
                return -1;
            }
            i10--;
        }
        if (i10 % 2 != 0 || (i11 = i10 / 2) >= listAdapter.getCount()) {
            return -1;
        }
        return i11;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        ListAdapter listAdapter = this.wrapped;
        int count = listAdapter == null ? 0 : listAdapter.getCount();
        if (count == 0) {
            return (this.flags & 8) != 0 ? 1 : 0;
        }
        int i10 = count * 2;
        int i11 = i10 - 1;
        int i12 = this.flags;
        if ((i12 & 1) == 0) {
            i10 = i11;
        }
        return (i12 & 2) != 0 ? i10 + 1 : i10;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.wrapped.getViewTypeCount() + 1;
    }

    public void setAdapter(ListAdapter listAdapter, int i10) {
        this.flags = i10;
        super.setAdapter(listAdapter);
    }

    @Override // com.narvii.list.NVAdapter
    public void setDarkTheme(boolean z6, int i10) {
        if (this.isDarkTheme != z6) {
            this.backgroundColor = i10;
            this.isDarkTheme = z6;
            notifyDataSetChanged();
        }
    }

    public DividerAdapter(NVContext nVContext) {
        boolean z6;
        super(nVContext);
        if (nVContext instanceof NVFragment) {
            this.isDarkTheme = ((NVFragment) nVContext).isDarkTheme();
            return;
        }
        if ((nVContext.getContext() instanceof NVActivity) && ((NVActivity) nVContext.getContext()).isDarkTheme()) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isDarkTheme = z6;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        int pos = getPos(i10);
        if (pos < 0) {
            return DIVIDER;
        }
        return this.wrapped.getItem(pos);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i10) {
        int pos = getPos(i10);
        if (pos < 0) {
            return i10;
        }
        return this.wrapped.getItemId(pos);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        int pos = getPos(i10);
        if (pos < 0) {
            return 0;
        }
        int itemViewType = this.wrapped.getItemViewType(pos);
        if (itemViewType < 0) {
            return -1;
        }
        return itemViewType + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int pos = getPos(i10);
        if (pos < 0) {
            int dividerLayoutId = getDividerLayoutId();
            return createView(dividerLayoutId, viewGroup, view, String.valueOf(dividerLayoutId));
        }
        return this.wrapped.getView(pos, view, viewGroup);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        int pos = getPos(i10);
        if (pos < 0) {
            return false;
        }
        return this.wrapped.isEnabled(pos);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        NVAdapter nVAdapter;
        int pos = getPos(i10);
        if (pos >= 0 && (nVAdapter = this.nva) != null) {
            return nVAdapter.dispatchOnItemClick(listAdapter, pos, obj, view, view2);
        }
        return false;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        NVAdapter nVAdapter;
        int pos = getPos(i10);
        if (pos >= 0 && (nVAdapter = this.nva) != null) {
            return nVAdapter.onLongClick(listAdapter, pos, obj, view, view2);
        }
        return false;
    }
}
