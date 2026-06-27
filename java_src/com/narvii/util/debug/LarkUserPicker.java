package com.narvii.util.debug;

import android.R;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.widget.ListDialog;

/* loaded from: classes3.dex */
public class LarkUserPicker extends ListDialog {
    String[] names;

    protected void onUserClicked(String str) {
    }

    public LarkUserPicker(NVContext nVContext, int i) {
        super(nVContext, i);
        this.names = new String[]{"All", "Jixin", "Guangjing", "Haomeng", "ShenJun", "ChenWei", "Wenrong", "Yueyue"};
        setListAdapter();
    }

    @Override // com.narvii.widget.ListDialog
    protected NVAdapter createAdapter() {
        NVAdapter nVAdapter = new NVAdapter(this.context) { // from class: com.narvii.util.debug.LarkUserPicker.1
            @Override // android.widget.Adapter
            public Object getItem(int i) {
                return null;
            }

            @Override // android.widget.Adapter
            public long getItemId(int i) {
                return 0L;
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return LarkUserPicker.this.names.length;
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                LarkUserPicker larkUserPicker = LarkUserPicker.this;
                larkUserPicker.onUserClicked(larkUserPicker.names[i]);
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }

            @Override // android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View viewCreateView = createView(R.layout.simple_list_item_1, viewGroup, view);
                if (NVApplication.DEBUG) {
                    ((TextView) viewCreateView.findViewById(R.id.text1)).setText(LarkUserPicker.this.names[i]);
                }
                return viewCreateView;
            }
        };
        getListView().setOnItemClickListener(nVAdapter);
        return nVAdapter;
    }
}
