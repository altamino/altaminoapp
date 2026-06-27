package com.narvii.list;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.util.Tag;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.list.NVAdapter
    protected boolean supportNVTheme() {
        return true;
    }

    public DividerAdapter(NVContext nVContext) {
        super(nVContext);
        if (nVContext instanceof NVFragment) {
            this.isDarkTheme = ((NVFragment) nVContext).isDarkTheme();
        } else {
            this.isDarkTheme = (nVContext.getContext() instanceof NVActivity) && ((NVActivity) nVContext.getContext()).isDarkTheme();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void setDarkTheme(boolean z, int i) {
        if (this.isDarkTheme != z) {
            this.backgroundColor = i;
            this.isDarkTheme = z;
            notifyDataSetChanged();
        }
    }

    protected int getDividerLayoutId() {
        return this.isDarkTheme ? R.layout.list_divider_dark : R.layout.list_divider;
    }

    @Override // com.narvii.list.ProxyAdapter
    public void setAdapter(ListAdapter listAdapter) {
        setAdapter(listAdapter, 0);
    }

    public void setAdapter(ListAdapter listAdapter, int i) {
        this.flags = i;
        super.setAdapter(listAdapter);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        ListAdapter listAdapter = this.wrapped;
        int count = listAdapter == null ? 0 : listAdapter.getCount();
        if (count == 0) {
            return (this.flags & 8) != 0 ? 1 : 0;
        }
        int i = (count * 2) - 1;
        if ((this.flags & 1) != 0) {
            i++;
        }
        return (this.flags & 2) != 0 ? i + 1 : i;
    }

    private int getPos(int i) {
        int i2;
        if (this.wrapped == null) {
            return -1;
        }
        if ((this.flags & 1) != 0) {
            if (i == 0) {
                return -1;
            }
            i--;
        }
        if (i % 2 != 0 || (i2 = i / 2) >= this.wrapped.getCount()) {
            return -1;
        }
        return i2;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i) {
        int pos = getPos(i);
        return pos < 0 ? DIVIDER : this.wrapped.getItem(pos);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i) {
        int pos = getPos(i);
        return pos < 0 ? i : this.wrapped.getItemId(pos);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.wrapped.getViewTypeCount() + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int pos = getPos(i);
        if (pos < 0) {
            return 0;
        }
        int itemViewType = this.wrapped.getItemViewType(pos);
        if (itemViewType < 0) {
            return -1;
        }
        return itemViewType + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        int pos = getPos(i);
        if (pos < 0) {
            return false;
        }
        return this.wrapped.isEnabled(pos);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int pos = getPos(i);
        if (pos < 0) {
            int dividerLayoutId = getDividerLayoutId();
            return createView(dividerLayoutId, viewGroup, view, String.valueOf(dividerLayoutId));
        }
        return this.wrapped.getView(pos, view, viewGroup);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        NVAdapter nVAdapter;
        int pos = getPos(i);
        if (pos < 0 || (nVAdapter = this.nva) == null) {
            return false;
        }
        return nVAdapter.dispatchOnItemClick(listAdapter, pos, obj, view, view2);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        NVAdapter nVAdapter;
        int pos = getPos(i);
        if (pos < 0 || (nVAdapter = this.nva) == null) {
            return false;
        }
        return nVAdapter.onLongClick(listAdapter, pos, obj, view, view2);
    }
}
