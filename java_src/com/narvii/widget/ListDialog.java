package com.narvii.widget;

import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;
import com.narvii.list.NVAdapter;

/* loaded from: classes3.dex */
public abstract class ListDialog extends NVDialog {
    protected NVContext context;
    protected NVListView listView;

    protected abstract NVAdapter createAdapter();

    public ListDialog(NVContext nVContext) {
        this(nVContext, R.style.CustomDialog);
    }

    public ListDialog(NVContext nVContext, int i) {
        super(nVContext, i);
        this.context = nVContext;
        super.setContentView(layout());
        this.listView = (NVListView) findViewById(R.id.list);
        this.listView.setOverScrollMode(2);
        this.listView.setSelector(android.R.color.transparent);
    }

    protected void setListAdapter() {
        this.listView.setAdapter((ListAdapter) createAdapter());
    }

    public ListView getListView() {
        return this.listView;
    }

    protected int layout() {
        return R.layout.dialog_list;
    }
}
