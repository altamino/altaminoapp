package com.narvii.master.search;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.global.CategoryThreadResponse;
import com.narvii.chat.global.GlobalChatListAdapter;
import com.narvii.chat.thread.MyThreadListAdapter;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.OnItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.search.GlobalSearchOthersResultFragment;
import com.narvii.master.search.history.SearchHistoryDelegate;
import com.narvii.master.search.trending.SectionHeaderAdapter;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.search.SwitchSearchListener;
import com.narvii.util.Callback;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.SearchBar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: GlobalChatsSearchFragment.kt */
/* loaded from: classes3.dex */
public final class GlobalChatsSearchFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener, ChangeSearchTextRegister {
    private HashMap _$_findViewCache;
    private AminoIdMatchedAdapter aminoIdMatchedAdapter;
    private ApiService apiService;
    private ChangeSearchTextListener changeSearchTextListener;
    private Adapter chatAdapter;
    private ApiRequest chatApiRequest;
    private ChatSectionAdapter chatSectionAdapter;
    private ContentLanguageService contentLanguageService;
    private boolean hideMatchIdAdapter;
    private MergeAdapter mergeAdapter;
    private boolean requestSent;
    private SearchHistoryDelegate searchHistoryDelegate;
    private String curKey = "";
    private final HashMap<String, Community> communityMap = new HashMap<>();

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
        return "Chats";
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

