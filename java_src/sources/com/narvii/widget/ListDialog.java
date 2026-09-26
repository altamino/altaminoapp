package com.narvii.widget;

import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ListDialog extends NVDialog {
    protected NVContext context;
    protected NVListView listView;

    public ListDialog(NVContext nVContext) {
        this(nVContext, R.style.CustomDialog);
    }

    protected abstract NVAdapter createAdapter();

    public ListView getListView() {
        return this.listView;
    }

    protected int layout() {
        return R.layout.dialog_list;
    }

    public ListDialog(NVContext nVContext, int i10) {
        super(nVContext, i10);
        this.context = nVContext;
        super.setContentView(layout());
        NVListView nVListView = (NVListView) findViewById(R.id.list);
        this.listView = nVListView;
        nVListView.setOverScrollMode(2);
        this.listView.setSelector(android.R.color.transparent);
    }

    protected void setListAdapter() {
        this.listView.setAdapter((ListAdapter) createAdapter());
    }
}
