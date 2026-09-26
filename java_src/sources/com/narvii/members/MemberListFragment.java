package com.narvii.members;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.master.R;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.search.InstantSearchListener;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes6.dex */
public class MemberListFragment extends NVListFragment {
    public static final String KEY_TYPE = "key_type";
    public static final String KEY_TYPE_RECENT = "recent";
    InstantSearchListener instantSearchListener = new InstantSearchListener();
    MemberAdapter memberAdapter;
    MergeAdapter mergeAdapter;
    SearchAdapter searchAdapter;
    SearchResultAdapter searchResultAdaper;
    public String type;

    class MemberAdapter extends UserListExAdapter {
        public MemberAdapter() {
            super(MemberListFragment.this);
            this.source = "My Chats".equals(MemberListFragment.this.getStringParam(ExternalPostPreviewFragment.SOURCE)) ? "Members List from My Chats" : "Members List";
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(MemberListFragment.this.instantSearchListener.getKeyword())) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", MemberListFragment.this.type);
            return builderPath.build();
        }
    }

    private class SearchAdapter extends NVAdapter implements SearchBar.OnSearchListener {
        SearchBar searchBar;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public SearchAdapter() {
            super(MemberListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (this.searchBar == null) {
                SearchBar searchBar = (SearchBar) createView(R.layout.search_bar, viewGroup, view);
                this.searchBar = searchBar;
                searchBar.setOnSearchListener(this);
                this.searchBar.setBackgroundColor(-1);
            }
            return this.searchBar;
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onSearch(SearchBar searchBar, String str) {
            MemberListFragment.this.instantSearchListener.onSearch(searchBar, str);
        }

        @Override // com.narvii.widget.SearchBar.OnSearchListener
        public void onTextChanged(SearchBar searchBar, String str) {
            MemberListFragment.this.instantSearchListener.onTextChanged(searchBar, str);
        }
    }

    class SearchResultAdapter extends UserListExAdapter {
        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.user.list.UserListAdapter
        protected int layoutId() {
            return R.layout.user_item_ex;
        }

        public SearchResultAdapter() {
            super(MemberListFragment.this);
            this.source = "Members List";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            if (TextUtils.isEmpty(MemberListFragment.this.instantSearchListener.getKeyword())) {
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", "name");
            builderPath.param("q", MemberListFragment.this.instantSearchListener.getKeyword());
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(MemberListFragment.this.instantSearchListener.getKeyword())) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            MemberListFragment.this.instantSearchListener.setKeyword(bundle.getString("keyword"));
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("keyword", MemberListFragment.this.instantSearchListener.getKeyword());
            return bundleOnSaveInstanceState;
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        if (TextUtils.isEmpty(this.instantSearchListener.getKeyword())) {
            if (getListAdapter() instanceof NVAdapter) {
                ((NVAdapter) getListAdapter()).refresh(2, null);
                return;
            }
            SearchResultAdapter searchResultAdapter = this.searchResultAdaper;
            if (searchResultAdapter != null) {
                searchResultAdapter.refresh(2, null);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.members.MemberListFragment.1
            @Override // android.widget.BaseAdapter, android.widget.Adapter
            public boolean hasStableIds() {
                return true;
            }

            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                if (TextUtils.isEmpty(MemberListFragment.this.instantSearchListener.getKeyword())) {
                    return super.isEmpty();
                }
                SearchResultAdapter searchResultAdapter = MemberListFragment.this.searchResultAdaper;
                return searchResultAdapter != null && searchResultAdapter.getCount() == 0;
            }
        };
        this.memberAdapter = new MemberAdapter();
        this.searchAdapter = new SearchAdapter();
        this.searchResultAdaper = new SearchResultAdapter();
        this.mergeAdapter.addAdapter(this.searchAdapter);
        this.mergeAdapter.addAdapter(this.memberAdapter, true);
        this.mergeAdapter.addAdapter(this.searchResultAdaper);
        this.instantSearchListener.attachAdapter(this.searchResultAdaper);
        return this.mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam(KEY_TYPE);
        this.type = stringParam;
        if (TextUtils.isEmpty(stringParam)) {
            this.type = "all";
        }
        setTitle(getString(R.string.community_all_members));
        setScrollToHideKeyboard(true);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Members Page Opened").userPropInc("Members Page Opened Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.empty_view_top);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.empty_retry);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.members.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f2483a.lambda$onViewCreated$0(view2);
                }
            });
        }
    }
}
