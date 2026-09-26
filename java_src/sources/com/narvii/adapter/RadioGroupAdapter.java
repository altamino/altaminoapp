package com.narvii.adapter;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;
import com.narvii.util.CollectionUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public abstract class RadioGroupAdapter extends NVAdapter {
    List<RadioItem> list;
    int selectedItemId;

    protected abstract void buildCells(List<RadioItem> list);

    public List<RadioItem> getList() {
        return this.list;
    }

    public int getSelectedItemId() {
        return this.selectedItemId;
    }

    protected int layoutId() {
        return R.layout.adaptet_layout_radio_group;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.list = null;
        super.notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVAdapter
    protected boolean supportNVTheme() {
        return true;
    }

    private List<RadioItem> list() {
        if (this.list == null) {
            ArrayList arrayList = new ArrayList();
            this.list = arrayList;
            buildCells(arrayList);
        }
        return this.list;
    }

    @Override // android.widget.Adapter
    public RadioItem getItem(int i10) {
        return list().get(i10);
    }

    public void setSelectedItemId(int i10) {
        this.selectedItemId = i10;
        notifyDataSetChanged();
    }

    public RadioGroupAdapter(NVContext nVContext) {
        super(nVContext);
        this.selectedItemId = -1;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return CollectionUtils.getSize(list());
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return getItem(i10).id;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        float f;
        int i11;
        RadioItem item = getItem(i10);
        View viewCreateView = createView(layoutId(), viewGroup, view);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
        if (textView != null) {
            textView.setText(item.name);
        }
        TextView textView2 = (TextView) viewCreateView.findViewById(R.id.subTitle);
        int i12 = 0;
        if (textView2 != null) {
            textView2.setText(item.desc);
            if (!TextUtils.isEmpty(item.desc) && item.enabled) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            textView2.setVisibility(i11);
        }
        View viewFindViewById = viewCreateView.findViewById(R.id.check);
        if (viewFindViewById != null) {
            if (!item.enabled || !isItemSelected(i10)) {
                i12 = 4;
            }
            viewFindViewById.setVisibility(i12);
        }
        if (item.enabled) {
            f = 1.0f;
        } else {
            f = 0.5f;
        }
        viewCreateView.setAlpha(f);
        return viewCreateView;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return getItem(i10).enabled;
    }

    public boolean isItemSelected(int i10) {
        if (getItemId(i10) == this.selectedItemId) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        this.selectedItemId = (int) getItemId(i10);
        notifyDataSetChanged();
        return true;
    }
}
