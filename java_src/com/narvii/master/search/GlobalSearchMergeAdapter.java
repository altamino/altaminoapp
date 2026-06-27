package com.narvii.master.search;

import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.list.MergeAdapter;

/* loaded from: classes3.dex */
public class GlobalSearchMergeAdapter extends MergeAdapter {
    AminoIdMatchedAdapter matchedSearchResultAdapter;

    public GlobalSearchMergeAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.list.MergeAdapter
    public void addAdapter(ListAdapter listAdapter, boolean z) {
        super.addAdapter(listAdapter, z);
        if (listAdapter instanceof AminoIdMatchedAdapter) {
            this.matchedSearchResultAdapter = (AminoIdMatchedAdapter) listAdapter;
        }
    }

    @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
    public boolean isListShown() {
        if (this.matchedSearchResultAdapter != null) {
            return super.isListShown() || this.matchedSearchResultAdapter.isListShown();
        }
        return super.isListShown();
    }

    @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.matchedSearchResultAdapter;
        if (aminoIdMatchedAdapter != null) {
            return aminoIdMatchedAdapter.isEmpty() && super.isEmpty();
        }
        return super.isEmpty();
    }
}
