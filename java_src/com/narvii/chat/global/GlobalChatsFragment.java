package com.narvii.chat.global;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.RecentChatListComponent;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.community.CommunityService;
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
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.util.EnterCommunityUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListOverlay;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: GlobalChatsFragment.kt */
/* loaded from: classes2.dex */
public final class GlobalChatsFragment extends NVListFragment implements MasterTopOffsetAdapter, LanguageChangeListener, RecentChatListComponent.NavigateToChatCallback, ChatService.ChatMessageReceptor, MasterTopBarAvailable {
    private HashMap _$_findViewCache;
    private ChatService chatService;
    private CommunityService communityService;
    private GlobalChatService globalChatService;
    private ContentLanguageService languageService;
    private MasterShareTabHelper masterShareTabHelper;
    private boolean needForceUpdateRecentChatList;

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

    @Override // com.narvii.list.NVListFragment
    protected boolean forceShowListWhenEmpty() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "GlobalChats";
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
    public void onUnreadThreadCountChanged(int i) {
    }

    @Override // com.narvii.app.NVFragment
    protected boolean sendPageViewEventToThirdParty() {
        return true;
    }

    public static final /* synthetic */ GlobalChatService access$getGlobalChatService$p(GlobalChatsFragment globalChatsFragment) {
        GlobalChatService globalChatService = globalChatsFragment.globalChatService;
        if (globalChatService != null) {
            return globalChatService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
        throw null;
    }

    public static final /* synthetic */ ContentLanguageService access$getLanguageService$p(GlobalChatsFragment globalChatsFragment) {
        ContentLanguageService contentLanguageService = globalChatsFragment.languageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("languageService");
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.chats);
        this.masterShareTabHelper = new MasterShareTabHelper(this);
        Object service = getService("globalChat");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"globalChat\")");
        this.globalChatService = (GlobalChatService) service;
        Object service2 = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"content_language\")");
        this.languageService = (ContentLanguageService) service2;
        Object service3 = getService("community");
        Intrinsics.checkExpressionValueIsNotNull(service3, "getService(\"community\")");
        this.communityService = (CommunityService) service3;
        Object service4 = getService("chat");
        Intrinsics.checkExpressionValueIsNotNull(service4, "getService(\"chat\")");
        this.chatService = (ChatService) service4;
        ChatService chatService = this.chatService;
        if (chatService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatService");
            throw null;
        }
        chatService.addGlobalChatMessageReceptor(this);
        String string = bundle != null ? bundle.getString("itemHeightArray") : null;
        Class cls = Integer.TYPE;
        HashMap<Integer, Integer> mapAs = JacksonUtils.readMapAs(string, cls, cls);
        if (mapAs != null) {
            MasterShareTabHelper masterShareTabHelper = this.masterShareTabHelper;
            if (masterShareTabHelper == null) {
                Intrinsics.throwUninitializedPropertyAccessException("masterShareTabHelper");
                throw null;
            }
            masterShareTabHelper.setItemHeightArray(mapAs);
        }
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_global_chat, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.global_chat_empty);
        MasterShareTabHelper masterShareTabHelper = this.masterShareTabHelper;
        if (masterShareTabHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("masterShareTabHelper");
            throw null;
        }
        ListView listView = getListView();
        if (listView == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
        }
        masterShareTabHelper.attachToList((NVListView) listView);
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("languageService");
            throw null;
        }
        contentLanguageService.registerLanguageChangeListener(this);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuItem menuItemAdd;
        MenuItem icon;
        super.onCreateOptionsMenu(menu, menuInflater);
        if (menu == null || (menuItemAdd = menu.add(0, R.string.search, 0, R.string.search)) == null || (icon = menuItemAdd.setIcon(R.drawable.ic_search)) == null) {
            return;
        }
        icon.setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == R.string.search) {
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
            intent.putExtra("tab", "chat");
            startActivity(intent);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ChatService chatService = this.chatService;
        if (chatService != null) {
            chatService.removeGlobalChatMessageReceptor(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("chatService");
            throw null;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (isActive()) {
            GlobalChatService globalChatService = this.globalChatService;
            if (globalChatService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
                throw null;
            }
            globalChatService.tryUpdateChatThreadUnread(this.needForceUpdateRecentChatList);
            if (this.needForceUpdateRecentChatList) {
                this.needForceUpdateRecentChatList = false;
            }
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("languageService");
            throw null;
        }
        contentLanguageService.unRegisterLanguageChangeListener(this);
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        MasterShareTabHelper masterShareTabHelper = this.masterShareTabHelper;
        if (masterShareTabHelper != null) {
            outState.putString("itemHeightArray", JacksonUtils.safeWriteAsString(masterShareTabHelper.getItemHeightArray()));
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("masterShareTabHelper");
            throw null;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        GlobalChatService globalChatService = this.globalChatService;
        if (globalChatService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
            throw null;
        }
        globalChatService.tryUpdateChatThreadUnread(true);
        ListAdapter listAdapter = getListAdapter();
        if (listAdapter == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.list.NVAdapter");
        }
        ((NVAdapter) listAdapter).refresh(1, null);
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        int statusBarOverlaySize = getStatusBarOverlaySize();
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            return statusBarOverlaySize + context.getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public int topOffsetHeight() {
        int statusBarOverlaySize = getStatusBarOverlaySize();
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            return statusBarOverlaySize + context.getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public void resetOffset() {
        if (isAdded()) {
            MasterShareTabHelper masterShareTabHelper = this.masterShareTabHelper;
            if (masterShareTabHelper != null) {
                masterShareTabHelper.resetOffsetViewTranslation();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("masterShareTabHelper");
                throw null;
            }
        }
    }

    @Override // com.narvii.chat.global.RecentChatListComponent.NavigateToChatCallback
    public void onNavigateToChat(String threadId, int i) {
        Intrinsics.checkParameterIsNotNull(threadId, "threadId");
        EnterCommunityUtils.fastEnter(i, "Recent Global Chats");
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra("id", threadId);
        intent.putExtra("__communityId", i);
        CommunityService communityService = this.communityService;
        if (communityService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("communityService");
            throw null;
        }
        intent.putExtra(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(communityService.getCommunity(i)));
        intent.putExtra(RtcService.KEY_HIDE_DRAWER, true);
        intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, true);
        intent.putExtra("fromRecentChat", true);
        intent.putExtra("Source", "Recent Global Chats");
        this.needForceUpdateRecentChatList = true;
        startActivity(intent);
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(String str) {
        if (str != null) {
            ListAdapter listAdapter = getListAdapter();
            if (listAdapter == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.list.NVAdapter");
            }
            ((NVAdapter) listAdapter).refresh(1, null);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new NVListOverlay(getContext(), null));
        mergeAdapter.addAdapter(staticViewAdapter);
        mergeAdapter.addAdapter(new LiveChatsAdapter(this), true);
        mergeAdapter.addAdapter(new MarginAdapter(this, Utils.dpToPxInt(getContext(), 75.0f)));
        return mergeAdapter;
    }

    /* compiled from: GlobalChatsFragment.kt */
    private final class RecentChatsAdapter extends NVAdapter {
        private RecyclerInListViewImpressionCollector<GlobalChatThread> ipc;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Recent";
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public RecentChatsAdapter(NVContext nVContext) {
            super(nVContext);
            final Class<GlobalChatThread> cls = GlobalChatThread.class;
            final int i = R.id.recent_chat_bar;
            this.ipc = new RecyclerInListViewImpressionCollector<GlobalChatThread>(cls, i) { // from class: com.narvii.chat.global.GlobalChatsFragment$RecentChatsAdapter$ipc$1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<GlobalChatThread> objectInfo) {
                    Intrinsics.checkParameterIsNotNull(builder, "builder");
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    if ((objectInfo != null ? (GlobalChatThread) objectInfo.object : null) != null) {
                        builder.objectType(ObjectType.chat).objectId(((GlobalChatThread) objectInfo.object).chatThreadId).extraParam(LogEvent.OBJECT_NDCID, Integer.valueOf(((GlobalChatThread) objectInfo.object).communityId));
                    }
                }
            };
        }

        public final RecyclerInListViewImpressionCollector<GlobalChatThread> getIpc() {
            return this.ipc;
        }

        public final void setIpc(RecyclerInListViewImpressionCollector<GlobalChatThread> recyclerInListViewImpressionCollector) {
            Intrinsics.checkParameterIsNotNull(recyclerInListViewImpressionCollector, "<set-?>");
            this.ipc = recyclerInListViewImpressionCollector;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(this.ipc);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (!(view instanceof RecentChatListComponent)) {
                view = null;
            }
            RecentChatListComponent view2 = (RecentChatListComponent) createView(R.layout.recent_chat_bar, viewGroup, (RecentChatListComponent) view);
            ArrayList<GlobalChatThread> recentChatList = GlobalChatsFragment.access$getGlobalChatService$p(GlobalChatsFragment.this).getRecentChatList();
            Intrinsics.checkExpressionValueIsNotNull(recentChatList, "globalChatService.recentChatList");
            view2.setRecentChats(recentChatList, GlobalChatsFragment.this);
            view2.setShownInAdapter(this);
            LogUtils.recyclerShownInAdapter(view2, this.ipc);
            Intrinsics.checkExpressionValueIsNotNull(view2, "view");
            return view2;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return GlobalChatsFragment.access$getGlobalChatService$p(GlobalChatsFragment.this).getRecentChatList().size() > 0 ? 1 : 0;
        }
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
        Intrinsics.checkParameterIsNotNull(chatMessageDto, "chatMessageDto");
        GlobalChatService globalChatService = this.globalChatService;
        if (globalChatService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
            throw null;
        }
        if (globalChatService.recentChatThreadIdList.isEmpty()) {
            return;
        }
        String str = chatMessageDto.chatMessage.threadId;
        if (str == null || str.length() == 0) {
            return;
        }
        GlobalChatService globalChatService2 = this.globalChatService;
        if (globalChatService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
            throw null;
        }
        if (globalChatService2.isThreadUnread(str)) {
            return;
        }
        GlobalChatService globalChatService3 = this.globalChatService;
        if (globalChatService3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
            throw null;
        }
        if (globalChatService3.recentChatThreadIdList.contains(str)) {
            ChatService chatService = this.chatService;
            if (chatService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatService");
                throw null;
            }
            chatService.updateThreadCheckTable(chatMessageDto);
            GlobalChatService globalChatService4 = this.globalChatService;
            if (globalChatService4 != null) {
                globalChatService4.tryUpdateChatThreadUnread(this.needForceUpdateRecentChatList);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
                throw null;
            }
        }
    }

    /* compiled from: GlobalChatsFragment.kt */
    private final class LiveChatsAdapter extends NVPagedAdapter<GlobalThreadListWrapper, GlobalThreadCategoryResponse> {
        private final HashMap<String, Community> communityMap;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "LivechatRooms";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 4;
        }

        public LiveChatsAdapter(NVContext nVContext) {
            super(nVContext);
            this.communityMap = new HashMap<>();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new GlobalChatImpressionCollector(ChatThread.class));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<GlobalThreadListWrapper> dataType() {
            return GlobalThreadListWrapper.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends GlobalThreadCategoryResponse> responseType() {
            return GlobalThreadCategoryResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().chatServer().path("/chat/thread/explore/categories");
            builderPath.param("threadPreviewSize", 20).param(IjkMediaMeta.IJKM_KEY_LANGUAGE, GlobalChatsFragment.access$getLanguageService$p(GlobalChatsFragment.this).getRequestPrefLanguageWithLocalAsDefault());
            ApiRequest apiRequestBuild = builderPath.build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "builder.build()");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(view instanceof GlobalChatCategoryItemView)) {
                view = null;
            }
            GlobalChatCategoryItemView itemView = (GlobalChatCategoryItemView) createView(R.layout.chat_category_item, viewGroup, (GlobalChatCategoryItemView) view);
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.global.GlobalThreadListWrapper");
            }
            itemView.setThreadCategory((GlobalThreadListWrapper) obj, this.communityMap, GlobalChatsFragment.this.getActivity());
            itemView.setShownInAdapter(this);
            Intrinsics.checkExpressionValueIsNotNull(itemView, "itemView");
            return itemView;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, GlobalThreadCategoryResponse globalThreadCategoryResponse, int i) {
            Map<String, Community> map;
            super.onPageResponse(apiRequest, (ApiRequest) globalThreadCategoryResponse, i);
            if (globalThreadCategoryResponse == null || (map = globalThreadCategoryResponse.communityInfoMapping) == null) {
                return;
            }
            this.communityMap.putAll(map);
        }
    }
}
