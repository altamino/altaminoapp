package com.narvii.list;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.date.DateSection;

/* JADX INFO: loaded from: classes11.dex */
public class SectionDivideColumnAdapter extends DivideColumnAdapter {
    SparseArray<Integer> positionMap;

    public SectionDivideColumnAdapter(NVContext nVContext) {
        super(nVContext);
        this.positionMap = new SparseArray<>();
    }

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // com.narvii.list.DivideColumnAdapter
    protected boolean fullWidth(Object obj) {
        return obj instanceof DateSection;
    }

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        ListAdapter listAdapter = this.wrapped;
        int count = listAdapter == null ? 0 : listAdapter.getCount();
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < count; i12++) {
            if (fullWidth(this.wrapped.getItem(i12))) {
                this.positionMap.put(i10, Integer.valueOf(i12));
                i10++;
                i11 = 0;
            } else {
                if (i11 >= this.column) {
                    i11 = 0;
                }
                if (i11 == 0) {
                    this.positionMap.put(i10, Integer.valueOf(i12));
                    i10++;
                }
                i11++;
            }
        }
        return i10;
    }

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        return this.wrapped.getItem(startPosition(i10));
    }

    @Override // com.narvii.list.DivideColumnAdapter
    protected int startPosition(int i10) {
        return this.positionMap.get(i10).intValue();
    }

    public SectionDivideColumnAdapter(NVContext nVContext, int i10, int i11) {
        super(nVContext, i10, i11);
        this.positionMap = new SparseArray<>();
    }

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        if (getItem(i10) instanceof DateSection) {
            return 1;
        }
        return 0;
    }

    @Override // com.narvii.list.DivideColumnAdapter, com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (getItem(i10) instanceof DateSection) {
            return this.wrapped.getView(this.positionMap.get(i10).intValue(), view, viewGroup);
        }
        return super.getView(i10, view, viewGroup);
    }

    public SectionDivideColumnAdapter(NVContext nVContext, int i10, int i11, int i12, int i13) {
        super(nVContext, i10, i11, i12, i13);
        this.positionMap = new SparseArray<>();
    }
}
