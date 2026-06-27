package com.narvii.monetization.common;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;

/* loaded from: classes3.dex */
public class ManageTitleAdapter extends AdriftAdapter {
    int strId;

    public ManageTitleAdapter(NVContext nVContext, int i) {
        super(nVContext);
        this.strId = i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.store_item_manage_title_item, viewGroup, view);
        if (this.strId != 0) {
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(this.strId);
        }
        return viewCreateView;
    }
}
