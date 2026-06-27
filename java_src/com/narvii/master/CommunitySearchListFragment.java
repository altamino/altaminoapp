package com.narvii.master;

import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.community.BaseCommunitySearchListFragment;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.community.ReminderCheck;
import com.narvii.community.search.BaseSearchListFragment;
import com.narvii.community.search.SearchCommunityListResponse;
import com.narvii.incubator.LanguageChooseDialog;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageManager;
import com.narvii.language.LanguageSpec;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogUtils;
import com.narvii.master.explorer.SupportLanguageResponse;
import com.narvii.master.search.AminoIdMatchedAdapter;
import com.narvii.master.search.ChangeSearchTextListener;
import com.narvii.master.search.SearchUtils;
import com.narvii.master.search.history.SearchHistoryDelegate;
import com.narvii.master.search.trending.SectionHeaderAdapter;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.search.ISearchBarHost;
import com.narvii.search.SwitchSearchListener;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.SplashUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SearchBar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class CommunitySearchListFragment extends BaseCommunitySearchListFragment implements SwitchSearchListener {
    public static final String KEY_IS_RESUT_PAGE = "key_result_page";
    public static final String KEY_PRE_QUERY_KEY = "search_key";
    AminoIdMatchedAdapter aminoIdMatchedAdapter;
    private boolean hideMathIdAdapter;
    LanguageManager languageManager;
    ContentLanguageService languageService;
    MyMergeAdapter mergeAdapter;
    MyCommunityRecycler myCommunityRecycler;
    MyCommunityRecyclerAdapter myCommunityRecyclerAdapter;
    private SearchHistoryDelegate searchHistoryDelegate;
    SectionHeaderAdapter searchKeywordHeaderAdapter;
    MasterSearchResultCommunityAdapter searchResultCommunityAdapter;
    private String timestamp;
    MasterTrendingCommunityAdapter trendingCommunityAdapter;
    public List<Community> userJoinedCommunityList;
    final HashMap<Integer, CommunityUserInfo> users = new HashMap<>();

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Aminos";
    }

    @Override // com.narvii.community.BaseCommunitySearchListFragment, com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.community.BaseCommunitySearchListFragment
    protected BaseCommunitySearchListFragment.MatchedCommunityAdapter matchedCommunityAdapter() {
        return null;
    }

    @Override // com.narvii.community.search.BaseSearchListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.curQueryKey = getStringParam("search_key");
        this.languageManager = (LanguageManager) getService(IjkMediaMeta.IJKM_KEY_LANGUAGE);
        this.languageService = (ContentLanguageService) getService("content_language");
        this.searchHistoryDelegate = new SearchHistoryDelegate(this, "community");
        this.searchHistoryDelegate.setOnSearchHistory(Utils.functionUnit(new Callback() { // from class: com.narvii.master.-$$Lambda$CommunitySearchListFragment$aaABw2k30L4Sy3Gw0meEiZ14qCI
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$onCreate$0$CommunitySearchListFragment((String) obj);
            }
        }));
        this.searchHistoryDelegate.setShowSearchHistory(new Function0() { // from class: com.narvii.master.-$$Lambda$CommunitySearchListFragment$bJIGCl_daat9UQm5Koi0XdCJaLw
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(this.f$0.showSearchHistory());
            }
        });
    }

    public /* synthetic */ void lambda$onCreate$0$CommunitySearchListFragment(String str) {
        ChangeSearchTextListener changeSearchTextListener = this.changeSearchTextListener;
        if (changeSearchTextListener != null) {
            changeSearchTextListener.changeSearchText(str, true);
        }
        this.curQueryKey = str;
        jumpToSearchResultView();
        onSearch(str);
    }

    @Override // com.narvii.community.search.BaseSearchListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        if (bundle != null) {
            onTextChanged(null, bundle.getString("curQueryKey"));
        }
    }

    @Override // com.narvii.community.search.BaseSearchListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("curQueryKey", this.curQueryKey);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        SplashUtils.cancelSplash(getActivity());
    }

    @Override // com.narvii.community.BaseCommunitySearchListFragment
    protected String getCurSearchLanguage() {
        return this.languageService.getRequestPrefLanguageWithLocalAsDefault();
    }

    @Override // com.narvii.community.search.BaseSearchListFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        SplashUtils.cancelSplash(getActivity());
        return false;
    }

    @Override // com.narvii.community.search.BaseSearchListFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MyMergeAdapter();
        this.myCommunityRecyclerAdapter = new MyCommunityRecyclerAdapter();
        this.myCommunityRecycler = new MyCommunityRecycler();
        this.searchResultCommunityAdapter = new MasterSearchResultCommunityAdapter();
        this.searchHistoryDelegate.addSearchHistoryAdapters(this.mergeAdapter);
        this.mergeAdapter.addAdapter(this.myCommunityRecycler);
        this.hideMathIdAdapter = getBooleanParam("hide_match_id_adapter", false);
        this.aminoIdMatchedAdapter = new AminoIdMatchedAdapter(this) { // from class: com.narvii.master.CommunitySearchListFragment.1
            @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
            public int getCount() {
                if (TextUtils.isEmpty(((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey)) {
                    return 0;
                }
                return super.getCount();
            }

            @Override // android.widget.BaseAdapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                MasterSearchResultCommunityAdapter masterSearchResultCommunityAdapter = CommunitySearchListFragment.this.searchResultCommunityAdapter;
                if (masterSearchResultCommunityAdapter != null) {
                    masterSearchResultCommunityAdapter.notifyDataSetChanged();
                }
            }
        };
        if (this.hideMathIdAdapter) {
            this.aminoIdMatchedAdapter.setCustomObjectType(16);
        }
        this.mergeAdapter.addAdapter(this.aminoIdMatchedAdapter);
        this.searchKeywordHeaderAdapter = new SectionHeaderAdapter(this, this.hideMathIdAdapter ? R.string.communities : R.string.community_search_keywords) { // from class: com.narvii.master.CommunitySearchListFragment.2
            @Override // com.narvii.master.search.trending.SectionHeaderAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
            public int getCount() {
                return super.getCount();
            }
        };
        this.searchKeywordHeaderAdapter.setAttachHost(this.searchResultCommunityAdapter);
        this.mergeAdapter.addAdapter(this.searchKeywordHeaderAdapter);
        this.mergeAdapter.addAdapter(this.searchResultCommunityAdapter);
        this.trendingCommunityAdapter = new MasterTrendingCommunityAdapter();
        this.mergeAdapter.addAdapter(this.trendingCommunityAdapter);
        return this.mergeAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterCommunityDetail(Community community, View view) {
        CommunityHelper communityHelperEventOrigin = new CommunityHelper(this).source("search").eventOrigin(LoggingOrigin.Search);
        if (isInviteLink(this.curQueryKey)) {
            communityHelperEventOrigin.communityDetailWithInviteUrl(community, this.curQueryKey);
        } else {
            communityHelperEventOrigin.visitCommunity(community, view);
        }
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(String str) {
        if (Utils.isStringEquals(str, this.curQueryKey)) {
            return;
        }
        SearchUtils.logSwitchSearch(this, str);
        this.curQueryKey = str;
        jumpToSearchResultView();
        onSearch(this.curQueryKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showSearchHistory() {
        return TextUtils.isEmpty(this.curQueryKey);
    }

    class MyCommunityRecycler extends NVAdapter {
        private ApiRequest apiRequest;
        public boolean isRequesting;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "MyAminos";
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            if (this.apiRequest != null) {
                ((ApiService) getService("api")).abort(this.apiRequest);
                this.apiRequest = null;
            }
            sendRequest();
            refreshMonitorEnd();
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey != null) {
                sendRequest();
            }
        }

        public MyCommunityRecycler() {
            super(CommunitySearchListFragment.this);
            addImpressionCollector(new RecyclerInListViewImpressionCollector(Community.class, R.id.recycle_layout));
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Community> list;
            return (!((BaseSearchListFragment) CommunitySearchListFragment.this).showMyCommunity || TextUtils.isEmpty(((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey) || (list = CommunitySearchListFragment.this.userJoinedCommunityList) == null || list.size() == 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.search_my_community_recycler, viewGroup, view);
            RecyclerView recyclerView = (RecyclerView) viewCreateView.findViewById(R.id.recycle_layout);
            if (recyclerView == null) {
                return null;
            }
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            recyclerView.setAdapter(CommunitySearchListFragment.this.myCommunityRecyclerAdapter);
            LogUtils.recyclerShownInAdapter(viewCreateView, recyclerView, this);
            return viewCreateView;
        }

        private void sendRequest() {
            AccountService accountService = (AccountService) getService("account");
            if (TextUtils.isEmpty(((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey) || accountService == null || !accountService.hasAccount()) {
                return;
            }
            this.isRequesting = true;
            ApiRequest.Builder builderGlobal = ApiRequest.builder().global();
            builderGlobal.path("/community/joined");
            builderGlobal.param("q", ((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey);
            builderGlobal.param(TtmlNode.START, 0);
            builderGlobal.param("size", 100);
            builderGlobal.build();
            ApiService apiService = (ApiService) getService("api");
            this.apiRequest = builderGlobal.build();
            apiService.exec(this.apiRequest, new ApiResponseListener<MyCommunityListResponse>(MyCommunityListResponse.class) { // from class: com.narvii.master.CommunitySearchListFragment.MyCommunityRecycler.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, MyCommunityListResponse myCommunityListResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) myCommunityListResponse);
                    MyCommunityRecycler myCommunityRecycler = MyCommunityRecycler.this;
                    myCommunityRecycler.isRequesting = false;
                    myCommunityRecycler.apiRequest = null;
                    CommunitySearchListFragment.this.setUserJoinedCommunityList(myCommunityListResponse.communityList, myCommunityListResponse.userInfoInCommunities, myCommunityListResponse.timestamp);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    MyCommunityRecycler myCommunityRecycler = MyCommunityRecycler.this;
                    myCommunityRecycler.isRequesting = false;
                    myCommunityRecycler.apiRequest = null;
                    CommunitySearchListFragment.this.setUserJoinedCommunityList(null, null, null);
                }
            });
        }
    }

    class MyCommunityRecyclerAdapter extends RecyclerView.Adapter<GalleryViewHolder> {
        MyCommunityRecyclerAdapter() {
        }

        class GalleryViewHolder extends RecyclerView.ViewHolder {
            NVImageView iconImageView;
            TextView nameTextView;

            public GalleryViewHolder(View view) {
                super(view);
                this.nameTextView = (TextView) view.findViewById(R.id.text);
                this.iconImageView = (NVImageView) view.findViewById(R.id.icon);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public GalleryViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new GalleryViewHolder(LayoutInflater.from(CommunitySearchListFragment.this.getContext()).inflate(R.layout.search_my_community, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(final GalleryViewHolder galleryViewHolder, int i) {
            final Community community = CommunitySearchListFragment.this.userJoinedCommunityList.get(i);
            if (community == null) {
                return;
            }
            View view = galleryViewHolder.itemView;
            if (view != null) {
                LogUtils.setAttachedObject(view, community);
            }
            TextView textView = galleryViewHolder.nameTextView;
            if (textView != null) {
                textView.setText(community.name);
            }
            NVImageView nVImageView = galleryViewHolder.iconImageView;
            if (nVImageView != null) {
                nVImageView.setImageUrl(community.icon);
            }
            galleryViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.CommunitySearchListFragment.MyCommunityRecyclerAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    CommunitySearchListFragment.this.myCommunityRecycler.logClickEvent(community, ActSemantic.aminoEnter);
                    CommunitySearchListFragment communitySearchListFragment = CommunitySearchListFragment.this;
                    MyLaunchHelper myLaunchHelper = communitySearchListFragment.new MyLaunchHelper(communitySearchListFragment, galleryViewHolder.iconImageView);
                    CommunityUserInfo communityUserInfo = CommunitySearchListFragment.this.users.get(Integer.valueOf(community.id));
                    User user = communityUserInfo == null ? null : communityUserInfo.userProfile;
                    Community community2 = community;
                    myLaunchHelper.launch(community2.id, community2, CommunitySearchListFragment.this.timestamp, user, CommunitySearchListFragment.this.timestamp, null, null, false);
                }
            });
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<Community> list = CommunitySearchListFragment.this.userJoinedCommunityList;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
    }

    class MyLaunchHelper extends CommunityLaunchHelper {
        Community community;
        NVImageView nvImageView;

        public MyLaunchHelper(NVContext nVContext, NVImageView nVImageView) {
            super(nVContext, "Search");
            this.nvImageView = nVImageView;
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void launch(int i, Community community, String str, User user, String str2, ReminderCheck reminderCheck, String str3, boolean z) {
            this.community = community;
            super.launch(i, community, str, user, str2, reminderCheck, str3, z);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.CommunityLaunchHelper
        public void onFinish() {
            if (this.community == null || CommunitySearchListFragment.this.getActivity() == null) {
                return;
            }
            if (this.launchImageDrawable != null && this.nvImageView != null) {
                SplashUtils.splash(CommunitySearchListFragment.this.getActivity(), this.nvImageView, this.launchImageDrawable, new Callback<Boolean>() { // from class: com.narvii.master.CommunitySearchListFragment.MyLaunchHelper.1
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        if (bool.booleanValue()) {
                            EnterCommunityHelper.SOURCE.set(MyLaunchHelper.this.source);
                            MyLaunchHelper.super.onFinish();
                        }
                    }
                });
            } else {
                super.onFinish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserJoinedCommunityList(List<Community> list, Map<Integer, CommunityUserInfo> map, String str) {
        this.userJoinedCommunityList = list;
        this.timestamp = str;
        this.users.clear();
        if (map != null) {
            this.users.putAll(map);
        }
        MyCommunityRecycler myCommunityRecycler = this.myCommunityRecycler;
        if (myCommunityRecycler != null) {
            myCommunityRecycler.notifyDataSetChanged();
        }
        if (this.myCommunityRecyclerAdapter == null || !isAdded()) {
            return;
        }
        this.myCommunityRecyclerAdapter.notifyDataSetChanged();
    }

    private class MasterSearchResultCommunityAdapter extends BaseCommunitySearchListFragment.SearchResultCommunityAdapter {
        public boolean isRequestFinished;
        public List<Community> l;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "AminosSearchResult";
        }

        @Override // com.narvii.community.CommunityListWithSectionAdapter, com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return true;
        }

        @Override // com.narvii.community.CommunityListWithSectionAdapter
        protected boolean supportUnlistedStatus() {
            return false;
        }

        private MasterSearchResultCommunityAdapter() {
            super();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(Community.class));
            this.isRequestFinished = false;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Community) {
                logClickEvent(obj, ActSemantic.checkDetail);
                CommunitySearchListFragment.this.enterCommunityDetail((Community) obj, view);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.community.BaseCommunitySearchListFragment.SearchResultCommunityAdapter
        protected void completeRequestBuilder(ApiRequest.Builder builder) {
            super.completeRequestBuilder(builder);
            builder.param("searchId", SearchUtils.getSearchId(CommunitySearchListFragment.this));
        }

        @Override // com.narvii.community.BaseCommunitySearchListFragment.SearchResultCommunityAdapter, com.narvii.community.CommunityListWithSectionAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends Community> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else if (listRawList.isEmpty()) {
                this.l = new ArrayList();
            } else {
                this.l = new ArrayList();
                AminoIdMatchedAdapter aminoIdMatchedAdapter = CommunitySearchListFragment.this.aminoIdMatchedAdapter;
                if (aminoIdMatchedAdapter != null && aminoIdMatchedAdapter.getMappedCommunity() != null) {
                    Community mappedCommunity = CommunitySearchListFragment.this.aminoIdMatchedAdapter.getMappedCommunity();
                    for (Community community : listRawList) {
                        if (!Utils.isEqualsNotNull(Integer.valueOf(community.id), Integer.valueOf(mappedCommunity.id))) {
                            this.l.add(community);
                        }
                    }
                } else {
                    this.l.addAll(listRawList);
                }
            }
            super.innerNotifyDataSetChanged();
        }

        @Override // com.narvii.community.CommunityListWithSectionAdapter, com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        @Override // com.narvii.community.BaseCommunitySearchListFragment.SearchResultCommunityAdapter, com.narvii.list.NVPagedAdapter
        public void resetList() {
            this.isRequestFinished = false;
            super.resetList();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.isRequestFinished = false;
            super.refresh(i, callback);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.community.BaseCommunitySearchListFragment.SearchResultCommunityAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, SearchCommunityListResponse searchCommunityListResponse, int i) {
            this.isRequestFinished = true;
            super.onPageResponse(apiRequest, searchCommunityListResponse, i);
        }
    }

    private class MyMergeAdapter extends BaseCommunitySearchListFragment.CommunitySeachMergeAdapter {
        private MyMergeAdapter() {
            super();
        }

        @Override // com.narvii.community.BaseCommunitySearchListFragment.CommunitySeachMergeAdapter, com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            AminoIdMatchedAdapter aminoIdMatchedAdapter;
            if (TextUtils.isEmpty(((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey)) {
                return CommunitySearchListFragment.this.searchHistoryDelegate.getSearchHistoryCount() > 0 || CommunitySearchListFragment.this.trendingCommunityAdapter.isListShown();
            }
            if (CommunitySearchListFragment.this.searchResultCommunityAdapter.isEmpty() && (((aminoIdMatchedAdapter = CommunitySearchListFragment.this.aminoIdMatchedAdapter) != null && !aminoIdMatchedAdapter.isRequestFinished) || CommunitySearchListFragment.this.myCommunityRecycler.isRequesting)) {
                return false;
            }
            AminoIdMatchedAdapter aminoIdMatchedAdapter2 = CommunitySearchListFragment.this.aminoIdMatchedAdapter;
            return (aminoIdMatchedAdapter2 != null && aminoIdMatchedAdapter2.isListShown()) || CommunitySearchListFragment.this.searchResultCommunityAdapter.isListShown() || CommunitySearchListFragment.this.myCommunityRecycler.isListShown();
        }

        @Override // com.narvii.community.BaseCommunitySearchListFragment.CommunitySeachMergeAdapter, com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (TextUtils.isEmpty(((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey)) {
                return CommunitySearchListFragment.this.searchHistoryDelegate.getSearchHistoryCount() == 0 && CommunitySearchListFragment.this.trendingCommunityAdapter.isEmpty();
            }
            if (((BaseSearchListFragment) CommunitySearchListFragment.this).pendingSearch) {
                return false;
            }
            AminoIdMatchedAdapter aminoIdMatchedAdapter = CommunitySearchListFragment.this.aminoIdMatchedAdapter;
            return (aminoIdMatchedAdapter == null || aminoIdMatchedAdapter.isEmpty()) && CommunitySearchListFragment.this.searchResultCommunityAdapter.isEmpty() && CommunitySearchListFragment.this.myCommunityRecycler.isEmpty();
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public void onErrorRetry() {
            MasterSearchResultCommunityAdapter masterSearchResultCommunityAdapter = CommunitySearchListFragment.this.searchResultCommunityAdapter;
            if (masterSearchResultCommunityAdapter != null) {
                masterSearchResultCommunityAdapter.onErrorRetry();
            }
            AminoIdMatchedAdapter aminoIdMatchedAdapter = CommunitySearchListFragment.this.aminoIdMatchedAdapter;
            if (aminoIdMatchedAdapter != null) {
                aminoIdMatchedAdapter.onErrorRetry();
            }
            MyCommunityRecycler myCommunityRecycler = CommunitySearchListFragment.this.myCommunityRecycler;
            if (myCommunityRecycler != null) {
                myCommunityRecycler.onErrorRetry();
            }
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            MasterTrendingCommunityAdapter masterTrendingCommunityAdapter;
            MasterSearchResultCommunityAdapter masterSearchResultCommunityAdapter = CommunitySearchListFragment.this.searchResultCommunityAdapter;
            if (masterSearchResultCommunityAdapter != null) {
                masterSearchResultCommunityAdapter.refresh(0, null);
            }
            if (TextUtils.isEmpty(((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey) && (masterTrendingCommunityAdapter = CommunitySearchListFragment.this.trendingCommunityAdapter) != null) {
                masterTrendingCommunityAdapter.refresh(0, null);
            }
            MyCommunityRecycler myCommunityRecycler = CommunitySearchListFragment.this.myCommunityRecycler;
            if (myCommunityRecycler != null) {
                myCommunityRecycler.refresh(0, null);
            }
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            AminoIdMatchedAdapter aminoIdMatchedAdapter;
            MasterSearchResultCommunityAdapter masterSearchResultCommunityAdapter;
            if (TextUtils.isEmpty(((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey) || ((aminoIdMatchedAdapter = CommunitySearchListFragment.this.aminoIdMatchedAdapter) != null && (aminoIdMatchedAdapter.isListShown() || !CommunitySearchListFragment.this.aminoIdMatchedAdapter.isRequestFinished))) {
                return null;
            }
            MyCommunityRecycler myCommunityRecycler = CommunitySearchListFragment.this.myCommunityRecycler;
            if ((myCommunityRecycler == null || (!myCommunityRecycler.isListShown() && !CommunitySearchListFragment.this.myCommunityRecycler.isRequesting)) && (masterSearchResultCommunityAdapter = CommunitySearchListFragment.this.searchResultCommunityAdapter) != null) {
                return masterSearchResultCommunityAdapter.errorMessage();
            }
            return null;
        }
    }

    private class MasterTrendingCommunityAdapter extends BaseCommunitySearchListFragment.TrendingCommunityAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Trending";
        }

        @Override // com.narvii.community.CommunityListWithSectionAdapter
        protected boolean supportUnlistedStatus() {
            return false;
        }

        private MasterTrendingCommunityAdapter() {
            super();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(Community.class));
        }

        @Override // com.narvii.community.BaseCommunitySearchListFragment.TrendingCommunityAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            CommunitySearchListFragment communitySearchListFragment = CommunitySearchListFragment.this;
            if (communitySearchListFragment.isAminoCommunityLink(((BaseSearchListFragment) communitySearchListFragment).curQueryKey)) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Community) {
                logClickEvent(obj, ActSemantic.checkDetail);
                new CommunityHelper(this.context).source("trending").visitCommunity((Community) obj, view);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.community.CommunityListWithSectionAdapter
        protected int getTrendingSectionItemBackgroundColor() {
            return Color.parseColor("#1AFFFFFF");
        }

        @Override // com.narvii.community.BaseCommunitySearchListFragment.TrendingCommunityAdapter, com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return super.isEmpty();
        }
    }

    @Override // com.narvii.community.BaseCommunitySearchListFragment, com.narvii.community.search.BaseSearchListFragment
    protected void onSearchButtonClicked() {
        super.onSearchButtonClicked();
        jumpToSearchResultView();
    }

    @Override // com.narvii.community.search.BaseSearchListFragment
    protected void onRealTimeSearch() {
        super.onRealTimeSearch();
        if (getParentFragment() instanceof ISearchBarHost) {
            ((ISearchBarHost) getParentFragment()).onChildFragmentRealtimeSearch(this, this.curQueryKey);
        }
        jumpToSearchResultView();
    }

    @Override // com.narvii.community.BaseCommunitySearchListFragment, com.narvii.community.search.BaseSearchListFragment, com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        super.onTextChanged(searchBar, str);
        MasterSearchResultCommunityAdapter masterSearchResultCommunityAdapter = this.searchResultCommunityAdapter;
        if (masterSearchResultCommunityAdapter != null) {
            masterSearchResultCommunityAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.community.BaseCommunitySearchListFragment
    protected void onSearch(String str) {
        super.onSearch(str);
        if (StringUtils.isTrimEmpty(str)) {
            return;
        }
        this.searchHistoryDelegate.addSearchHistory(str);
    }

    @Override // com.narvii.community.BaseCommunitySearchListFragment
    protected void notifyAllAdapters() {
        MasterTrendingCommunityAdapter masterTrendingCommunityAdapter = this.trendingCommunityAdapter;
        if (masterTrendingCommunityAdapter != null) {
            masterTrendingCommunityAdapter.notifyDataSetChanged();
        }
        MyCommunityRecycler myCommunityRecycler = this.myCommunityRecycler;
        if (myCommunityRecycler != null) {
            myCommunityRecycler.notifyDataSetChanged();
        }
        MyCommunityRecyclerAdapter myCommunityRecyclerAdapter = this.myCommunityRecyclerAdapter;
        if (myCommunityRecyclerAdapter != null) {
            myCommunityRecyclerAdapter.notifyDataSetChanged();
        }
        MasterSearchResultCommunityAdapter masterSearchResultCommunityAdapter = this.searchResultCommunityAdapter;
        if (masterSearchResultCommunityAdapter != null) {
            masterSearchResultCommunityAdapter.resetList();
        }
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
        if (aminoIdMatchedAdapter != null) {
            aminoIdMatchedAdapter.notifyKeyChange(this.curQueryKey);
        }
        SectionHeaderAdapter sectionHeaderAdapter = this.searchKeywordHeaderAdapter;
        if (sectionHeaderAdapter != null) {
            sectionHeaderAdapter.notifyDataSetChanged();
        }
        if (this.myCommunityRecycler == null || !isAdded()) {
            return;
        }
        this.userJoinedCommunityList = new ArrayList();
        this.users.clear();
        this.myCommunityRecycler.notifyDataSetChanged();
        this.myCommunityRecycler.refresh(0, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVListFragment
    public void updateViews() {
        View view = this.emptyView;
        if (view != null) {
            View viewFindViewById = view.findViewById(R.id.current_language);
            View viewFindViewById2 = this.emptyView.findViewById(R.id.empty_text);
            if (viewFindViewById instanceof TextView) {
                ((TextView) viewFindViewById).setText(this.languageManager.getLocalDisplayText(this.languageService.getLanguageShowCode()));
            }
            if (viewFindViewById2 instanceof TextView) {
                ((TextView) viewFindViewById2).setTextColor(-1);
            }
        }
        super.updateViews();
    }

    @Override // com.narvii.community.search.BaseSearchListFragment
    protected void setUpEmptyView() {
        setEmptyView(R.layout.incubator_search_result_empty_view).findViewById(R.id.language_switcher).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.CommunitySearchListFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommunitySearchListFragment.this.showLanguageChooseDialog();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLanguageChooseDialog() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("community-collection/supported-languages").global().param(TtmlNode.START, 0).param("size", 100).build(), new ApiResponseListener<SupportLanguageResponse>(SupportLanguageResponse.class) { // from class: com.narvii.master.CommunitySearchListFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, SupportLanguageResponse supportLanguageResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) supportLanguageResponse);
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
                CommunitySearchListFragment communitySearchListFragment = CommunitySearchListFragment.this;
                final LanguageChooseDialog languageChooseDialog = new LanguageChooseDialog(communitySearchListFragment, supportLanguageResponse.supportedLanguages, communitySearchListFragment.getCurSearchLanguage());
                languageChooseDialog.setOnItemClickListener(new LanguageChooseDialog.ItemClickListener() { // from class: com.narvii.master.CommunitySearchListFragment.4.1
                    @Override // com.narvii.incubator.LanguageChooseDialog.ItemClickListener
                    public void onItemClick(LanguageSpec languageSpec) {
                        MyMergeAdapter myMergeAdapter;
                        if (languageChooseDialog.isShowing()) {
                            languageChooseDialog.dismiss();
                        }
                        if (Utils.isEqualsNotNull(CommunitySearchListFragment.this.languageService.languageUserSelected(), languageSpec.code)) {
                            return;
                        }
                        ((BaseSearchListFragment) CommunitySearchListFragment.this).searchLanguage = languageSpec.code;
                        CommunitySearchListFragment communitySearchListFragment2 = CommunitySearchListFragment.this;
                        communitySearchListFragment2.languageService.saveLanguageCode(((BaseSearchListFragment) communitySearchListFragment2).searchLanguage);
                        MasterTrendingCommunityAdapter masterTrendingCommunityAdapter = CommunitySearchListFragment.this.trendingCommunityAdapter;
                        if (masterTrendingCommunityAdapter != null) {
                            masterTrendingCommunityAdapter.refresh(0, null);
                        }
                        if (TextUtils.isEmpty(((BaseSearchListFragment) CommunitySearchListFragment.this).curQueryKey) || (myMergeAdapter = CommunitySearchListFragment.this.mergeAdapter) == null) {
                            return;
                        }
                        myMergeAdapter.notifyDataSetChanged();
                        CommunitySearchListFragment.this.mergeAdapter.refresh(0, null);
                    }
                });
                languageChooseDialog.show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(CommunitySearchListFragment.this.getContext(), str, 1).show();
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            }
        });
    }
}
