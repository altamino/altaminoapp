package com.narvii.master.search;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.master.R;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.SearchBar;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class GlobalChatsSearchFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener, ChangeSearchTextRegister {

    @Nullable
    private AminoIdMatchedAdapter aminoIdMatchedAdapter;
    private ApiService apiService;

    @Nullable
    private ChangeSearchTextListener changeSearchTextListener;
    private Adapter chatAdapter;

    @Nullable
    private ApiRequest chatApiRequest;
    private ChatSectionAdapter chatSectionAdapter;
    private ContentLanguageService contentLanguageService;
    private boolean hideMatchIdAdapter;

    @Nullable
    private MergeAdapter mergeAdapter;
    private boolean requestSent;
    private SearchHistoryDelegate searchHistoryDelegate;

    @NotNull
    private String curKey = "";

    @NotNull
    private final HashMap<String, Community> communityMap = new HashMap<>();

    private final class Adapter extends GlobalChatListAdapter {

        @Nullable
        private String keyword;
        private boolean pageResponse;
        final /* synthetic */ GlobalChatsSearchFragment this$0;

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        protected ApiRequest createRequest(boolean z6) {
            this.pageResponse = false;
            String str = this.keyword;
            if (str != null && str.length() != 0) {
                return ApiRequest.builder().chatServer().path("/chat/thread/explore/search").param("q", this.keyword).param("searchId", this.keyword != null ? SearchUtils.getSearchId(this.this$0) : null).param("v", 1).param("language", getLanguageService().getRequestPrefLanguageWithLocalAsDefault()).build();
            }
            resetEmptyList();
            return null;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "ChatsSearchResult";
        }

        @Nullable
        public final String getKeyword() {
            return this.keyword;
        }

        public final boolean getPageResponse() {
            return this.pageResponse;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() {
            this.pageResponse = false;
            super.resetList();
        }

        public final void setKeyword(@Nullable String str) {
            this.keyword = str;
        }

        public final void setPageResponse(boolean z6) {
            this.pageResponse = z6;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull GlobalChatsSearchFragment globalChatsSearchFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = globalChatsSearchFragment;
            this.keyword = globalChatsSearchFragment.getStringParam("search_key");
            getChatLaunchHelper().setSource("Global Chats Search");
            addImpressionCollector(new DivideColumnImpressionCollector(ChatThread.class) { // from class: com.narvii.master.search.GlobalChatsSearchFragment.Adapter.1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, @Nullable ObjectInfo<?> objectInfo) {
                    t.j(builder, "builder");
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    builder.extraParam("searchQuery", Adapter.this.getKeyword());
                }
            });
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            String str;
            return this.pageResponse && super.isEmpty() && (str = this.keyword) != null && str.length() != 0;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.pageResponse && super.isListShown();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.chat.global.GlobalChatListAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable CategoryThreadResponse categoryThreadResponse, int i10) {
            super.onPageResponse(apiRequest, categoryThreadResponse, i10);
            if (this.pageResponse) {
                return;
            }
            this.pageResponse = true;
            MergeAdapter mergeAdapter = this.this$0.mergeAdapter;
            if (mergeAdapter != null) {
                mergeAdapter.notifyDataSetChanged();
            }
        }
    }

    public final class ChatSectionAdapter extends MyThreadListAdapter implements GlobalSearchOthersResultFragment.MoreSearchResultHost {
        final /* synthetic */ GlobalChatsSearchFragment this$0;

        @Nullable
        private ArrayList<ChatThread> threadList;

        @Override // com.narvii.chat.thread.MyThreadListAdapter, com.narvii.list.NVPagedAdapter
        @Nullable
        protected ApiRequest createRequest(boolean z6) {
            return null;
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        public List<ChatThread> list() {
            return this.threadList;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        public boolean showHighLight() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatSectionAdapter(@NotNull GlobalChatsSearchFragment globalChatsSearchFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = globalChatsSearchFragment;
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        @NotNull
        public HashMap<String, Community> communityMap() {
            return this.this$0.communityMap;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return 0;
            }
            return Math.min(super.getCount(), 3);
        }

        @Override // com.narvii.chat.thread.MyThreadListAdapter
        @NotNull
        public String getSearchKey() {
            return this.this$0.curKey;
        }

        @Override // com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost
        public boolean hasMoreResult() {
            ArrayList<ChatThread> arrayList = this.threadList;
            if (arrayList != null) {
                t.g(arrayList);
                if (arrayList.size() > 3) {
                    return true;
                }
            }
            return false;
        }

        public final void setSection(@Nullable ThreadListResponse threadListResponse) {
            if (threadListResponse == null) {
                this.threadList = new ArrayList<>();
            } else {
                List<ChatThread> threadList = threadListResponse.threadList;
                t.i(threadList, "threadList");
                this.threadList = (ArrayList) d0.Q0(threadList, new ArrayList());
                this.this$0.communityMap.putAll(threadListResponse.communityInfoMapping);
            }
            this._isEnd = true;
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (super.isListShown() && this.this$0.requestSent) {
                return true;
            }
            return false;
        }
    }

    public static final class MyDividerAdapter extends DividerAdapter {
        @Override // com.narvii.list.DividerAdapter
        protected int getDividerLayoutId() {
            return R.layout.list_divider_padding;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyDividerAdapter(@NotNull NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
        }
    }

    public final class SimpleSearchSectionAdapter extends AdriftAdapter {

        @Nullable
        private NVAdapter host;
        private final boolean showBottomDivider;
        private final boolean showTopDivider;

        public /* synthetic */ SimpleSearchSectionAdapter(GlobalChatsSearchFragment globalChatsSearchFragment, boolean z6, boolean z10, int i10, kotlin.jvm.internal.k kVar) {
            this((i10 & 1) != 0 ? false : z6, (i10 & 2) != 0 ? false : z10);
        }

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "MoreFromMyChats";
        }

        @Nullable
        public final NVAdapter getHost$Amino_bundle() {
            return this.host;
        }

        public final boolean getShowBottomDivider() {
            return this.showBottomDivider;
        }

        public final boolean getShowTopDivider() {
            return this.showTopDivider;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return true;
        }

        public final void setAttachHost(@NotNull NVAdapter attachHost) {
            t.j(attachHost, "attachHost");
            this.host = attachHost;
        }

        public final void setHost$Amino_bundle(@Nullable NVAdapter nVAdapter) {
            this.host = nVAdapter;
        }

        public SimpleSearchSectionAdapter(boolean z6, boolean z10) {
            super(GlobalChatsSearchFragment.this);
            this.showTopDivider = z6;
            this.showBottomDivider = z10;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter;
            if (TextUtils.isEmpty(GlobalChatsSearchFragment.this.curKey)) {
                return 0;
            }
            OnItemClickListener onItemClickListener = this.host;
            if (onItemClickListener == null || !(onItemClickListener instanceof GlobalSearchOthersResultFragment.MoreSearchResultHost)) {
                return super.getCount();
            }
            t.h(onItemClickListener, "null cannot be cast to non-null type com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost");
            return (!((GlobalSearchOthersResultFragment.MoreSearchResultHost) onItemClickListener).hasMoreResult() || (nVAdapter = this.host) == null || nVAdapter.getCount() <= 0) ? 0 : 1;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@NotNull ListAdapter adapter, int i10, @NotNull Object item, @NotNull View cell, @Nullable View view) {
            t.j(adapter, "adapter");
            t.j(item, "item");
            t.j(cell, "cell");
            logClickEvent(ActSemantic.listViewEnter);
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
            intent.putExtra("section_type", 6);
            intent.putExtra("search_key", GlobalChatsSearchFragment.this.curKey);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            String str;
            int i11;
            int i12;
            View viewCreateView = createView(R.layout.item_search_simple_section, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(GlobalChatsSearchFragment.this.getString(R.string.more_from_my_chats));
            TextView textView = (TextView) viewCreateView.findViewById(R.id.search_key);
            if (GlobalChatsSearchFragment.this.curKey != null) {
                str = GlobalChatsSearchFragment.this.curKey;
            } else {
                str = "";
            }
            textView.setText(str);
            int i13 = 0;
            if (this.host == null) {
                i11 = 0;
            } else {
                i11 = 4;
            }
            textView.setVisibility(i11);
            View viewFindViewById = viewCreateView.findViewById(R.id.top_divider);
            if (this.showTopDivider) {
                i12 = 0;
            } else {
                i12 = 8;
            }
            viewFindViewById.setVisibility(i12);
            View viewFindViewById2 = viewCreateView.findViewById(R.id.bottom_divider);
            if (!this.showBottomDivider) {
                i13 = 8;
            }
            viewFindViewById2.setVisibility(i13);
            t.g(viewCreateView);
            return viewCreateView;
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.search.GlobalChatsSearchFragment$onCreate$1, reason: invalid class name and case insensitive filesystem */
    static final class C05441 extends v implements e8.l<String, l0> {
        C05441() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(String str) {
            invoke2(str);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull String text) {
            t.j(text, "text");
            ChangeSearchTextListener changeSearchTextListener = GlobalChatsSearchFragment.this.changeSearchTextListener;
            if (changeSearchTextListener != null) {
                changeSearchTextListener.changeSearchText(text, true);
            }
            GlobalChatsSearchFragment.this.onSearch(null, text);
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.search.GlobalChatsSearchFragment$onCreate$2, reason: invalid class name */
    /* synthetic */ class AnonymousClass2 extends q implements e8.a<Boolean> {
        AnonymousClass2(Object obj) {
            super(0, obj, GlobalChatsSearchFragment.class, "showSearchHistory", "showSearchHistory()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // e8.a
        @NotNull
        public final Boolean invoke() {
            return Boolean.valueOf(((GlobalChatsSearchFragment) this.receiver).showSearchHistory());
        }
    }

    @Nullable
    public final AminoIdMatchedAdapter getAminoIdMatchedAdapter() {
        return this.aminoIdMatchedAdapter;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "global_chats_search";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    public final void setAminoIdMatchedAdapter(@Nullable AminoIdMatchedAdapter aminoIdMatchedAdapter) {
        this.aminoIdMatchedAdapter = aminoIdMatchedAdapter;
    }

    @Override // com.narvii.master.search.ChangeSearchTextRegister
    public void setChangeSearchTextListener(@Nullable ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRequestFinish(ThreadListResponse threadListResponse) {
        if (threadListResponse == null) {
            return;
        }
        ChatSectionAdapter chatSectionAdapter = this.chatSectionAdapter;
        if (chatSectionAdapter == null) {
            t.B("chatSectionAdapter");
            chatSectionAdapter = null;
        }
        chatSectionAdapter.setSection(threadListResponse);
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest() {
        ApiService apiService = null;
        if (this.chatApiRequest != null) {
            ApiService apiService2 = this.apiService;
            if (apiService2 == null) {
                t.B("apiService");
                apiService2 = null;
            }
            apiService2.abort(this.chatApiRequest);
        }
        if (TextUtils.isEmpty(this.curKey)) {
            this.requestSent = true;
            ChatSectionAdapter chatSectionAdapter = this.chatSectionAdapter;
            if (chatSectionAdapter == null) {
                t.B("chatSectionAdapter");
                chatSectionAdapter = null;
            }
            chatSectionAdapter.setSection(null);
            return;
        }
        this.requestSent = false;
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
        ApiRequest.Builder builderParam = new ApiRequest.Builder().global().path("chat/thread/search").param("q", this.curKey).param("action", 1);
        ContentLanguageService contentLanguageService = this.contentLanguageService;
        if (contentLanguageService == null) {
            t.B("contentLanguageService");
            contentLanguageService = null;
        }
        this.chatApiRequest = builderParam.param("language", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault()).build();
        ApiService apiService3 = this.apiService;
        if (apiService3 == null) {
            t.B("apiService");
        } else {
            apiService = apiService3;
        }
        apiService.exec(this.chatApiRequest, new ApiResponseListener<ThreadListResponse>(ThreadListResponse.class) { // from class: com.narvii.master.search.GlobalChatsSearchFragment.sendRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                t.j(req, "req");
                super.onFail(req, i10, list, str, apiResponse, th);
                GlobalChatsSearchFragment.this.requestSent = true;
                MergeAdapter mergeAdapter2 = GlobalChatsSearchFragment.this.mergeAdapter;
                if (mergeAdapter2 != null) {
                    mergeAdapter2.notifyDataSetChanged();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull ThreadListResponse resp) throws Exception {
                t.j(req, "req");
                t.j(resp, "resp");
                super.onFinish(req, resp);
                GlobalChatsSearchFragment.this.chatApiRequest = null;
                GlobalChatsSearchFragment.this.requestSent = true;
                GlobalChatsSearchFragment.this.onRequestFinish(resp);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean showSearchHistory() {
        return android.text.TextUtils.isEmpty(this.curKey);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.narvii.list.NVListFragment
    @Nullable
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        MergeAdapter mergeAdapter;
        MergeAdapter mergeAdapter2;
        MergeAdapter mergeAdapter3;
        this.mergeAdapter = new GlobalSearchMergeAdapter() { // from class: com.narvii.master.search.GlobalChatsSearchFragment.createAdapter.1
            {
                super(GlobalChatsSearchFragment.this);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void onErrorRetry() {
                AminoIdMatchedAdapter aminoIdMatchedAdapter = GlobalChatsSearchFragment.this.getAminoIdMatchedAdapter();
                if (aminoIdMatchedAdapter != null) {
                    aminoIdMatchedAdapter.onErrorRetry();
                }
                Adapter adapter = GlobalChatsSearchFragment.this.chatAdapter;
                if (adapter == null) {
                    t.B("chatAdapter");
                    adapter = null;
                }
                adapter.onErrorRetry();
                GlobalChatsSearchFragment.this.sendRequest();
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void refresh(int i10, @Nullable Callback<Integer> callback) {
                AminoIdMatchedAdapter aminoIdMatchedAdapter = GlobalChatsSearchFragment.this.getAminoIdMatchedAdapter();
                if (aminoIdMatchedAdapter != null) {
                    aminoIdMatchedAdapter.refresh(i10, null);
                }
                Adapter adapter = GlobalChatsSearchFragment.this.chatAdapter;
                if (adapter == null) {
                    t.B("chatAdapter");
                    adapter = null;
                }
                adapter.refresh(i10, null);
                GlobalChatsSearchFragment.this.sendRequest();
            }

            /* JADX WARN: Code duplicated, block: B:14:0x002c  */
            /* JADX WARN: Code duplicated, block: B:16:0x0038  */
            /* JADX WARN: Code duplicated, block: B:18:0x0040  */
            /* JADX WARN: Code duplicated, block: B:19:0x0046  */
            /* JADX WARN: Code duplicated, block: B:22:0x004d A[RETURN, SYNTHETIC] */
            @Override // com.narvii.master.search.GlobalSearchMergeAdapter, com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                Adapter adapter;
                if (super.isEmpty()) {
                    Adapter adapter2 = null;
                    if (!GlobalChatsSearchFragment.this.hideMatchIdAdapter) {
                        if (GlobalChatsSearchFragment.this.requestSent) {
                            ChatSectionAdapter chatSectionAdapter = GlobalChatsSearchFragment.this.chatSectionAdapter;
                            if (chatSectionAdapter == null) {
                                t.B("chatSectionAdapter");
                                chatSectionAdapter = null;
                            }
                            if (chatSectionAdapter.isEmpty()) {
                                if (GlobalChatsSearchFragment.this.curKey.length() > 0) {
                                    adapter = GlobalChatsSearchFragment.this.chatAdapter;
                                    if (adapter == null) {
                                        t.B("chatAdapter");
                                    } else {
                                        adapter2 = adapter;
                                    }
                                    if (adapter2.isEmpty()) {
                                        return true;
                                    }
                                }
                            }
                        }
                    } else if (GlobalChatsSearchFragment.this.curKey.length() > 0) {
                        adapter = GlobalChatsSearchFragment.this.chatAdapter;
                        if (adapter == null) {
                            t.B("chatAdapter");
                        } else {
                            adapter2 = adapter;
                        }
                        if (adapter2.isEmpty()) {
                            return true;
                        }
                    }
                }
                return false;
            }

            @Override // com.narvii.master.search.GlobalSearchMergeAdapter, com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                if (!super.isListShown()) {
                    ChatSectionAdapter chatSectionAdapter = GlobalChatsSearchFragment.this.chatSectionAdapter;
                    Adapter adapter = null;
                    if (chatSectionAdapter == null) {
                        t.B("chatSectionAdapter");
                        chatSectionAdapter = null;
                    }
                    if (!chatSectionAdapter.isListShown() && GlobalChatsSearchFragment.this.curKey.length() != 0) {
                        Adapter adapter2 = GlobalChatsSearchFragment.this.chatAdapter;
                        if (adapter2 == null) {
                            t.B("chatAdapter");
                        } else {
                            adapter = adapter2;
                        }
                        if (!adapter.isListShown()) {
                            return false;
                        }
                    }
                }
                return true;
            }
        };
        this.aminoIdMatchedAdapter = new AminoIdMatchedAdapter(this);
        this.chatAdapter = new Adapter(this, this);
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        ChatSectionAdapter chatSectionAdapter = null;
        if (searchHistoryDelegate == null) {
            t.B("searchHistoryDelegate");
            searchHistoryDelegate = null;
        }
        searchHistoryDelegate.addSearchHistoryAdapters(this.mergeAdapter);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, Utils.dpToPxInt(getContext(), 15.0f), 0, Utils.dpToPxInt(getContext(), 5.0f), 0);
        Adapter adapter = this.chatAdapter;
        if (adapter == null) {
            t.B("chatAdapter");
            adapter = null;
        }
        divideColumnAdapter.setAdapter(adapter, 2);
        SearchKeywordHeaderAdapter searchKeywordHeaderAdapter = new SearchKeywordHeaderAdapter(this);
        searchKeywordHeaderAdapter.setAttachHost(divideColumnAdapter);
        boolean booleanParam = getBooleanParam("hide_match_id_adapter", false);
        this.hideMatchIdAdapter = booleanParam;
        if (!booleanParam && (mergeAdapter3 = this.mergeAdapter) != null) {
            mergeAdapter3.addAdapter(this.aminoIdMatchedAdapter);
        }
        SectionHeaderAdapter sectionHeaderAdapter = new SectionHeaderAdapter(this, R.string.chat_my_chats);
        ChatSectionAdapter chatSectionAdapter2 = new ChatSectionAdapter(this, this);
        this.chatSectionAdapter = chatSectionAdapter2;
        sectionHeaderAdapter.setAttachHost(chatSectionAdapter2);
        MyDividerAdapter myDividerAdapter = new MyDividerAdapter(this);
        ChatSectionAdapter chatSectionAdapter3 = this.chatSectionAdapter;
        if (chatSectionAdapter3 == null) {
            t.B("chatSectionAdapter");
            chatSectionAdapter3 = null;
        }
        myDividerAdapter.setAdapter(chatSectionAdapter3);
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
        ChatSectionAdapter chatSectionAdapter4 = this.chatSectionAdapter;
        if (chatSectionAdapter4 == null) {
            t.B("chatSectionAdapter");
        } else {
            chatSectionAdapter = chatSectionAdapter4;
        }
        simpleSearchSectionAdapter.setAttachHost(chatSectionAdapter);
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

    @Override // com.narvii.list.NVListFragment
    @NotNull
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(@Nullable String str) {
        Adapter adapter = this.chatAdapter;
        SearchHistoryDelegate searchHistoryDelegate = null;
        if (adapter == null) {
            t.B("chatAdapter");
            adapter = null;
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
        if (str.length() == 0 || StringUtils.isTrimEmpty(str)) {
            return;
        }
        SearchHistoryDelegate searchHistoryDelegate2 = this.searchHistoryDelegate;
        if (searchHistoryDelegate2 == null) {
            t.B("searchHistoryDelegate");
        } else {
            searchHistoryDelegate = searchHistoryDelegate2;
        }
        searchHistoryDelegate.addSearchHistory(str);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        sendRequest();
    }

    public final void searchText(@Nullable String str) {
        Adapter adapter = this.chatAdapter;
        if (adapter == null) {
            t.B("chatAdapter");
            adapter = null;
        }
        adapter.setKeyword((str == null || str.length() == 0) ? "" : str);
        Adapter adapter2 = this.chatAdapter;
        if (adapter2 == null) {
            t.B("chatAdapter");
            adapter2 = null;
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
            t.B("chatSectionAdapter");
            chatSectionAdapter = null;
        }
        chatSectionAdapter.setSection(null);
        sendRequest();
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected String emptyMessage() {
        String string = getString(R.string.normal_empty_list);
        t.i(string, "getString(...)");
        return string;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        String stringParam = getStringParam("search_key");
        if (stringParam == null) {
            stringParam = "";
        }
        this.curKey = stringParam;
        Object service = getService("api");
        t.i(service, "getService(...)");
        this.apiService = (ApiService) service;
        Object service2 = getService("content_language");
        t.i(service2, "getService(...)");
        this.contentLanguageService = (ContentLanguageService) service2;
        SearchHistoryDelegate searchHistoryDelegate = new SearchHistoryDelegate(this, "chat");
        this.searchHistoryDelegate = searchHistoryDelegate;
        searchHistoryDelegate.setOnSearchHistory(new C05441());
        SearchHistoryDelegate searchHistoryDelegate2 = this.searchHistoryDelegate;
        if (searchHistoryDelegate2 == null) {
            t.B("searchHistoryDelegate");
            searchHistoryDelegate2 = null;
        }
        searchHistoryDelegate2.setShowSearchHistory(new AnonymousClass2(this));
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(@Nullable SearchBar searchBar, @Nullable String str) {
        searchText(str);
        Object service = getService("statistics");
        t.i(service, "getService(...)");
        ((StatisticsService) service).event("Search for Chats (Global)").userPropInc("Search for Chats (Global) Total");
        if (str != null && str.length() != 0 && !StringUtils.isTrimEmpty(str)) {
            SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
            if (searchHistoryDelegate == null) {
                t.B("searchHistoryDelegate");
                searchHistoryDelegate = null;
            }
            searchHistoryDelegate.addSearchHistory(str);
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(@Nullable SearchBar searchBar, @Nullable String str) {
        Adapter adapter = null;
        if (android.text.TextUtils.isEmpty(str)) {
            Adapter adapter2 = this.chatAdapter;
            if (adapter2 == null) {
                t.B("chatAdapter");
                adapter2 = null;
            }
            adapter2.setKeyword(null);
            Adapter adapter3 = this.chatAdapter;
            if (adapter3 == null) {
                t.B("chatAdapter");
                adapter3 = null;
            }
            adapter3.resetEmptyList();
            AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
            if (aminoIdMatchedAdapter != null) {
                aminoIdMatchedAdapter.notifyKeyChange(null);
            }
            this.curKey = "";
            ChatSectionAdapter chatSectionAdapter = this.chatSectionAdapter;
            if (chatSectionAdapter == null) {
                t.B("chatSectionAdapter");
                chatSectionAdapter = null;
            }
            chatSectionAdapter.setSection(null);
            return;
        }
        Adapter adapter4 = this.chatAdapter;
        if (adapter4 == null) {
            t.B("chatAdapter");
        } else {
            adapter = adapter4;
        }
        adapter.notifyDataSetChanged();
    }
}
