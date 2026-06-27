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

/* loaded from: classes2.dex */
public abstract class RadioGroupAdapter extends NVAdapter {
    List<RadioItem> list;
    int selectedItemId;

    protected abstract void buildCells(List<RadioItem> list);

    @Override // com.narvii.list.NVAdapter
    protected boolean supportNVTheme() {
        return true;
    }

    private List<RadioItem> list() {
        if (this.list == null) {
            this.list = new ArrayList();
            buildCells(this.list);
        }
        return this.list;
    }

    public List<RadioItem> getList() {
        return this.list;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.list = null;
        super.notifyDataSetChanged();
    }

    public RadioGroupAdapter(NVContext nVContext) {
        super(nVContext);
        this.selectedItemId = -1;
    }

    public int getSelectedItemId() {
        return this.selectedItemId;
    }

    public void setSelectedItemId(int i) {
        this.selectedItemId = i;
        notifyDataSetChanged();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItem(i).enabled;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return CollectionUtils.getSize(list());
    }

    @Override // android.widget.Adapter
    public RadioItem getItem(int i) {
        return list().get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return getItem(i).id;
    }

    public boolean isItemSelected(int i) {
        return getItemId(i) == ((long) this.selectedItemId);
    }

    protected int layoutId() {
        return R.layout.adaptet_layout_radio_group;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        RadioItem item = getItem(i);
        View viewCreateView = createView(layoutId(), viewGroup, view);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
        if (textView != null) {
            textView.setText(item.name);
        }
        TextView textView2 = (TextView) viewCreateView.findViewById(R.id.subTitle);
        if (textView2 != null) {
            textView2.setText(item.desc);
            textView2.setVisibility((TextUtils.isEmpty(item.desc) || !item.enabled) ? 8 : 0);
        }
        View viewFindViewById = viewCreateView.findViewById(R.id.check);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility((item.enabled && isItemSelected(i)) ? 0 : 4);
        }
        viewCreateView.setAlpha(item.enabled ? 1.0f : 0.5f);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        this.selectedItemId = (int) getItemId(i);
        notifyDataSetChanged();
        return true;
    }
}
