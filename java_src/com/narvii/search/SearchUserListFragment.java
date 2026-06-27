package com.narvii.search;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.amino.mastes.R;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.SearchUtils;
import com.narvii.model.ExternalSource;
import com.narvii.search.InstantSearchListener;
import com.narvii.user.list.UserListExAdapter;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.SearchBar;

/* loaded from: classes3.dex */
public class SearchUserListFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener {
    Adapter mAdapter;
    boolean stated;
    public String source = "Search";
    InstantSearchListener instantSearchListener = new InstantSearchListener();

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Users";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.search_results);
        }
        setScrollToHideKeyboard(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mAdapter = new Adapter();
        this.instantSearchListener.attachAdapter(this.mAdapter);
        this.instantSearchListener.setRefreshListener(new InstantSearchListener.RefreshListener() { // from class: com.narvii.search.-$$Lambda$SearchUserListFragment$AqGtG_x_SIDO-a_q2P8Mv1bzaTA
            @Override // com.narvii.search.InstantSearchListener.RefreshListener
            public final void onRefresh(String str, boolean z) {
                this.f$0.lambda$createAdapter$0$SearchUserListFragment(str, z);
            }
        });
        return this.mAdapter;
    }

    public /* synthetic */ void lambda$createAdapter$0$SearchUserListFragment(String str, boolean z) {
        if (!TextUtils.isEmpty(str) && z && (getParentFragment() instanceof ISearchBarHost)) {
            ((ISearchBarHost) getParentFragment()).onChildFragmentRealtimeSearch(this, str);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(getString(R.string.normal_empty_list));
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        this.instantSearchListener.onTextChanged(searchBar, str);
        if (this.stated || TextUtils.isEmpty(str)) {
            return;
        }
        this.stated = true;
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

    private class Adapter extends UserListExAdapter {
        public Adapter() {
            super(SearchUserListFragment.this);
            this.source = "Search Results";
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

        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return TextUtils.isEmpty(SearchUserListFragment.this.instantSearchListener.getKeyword()) ? "LatestUsers" : "UsersSearchResult";
        }

        @Override // com.narvii.user.list.UserListExAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (TextUtils.isEmpty(SearchUserListFragment.this.instantSearchListener.getKeyword())) {
                ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
                builderPath.param("type", ExternalSource.EXTERNAL_SOURCE_ALL_ID);
                return builderPath.build();
            }
            ApiRequest.Builder builderPath2 = ApiRequest.builder().path("/user-profile");
            builderPath2.param("type", AppMeasurementSdk.ConditionalUserProperty.NAME);
            builderPath2.param("searchId", SearchUtils.getSearchId(SearchUserListFragment.this));
            builderPath2.param("q", SearchUserListFragment.this.instantSearchListener.getKeyword());
            builderPath2.timeout(20000);
            builderPath2.retry(0);
            return builderPath2.build();
        }
    }
}
