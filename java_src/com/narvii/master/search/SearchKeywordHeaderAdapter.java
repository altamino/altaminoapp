package com.narvii.master.search;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.NVAdapter;

/* loaded from: classes3.dex */
public class SearchKeywordHeaderAdapter extends AdriftAdapter {
    NVAdapter host;

    public SearchKeywordHeaderAdapter(NVContext nVContext) {
        super(nVContext);
        this.host = null;
    }

    public void setAttachHost(NVAdapter nVAdapter) {
        this.host = nVAdapter;
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public int getCount() {
        NVAdapter nVAdapter = this.host;
        if (nVAdapter != null) {
            return nVAdapter.getCount() > 0 ? 1 : 0;
        }
        return super.getCount();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return createView(R.layout.item_search_by_keywords_header, viewGroup, view);
    }
}
