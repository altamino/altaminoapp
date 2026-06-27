package com.narvii.chat.global.chat;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.global.GlobalChatsFragment;
import com.narvii.chat.global.chat.RecentChatListFragment;
import com.narvii.chat.global.chat.RecommendChatAdapter;
import com.narvii.chat.global.chat.RecommendChatAdapter.RecommendHeaderAdapter;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.chat.util.IMyChatList;
import com.narvii.chat.util.MyChatListDelegate;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiService;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RecentChatListFragment.kt */
/* loaded from: classes2.dex */
public final class RecentChatListFragment extends NVListFragment implements GlobalChatService.RecentChatListChangedListener, ChatService.ChatMessageReceptor, RecommendChatAdapter.RecommendChatRefresh {
    private HashMap _$_findViewCache;
    private AccountService accountService;
    private ApiService apiService;
    public ChatHelper chatHelper;
    private ChatListAdapter chatListAdapter;
    public ChatRequestHelper chatRequestHelper;
    private ChatService chatService;
    private GlobalChatService globalChatService;
    private boolean needFetchDataWhenResume;
    private RecommendChatAdapter recommendAdapter;

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
        return "Recent";
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
    }

    public static final /* synthetic */ AccountService access$getAccountService$p(RecentChatListFragment recentChatListFragment) {
        AccountService accountService = recentChatListFragment.accountService;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("accountService");
        throw null;
    }

    public static final /* synthetic */ ChatService access$getChatService$p(RecentChatListFragment recentChatListFragment) {
        ChatService chatService = recentChatListFragment.chatService;
        if (chatService != null) {
            return chatService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatService");
        throw null;
    }

    public static final /* synthetic */ GlobalChatService access$getGlobalChatService$p(RecentChatListFragment recentChatListFragment) {
        GlobalChatService globalChatService = recentChatListFragment.globalChatService;
        if (globalChatService != null) {
            return globalChatService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
        throw null;
    }

    public final ChatHelper getChatHelper() {
        ChatHelper chatHelper = this.chatHelper;
        if (chatHelper != null) {
            return chatHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatHelper");
        throw null;
    }

    public final void setChatHelper(ChatHelper chatHelper) {
        Intrinsics.checkParameterIsNotNull(chatHelper, "<set-?>");
        this.chatHelper = chatHelper;
    }

    public final ChatRequestHelper getChatRequestHelper() {
        ChatRequestHelper chatRequestHelper = this.chatRequestHelper;
        if (chatRequestHelper != null) {
            return chatRequestHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatRequestHelper");
        throw null;
    }

    public final void setChatRequestHelper(ChatRequestHelper chatRequestHelper) {
        Intrinsics.checkParameterIsNotNull(chatRequestHelper, "<set-?>");
        this.chatRequestHelper = chatRequestHelper;
    }

    public final boolean getNeedFetchDataWhenResume() {
        return this.needFetchDataWhenResume;
    }

    public final void setNeedFetchDataWhenResume(boolean z) {
        this.needFetchDataWhenResume = z;
    }

    public final ChatListAdapter getChatListAdapter() {
        return this.chatListAdapter;
    }

    public final void setChatListAdapter(ChatListAdapter chatListAdapter) {
        this.chatListAdapter = chatListAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("globalChat");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"globalChat\")");
        this.globalChatService = (GlobalChatService) service;
        Object service2 = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"account\")");
        this.accountService = (AccountService) service2;
        Object service3 = getService("chat");
        Intrinsics.checkExpressionValueIsNotNull(service3, "getService(\"chat\")");
        this.chatService = (ChatService) service3;
        ChatService chatService = this.chatService;
        if (chatService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatService");
            throw null;
        }
        chatService.addGlobalChatMessageReceptor(this);
        Object service4 = getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service4, "getService(\"api\")");
        this.apiService = (ApiService) service4;
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            this.chatHelper = new ChatHelper(context);
            this.chatRequestHelper = new ChatRequestHelper(this);
            GlobalChatService globalChatService = this.globalChatService;
            if (globalChatService != null) {
                globalChatService.addRecentChatChangedListener(this);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
                throw null;
            }
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.chatListAdapter = new ChatListAdapter(this);
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        dividerAdapter.setAdapter(this.chatListAdapter, 2);
        EmptyAdapter emptyAdapter = new EmptyAdapter(this, this);
        emptyAdapter.setAdapter(this.chatListAdapter);
        final RecommendChatAdapter recommendChatAdapter = new RecommendChatAdapter(this, 0);
        this.recommendAdapter = recommendChatAdapter;
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.chat.global.chat.RecentChatListFragment$createAdapter$mergeAdapter$1
            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return recommendChatAdapter.isListShown() || super.isListShown();
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void refresh(int i, Callback<Integer> callback) {
                super.refresh(i, callback);
                recommendChatAdapter.refresh(i, callback);
            }
        };
        mergeAdapter.addAdapter(dividerAdapter, true);
        mergeAdapter.addAdapter(emptyAdapter);
        mergeAdapter.addAdapter(recommendChatAdapter.new RecommendHeaderAdapter());
        mergeAdapter.addAdapter(recommendChatAdapter);
        mergeAdapter.addAdapter(new ExplorChatAdapter(this));
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        ChatListAdapter chatListAdapter = this.chatListAdapter;
        if (chatListAdapter != null) {
            chatListAdapter.sendRecentChatRequest();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setOverScrollMode(2);
        getListView().setOnItemLongClickListener(this.chatListAdapter);
        TextView textView = (TextView) setEmptyView(R.layout.empty_recent_chat).findViewById(R.id.more_aminos);
        ViewUtils.setMontserratExtraBoldTypeface(textView);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.RecentChatListFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LogEvent.clickBuilder(RecentChatListFragment.this, ActSemantic.listViewEnter).area("MoreChats").send();
                RecentChatListFragment.this.startActivity(FragmentWrapperActivity.intent(GlobalChatsFragment.class));
            }
        });
        ListView listView = getListView();
        Intrinsics.checkExpressionValueIsNotNull(listView, "listView");
        listView.setDivider(null);
        ListView listView2 = getListView();
        Intrinsics.checkExpressionValueIsNotNull(listView2, "listView");
        listView2.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            return (-1) * context.getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (z && this.needFetchDataWhenResume) {
            this.needFetchDataWhenResume = false;
            ChatListAdapter chatListAdapter = this.chatListAdapter;
            if (chatListAdapter != null) {
                chatListAdapter.sendRecentChatRequest();
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        GlobalChatService globalChatService = this.globalChatService;
        if (globalChatService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("globalChatService");
            throw null;
        }
        globalChatService.removeRecentChatChangedListener(this);
        ChatService chatService = this.chatService;
        if (chatService != null) {
            chatService.removeGlobalChatMessageReceptor(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("chatService");
            throw null;
        }
    }

    /* compiled from: RecentChatListFragment.kt */
    public final class EmptyAdapter extends NVPagerStatusAdapter {
        final /* synthetic */ RecentChatListFragment this$0;

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected int emptyLayoutId() {
            return R.layout.empty_inner_chat;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmptyAdapter(RecentChatListFragment recentChatListFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = recentChatListFragment;
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        public View createEmptyView(ViewGroup viewGroup, View view) {
            View viewFindViewById;
            View view2 = super.createEmptyView(viewGroup, view);
            if (view2 != null && (viewFindViewById = view2.findViewById(R.id.empty_retry)) != null) {
                viewFindViewById.setVisibility(8);
            }
            Intrinsics.checkExpressionValueIsNotNull(view2, "view");
            return view2;
        }
    }

    /* compiled from: RecentChatListFragment.kt */
    public final class ChatListAdapter extends NVAdapter implements NotificationListener, IMyChatList {
        private String errorMessage;
        private final MyChatListDelegate myChatListDelegate;
        private ArrayList<ChatThread> recentChatList;
        private boolean requestSent;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ChatRoomList";
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(ChatMessage message) {
            Intrinsics.checkParameterIsNotNull(message, "message");
        }

        public ChatListAdapter(NVContext nVContext) {
            super(nVContext);
            this.recentChatList = new ArrayList<>();
            this.myChatListDelegate = new MyChatListDelegate(this, this, true, null, true, 8, null);
        }

        public final ArrayList<ChatThread> getRecentChatList() {
            return this.recentChatList;
        }

        public final void setRecentChatList(ArrayList<ChatThread> arrayList) {
            Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
            this.recentChatList = arrayList;
        }

        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public final void setErrorMessage(String str) {
            this.errorMessage = str;
        }

        public final boolean getRequestSent() {
            return this.requestSent;
        }

        public final void setRequestSent(boolean z) {
            this.requestSent = z;
        }

        public final MyChatListDelegate getMyChatListDelegate() {
            return this.myChatListDelegate;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
            sendRecentChatRequest();
        }

        public final void sendRecentChatRequest() {
            RecentChatListFragment.access$getGlobalChatService$p(RecentChatListFragment.this).getRecentChatList(new Callback<GlobalChatService.RecentChatResult>() { // from class: com.narvii.chat.global.chat.RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1
                @Override // com.narvii.util.Callback
                public void call(GlobalChatService.RecentChatResult recentChatResult) {
                    ArrayList<ChatThread> arrayList;
                    this.this$0.setRequestSent(true);
                    this.this$0.setErrorMessage(recentChatResult != null ? recentChatResult.errorMessage : null);
                    RecentChatListFragment.ChatListAdapter chatListAdapter = this.this$0;
                    if (recentChatResult == null || (arrayList = recentChatResult.chatThreads) == null) {
                        arrayList = new ArrayList<>();
                    }
                    chatListAdapter.setRecentChatList(arrayList);
                    this.this$0.notifyDataSetChanged();
                }
            });
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ThreadListItem threadListItem;
            Object item = getItem(i);
            if (!(item instanceof ChatThread)) {
                item = null;
            }
            ChatThread chatThread = (ChatThread) item;
            if (chatThread == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
            }
            int viewType = ThreadListItem.getViewType(RecentChatListFragment.this.getChatHelper(), chatThread);
            if (viewType == 1) {
                View viewCreateView = createView(R.layout.chat_thread_group_item, viewGroup, view, "group");
                Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.chat…nt, convertView, \"group\")");
                threadListItem = (ThreadListItem) viewCreateView;
            } else if (viewType == 2) {
                View viewCreateView2 = createView(R.layout.chat_thread_hangout_item, viewGroup, view, "hangout");
                Intrinsics.checkExpressionValueIsNotNull(viewCreateView2, "createView(R.layout.chat…, convertView, \"hangout\")");
                threadListItem = (ThreadListItem) viewCreateView2;
            } else {
                View viewCreateView3 = createView(R.layout.chat_thread_user_item, viewGroup, view, "plain");
                Intrinsics.checkExpressionValueIsNotNull(viewCreateView3, "createView(R.layout.chat…nt, convertView, \"plain\")");
                threadListItem = (ThreadListItem) viewCreateView3;
            }
            threadListItem.setDarkTheme(true);
            threadListItem.setChatThread(chatThread, RecentChatListFragment.access$getChatService$p(RecentChatListFragment.this).getDraft(chatThread.threadId), RecentChatListFragment.access$getAccountService$p(RecentChatListFragment.this).getUserProfile());
            threadListItem.setBackgroundColor(0);
            tagCellForLog(threadListItem, chatThread);
            return threadListItem;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            ChatThread chatThread = this.recentChatList.get(i);
            Intrinsics.checkExpressionValueIsNotNull(chatThread, "recentChatList.get(position)");
            return chatThread;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.recentChatList.size();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.requestSent && this.recentChatList.isEmpty();
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            if (this.requestSent) {
                return this.errorMessage;
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.requestSent;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public ChatThread getMappedThreadFromList(String str) {
            Iterator<ChatThread> it = this.recentChatList.iterator();
            while (it.hasNext()) {
                ChatThread next = it.next();
                if (Utils.isEqualsNotNull(next.threadId, str)) {
                    return next;
                }
            }
            return null;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void refreshList() {
            if (!RecentChatListFragment.this.isActive()) {
                RecentChatListFragment.this.setNeedFetchDataWhenResume(true);
                return;
            }
            ChatListAdapter chatListAdapter = RecentChatListFragment.this.getChatListAdapter();
            if (chatListAdapter != null) {
                chatListAdapter.sendRecentChatRequest();
            }
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onThreadUpdateInfo(ThreadUpdateObject updateObject) {
            Intrinsics.checkParameterIsNotNull(updateObject, "updateObject");
            ChatThread mappedThreadFromList = getMappedThreadFromList(updateObject.id());
            if (mappedThreadFromList != null) {
                mappedThreadFromList.lastReadTime = updateObject.chatThread.lastReadTime;
            }
            Date threadLastReadTime = RecentChatListFragment.access$getChatService$p(RecentChatListFragment.this).getThreadLastReadTime(updateObject.chatThread.ndcId, mappedThreadFromList != null ? mappedThreadFromList.threadId : null);
            if (RecentChatListFragment.this.getChatHelper().isNewerTime(mappedThreadFromList != null ? mappedThreadFromList.lastReadTime : null, threadLastReadTime) && mappedThreadFromList != null) {
                mappedThreadFromList.lastReadTime = threadLastReadTime;
            }
            notifyDataSetChanged();
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification == null) {
                return;
            }
            Object obj = notification.obj;
            if (obj instanceof ChatThread) {
                ArrayList<ChatThread> arrayList = this.recentChatList;
                if (obj == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                }
                int iIndexOfId = Utils.indexOfId(arrayList, ((ChatThread) obj).id());
                if (iIndexOfId >= 0) {
                    ArrayList<ChatThread> arrayList2 = this.recentChatList;
                    Object obj2 = notification.obj;
                    if (obj2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                    }
                    arrayList2.set(iIndexOfId, (ChatThread) obj2);
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            this.myChatListDelegate.onNotification(notification, null);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                ChatThread chatThread = (ChatThread) obj;
                MyChatListDelegate.openMyChat$default(this.myChatListDelegate, chatThread, Integer.valueOf(chatThread.ndcId), null, 4, null);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                ChatThread chatThread = (ChatThread) obj;
                this.myChatListDelegate.onLongClick(chatThread, Integer.valueOf(chatThread.ndcId), RecentChatListFragment.this.getChildFragmentManager(), false);
                return true;
            }
            return super.onLongClick(listAdapter, i, obj, view, view2);
        }

        public final void onNewMessage(ChatMessage message) {
            Intrinsics.checkParameterIsNotNull(message, "message");
            this.myChatListDelegate.onNewChatMessage(message);
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            super.onErrorRetry();
            this.errorMessage = null;
            this.requestSent = false;
            notifyDataSetChanged();
            sendRecentChatRequest();
        }
    }

    @Override // com.narvii.chat.global.chat.RecommendChatAdapter.RecommendChatRefresh
    public void refreshRecommendChat() {
        RecommendChatAdapter recommendChatAdapter = this.recommendAdapter;
        if (recommendChatAdapter != null) {
            recommendChatAdapter.refreshWithRateControl();
        }
    }

    /* compiled from: RecentChatListFragment.kt */
    public static final class ExplorChatAdapter extends AdriftAdapter {
        public ExplorChatAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_cell_explorer_global_chat, viewGroup, view);
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "createView(R.layout.item…hat, parent, convertView)");
            viewCreateView.setOnClickListener(this.subviewClickListener);
            ViewUtils.setMontserratExtraBoldTypeface((TextView) viewCreateView.findViewById(R.id.more_aminos));
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("MoreChats").send();
            startActivity(FragmentWrapperActivity.intent(GlobalChatsFragment.class));
            return true;
        }
    }

    @Override // com.narvii.chat.util.GlobalChatService.RecentChatListChangedListener
    public void onRecentChatListChanged(ArrayList<GlobalChatThread> arrayList) {
        if (arrayList != null) {
            if (!isActive()) {
                this.needFetchDataWhenResume = true;
                return;
            }
            ChatListAdapter chatListAdapter = this.chatListAdapter;
            if (chatListAdapter != null) {
                chatListAdapter.sendRecentChatRequest();
            }
        }
    }

    @Override // com.narvii.chat.util.GlobalChatService.RecentChatListChangedListener
    public void onRedDotChanged(ArrayList<GlobalChatThread> arrayList) {
        ChatListAdapter chatListAdapter;
        if (arrayList == null || (chatListAdapter = this.chatListAdapter) == null) {
            return;
        }
        chatListAdapter.notifyDataSetChanged();
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
        ChatListAdapter chatListAdapter;
        Intrinsics.checkParameterIsNotNull(chatMessageDto, "chatMessageDto");
        if (chatMessageDto.chatMessage != null) {
            ChatListAdapter chatListAdapter2 = this.chatListAdapter;
            ArrayList<ChatThread> recentChatList = chatListAdapter2 != null ? chatListAdapter2.getRecentChatList() : null;
            ChatMessage chatMessage = chatMessageDto.chatMessage;
            if (Utils.indexOfId(recentChatList, chatMessage != null ? chatMessage.threadId : null) < 0 || (chatListAdapter = this.chatListAdapter) == null) {
                return;
            }
            ChatMessage chatMessage2 = chatMessageDto.chatMessage;
            Intrinsics.checkExpressionValueIsNotNull(chatMessage2, "chatMessageDto!!.chatMessage");
            chatListAdapter.onNewMessage(chatMessage2);
        }
    }
}
