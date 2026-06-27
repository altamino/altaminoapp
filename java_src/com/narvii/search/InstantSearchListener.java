package com.narvii.search;

import com.narvii.list.NVPagedAdapter;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.SearchBar;

/* loaded from: classes3.dex */
public class InstantSearchListener implements SearchBar.OnSearchListener {
    private String keyword;
    private NVPagedAdapter mAdapter;
    private NVRecyclerViewBaseAdapter recyclerViewAdapter;
    private Runnable refresh;
    private RefreshListener refreshListener;

    public interface RefreshListener {
        void onRefresh(String str, boolean z);
    }

    public void setRefreshListener(RefreshListener refreshListener) {
        this.refreshListener = refreshListener;
    }

    public void attachAdapter(NVPagedAdapter nVPagedAdapter) {
        this.mAdapter = nVPagedAdapter;
    }

    public void attachRecyclerAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        this.recyclerViewAdapter = nVRecyclerViewBaseAdapter;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, final String str) {
        Runnable runnable = this.refresh;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        this.refresh = new Runnable() { // from class: com.narvii.search.InstantSearchListener.1
            @Override // java.lang.Runnable
            public void run() {
                InstantSearchListener.this.refreshKeyword(str, true);
            }
        };
        Utils.postDelayed(this.refresh, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshKeyword(String str, boolean z) {
        if (Utils.isStringEquals(str, this.keyword)) {
            return;
        }
        if (this.mAdapter != null) {
            RefreshListener refreshListener = this.refreshListener;
            if (refreshListener != null) {
                refreshListener.onRefresh(str, z);
            }
            this.keyword = str;
            this.mAdapter.refresh(0, null);
            this.mAdapter.notifyDataSetChanged();
            return;
        }
        if (this.recyclerViewAdapter != null) {
            RefreshListener refreshListener2 = this.refreshListener;
            if (refreshListener2 != null) {
                refreshListener2.onRefresh(str, z);
            }
            this.keyword = str;
            this.recyclerViewAdapter.refresh(0, null);
            this.recyclerViewAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        if (searchBar != null) {
            searchBar.clearFocus();
            SoftKeyboard.hideSoftKeyboard(searchBar.getEditText());
        }
        Runnable runnable = this.refresh;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        refreshKeyword(str, false);
    }
}
