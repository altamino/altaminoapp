package com.narvii.list;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.Tag;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HideTopAdapter extends ProxyAdapter {
    public static final Object TOP_ITEM = new Tag("TOP");
    private boolean hided;
    private boolean inited;

    public abstract View getTopView(ViewGroup viewGroup, View view);

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        return this.hided ? super.getCount() + 1 : super.getCount();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        if (this.hided) {
            return i10 == 0 ? TOP_ITEM : super.getItem(i10 - 1);
        }
        return super.getItem(i10);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i10) {
        if (this.hided) {
            return i10 == 0 ? TOP_ITEM.hashCode() : super.getItemId(i10 - 1);
        }
        return super.getItemId(i10);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        if (!this.hided) {
            int itemViewType = super.getItemViewType(i10);
            if (itemViewType < 0) {
                return -1;
            }
            return itemViewType + 1;
        }
        if (i10 == 0) {
            return 0;
        }
        int itemViewType2 = super.getItemViewType(i10 - 1);
        if (itemViewType2 < 0) {
            return -1;
        }
        return itemViewType2 + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (this.hided) {
            return i10 == 0 ? getTopView(viewGroup, view) : super.getView(i10 - 1, view, viewGroup);
        }
        if (!this.inited && isListShown() && getCount() > 1 && (viewGroup instanceof ListView)) {
            final ListView listView = (ListView) viewGroup;
            if (listView.getAdapter() == this) {
                Utils.post(new Runnable() { // from class: com.narvii.list.HideTopAdapter.1
                    @Override // java.lang.Runnable
                    public void run() {
                        HideTopAdapter.this.hided = true;
                        HideTopAdapter.this.notifyDataSetChanged();
                        listView.setSelection(1);
                    }
                });
                this.inited = true;
            } else {
                Log.w("HideTopAdapter must be the root adapter");
            }
        }
        return super.getView(i10, view, viewGroup);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        if (!this.hided) {
            return super.isEnabled(i10);
        }
        if (i10 == 0) {
            return false;
        }
        return super.isEnabled(i10 - 1);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (!this.hided) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        if (i10 > 0) {
            return super.onItemClick(listAdapter, i10 - 1, obj, view, view2);
        }
        return false;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (!this.hided) {
            return super.onLongClick(listAdapter, i10, obj, view, view2);
        }
        if (i10 > 0) {
            return super.onItemClick(listAdapter, i10 - 1, obj, view, view2);
        }
        return false;
    }

    public HideTopAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle.getBoolean("_hided")) {
            this.hided = true;
        }
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putBoolean("_hided", this.hided);
        return bundleOnSaveInstanceState;
    }
}
