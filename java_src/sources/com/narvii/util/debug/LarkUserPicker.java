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
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class LarkUserPicker extends ListDialog {
    String[] names;

    protected void onUserClicked(String str) {
    }

    @Override // com.narvii.widget.ListDialog
    protected NVAdapter createAdapter() {
        NVAdapter nVAdapter = new NVAdapter(this.context) { // from class: com.narvii.util.debug.LarkUserPicker.1
            @Override // android.widget.Adapter
            public Object getItem(int i10) {
                return null;
            }

            @Override // android.widget.Adapter
            public long getItemId(int i10) {
                return 0L;
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return LarkUserPicker.this.names.length;
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, @Nullable View view2) {
                LarkUserPicker larkUserPicker = LarkUserPicker.this;
                larkUserPicker.onUserClicked(larkUserPicker.names[i10]);
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }

            @Override // android.widget.Adapter
            public View getView(int i10, View view, ViewGroup viewGroup) {
                View viewCreateView = createView(R.layout.simple_list_item_1, viewGroup, view);
                if (NVApplication.DEBUG) {
                    ((TextView) viewCreateView.findViewById(R.id.text1)).setText(LarkUserPicker.this.names[i10]);
                }
                return viewCreateView;
            }
        };
        getListView().setOnItemClickListener(nVAdapter);
        return nVAdapter;
    }

    public LarkUserPicker(NVContext nVContext, int i10) {
        super(nVContext, i10);
        this.names = new String[]{"All", "Jixin", "Guangjing", "Haomeng", "ShenJun", "ChenWei", "Wenrong", "Yueyue"};
        setListAdapter();
    }
}
