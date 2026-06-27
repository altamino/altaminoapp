package com.narvii.list;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.date.DateSection;

/* loaded from: classes3.dex */
public class SectionDivideColumnAdapter extends DivideColumnAdapter {
    SparseArray<Integer> positionMap;

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    public SectionDivideColumnAdapter(NVContext nVContext) {
        super(nVContext);
        this.positionMap = new SparseArray<>();
    }

    public SectionDivideColumnAdapter(NVContext nVContext, int i, int i2) {
        super(nVContext, i, i2);
        this.positionMap = new SparseArray<>();
    }

    public SectionDivideColumnAdapter(NVContext nVContext, int i, int i2, int i3, int i4) {
        super(nVContext, i, i2, i3, i4);
        this.positionMap = new SparseArray<>();
    }

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        ListAdapter listAdapter = this.wrapped;
        int count = listAdapter == null ? 0 : listAdapter.getCount();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < count; i3++) {
            if (fullWidth(this.wrapped.getItem(i3))) {
                this.positionMap.put(i, Integer.valueOf(i3));
                i++;
                i2 = 0;
            } else {
                if (i2 >= this.column) {
                    i2 = 0;
                }
                if (i2 == 0) {
                    this.positionMap.put(i, Integer.valueOf(i3));
                    i++;
                }
                i2++;
            }
        }
        return i;
    }

    @Override // com.narvii.list.DivideColumnAdapter
    protected boolean fullWidth(Object obj) {
        return obj instanceof DateSection;
    }

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i) {
        return this.wrapped.getItem(startPosition(i));
    }

    @Override // com.narvii.list.DivideColumnAdapter
    protected int startPosition(int i) {
        return this.positionMap.get(i).intValue();
    }

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i) instanceof DateSection ? 1 : 0;
    }

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (getItem(i) instanceof DateSection) {
            return this.wrapped.getView(this.positionMap.get(i).intValue(), view, viewGroup);
        }
        return super.getView(i, view, viewGroup);
    }
}
