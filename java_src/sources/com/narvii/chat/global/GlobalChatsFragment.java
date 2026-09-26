package com.narvii.chat.global;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.community.CommunityService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageChangeListener;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.logging.ObjectType;
import com.narvii.master.MasterShareTabHelper;
import com.narvii.master.MasterTopBarAvailable;
import com.narvii.master.MasterTopOffsetAdapter;
import com.narvii.master.search.GlobalSearchTabFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.util.EnterCommunityUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListOverlay;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class GlobalChatsFragment extends NVListFragment implements MasterTopOffsetAdapter, LanguageChangeListener, RecentChatListComponent.NavigateToChatCallback, ChatService.ChatMessageReceptor, MasterTopBarAvailable {
    private ChatService chatService;
    private CommunityService communityService;
    private GlobalChatService globalChatService;
    private ContentLanguageService languageService;
    private MasterShareTabHelper masterShareTabHelper;
    private boolean needForceUpdateRecentChatList;

    private final class LiveChatsAdapter extends NVPagedAdapter<GlobalThreadListWrapper, GlobalThreadCategoryResponse> {

        @NotNull
        private final HashMap<String, Community> communityMap;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        public Class<GlobalThreadListWrapper> dataType() {
            return GlobalThreadListWrapper.class;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "LivechatRooms";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(@Nullable Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 4;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        public Class<? extends GlobalThreadCategoryResponse> responseType() {
            return GlobalThreadCategoryResponse.class;
        }

        public LiveChatsAdapter(NVContext nVContext) {
            super(nVContext);
            this.communityMap = new HashMap<>();
        }

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        protected View getItemView(@Nullable Object obj, @Nullable View view, @Nullable ViewGroup viewGroup) {
            GlobalChatCategoryItemView globalChatCategoryItemView = (GlobalChatCategoryItemView) createView(R.layout.chat_category_item, viewGroup, view instanceof GlobalChatCategoryItemView ? (GlobalChatCategoryItemView) view : null);
            t.h(obj, "null cannot be cast to non-null type com.narvii.chat.global.GlobalThreadListWrapper");
            globalChatCategoryItemView.setThreadCategory((GlobalThreadListWrapper) obj, this.communityMap, GlobalChatsFragment.this.getActivity());
            globalChatCategoryItemView.setShownInAdapter(this);
            t.g(globalChatCategoryItemView);
            return globalChatCategoryItemView;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable GlobalThreadCategoryResponse globalThreadCategoryResponse, int i10) {
            Map<String, Community> map;
            super.onPageResponse(apiRequest, globalThreadCategoryResponse, i10);
            if (globalThreadCategoryResponse == null || (map = globalThreadCategoryResponse.communityInfoMapping) == null) {
                return;
            }
            t.g(map);
            this.communityMap.putAll(globalThreadCategoryResponse.communityInfoMapping);
        }

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread/explore/categories");
            ApiRequest.Builder builderParam = builderPath.param("threadPreviewSize", 20);
            ContentLanguageService contentLanguageService = GlobalChatsFragment.this.languageService;
            if (contentLanguageService == null) {
                t.B("languageService");
                contentLanguageService = null;
            }
            builderParam.param("language", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault());
            ApiRequest apiRequestBuild = builderPath.build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new GlobalChatImpressionCollector(ChatThread.class));
        }
    }

    private final class RecentChatsAdapter extends NVAdapter {

        @NotNull
        private RecyclerInListViewImpressionCollector<GlobalChatThread> ipc;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "Recent";
        }

        @NotNull
        public final RecyclerInListViewImpressionCollector<GlobalChatThread> getIpc() {
            return this.ipc;
        }

        @Override // android.widget.Adapter
        @NotNull
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public final void setIpc(@NotNull RecyclerInListViewImpressionCollector<GlobalChatThread> recyclerInListViewImpressionCollector) {
            t.j(recyclerInListViewImpressionCollector, "<set-?>");
            this.ipc = recyclerInListViewImpressionCollector;
        }

        public RecentChatsAdapter(NVContext nVContext) {
            super(nVContext);
            final Class<GlobalChatThread> cls = GlobalChatThread.class;
            this.ipc = new RecyclerInListViewImpressionCollector<GlobalChatThread>(cls) { // from class: com.narvii.chat.global.GlobalChatsFragment$RecentChatsAdapter$ipc$1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, @Nullable ObjectInfo<GlobalChatThread> objectInfo) {
                    t.j(builder, "builder");
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    if ((objectInfo != null ? (GlobalChatThread) objectInfo.object : null) != null) {
                        builder.objectType(ObjectType.chat).objectId(((GlobalChatThread) objectInfo.object).chatThreadId).extraParam(LogEvent.OBJECT_NDCID, Integer.valueOf(((GlobalChatThread) objectInfo.object).communityId));
                    }
                }
            };
        }

        @Override // android.widget.Adapter
        public int getCount() {
            GlobalChatService globalChatService = GlobalChatsFragment.this.globalChatService;
            if (globalChatService == null) {
                t.B("globalChatService");
                globalChatService = null;
            }
            return globalChatService.getRecentChatList().size() > 0 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            GlobalChatService globalChatService = null;
            RecentChatListComponent recentChatListComponent = (RecentChatListComponent) createView(R.layout.recent_chat_bar, viewGroup, view instanceof RecentChatListComponent ? (RecentChatListComponent) view : null);
            GlobalChatService globalChatService2 = GlobalChatsFragment.this.globalChatService;
            if (globalChatService2 == null) {
                t.B("globalChatService");
            } else {
                globalChatService = globalChatService2;
            }
            ArrayList<GlobalChatThread> recentChatList = globalChatService.getRecentChatList();
            t.i(recentChatList, "getRecentChatList(...)");
            recentChatListComponent.setRecentChats(recentChatList, GlobalChatsFragment.this);
            recentChatListComponent.setShownInAdapter(this);
            LogUtils.recyclerShownInAdapter(recentChatListComponent, this.ipc);
            t.g(recentChatListComponent);
            return recentChatListComponent;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(this.ipc);
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean forceShowListWhenEmpty() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "global_chats";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return true;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
    }

    @Override // com.narvii.app.NVFragment
    protected boolean sendPageViewEventToThirdParty() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new NVListOverlay(getContext(), null));
        mergeAdapter.addAdapter(staticViewAdapter);
        mergeAdapter.addAdapter(new LiveChatsAdapter(this), true);
        mergeAdapter.addAdapter(new MarginAdapter(this, Utils.dpToPxInt(getContext(), 75.0f)));
        return mergeAdapter;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        MenuItem icon;
        t.j(menu, "menu");
        t.j(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        MenuItem menuItemAdd = menu.add(0, R.string.search, 0, R.string.search);
        if (menuItemAdd == null || (icon = menuItemAdd.setIcon(R.drawable.ic_search)) == null) {
            return;
        }
        icon.setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_global_chat, viewGroup, false);
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(@Nullable String str) {
        if (str != null) {
            ListAdapter listAdapter = getListAdapter();
            t.h(listAdapter, "null cannot be cast to non-null type com.narvii.list.NVAdapter");
            ((NVAdapter) listAdapter).refresh(1, null);
        }
    }

    @Override // com.narvii.chat.global.RecentChatListComponent.NavigateToChatCallback
    public void onNavigateToChat(@NotNull String threadId, int i10) {
        t.j(threadId, "threadId");
        EnterCommunityUtils.fastEnter(i10, "Recent Global Chats");
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra("id", threadId);
        intent.putExtra("__communityId", i10);
        CommunityService communityService = this.communityService;
        if (communityService == null) {
            t.B("communityService");
            communityService = null;
        }
        intent.putExtra(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(communityService.getCommunity(i10)));
        intent.putExtra(RtcService.KEY_HIDE_DRAWER, true);
        intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, true);
        intent.putExtra("fromRecentChat", true);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Recent Global Chats");
        this.needForceUpdateRecentChatList = true;
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
        String str;
        t.j(chatMessageDto, "chatMessageDto");
        GlobalChatService globalChatService = this.globalChatService;
        GlobalChatService globalChatService2 = null;
        if (globalChatService == null) {
            t.B("globalChatService");
            globalChatService = null;
        }
        if (globalChatService.recentChatThreadIdList.isEmpty() || (str = chatMessageDto.chatMessage.threadId) == null || str.length() == 0) {
            return;
        }
        GlobalChatService globalChatService3 = this.globalChatService;
        if (globalChatService3 == null) {
            t.B("globalChatService");
            globalChatService3 = null;
        }
        if (globalChatService3.isThreadUnread(str)) {
            return;
        }
        GlobalChatService globalChatService4 = this.globalChatService;
        if (globalChatService4 == null) {
            t.B("globalChatService");
            globalChatService4 = null;
        }
        if (globalChatService4.recentChatThreadIdList.contains(str)) {
            ChatService chatService = this.chatService;
            if (chatService == null) {
                t.B("chatService");
                chatService = null;
            }
            chatService.updateThreadCheckTable(chatMessageDto);
            GlobalChatService globalChatService5 = this.globalChatService;
            if (globalChatService5 == null) {
                t.B("globalChatService");
            } else {
                globalChatService2 = globalChatService5;
            }
            globalChatService2.tryUpdateChatThreadUnread(this.needForceUpdateRecentChatList);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        t.j(item, "item");
        if (item.getItemId() != R.string.search) {
            return super.onOptionsItemSelected(item);
        }
        Intent intent = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
        intent.putExtra("tab", "chat");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        MasterShareTabHelper masterShareTabHelper = this.masterShareTabHelper;
        if (masterShareTabHelper == null) {
            t.B("masterShareTabHelper");
            masterShareTabHelper = null;
        }
        outState.putString("itemHeightArray", JacksonUtils.safeWriteAsString(masterShareTabHelper.getItemHeightArray()));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.global_chat_empty);
        MasterShareTabHelper masterShareTabHelper = this.masterShareTabHelper;
        ContentLanguageService contentLanguageService = null;
        if (masterShareTabHelper == null) {
            t.B("masterShareTabHelper");
            masterShareTabHelper = null;
        }
        ListView listView = getListView();
        t.h(listView, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        masterShareTabHelper.attachToList((NVListView) listView);
        ContentLanguageService contentLanguageService2 = this.languageService;
        if (contentLanguageService2 == null) {
            t.B("languageService");
        } else {
            contentLanguageService = contentLanguageService2;
        }
        contentLanguageService.registerLanguageChangeListener(this);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        int statusBarOverlaySize = getStatusBarOverlaySize();
        Context context = getContext();
        t.g(context);
        return statusBarOverlaySize + context.getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (isActive()) {
            GlobalChatService globalChatService = this.globalChatService;
            if (globalChatService == null) {
                t.B("globalChatService");
                globalChatService = null;
            }
            globalChatService.tryUpdateChatThreadUnread(this.needForceUpdateRecentChatList);
            if (this.needForceUpdateRecentChatList) {
                this.needForceUpdateRecentChatList = false;
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        String string;
        super.onCreate(bundle);
        setTitle(R.string.chats);
        this.masterShareTabHelper = new MasterShareTabHelper(this);
        Object service = getService("globalChat");
        t.i(service, "getService(...)");
        this.globalChatService = (GlobalChatService) service;
        Object service2 = getService("content_language");
        t.i(service2, "getService(...)");
        this.languageService = (ContentLanguageService) service2;
        Object service3 = getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        t.i(service3, "getService(...)");
        this.communityService = (CommunityService) service3;
        Object service4 = getService("chat");
        t.i(service4, "getService(...)");
        ChatService chatService = (ChatService) service4;
        this.chatService = chatService;
        MasterShareTabHelper masterShareTabHelper = null;
        if (chatService == null) {
            t.B("chatService");
            chatService = null;
        }
        chatService.addGlobalChatMessageReceptor(this);
        if (bundle != null) {
            string = bundle.getString("itemHeightArray");
        } else {
            string = null;
        }
        Class cls = Integer.TYPE;
        HashMap<Integer, Integer> mapAs = JacksonUtils.readMapAs(string, cls, cls);
        if (mapAs != null) {
            MasterShareTabHelper masterShareTabHelper2 = this.masterShareTabHelper;
            if (masterShareTabHelper2 == null) {
                t.B("masterShareTabHelper");
            } else {
                masterShareTabHelper = masterShareTabHelper2;
            }
            masterShareTabHelper.setItemHeightArray(mapAs);
        }
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ChatService chatService = this.chatService;
        if (chatService == null) {
            t.B("chatService");
            chatService = null;
        }
        chatService.removeGlobalChatMessageReceptor(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService == null) {
            t.B("languageService");
            contentLanguageService = null;
        }
        contentLanguageService.unRegisterLanguageChangeListener(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        GlobalChatService globalChatService = this.globalChatService;
        if (globalChatService == null) {
            t.B("globalChatService");
            globalChatService = null;
        }
        globalChatService.tryUpdateChatThreadUnread(true);
        ListAdapter listAdapter = getListAdapter();
        t.h(listAdapter, "null cannot be cast to non-null type com.narvii.list.NVAdapter");
        ((NVAdapter) listAdapter).refresh(1, null);
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public void resetOffset() {
        if (isAdded()) {
            MasterShareTabHelper masterShareTabHelper = this.masterShareTabHelper;
            if (masterShareTabHelper == null) {
                t.B("masterShareTabHelper");
                masterShareTabHelper = null;
            }
            masterShareTabHelper.resetOffsetViewTranslation();
        }
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public int topOffsetHeight() {
        int statusBarOverlaySize = getStatusBarOverlaySize();
        Context context = getContext();
        t.g(context);
        return statusBarOverlaySize + context.getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
    }
}