    /* compiled from: GlobalChatsSearchFragment.kt */
    /* renamed from: com.narvii.master.search.GlobalChatsSearchFragment$onCreate$2, reason: invalid class name */
    static final /* synthetic */ class AnonymousClass2 extends FunctionReference implements Function0<Boolean> {
        AnonymousClass2(GlobalChatsSearchFragment globalChatsSearchFragment) {
            super(0, globalChatsSearchFragment);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public final String getName() {
            return "showSearchHistory";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(GlobalChatsSearchFragment.class);
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
            return ((GlobalChatsSearchFragment) this.receiver).showSearchHistory();
        }
    }

    public static final /* synthetic */ Adapter access$getChatAdapter$p(GlobalChatsSearchFragment globalChatsSearchFragment) {
        Adapter adapter = globalChatsSearchFragment.chatAdapter;
        if (adapter != null) {
            return adapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
        throw null;
    }

    public static final /* synthetic */ ChatSectionAdapter access$getChatSectionAdapter$p(GlobalChatsSearchFragment globalChatsSearchFragment) {
        ChatSectionAdapter chatSectionAdapter = globalChatsSearchFragment.chatSectionAdapter;
        if (chatSectionAdapter != null) {
            return chatSectionAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
        throw null;
    }

    public final AminoIdMatchedAdapter getAminoIdMatchedAdapter() {
        return this.aminoIdMatchedAdapter;
    }

    public final void setAminoIdMatchedAdapter(AminoIdMatchedAdapter aminoIdMatchedAdapter) {
        this.aminoIdMatchedAdapter = aminoIdMatchedAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        String stringParam = getStringParam("search_key");
        if (stringParam == null) {
            stringParam = "";
        }
        this.curKey = stringParam;
        Object service = getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"api\")");
        this.apiService = (ApiService) service;
        Object service2 = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"content_language\")");
        this.contentLanguageService = (ContentLanguageService) service2;
        this.searchHistoryDelegate = new SearchHistoryDelegate(this, "chat");
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        if (searchHistoryDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
            throw null;
        }
        searchHistoryDelegate.setOnSearchHistory(new Function1<String, Unit>() { // from class: com.narvii.master.search.GlobalChatsSearchFragment.onCreate.1
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
                ChangeSearchTextListener changeSearchTextListener = GlobalChatsSearchFragment.this.changeSearchTextListener;
                if (changeSearchTextListener != null) {
                    changeSearchTextListener.changeSearchText(text, true);
                }
                GlobalChatsSearchFragment.this.onSearch(null, text);
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

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(String str) {
        Adapter adapter = this.chatAdapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            throw null;
        }
        if (Utils.isStringEquals(str, adapter.getKeyword())) {
            return;
        }
        if (str == null || str.length() == 0) {
            onTextChanged(null, null);
            return;
        }
        SearchUtils.logSwitchSearch(this, str);
        searchText(str);
        if ((str.length() == 0) || StringUtils.isTrimEmpty(str)) {
            return;
        }
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        if (searchHistoryDelegate != null) {
            searchHistoryDelegate.addSearchHistory(str);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
            throw null;
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        if (TextUtils.isEmpty(str)) {
            Adapter adapter = this.chatAdapter;
            if (adapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
                throw null;
            }
            adapter.setKeyword(null);
            Adapter adapter2 = this.chatAdapter;
            if (adapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
                throw null;
            }
            adapter2.resetEmptyList();
            AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
            if (aminoIdMatchedAdapter != null) {
                aminoIdMatchedAdapter.notifyKeyChange(null);
            }
            this.curKey = "";
            ChatSectionAdapter chatSectionAdapter = this.chatSectionAdapter;
            if (chatSectionAdapter != null) {
                chatSectionAdapter.setSection(null);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
                throw null;
            }
        }
        Adapter adapter3 = this.chatAdapter;
        if (adapter3 != null) {
            adapter3.notifyDataSetChanged();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            throw null;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        sendRequest();
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        searchText(str);
        if (str != null) {
            if ((str.length() == 0) || StringUtils.isTrimEmpty(str)) {
                return;
            }
            SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
            if (searchHistoryDelegate != null) {
                searchHistoryDelegate.addSearchHistory(str);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean showSearchHistory() {
        return TextUtils.isEmpty(this.curKey);
    }

    @Override // com.narvii.list.NVListFragment
    protected String emptyMessage() {
        String string = getString(R.string.normal_empty_list);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.normal_empty_list)");
        return string;
    }

    public final void searchText(String str) {
        Adapter adapter = this.chatAdapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            throw null;
        }
        adapter.setKeyword(str == null || str.length() == 0 ? "" : str);
        Adapter adapter2 = this.chatAdapter;
        if (adapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            throw null;
        }
        adapter2.resetList();
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
        if (aminoIdMatchedAdapter != null) {
            aminoIdMatchedAdapter.notifyKeyChange(str);
        }
        if (str == null || str.length() == 0) {
            str = "";
        }
        this.curKey = str;
        ChatSectionAdapter chatSectionAdapter = this.chatSectionAdapter;
        if (chatSectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
            throw null;
        }
        chatSectionAdapter.setSection(null);
        sendRequest();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter;
        MergeAdapter mergeAdapter2;
        MergeAdapter mergeAdapter3;
        this.mergeAdapter = new GlobalSearchMergeAdapter(this) { // from class: com.narvii.master.search.GlobalChatsSearchFragment.createAdapter.1
            @Override // com.narvii.master.search.GlobalSearchMergeAdapter, com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                if (!super.isEmpty()) {
                    return false;
                }
                if (GlobalChatsSearchFragment.this.hideMatchIdAdapter || (GlobalChatsSearchFragment.this.requestSent && GlobalChatsSearchFragment.access$getChatSectionAdapter$p(GlobalChatsSearchFragment.this).isEmpty())) {
                    return (GlobalChatsSearchFragment.this.curKey.length() > 0) && GlobalChatsSearchFragment.access$getChatAdapter$p(GlobalChatsSearchFragment.this).isEmpty();
                }
                return false;
            }

            @Override // com.narvii.master.search.GlobalSearchMergeAdapter, com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                if (!super.isListShown() && !GlobalChatsSearchFragment.access$getChatSectionAdapter$p(GlobalChatsSearchFragment.this).isListShown()) {
                    if (!(GlobalChatsSearchFragment.this.curKey.length() == 0) && !GlobalChatsSearchFragment.access$getChatAdapter$p(GlobalChatsSearchFragment.this).isListShown()) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void refresh(int i, Callback<Integer> callback) {
                AminoIdMatchedAdapter aminoIdMatchedAdapter = GlobalChatsSearchFragment.this.getAminoIdMatchedAdapter();
                if (aminoIdMatchedAdapter != null) {
                    aminoIdMatchedAdapter.refresh(i, null);
                }
                GlobalChatsSearchFragment.access$getChatAdapter$p(GlobalChatsSearchFragment.this).refresh(i, null);
                GlobalChatsSearchFragment.this.sendRequest();
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void onErrorRetry() {
                AminoIdMatchedAdapter aminoIdMatchedAdapter = GlobalChatsSearchFragment.this.getAminoIdMatchedAdapter();
                if (aminoIdMatchedAdapter != null) {
                    aminoIdMatchedAdapter.onErrorRetry();
                }
                GlobalChatsSearchFragment.access$getChatAdapter$p(GlobalChatsSearchFragment.this).onErrorRetry();
                GlobalChatsSearchFragment.this.sendRequest();
            }
        };
        this.aminoIdMatchedAdapter = new AminoIdMatchedAdapter(this);
        this.chatAdapter = new Adapter(this, this);
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        if (searchHistoryDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
            throw null;
        }
        searchHistoryDelegate.addSearchHistoryAdapters(this.mergeAdapter);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, Utils.dpToPxInt(getContext(), 15.0f), 0, Utils.dpToPxInt(getContext(), 5.0f), 0);
        Adapter adapter = this.chatAdapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            throw null;
        }
        divideColumnAdapter.setAdapter(adapter, 2);
        SearchKeywordHeaderAdapter searchKeywordHeaderAdapter = new SearchKeywordHeaderAdapter(this);
        searchKeywordHeaderAdapter.setAttachHost(divideColumnAdapter);
        this.hideMatchIdAdapter = getBooleanParam("hide_match_id_adapter", false);
        if (!this.hideMatchIdAdapter && (mergeAdapter3 = this.mergeAdapter) != null) {
            mergeAdapter3.addAdapter(this.aminoIdMatchedAdapter);
        }
        SectionHeaderAdapter sectionHeaderAdapter = new SectionHeaderAdapter(this, R.string.chat_my_chats);
        this.chatSectionAdapter = new ChatSectionAdapter(this, this);
        ChatSectionAdapter chatSectionAdapter = this.chatSectionAdapter;
        if (chatSectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
            throw null;
        }
        sectionHeaderAdapter.setAttachHost(chatSectionAdapter);
        MyDividerAdapter myDividerAdapter = new MyDividerAdapter(this);
        ChatSectionAdapter chatSectionAdapter2 = this.chatSectionAdapter;
        if (chatSectionAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
            throw null;
        }
        myDividerAdapter.setAdapter(chatSectionAdapter2);
        if (!this.hideMatchIdAdapter) {
            MergeAdapter mergeAdapter4 = this.mergeAdapter;
            if (mergeAdapter4 != null) {
                mergeAdapter4.addAdapter(sectionHeaderAdapter);
            }
            MergeAdapter mergeAdapter5 = this.mergeAdapter;
            if (mergeAdapter5 != null) {
                mergeAdapter5.addAdapter(myDividerAdapter);
            }
        }
        SimpleSearchSectionAdapter simpleSearchSectionAdapter = new SimpleSearchSectionAdapter(this, true, false, 2, null);
        ChatSectionAdapter chatSectionAdapter3 = this.chatSectionAdapter;
        if (chatSectionAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
            throw null;
        }
        simpleSearchSectionAdapter.setAttachHost(chatSectionAdapter3);
        if (!this.hideMatchIdAdapter && (mergeAdapter2 = this.mergeAdapter) != null) {
            mergeAdapter2.addAdapter(simpleSearchSectionAdapter);
        }
        if (!this.hideMatchIdAdapter && (mergeAdapter = this.mergeAdapter) != null) {
            mergeAdapter.addAdapter(searchKeywordHeaderAdapter);
        }
        MergeAdapter mergeAdapter6 = this.mergeAdapter;
        if (mergeAdapter6 != null) {
            mergeAdapter6.addAdapter(divideColumnAdapter);
        }
        return this.mergeAdapter;
    }

    @Override // com.narvii.master.search.ChangeSearchTextRegister
    public void setChangeSearchTextListener(ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    /* compiled from: GlobalChatsSearchFragment.kt */
    private final class Adapter extends GlobalChatListAdapter {
        private String keyword;
        private boolean pageResponse;
        final /* synthetic */ GlobalChatsSearchFragment this$0;

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ChatsSearchResult";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(GlobalChatsSearchFragment globalChatsSearchFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalChatsSearchFragment;
            this.keyword = globalChatsSearchFragment.getStringParam("search_key");
            getChatLaunchHelper().setSource("Global Chats Search");
            addImpressionCollector(new DivideColumnImpressionCollector(ChatThread.class) { // from class: com.narvii.master.search.GlobalChatsSearchFragment.Adapter.1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<?> objectInfo) {
                    Intrinsics.checkParameterIsNotNull(builder, "builder");
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    builder.extraParam("searchQuery", Adapter.this.getKeyword());
                }
            });
        }

        public final String getKeyword() {
            return this.keyword;
        }

        public final void setKeyword(String str) {
            this.keyword = str;
        }

        public final boolean getPageResponse() {
            return this.pageResponse;
        }

        public final void setPageResponse(boolean z) {
            this.pageResponse = z;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            this.pageResponse = false;
            String str = this.keyword;
            if (str == null || str.length() == 0) {
                resetEmptyList();
                return null;
            }
            return ApiRequest.builder().chatServer().path("/chat/thread/explore/search").param("q", this.keyword).param("searchId", this.keyword != null ? SearchUtils.getSearchId(this.this$0) : null).param("v", 1).param(IjkMediaMeta.IJKM_KEY_LANGUAGE, getLanguageService().getRequestPrefLanguageWithLocalAsDefault()).build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.chat.global.GlobalChatListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, CategoryThreadResponse categoryThreadResponse, int i) {
            super.onPageResponse(apiRequest, categoryThreadResponse, i);
            if (this.pageResponse) {
                return;
            }
            this.pageResponse = true;
            MergeAdapter mergeAdapter = this.this$0.mergeAdapter;
            if (mergeAdapter != null) {
                mergeAdapter.notifyDataSetChanged();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (this.pageResponse && super.isEmpty()) {
                String str = this.keyword;
                if (!(str == null || str.length() == 0)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.pageResponse && super.isListShown();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() {
            this.pageResponse = false;
            super.resetList();
        }
    }

    /* compiled from: GlobalChatsSearchFragment.kt */
    public final class ChatSectionAdapter extends MyThreadListAdapter implements GlobalSearchOthersResultFragment.MoreSearchResultHost {
        final /* synthetic */ GlobalChatsSearchFragment this$0;
        private ArrayList<ChatThread> threadList;

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return null;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        public boolean showHighLight() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatSectionAdapter(GlobalChatsSearchFragment globalChatsSearchFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalChatsSearchFragment;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<ChatThread> list() {
            return this.threadList;
        }

        public final void setSection(ThreadListResponse threadListResponse) {
            if (threadListResponse == null) {
                this.threadList = new ArrayList<>();
            } else {
                List<ChatThread> list = threadListResponse.threadList;
                Intrinsics.checkExpressionValueIsNotNull(list, "section.threadList");
                ArrayList<ChatThread> arrayList = new ArrayList<>();
                CollectionsKt.toCollection(list, arrayList);
                this.threadList = arrayList;
                this.this$0.communityMap.putAll(threadListResponse.communityInfoMapping);
            }
            this._isEnd = true;
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (com.narvii.util.text.TextUtils.isEmpty(this.this$0.curKey)) {
                return 0;
            }
            return Math.min(super.getCount(), 3);
        }

        @Override // com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost
        public boolean hasMoreResult() {
            ArrayList<ChatThread> arrayList = this.threadList;
            if (arrayList != null) {
                if (arrayList == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                if (arrayList.size() > 3) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return super.isListShown() && this.this$0.requestSent;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        public HashMap<String, Community> communityMap() {
            return this.this$0.communityMap;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        public String getSearchKey() {
            return this.this$0.curKey;
        }
    }

    /* compiled from: GlobalChatsSearchFragment.kt */
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

    /* compiled from: GlobalChatsSearchFragment.kt */
    public final class SimpleSearchSectionAdapter extends AdriftAdapter {
        private NVAdapter host;
        private final boolean showBottomDivider;
        private final boolean showTopDivider;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "MoreFromMyChats";
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return true;
        }

        public SimpleSearchSectionAdapter(boolean z, boolean z2) {
            super(GlobalChatsSearchFragment.this);
            this.showTopDivider = z;
            this.showBottomDivider = z2;
        }

        public final boolean getShowTopDivider() {
            return this.showTopDivider;
        }

        public /* synthetic */ SimpleSearchSectionAdapter(GlobalChatsSearchFragment globalChatsSearchFragment, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2);
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
            tvTitle.setText(GlobalChatsSearchFragment.this.getString(R.string.more_from_my_chats));
            TextView tvKey = (TextView) cell.findViewById(R.id.search_key);
            Intrinsics.checkExpressionValueIsNotNull(tvKey, "tvKey");
            tvKey.setText(GlobalChatsSearchFragment.this.curKey == null ? "" : GlobalChatsSearchFragment.this.curKey);
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

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter adapter, int i, Object item, View cell, View view) {
            Intrinsics.checkParameterIsNotNull(adapter, "adapter");
            Intrinsics.checkParameterIsNotNull(item, "item");
            Intrinsics.checkParameterIsNotNull(cell, "cell");
            logClickEvent(ActSemantic.listViewEnter);
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
            intent.putExtra("section_type", 7);
            intent.putExtra("search_key", GlobalChatsSearchFragment.this.curKey);
            startActivity(intent);
            return true;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            if (com.narvii.util.text.TextUtils.isEmpty(GlobalChatsSearchFragment.this.curKey)) {
                return 0;
            }
            OnItemClickListener onItemClickListener = this.host;
            if (onItemClickListener == null || !(onItemClickListener instanceof GlobalSearchOthersResultFragment.MoreSearchResultHost)) {
                return super.getCount();
            }
            if (onItemClickListener == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost");
            }
            if (!((GlobalSearchOthersResultFragment.MoreSearchResultHost) onItemClickListener).hasMoreResult()) {
                return 0;
            }
            NVAdapter nVAdapter = this.host;
            return (nVAdapter != null ? nVAdapter.getCount() : 0) > 0 ? 1 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest() {
        ApiRequest apiRequest = this.chatApiRequest;
        if (apiRequest != null) {
            ApiService apiService = this.apiService;
            if (apiService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("apiService");
                throw null;
            }
            apiService.abort(apiRequest);
        }
        if (com.narvii.util.text.TextUtils.isEmpty(this.curKey)) {
            this.requestSent = true;
            ChatSectionAdapter chatSectionAdapter = this.chatSectionAdapter;
            if (chatSectionAdapter != null) {
                chatSectionAdapter.setSection(null);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
                throw null;
            }
        }
        this.requestSent = false;
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
        ApiRequest.Builder builderParam = new ApiRequest.Builder().global().path("chat/thread/search").param("q", this.curKey).param("action", 1);
        ContentLanguageService contentLanguageService = this.contentLanguageService;
        if (contentLanguageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentLanguageService");
            throw null;
        }
        this.chatApiRequest = builderParam.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService.getRequestPrefLanguageWithLocalAsDefault()).build();
        ApiService apiService2 = this.apiService;
        if (apiService2 != null) {
            apiService2.exec(this.chatApiRequest, new ApiResponseListener<ThreadListResponse>(ThreadListResponse.class) { // from class: com.narvii.master.search.GlobalChatsSearchFragment.sendRequest.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest req, ThreadListResponse resp) throws Exception {
                    Intrinsics.checkParameterIsNotNull(req, "req");
                    Intrinsics.checkParameterIsNotNull(resp, "resp");
                    super.onFinish(req, (ApiRequest) resp);
                    GlobalChatsSearchFragment.this.chatApiRequest = null;
                    GlobalChatsSearchFragment.this.requestSent = true;
                    GlobalChatsSearchFragment.this.onRequestFinish(resp);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest req, int i, List<? extends NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Intrinsics.checkParameterIsNotNull(req, "req");
                    super.onFail(req, i, list, str, apiResponse, th);
                    GlobalChatsSearchFragment.this.requestSent = true;
                    MergeAdapter mergeAdapter2 = GlobalChatsSearchFragment.this.mergeAdapter;
                    if (mergeAdapter2 != null) {
                        mergeAdapter2.notifyDataSetChanged();
                    }
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("apiService");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRequestFinish(ThreadListResponse threadListResponse) {
        if (threadListResponse == null) {
            return;
        }
        ChatSectionAdapter chatSectionAdapter = this.chatSectionAdapter;
        if (chatSectionAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatSectionAdapter");
            throw null;
        }
        chatSectionAdapter.setSection(threadListResponse);
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
    }
}
