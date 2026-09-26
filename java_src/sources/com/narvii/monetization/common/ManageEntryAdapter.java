package com.narvii.monetization.common;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;

/* JADX INFO: loaded from: classes6.dex */
public class ManageEntryAdapter extends AdriftAdapter {
    int number;
    int strId;

    @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return true;
    }

    public void setNumber(int i10) {
        this.number = i10;
    }

    public ManageEntryAdapter(NVContext nVContext, int i10) {
        super(nVContext);
        this.strId = i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        boolean z6;
        View viewCreateView = createView(R.layout.item_entry, viewGroup, view);
        if (this.strId != 0) {
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(this.strId);
        }
        TextView textView = (TextView) viewCreateView.findViewById(R.id.badge);
        textView.setText(Utils.getBadgeCount(this.number));
        if (this.number != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        ViewUtils.show(textView, z6);
        return viewCreateView;
    }
}
