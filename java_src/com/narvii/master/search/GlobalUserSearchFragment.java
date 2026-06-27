package com.narvii.master.search;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
import com.narvii.list.DividerAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.trending.SectionHeaderAdapter;
import com.narvii.model.User;
import com.narvii.search.SwitchSearchListener;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.SearchBar;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class GlobalUserSearchFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener {
    Adapter adapter;
    AminoIdMatchedAdapter aminoIdMatchedAdapter;
    private String searchKey;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Users";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        this.searchKey = getStringParam("search_key");
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
    }

    @Override // com.narvii.list.NVListFragment
    protected String emptyMessage() {
        return getString(R.string.normal_empty_list);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        GlobalSearchMergeAdapter globalSearchMergeAdapter = new GlobalSearchMergeAdapter(this) { // from class: com.narvii.master.search.GlobalUserSearchFragment.1
            @Override // com.narvii.master.search.GlobalSearchMergeAdapter, com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return super.isListShown() && (TextUtils.isEmpty(GlobalUserSearchFragment.this.aminoIdMatchedAdapter.ketword) || GlobalUserSearchFragment.this.aminoIdMatchedAdapter.isRequestFinished);
            }
        };
        this.aminoIdMatchedAdapter = new AminoIdMatchedAdapter(this) { // from class: com.narvii.master.search.GlobalUserSearchFragment.2
            @Override // android.widget.BaseAdapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                Adapter adapter = GlobalUserSearchFragment.this.adapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
        };
        if (getBooleanParam("hide_match_id_adapter", false)) {
            this.aminoIdMatchedAdapter.setCustomObjectType(0);
        }
        globalSearchMergeAdapter.addAdapter(this.aminoIdMatchedAdapter);
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.master.search.GlobalUserSearchFragment.3
            @Override // com.narvii.list.DividerAdapter
            protected int getDividerLayoutId() {
                return R.layout.list_divider_padding;
            }
        };
        this.adapter = new Adapter();
        dividerAdapter.setAdapter(this.adapter);
        SectionHeaderAdapter sectionHeaderAdapter = new SectionHeaderAdapter(this, getBooleanParam("hide_match_id_adapter", false) ? R.string.users : R.string.community_search_keywords);
        sectionHeaderAdapter.setAttachHost(dividerAdapter);
        globalSearchMergeAdapter.addAdapter(sectionHeaderAdapter);
        globalSearchMergeAdapter.addAdapter(dividerAdapter, true);
        return globalSearchMergeAdapter;
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(String str) {
        if (Utils.isStringEquals(str, this.adapter.keyword)) {
            return;
        }
        SearchUtils.logSwitchSearch(this, str);
        if (str == null || str.isEmpty()) {
            onTextChanged(null, null);
        }
        searchText(str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        if (TextUtils.isEmpty(str)) {
            Adapter adapter = this.adapter;
            adapter.keyword = null;
            adapter.resetList();
            this.aminoIdMatchedAdapter.notifyKeyChange(null);
            return;
        }
        this.adapter.notifyDataSetChanged();
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        searchText(str);
    }

    private void searchText(String str) {
        this.adapter.keyword = str == null ? "" : str;
        this.adapter.resetList();
        this.aminoIdMatchedAdapter.notifyKeyChange(str);
    }

    private class Adapter extends UserListExAdapter {
        String keyword;
        public List<User> l;

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "UsersSearchResult";
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.user.list.UserListItemHost
        public boolean showAminoId() {
            return true;
        }

        @Override // com.narvii.user.list.UserListExAdapter
        protected boolean showFollowView() {
            return false;
        }

        public Adapter() {
            super(GlobalUserSearchFragment.this);
            this.keyword = GlobalUserSearchFragment.this.searchKey;
            this.paginationType = 1;
            setDarkTheme(true);
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return GlobalUserSearchFragment.this.isDarkTheme() ? R.layout.user_item_global_search_dark : R.layout.user_item_global_search;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("user-profile/search").param("q", this.keyword).param("searchId", this.keyword != null ? SearchUtils.getSearchId(GlobalUserSearchFragment.this) : null).param("ignoreMembership", 1).build();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends User> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else if (listRawList.isEmpty()) {
                this.l = new ArrayList();
            } else {
                this.l = new ArrayList();
                if (GlobalUserSearchFragment.this.aminoIdMatchedAdapter.getMappedUser() != null) {
                    User mappedUser = GlobalUserSearchFragment.this.aminoIdMatchedAdapter.getMappedUser();
                    for (User user : listRawList) {
                        if (!Utils.isEqualsNotNull(user.uid, mappedUser.id())) {
                            this.l.add(user);
                        }
                    }
                } else {
                    this.l.addAll(listRawList);
                }
            }
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
        protected List<User> filterResponseList(List<User> list, int i) {
            return super.filterResponseList(list, i);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return super.isEmpty() && !TextUtils.isEmpty(this.keyword);
        }
    }
}
