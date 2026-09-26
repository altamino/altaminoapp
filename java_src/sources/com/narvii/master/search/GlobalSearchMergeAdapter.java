package com.narvii.master.search;

import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.list.MergeAdapter;

/* JADX INFO: loaded from: classes9.dex */
public class GlobalSearchMergeAdapter extends MergeAdapter {
    AminoIdMatchedAdapter matchedSearchResultAdapter;

    @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.matchedSearchResultAdapter;
        if (aminoIdMatchedAdapter != null) {
            return aminoIdMatchedAdapter.isEmpty() && super.isEmpty();
        }
        return super.isEmpty();
    }

    @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
    public boolean isListShown() {
        if (this.matchedSearchResultAdapter != null) {
            return super.isListShown() || this.matchedSearchResultAdapter.isListShown();
        }
        return super.isListShown();
    }

    public GlobalSearchMergeAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.list.MergeAdapter
    public void addAdapter(ListAdapter listAdapter, boolean z6) {
        super.addAdapter(listAdapter, z6);
        if (listAdapter instanceof AminoIdMatchedAdapter) {
            this.matchedSearchResultAdapter = (AminoIdMatchedAdapter) listAdapter;
        }
    }
}
