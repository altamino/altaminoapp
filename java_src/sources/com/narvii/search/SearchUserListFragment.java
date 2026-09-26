package com.narvii.search;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.narvii.amino.master.R;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.SearchUtils;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes8.dex */
public class SearchUserListFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener {
    Adapter mAdapter;
    boolean stated;
    public String source = "Search";
    InstantSearchListener instantSearchListener = new InstantSearchListener();

    private class Adapter extends UserListExAdapter {
        public Adapter() {
            super(SearchUserListFragment.this);
            this.source = "Search Results";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            if (TextUtils.isEmpty(SearchUserListFragment.this.instantSearchListener.getKeyword())) {
                ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
                builderPath.param("type", "all");
                return builderPath.build();
            }
            ApiRequest.Builder builderPath2 = ApiRequest.builder().path("/user-profile");
            builderPath2.param("type", "name");
            builderPath2.param("searchId", SearchUtils.getSearchId(SearchUserListFragment.this));
            builderPath2.param("q", SearchUserListFragment.this.instantSearchListener.getKeyword());
            builderPath2.timeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
            builderPath2.retry(0);
            return builderPath2.build();
        }

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return TextUtils.isEmpty(SearchUserListFragment.this.instantSearchListener.getKeyword()) ? "LatestUsers" : "UsersSearchResult";
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            SearchUserListFragment.this.instantSearchListener.setKeyword(bundle.getString("keyword"));
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("keyword", SearchUserListFragment.this.instantSearchListener.getKeyword());
            return bundleOnSaveInstanceState;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "users_list";
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.mAdapter = adapter;
        this.instantSearchListener.attachAdapter(adapter);
        this.instantSearchListener.setRefreshListener(new InstantSearchListener.RefreshListener() { // from class: com.narvii.search.b
            @Override // com.narvii.search.InstantSearchListener.RefreshListener
            public final void onRefresh(String str, boolean z6) {
                this.f2721a.lambda$createAdapter$0(str, z6);
            }
        });
        return this.mAdapter;
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        this.instantSearchListener.onSearch(searchBar, str);
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(String str) {
        if (this.mAdapter == null || Utils.isStringEquals(str, this.instantSearchListener.getKeyword())) {
            return;
        }
        SearchUtils.logSwitchSearch(this, str);
        onSearch(null, str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        this.instantSearchListener.onTextChanged(searchBar, str);
        if (this.stated || TextUtils.isEmpty(str)) {
            return;
        }
        ((StatisticsService) getService("statistics")).event("Search Member").source(this.source).userPropInc("Search Member Total");
        this.stated = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createAdapter$0(String str, boolean z6) {
        if (!TextUtils.isEmpty(str) && z6 && (getParentFragment() instanceof ISearchBarHost)) {
            ((ISearchBarHost) getParentFragment()).onChildFragmentRealtimeSearch(this, str);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.search_results);
        }
        setScrollToHideKeyboard(true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(getString(R.string.normal_empty_list));
        }
    }
}
