package com.narvii.search;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.hangout.HangoutListAdapter;
import com.narvii.config.ConfigService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.master.search.SearchUtils;
import com.narvii.model.ChatThread;
import com.narvii.search.InstantSearchListener;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import com.narvii.widget.SearchBar;

/* loaded from: classes3.dex */
public class SearchChatListFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener {
    Adapter mAdapter;
    boolean stated;
    public String source = "Search";
    InstantSearchListener instantSearchListener = new InstantSearchListener();

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Chats";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.search_results);
        }
        setScrollToHideKeyboard(true);
        this.instantSearchListener.setRefreshListener(new InstantSearchListener.RefreshListener() { // from class: com.narvii.search.-$$Lambda$SearchChatListFragment$fPN4R4cj_vsr33QlxBOkwgVXwX4
            @Override // com.narvii.search.InstantSearchListener.RefreshListener
            public final void onRefresh(String str, boolean z) {
                this.f$0.lambda$onCreate$0$SearchChatListFragment(str, z);
            }
        });
    }

    public /* synthetic */ void lambda$onCreate$0$SearchChatListFragment(String str, boolean z) {
        if (!TextUtils.isEmpty(str) && z && (getParentFragment() instanceof ISearchBarHost)) {
            ((ISearchBarHost) getParentFragment()).onChildFragmentRealtimeSearch(this, str);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mAdapter = new Adapter();
        this.instantSearchListener.attachAdapter(this.mAdapter);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 15.0f), 0, (int) Utils.dpToPx(getContext(), 5.0f), 0);
        divideColumnAdapter.setAdapter(this.mAdapter, 2);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.empty_text);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(getString(R.string.normal_empty_list));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (getListView() instanceof NVListView) {
            NVListView nVListView = (NVListView) getListView();
            nVListView.setBackground(new ColorDrawable(((ConfigService) getService("config")).getTheme().colorPrimary()));
            nVListView.setDivider(null);
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        this.instantSearchListener.onTextChanged(searchBar, str);
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

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    private class Adapter extends HangoutListAdapter {
        public Adapter() {
            super(SearchChatListFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(ChatThread.class));
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            SearchChatListFragment.this.instantSearchListener.setKeyword(bundle.getString("keyword"));
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("keyword", SearchChatListFragment.this.instantSearchListener.getKeyword());
            return bundleOnSaveInstanceState;
        }

        @Override // com.narvii.chat.hangout.HangoutListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return TextUtils.isEmpty(SearchChatListFragment.this.instantSearchListener.getKeyword()) ? "LatestChats" : "ChatsSearchResult";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (TextUtils.isEmpty(SearchChatListFragment.this.instantSearchListener.getKeyword())) {
                return ApiRequest.builder().chatServer().path("/chat/thread?type=public-all").build();
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread?type=public-keyword");
            builderPath.param("searchId", SearchUtils.getSearchId(SearchChatListFragment.this));
            builderPath.param("q", SearchChatListFragment.this.instantSearchListener.getKeyword());
            return builderPath.build();
        }
    }
}
