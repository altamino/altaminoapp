package com.narvii.master.search;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.feed.HeadLinesListAdapter;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.OnItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.logging.Impression.FlowLayoutImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.master.HeadlineDividerAdapter;
import com.narvii.master.search.history.SearchHistoryDelegate;
import com.narvii.master.search.model.AllSearchResultResponse;
import com.narvii.master.search.model.GlobalSearchResultSection;
import com.narvii.master.search.trending.FlowLayoutAdapter;
import com.narvii.master.search.trending.SectionHeaderAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.TopicSuggestResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.nvplayer.delegate.DiscoverVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.search.SwitchSearchListener;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListAdapter;
import com.narvii.story.StoryListFragment;
import com.narvii.story.widgets.StoryCardView;
import com.narvii.story.widgets.StoryTopicView;
import com.narvii.util.Callback;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.SearchBar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: GlobalSearchOthersResultFragment.kt */
/* loaded from: classes3.dex */
public final class GlobalSearchOthersResultFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener, ChangeSearchTextRegister {
    private HashMap _$_findViewCache;
    public AminoIdMatchedAdapter aminoIdMatchedAdapter;
    private ApiRequest apiRequest;
    private ApiService apiService;
    private ChangeSearchTextListener changeSearchTextListener;
    private ContentLanguageService contentLanguageService;
    private String curKey;
    private String errorMsg;
    private MyMergerAdapter mergeAdapter;
    public PostSectionAdapter postSectionAdapter;
    private boolean requestSent;
    private String responseTime;
    private SearchHistoryDelegate searchHistoryDelegate;
    public StorySectionAdapter storySectionAdapter;
    private TopicSectionAdapter topicSectionAdapter;

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    public interface MoreSearchResultHost {
        boolean hasMoreResult();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Others";
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    /* renamed from: com.narvii.master.search.GlobalSearchOthersResultFragment$onCreate$2, reason: invalid class name */
    static final /* synthetic */ class AnonymousClass2 extends FunctionReference implements Function0<Boolean> {
        AnonymousClass2(GlobalSearchOthersResultFragment globalSearchOthersResultFragment) {
            super(0, globalSearchOthersResultFragment);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public final String getName() {
            return "showSearchHistory";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(GlobalSearchOthersResultFragment.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public final String getSignature() {
            return "showSearchHistory()Z";
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(invoke2());
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final boolean invoke2() {
            return ((GlobalSearchOthersResultFragment) this.receiver).showSearchHistory();
        }
    }

    public static final /* synthetic */ ApiService access$getApiService$p(GlobalSearchOthersResultFragment globalSearchOthersResultFragment) {
        ApiService apiService = globalSearchOthersResultFragment.apiService;
        if (apiService != null) {
            return apiService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("apiService");
        throw null;
    }

    public static final /* synthetic */ ContentLanguageService access$getContentLanguageService$p(GlobalSearchOthersResultFragment globalSearchOthersResultFragment) {
        ContentLanguageService contentLanguageService = globalSearchOthersResultFragment.contentLanguageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("contentLanguageService");
        throw null;
    }

    public final String getResponseTime() {
        return this.responseTime;
    }

    public final void setResponseTime(String str) {
        this.responseTime = str;
    }

    public final MyMergerAdapter getMergeAdapter() {
        return this.mergeAdapter;
    }

    public final void setMergeAdapter(MyMergerAdapter myMergerAdapter) {
        this.mergeAdapter = myMergerAdapter;
    }

    public final StorySectionAdapter getStorySectionAdapter() {
        StorySectionAdapter storySectionAdapter = this.storySectionAdapter;
        if (storySectionAdapter != null) {
            return storySectionAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("storySectionAdapter");
        throw null;
    }

    public final void setStorySectionAdapter(StorySectionAdapter storySectionAdapter) {
        Intrinsics.checkParameterIsNotNull(storySectionAdapter, "<set-?>");
        this.storySectionAdapter = storySectionAdapter;
    }

    public final PostSectionAdapter getPostSectionAdapter() {
        PostSectionAdapter postSectionAdapter = this.postSectionAdapter;
        if (postSectionAdapter != null) {
            return postSectionAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("postSectionAdapter");
        throw null;
    }

    public final void setPostSectionAdapter(PostSectionAdapter postSectionAdapter) {
        Intrinsics.checkParameterIsNotNull(postSectionAdapter, "<set-?>");
        this.postSectionAdapter = postSectionAdapter;
    }

    public final AminoIdMatchedAdapter getAminoIdMatchedAdapter() {
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
        if (aminoIdMatchedAdapter != null) {
            return aminoIdMatchedAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("aminoIdMatchedAdapter");
        throw null;
    }

    public final void setAminoIdMatchedAdapter(AminoIdMatchedAdapter aminoIdMatchedAdapter) {
        Intrinsics.checkParameterIsNotNull(aminoIdMatchedAdapter, "<set-?>");
        this.aminoIdMatchedAdapter = aminoIdMatchedAdapter;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_global_all_search, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView list, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        super.onListViewCreated(list, bundle);
        list.setDivider(null);
        list.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        sendRequest();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        Object service = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"content_language\")");
        this.contentLanguageService = (ContentLanguageService) service;
        Object service2 = getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"api\")");
        this.apiService = (ApiService) service2;
        this.searchHistoryDelegate = new SearchHistoryDelegate(this, SearchPrefsHelper.PREFS_KEY_OTHERS);
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        if (searchHistoryDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
            throw null;
        }
        searchHistoryDelegate.setOnSearchHistory(new Function1<String, Unit>() { // from class: com.narvii.master.search.GlobalSearchOthersResultFragment.onCreate.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String text) {
                Intrinsics.checkParameterIsNotNull(text, "text");
                ChangeSearchTextListener changeSearchTextListener = GlobalSearchOthersResultFragment.this.changeSearchTextListener;
                if (changeSearchTextListener != null) {
                    changeSearchTextListener.changeSearchText(text, true);
                }
                GlobalSearchOthersResultFragment.this.onSearch(null, text);
            }
        });
        SearchHistoryDelegate searchHistoryDelegate2 = this.searchHistoryDelegate;
        if (searchHistoryDelegate2 != null) {
            searchHistoryDelegate2.setShowSearchHistory(new AnonymousClass2(this));
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
            throw null;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        sendRequest();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MyMergerAdapter(this, this);
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        if (searchHistoryDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
            throw null;
        }
        searchHistoryDelegate.addSearchHistoryAdapters(this.mergeAdapter);
        SectionHeaderAdapter sectionHeaderAdapter = new SectionHeaderAdapter(this, R.string.search_trending_topics);
        TrendingTopicAdapter trendingTopicAdapter = new TrendingTopicAdapter(this, this);
        sectionHeaderAdapter.setHost$Amino_bundle(trendingTopicAdapter);
        MyMergerAdapter myMergerAdapter = this.mergeAdapter;
        if (myMergerAdapter != null) {
            myMergerAdapter.addAdapter(sectionHeaderAdapter);
        }
        MyMergerAdapter myMergerAdapter2 = this.mergeAdapter;
        if (myMergerAdapter2 != null) {
            myMergerAdapter2.addAdapter(trendingTopicAdapter);
        }
        SectionHeaderAdapter sectionHeaderAdapter2 = new SectionHeaderAdapter(this, R.string.search_trending_stories);
        TrendingStoryAdapter trendingStoryAdapter = new TrendingStoryAdapter(this, this);
        sectionHeaderAdapter2.setHost$Amino_bundle(trendingStoryAdapter);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 4.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt);
        divideColumnAdapter.recyclerItem = true;
        divideColumnAdapter.setAdapter(trendingStoryAdapter, 2);
        MyMergerAdapter myMergerAdapter3 = this.mergeAdapter;
        if (myMergerAdapter3 != null) {
            myMergerAdapter3.addAdapter(sectionHeaderAdapter2);
        }
        MyMergerAdapter myMergerAdapter4 = this.mergeAdapter;
        if (myMergerAdapter4 != null) {
            myMergerAdapter4.addAdapter(divideColumnAdapter);
        }
        this.aminoIdMatchedAdapter = new AminoIdMatchedAdapter(this);
        MyMergerAdapter myMergerAdapter5 = this.mergeAdapter;
        if (myMergerAdapter5 != null) {
            AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
            if (aminoIdMatchedAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("aminoIdMatchedAdapter");
                throw null;
            }
            myMergerAdapter5.addAdapter(aminoIdMatchedAdapter);
        }
        SectionHeaderAdapter sectionHeaderAdapter3 = new SectionHeaderAdapter(this, R.string.topic_s);
        this.topicSectionAdapter = new TopicSectionAdapter(this, this);
        TopicSectionAdapter topicSectionAdapter = this.topicSectionAdapter;
        if (topicSectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("topicSectionAdapter");
            throw null;
        }
        sectionHeaderAdapter3.setAttachHost(topicSectionAdapter);
        MyDividerAdapter myDividerAdapter = new MyDividerAdapter(this);
        TopicSectionAdapter topicSectionAdapter2 = this.topicSectionAdapter;
        if (topicSectionAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("topicSectionAdapter");
            throw null;
        }
        myDividerAdapter.setAdapter(topicSectionAdapter2);
        MyMergerAdapter myMergerAdapter6 = this.mergeAdapter;
        if (myMergerAdapter6 != null) {
            myMergerAdapter6.addAdapter(sectionHeaderAdapter3);
        }
        MyMergerAdapter myMergerAdapter7 = this.mergeAdapter;
        if (myMergerAdapter7 != null) {
            myMergerAdapter7.addAdapter(myDividerAdapter);
        }
        SectionHeaderAdapter sectionHeaderAdapter4 = new SectionHeaderAdapter(this, R.string.stories);
        this.storySectionAdapter = new StorySectionAdapter(this, this);
        int iDpToPxInt2 = Utils.dpToPxInt(getContext(), 10.0f);
        DivideColumnAdapter divideColumnAdapter2 = new DivideColumnAdapter(this, iDpToPxInt2, iDpToPxInt2);
        StorySectionAdapter storySectionAdapter = this.storySectionAdapter;
        if (storySectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storySectionAdapter");
            throw null;
        }
        divideColumnAdapter2.setAdapter(storySectionAdapter, 2);
        sectionHeaderAdapter4.setAttachHost(divideColumnAdapter2);
        MyMergerAdapter myMergerAdapter8 = this.mergeAdapter;
        if (myMergerAdapter8 != null) {
            myMergerAdapter8.addAdapter(sectionHeaderAdapter4);
        }
        MyMergerAdapter myMergerAdapter9 = this.mergeAdapter;
        if (myMergerAdapter9 != null) {
            myMergerAdapter9.addAdapter(divideColumnAdapter2);
        }
        SimpleSearchSectionAdapter simpleSearchSectionAdapter = new SimpleSearchSectionAdapter(this, 2, true, false, 4, null);
        StorySectionAdapter storySectionAdapter2 = this.storySectionAdapter;
        if (storySectionAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storySectionAdapter");
            throw null;
        }
        simpleSearchSectionAdapter.setAttachHost(storySectionAdapter2);
        MyMergerAdapter myMergerAdapter10 = this.mergeAdapter;
        if (myMergerAdapter10 != null) {
            myMergerAdapter10.addAdapter(simpleSearchSectionAdapter);
        }
        SectionHeaderAdapter sectionHeaderAdapter5 = new SectionHeaderAdapter(this, R.string.posts);
        HeadlineDividerAdapter headlineDividerAdapter = new HeadlineDividerAdapter(this);
        this.postSectionAdapter = new PostSectionAdapter(this, this);
        PostSectionAdapter postSectionAdapter = this.postSectionAdapter;
        if (postSectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("postSectionAdapter");
            throw null;
        }
        headlineDividerAdapter.setAdapter(postSectionAdapter);
        PostSectionAdapter postSectionAdapter2 = this.postSectionAdapter;
        if (postSectionAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("postSectionAdapter");
            throw null;
        }
        sectionHeaderAdapter5.setAttachHost(postSectionAdapter2);
        MyMergerAdapter myMergerAdapter11 = this.mergeAdapter;
        if (myMergerAdapter11 != null) {
            myMergerAdapter11.addAdapter(sectionHeaderAdapter5);
        }
        MyMergerAdapter myMergerAdapter12 = this.mergeAdapter;
        if (myMergerAdapter12 != null) {
            myMergerAdapter12.addAdapter(headlineDividerAdapter);
        }
        SimpleSearchSectionAdapter simpleSearchSectionAdapter2 = new SimpleSearchSectionAdapter(this, 4, true, false, 4, null);
        PostSectionAdapter postSectionAdapter3 = this.postSectionAdapter;
        if (postSectionAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("postSectionAdapter");
            throw null;
        }
        simpleSearchSectionAdapter2.setAttachHost(postSectionAdapter3);
        MyMergerAdapter myMergerAdapter13 = this.mergeAdapter;
        if (myMergerAdapter13 != null) {
            myMergerAdapter13.addAdapter(simpleSearchSectionAdapter2);
        }
        return this.mergeAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest() {
        ApiRequest apiRequest = this.apiRequest;
        if (apiRequest != null) {
            ApiService apiService = this.apiService;
            if (apiService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("apiService");
                throw null;
            }
            apiService.abort(apiRequest);
        }
        if (TextUtils.isEmpty(this.curKey)) {
            MyMergerAdapter myMergerAdapter = this.mergeAdapter;
            if (myMergerAdapter != null) {
                myMergerAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        this.requestSent = false;
        MyMergerAdapter myMergerAdapter2 = this.mergeAdapter;
        if (myMergerAdapter2 != null) {
            myMergerAdapter2.notifyDataSetChanged();
        }
        ApiRequest.Builder builderParam = new ApiRequest.Builder().global().path("/search/others").param("q", this.curKey).param("searchId", SearchUtils.getSearchId(this)).param("ignoreMembership", 1);
        ContentLanguageService contentLanguageService = this.contentLanguageService;
        if (contentLanguageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentLanguageService");
            throw null;
        }
        this.apiRequest = builderParam.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService.getRequestPrefLanguageWithLocalAsDefault()).build();
        ApiService apiService2 = this.apiService;
        if (apiService2 != null) {
            apiService2.exec(this.apiRequest, new ApiResponseListener<AllSearchResultResponse>(AllSearchResultResponse.class) { // from class: com.narvii.master.search.GlobalSearchOthersResultFragment.sendRequest.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest req, AllSearchResultResponse resp) throws Exception {
                    Intrinsics.checkParameterIsNotNull(req, "req");
                    Intrinsics.checkParameterIsNotNull(resp, "resp");
                    super.onFinish(req, (ApiRequest) resp);
                    GlobalSearchOthersResultFragment.this.apiRequest = null;
                    GlobalSearchOthersResultFragment.this.requestSent = true;
                    GlobalSearchOthersResultFragment.this.setResponseTime(resp.timestamp);
                    GlobalSearchOthersResultFragment.this.onRequestFinish(resp);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest req, int i, List<? extends NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Intrinsics.checkParameterIsNotNull(req, "req");
                    super.onFail(req, i, list, str, apiResponse, th);
                    GlobalSearchOthersResultFragment.this.errorMsg = str;
                    GlobalSearchOthersResultFragment.this.requestSent = true;
                    MyMergerAdapter mergeAdapter = GlobalSearchOthersResultFragment.this.getMergeAdapter();
                    if (mergeAdapter != null) {
                        mergeAdapter.notifyDataSetChanged();
                    }
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("apiService");
            throw null;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected String emptyMessage() {
        String string = getString(R.string.normal_empty_list);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.normal_empty_list)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRequestFinish(AllSearchResultResponse allSearchResultResponse) {
        if (allSearchResultResponse == null || !isAdded()) {
            return;
        }
        HashMap map = new HashMap();
        List<GlobalSearchResultSection> list = allSearchResultResponse.sectionList;
        if (list != null) {
            for (GlobalSearchResultSection section : list) {
                String str = section.sectionType;
                if (str != null) {
                    Intrinsics.checkExpressionValueIsNotNull(str, "section.sectionType");
                    Intrinsics.checkExpressionValueIsNotNull(section, "section");
                    map.put(str, section);
                }
            }
        }
        TopicSectionAdapter topicSectionAdapter = this.topicSectionAdapter;
        if (topicSectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("topicSectionAdapter");
            throw null;
        }
        topicSectionAdapter.setSection((GlobalSearchResultSection) map.get(GlobalSearchResultSection.SECTION_TYPE_TOPIC));
        StorySectionAdapter storySectionAdapter = this.storySectionAdapter;
        if (storySectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storySectionAdapter");
            throw null;
        }
        storySectionAdapter.setSection((GlobalSearchResultSection) map.get("STORY"));
        PostSectionAdapter postSectionAdapter = this.postSectionAdapter;
        if (postSectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("postSectionAdapter");
            throw null;
        }
        postSectionAdapter.setSection((GlobalSearchResultSection) map.get(GlobalSearchResultSection.SECTION_TYPE_POST));
        MyMergerAdapter myMergerAdapter = this.mergeAdapter;
        if (myMergerAdapter != null) {
            myMergerAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(String str) {
        if (Utils.isStringEquals(str, this.curKey)) {
            return;
        }
        if (str != null) {
            if (!(str.length() == 0) && !StringUtils.isTrimEmpty(str)) {
                SearchUtils.logSwitchSearch(this, str);
                onSearch(null, str);
                return;
            }
        }
        onTextChanged(null, null);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        if (TextUtils.isEmpty(str)) {
            this.curKey = null;
            sendRequest();
            AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
            if (aminoIdMatchedAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("aminoIdMatchedAdapter");
                throw null;
            }
            aminoIdMatchedAdapter.notifyKeyChange(null);
            MyMergerAdapter myMergerAdapter = this.mergeAdapter;
            if (myMergerAdapter != null) {
                myMergerAdapter.notifyDataSetChanged();
            }
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String text) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        searchText(text);
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        if (searchHistoryDelegate != null) {
            searchHistoryDelegate.addSearchHistory(text);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
            throw null;
        }
    }

    private final void searchText(String str) {
        if (Utils.isStringEquals(str, this.curKey)) {
            return;
        }
        if (str == null) {
            str = "";
        }
        this.curKey = str;
        sendRequest();
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
        if (aminoIdMatchedAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("aminoIdMatchedAdapter");
            throw null;
        }
        aminoIdMatchedAdapter.notifyKeyChange(this.curKey);
        MyMergerAdapter myMergerAdapter = this.mergeAdapter;
        if (myMergerAdapter != null) {
            myMergerAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.master.search.ChangeSearchTextRegister
    public void setChangeSearchTextListener(ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
    }

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    public static final class MyDividerAdapter extends DividerAdapter {
        @Override // com.narvii.list.DividerAdapter
        protected int getDividerLayoutId() {
            return R.layout.list_divider_padding;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyDividerAdapter(NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        }
    }

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    public final class MyMergerAdapter extends MergeAdapter {
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyMergerAdapter(GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public String errorMessage() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return null;
            }
            return this.this$0.errorMsg;
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public void onErrorRetry() {
            this.this$0.errorMsg = null;
            this.this$0.sendRequest();
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            super.refresh(i, callback);
            this.this$0.sendRequest();
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return true;
            }
            return (getTotalCount() != 0 || this.this$0.getAminoIdMatchedAdapter().isRequestFinished) && this.this$0.requestSent && TextUtils.isEmpty(this.this$0.errorMsg);
        }

        @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return !TextUtils.isEmpty(this.this$0.curKey) && getTotalCount() == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean showSearchHistory() {
        return TextUtils.isEmpty(this.curKey);
    }

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    private class BaseSearchTopicAdapter extends FlowLayoutAdapter<StoryTopic> {
        private final StoryTopicView.OnPreClickListener preClickListener;
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseSearchTopicAdapter(GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
            this.preClickListener = new StoryTopicView.OnPreClickListener() { // from class: com.narvii.master.search.GlobalSearchOthersResultFragment$BaseSearchTopicAdapter$preClickListener$1
                @Override // com.narvii.story.widgets.StoryTopicView.OnPreClickListener
                public final void onPreClick(StoryTopicView storyTopicView, StoryTopic storyTopic) {
                    LogEvent.clickBuilder(this.this$0, ActSemantic.checkDetail).object(storyTopic).send();
                }
            };
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new FlowLayoutImpressionCollector(StoryTopic.class, R.id.flow_layout));
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        public View createChildView(ViewGroup parent) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View viewInflate = this.inflater.inflate(R.layout.global_search_story_topic_view_layout, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "inflater.inflate(R.layou…ew_layout, parent, false)");
            return viewInflate;
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        public void updateChildView(StoryTopic data, View view) {
            Intrinsics.checkParameterIsNotNull(data, "data");
            Intrinsics.checkParameterIsNotNull(view, "view");
            StoryTopicView storyTopicView = (StoryTopicView) view;
            view.setClickable(true);
            storyTopicView.setOnPreClickListener(this.preClickListener);
            storyTopicView.setTopic(data);
            LogUtils.setAttachedObject(view, data);
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        protected void updateFlowLayout(NVFlowLayout cell) {
            Intrinsics.checkParameterIsNotNull(cell, "cell");
            int iDpToPxInt = Utils.dpToPxInt(getContext(), 5.0f);
            cell.setPadding(iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt * 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GlobalSearchOthersResultFragment.kt */
    final class TrendingTopicAdapter extends BaseSearchTopicAdapter {
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "TrendingTopics";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TrendingTopicAdapter(GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(globalSearchOthersResultFragment, ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
        }

        @Override // com.narvii.master.search.GlobalSearchOthersResultFragment.BaseSearchTopicAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendTopicReq();
        }

        private final void sendTopicReq() {
            final Class<TopicSuggestResponse> cls = TopicSuggestResponse.class;
            GlobalSearchOthersResultFragment.access$getApiService$p(this.this$0).exec(ApiRequest.builder().path("/topic/trending").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, GlobalSearchOthersResultFragment.access$getContentLanguageService$p(this.this$0).getRequestPrefLanguageWithLocalAsDefault()).build(), new ApiResponseListener<TopicSuggestResponse>(cls) { // from class: com.narvii.master.search.GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, TopicSuggestResponse topicSuggestResponse) throws Exception {
                    List<StoryTopic> list;
                    super.onFinish(apiRequest, (ApiRequest) topicSuggestResponse);
                    this.this$0.getList().clear();
                    if (topicSuggestResponse != null && (list = topicSuggestResponse.topicList) != null) {
                        this.this$0.getList().addAll(list);
                    }
                    this.this$0.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    this.this$0.getList().clear();
                    this.this$0.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            if (this.this$0.showSearchHistory()) {
                return super.getCount();
            }
            return 0;
        }
    }

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    private final class TrendingStoryAdapter extends StoryListAdapter {
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        @Override // com.narvii.story.StoryListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "TrendingStories";
        }

        @Override // com.narvii.story.StoryListAdapter
        protected boolean showCommentBarInDetailPage() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TrendingStoryAdapter(GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(ctx, -1, "trending-list");
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
            this.playerSource = StoryApi.TRENDING_PLAYER;
        }

        @Override // com.narvii.story.StoryListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("/feed/story");
            builder.param("type", "trending-list");
            builder.param("v", StoryApi.STORY_VERSION);
            builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, GlobalSearchOthersResultFragment.access$getContentLanguageService$p(this.this$0).getRequestPrefLanguageWithLocalAsDefault());
            ApiRequest apiRequestBuild = builder.build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "builder.build()");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            int count = super.getCount();
            if (count > 0) {
                Object item = getItem(0);
                if (Intrinsics.areEqual(item, NVPagedAdapter.ERROR) || Intrinsics.areEqual(item, NVPagedAdapter.LOADING)) {
                    return 0;
                }
            }
            if (this.this$0.showSearchHistory()) {
                return count;
            }
            return 0;
        }
    }

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    private final class TopicSectionAdapter extends BaseSearchTopicAdapter {
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "TopicsSearchResult";
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        protected boolean hasMoreButton() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicSectionAdapter(GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(globalSearchOthersResultFragment, ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
        }

        public final void setSection(GlobalSearchResultSection globalSearchResultSection) {
            ArrayList<NVObject> arrayList;
            if (globalSearchResultSection == null || (arrayList = globalSearchResultSection.resultList) == null) {
                arrayList = new ArrayList<>();
            }
            if (arrayList == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.model.story.StoryTopic> /* = java.util.ArrayList<com.narvii.model.story.StoryTopic> */");
            }
            setList(arrayList);
            notifyDataSetChanged();
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        protected View createMoreButton(NVFlowLayout flowLayout) {
            Intrinsics.checkParameterIsNotNull(flowLayout, "flowLayout");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.global_search_topic_more, (ViewGroup) flowLayout, false);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.GlobalSearchOthersResultFragment$TopicSectionAdapter$createMoreButton$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.this$0.logClickEvent(ActSemantic.listViewEnter);
                    Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
                    intent.putExtra("section_type", 4);
                    intent.putExtra("search_key", this.this$0.this$0.curKey);
                    this.this$0.startActivity(intent);
                }
            });
            return viewInflate;
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return 0;
            }
            return super.getCount();
        }
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    public final class PostSectionAdapter extends HeadLinesListAdapter implements MoreSearchResultHost {
        private GlobalSearchResultSection storySection;
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return null;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "PostSearchResult";
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected boolean showAllLike() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PostSectionAdapter(GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
        }

        public final GlobalSearchResultSection getStorySection() {
            return this.storySection;
        }

        public final void setStorySection(GlobalSearchResultSection globalSearchResultSection) {
            this.storySection = globalSearchResultSection;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            this._isEnd = true;
            notifyDataSetChanged();
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected String getCommunityTimestamp(int i) {
            return this.this$0.getResponseTime();
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x000b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void setSection(com.narvii.master.search.model.GlobalSearchResultSection r3) {
            /*
                r2 = this;
                r2.storySection = r3
                com.narvii.master.search.model.GlobalSearchResultSection r3 = r2.storySection
                if (r3 == 0) goto Lb
                java.util.ArrayList<com.narvii.model.NVObject> r3 = r3.resultList
                if (r3 == 0) goto Lb
                goto L10
            Lb:
                java.util.ArrayList r3 = new java.util.ArrayList
                r3.<init>()
            L10:
                if (r3 == 0) goto L47
                r2._list = r3
                com.narvii.master.search.model.GlobalSearchResultSection r3 = r2.storySection
                r0 = 0
                if (r3 == 0) goto L1c
                java.util.HashMap<java.lang.Integer, com.narvii.model.Community> r3 = r3.communityInfoMapping
                goto L1d
            L1c:
                r3 = r0
            L1d:
                r2.setFeedRelatedCommunityList(r3)
                com.narvii.master.search.model.GlobalSearchResultSection r3 = r2.storySection
                if (r3 == 0) goto L27
                java.util.HashMap<java.lang.Integer, com.narvii.model.User> r3 = r3.userProfileMapping
                goto L28
            L27:
                r3 = r0
            L28:
                r2.setUserProgfileMapping(r3)
                com.narvii.headlines.HeadlineLaunchHelper r3 = r2.launchHelper()
                if (r3 == 0) goto L40
                com.narvii.master.search.model.GlobalSearchResultSection r1 = r2.storySection
                if (r1 == 0) goto L37
                java.util.HashMap<java.lang.Integer, com.narvii.model.Community> r0 = r1.communityInfoMapping
            L37:
                com.narvii.master.search.GlobalSearchOthersResultFragment r1 = r2.this$0
                java.lang.String r1 = r1.getResponseTime()
                r3.setCommunityMap(r0, r1)
            L40:
                r3 = 1
                r2._isEnd = r3
                r2.notifyDataSetChanged()
                return
            L47:
                kotlin.TypeCastException r3 = new kotlin.TypeCastException
            */
            //  java.lang.String r0 = "null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.model.Feed> /* = java.util.ArrayList<com.narvii.model.Feed> */"
            /*
                r3.<init>(r0)
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.search.GlobalSearchOthersResultFragment.PostSectionAdapter.setSection(com.narvii.master.search.model.GlobalSearchResultSection):void");
        }

        @Override // com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost
        public boolean hasMoreResult() {
            GlobalSearchResultSection globalSearchResultSection = this.storySection;
            return (globalSearchResultSection != null ? globalSearchResultSection.hitsTotal : 0) > 4;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, final Object item, View view, View view2) {
            Intrinsics.checkParameterIsNotNull(item, "item");
            if (view2 != null && view2.getId() == R.id.headline_feed_options) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                Object service = getService("affiliations");
                Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"affiliations\")");
                ((AffiliationsService) service).contains(((Feed) item).ndcId);
                actionSheetDialog.addItem(R.string.flag_for_review, 0);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.master.search.GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        if (this.this$0.shouldShowDownloadMasterDialog(((Feed) item).ndcId)) {
                            return;
                        }
                        new FlagReportOptionDialog.Builder(((NVAdapter) this.this$0).context).nvObject((NVObject) item).build().show();
                    }
                });
                actionSheetDialog.show();
                return true;
            }
            if (item instanceof Blog) {
                Blog blog = (Blog) item;
                if (blog.type == 9 && ((view2 != null && view2.getId() == R.id.image) || (view2 == null && blog.ndcId == 0))) {
                    Feed feed = (Feed) item;
                    new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view2, new StoryListFragment.IntentBuilder(feed).showCommentBar(true).source(StoryApi.GLOBAL_SEARCH_PLAYER).searchKeyWord(this.this$0.curKey).initFeedCommunity(getCommunityInfo(blog.getPublishNdcId())).forceVideoAutoPlay(true).build());
                    logFeedClickEvent(feed);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, item, view, view2);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        public Intent getStoryDetailPageIntent(Blog blog) {
            return new StoryListFragment.IntentBuilder(blog).showCommentBar(showCommentBarInStoryDetail()).source(StoryApi.GLOBAL_SEARCH_PLAYER).searchKeyWord(this.this$0.curKey).forceVideoAutoPlay(true).build();
        }
    }

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    public final class StorySectionAdapter extends NVArrayAdapter<Blog> implements MoreSearchResultHost {
        private GlobalSearchResultSection storySection;
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "StoriesSearchResult";
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StorySectionAdapter(GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(ctx, Blog.class);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
        }

        public final GlobalSearchResultSection getStorySection() {
            return this.storySection;
        }

        public final void setStorySection(GlobalSearchResultSection globalSearchResultSection) {
            this.storySection = globalSearchResultSection;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Blog blog = (Blog) getItem(i);
            if (blog == null || blog.type != 9) {
                return null;
            }
            View viewCreateView = createView(R.layout.item_cell_general_story_module_related, viewGroup, view);
            StoryCardView storyCardView = (StoryCardView) viewCreateView.findViewById(R.id.story_layout);
            storyCardView.setStory((Blog) getItem(i));
            storyCardView.setOnClickListener(this.subviewClickListener);
            tagCellForLog(viewCreateView, blog);
            NVVideoListDelegate.markVideoCell((View) storyCardView, R.id.img, blog.isContentAccessible() ? blog.getPreviewVideoList(false) : new ArrayList<>(), (blog.getFeedPreviewMediaList() == null || blog.getFeedPreviewMediaList().size() <= 0) ? null : blog.getFeedPreviewMediaList().get(0), (NVObject) blog, 1, false);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(Blog.class));
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter adapter, int i, Object item, View view, View view2) {
            int publishNdcId;
            HashMap<Integer, User> map;
            HashMap<Integer, Community> map2;
            Intrinsics.checkParameterIsNotNull(adapter, "adapter");
            Intrinsics.checkParameterIsNotNull(item, "item");
            logClickEvent(item, ActSemantic.checkDetail);
            Blog blog = getItem(i);
            if (blog.type == 9) {
                Intrinsics.checkExpressionValueIsNotNull(blog, "blog");
                publishNdcId = blog.getPublishNdcId();
            } else {
                publishNdcId = blog.ndcId;
            }
            GlobalSearchResultSection globalSearchResultSection = this.storySection;
            User user = null;
            Community community = (globalSearchResultSection == null || (map2 = globalSearchResultSection.communityInfoMapping) == null) ? null : map2.get(Integer.valueOf(publishNdcId));
            GlobalSearchResultSection globalSearchResultSection2 = this.storySection;
            if (globalSearchResultSection2 != null && (map = globalSearchResultSection2.userProfileMapping) != null) {
                user = map.get(Integer.valueOf(publishNdcId));
            }
            new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view, new StoryListFragment.IntentBuilder(blog).initFeedCommunity(community).source(StoryApi.GLOBAL_SEARCH_PLAYER).searchKeyWord(this.this$0.curKey).forceVideoAutoPlay(true).initFeedUser(user).build());
            return true;
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return 0;
            }
            return super.getCount();
        }

        public final void setSection(GlobalSearchResultSection globalSearchResultSection) {
            ArrayList<NVObject> arrayList;
            this.storySection = globalSearchResultSection;
            GlobalSearchResultSection globalSearchResultSection2 = this.storySection;
            if (globalSearchResultSection2 == null || (arrayList = globalSearchResultSection2.resultList) == null) {
                arrayList = new ArrayList<>();
            }
            if (arrayList == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.model.Blog> /* = java.util.ArrayList<com.narvii.model.Blog> */");
            }
            setList(arrayList);
        }

        @Override // com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost
        public boolean hasMoreResult() {
            GlobalSearchResultSection globalSearchResultSection = this.storySection;
            return (globalSearchResultSection != null ? globalSearchResultSection.hitsTotal : 0) > 4;
        }
    }

    /* compiled from: GlobalSearchOthersResultFragment.kt */
    public final class SimpleSearchSectionAdapter extends AdriftAdapter {
        private NVAdapter host;
        private final int sectionType;
        private final boolean showBottomDivider;
        private final boolean showTopDivider;

        @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return true;
        }

        public SimpleSearchSectionAdapter(int i, boolean z, boolean z2) {
            super(GlobalSearchOthersResultFragment.this);
            this.sectionType = i;
            this.showTopDivider = z;
            this.showBottomDivider = z2;
        }

        public final boolean getShowTopDivider() {
            return this.showTopDivider;
        }

        public /* synthetic */ SimpleSearchSectionAdapter(GlobalSearchOthersResultFragment globalSearchOthersResultFragment, int i, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2);
        }

        public final boolean getShowBottomDivider() {
            return this.showBottomDivider;
        }

        public final NVAdapter getHost$Amino_bundle() {
            return this.host;
        }

        public final void setHost$Amino_bundle(NVAdapter nVAdapter) {
            this.host = nVAdapter;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View cell = createView(R.layout.item_search_simple_section, viewGroup, view);
            TextView tvTitle = (TextView) cell.findViewById(R.id.title);
            Intrinsics.checkExpressionValueIsNotNull(tvTitle, "tvTitle");
            tvTitle.setText(getSectionTitle(this.sectionType));
            TextView tvKey = (TextView) cell.findViewById(R.id.search_key);
            Intrinsics.checkExpressionValueIsNotNull(tvKey, "tvKey");
            tvKey.setText(GlobalSearchOthersResultFragment.this.curKey == null ? "" : GlobalSearchOthersResultFragment.this.curKey);
            tvKey.setVisibility(this.host == null ? 0 : 4);
            View topDivider = cell.findViewById(R.id.top_divider);
            Intrinsics.checkExpressionValueIsNotNull(topDivider, "topDivider");
            topDivider.setVisibility(this.showTopDivider ? 0 : 8);
            View bottmDivider = cell.findViewById(R.id.bottom_divider);
            Intrinsics.checkExpressionValueIsNotNull(bottmDivider, "bottmDivider");
            bottmDivider.setVisibility(this.showBottomDivider ? 0 : 8);
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            return cell;
        }

        public final void setAttachHost(NVAdapter attachHost) {
            Intrinsics.checkParameterIsNotNull(attachHost, "attachHost");
            this.host = attachHost;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            int i = this.sectionType;
            if (i == 2) {
                return "StoriesSearchResult";
            }
            if (i == 3) {
                return "TopicSearchResult";
            }
            if (i != 4) {
                return null;
            }
            return "PostSearchResult";
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter adapter, int i, Object item, View cell, View view) {
            Intrinsics.checkParameterIsNotNull(adapter, "adapter");
            Intrinsics.checkParameterIsNotNull(item, "item");
            Intrinsics.checkParameterIsNotNull(cell, "cell");
            int i2 = this.sectionType;
            int i3 = i2 != 2 ? i2 != 3 ? i2 != 4 ? -1 : 5 : 4 : 3;
            if (i3 != -1 && (GlobalSearchOthersResultFragment.this.getParentFragment() instanceof GlobalSearchTabFragment)) {
                logClickEvent(ActSemantic.listViewEnter);
                Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
                intent.putExtra("section_type", i3);
                intent.putExtra("search_key", GlobalSearchOthersResultFragment.this.curKey);
                startActivity(intent);
                return true;
            }
            return super.onItemClick(adapter, i, item, cell, view);
        }

        public final String getSectionTitle(int i) {
            if (i == 2) {
                String string = GlobalSearchOthersResultFragment.this.getString(R.string.more_stories);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.more_stories)");
                return string;
            }
            if (i == 3) {
                String string2 = GlobalSearchOthersResultFragment.this.getString(R.string.more_topics);
                Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.more_topics)");
                return string2;
            }
            if (i != 4) {
                return "";
            }
            String string3 = GlobalSearchOthersResultFragment.this.getString(R.string.more_posts);
            Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.more_posts)");
            return string3;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(GlobalSearchOthersResultFragment.this.curKey)) {
                return 0;
            }
            OnItemClickListener onItemClickListener = this.host;
            if (onItemClickListener == null || !(onItemClickListener instanceof MoreSearchResultHost)) {
                return super.getCount();
            }
            if (onItemClickListener == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost");
            }
            if (!((MoreSearchResultHost) onItemClickListener).hasMoreResult()) {
                return 0;
            }
            NVAdapter nVAdapter = this.host;
            return (nVAdapter != null ? nVAdapter.getCount() : 0) > 0 ? 1 : 0;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new DiscoverVideoListDelegate(this, getActivity());
    }
}
