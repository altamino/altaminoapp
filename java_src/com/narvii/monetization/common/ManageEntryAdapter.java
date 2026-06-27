package com.narvii.monetization.common;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;

/* loaded from: classes3.dex */
public class ManageEntryAdapter extends AdriftAdapter {
    int number;
    int strId;

    @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return true;
    }

    public ManageEntryAdapter(NVContext nVContext, int i) {
        super(nVContext);
        this.strId = i;
    }

    public void setNumber(int i) {
        this.number = i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.item_entry, viewGroup, view);
        if (this.strId != 0) {
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(this.strId);
        }
        TextView textView = (TextView) viewCreateView.findViewById(R.id.badge);
        textView.setText(Utils.getBadgeCount(this.number));
        ViewUtils.show(textView, this.number != 0);
        return viewCreateView;
    }
}
