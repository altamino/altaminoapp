package com.narvii.master;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;

/* JADX INFO: loaded from: classes9.dex */
public class MasterBottomAdapter extends AdriftAdapter {
    public MasterBottomAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        return createView(R.layout.master_bottom_tab_placeholder, viewGroup, view);
    }
}
