package com.narvii.chat.global.chat;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.global.GlobalChatsFragment;
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
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiService;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Date;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class RecentChatListFragment extends NVListFragment implements GlobalChatService.RecentChatListChangedListener, ChatService.ChatMessageReceptor, RecommendChatAdapter.RecommendChatRefresh {
    private AccountService accountService;
    private ApiService apiService;
    public ChatHelper chatHelper;

    @Nullable
    private ChatListAdapter chatListAdapter;
    public ChatRequestHelper chatRequestHelper;
    private ChatService chatService;
    private GlobalChatService globalChatService;
    private boolean needFetchDataWhenResume;

    @Nullable
    private RecommendChatAdapter recommendAdapter;

    public final class ChatListAdapter extends NVAdapter implements NotificationListener, IMyChatList {

        @Nullable
        private String errorMessage;

        @NotNull
        private final MyChatListDelegate myChatListDelegate;

        @NotNull
        private ArrayList<ChatThread> recentChatList;
        private boolean requestSent;

        @Override // com.narvii.list.NVAdapter
        @Nullable
        public String errorMessage() {
            if (this.requestSent) {
                return this.errorMessage;
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "ChatRoomList";
        }

        @Nullable
        public final String getErrorMessage() {
            return this.errorMessage;
        }

        @NotNull
        public final MyChatListDelegate getMyChatListDelegate() {
            return this.myChatListDelegate;
        }

        @NotNull
        public final ArrayList<ChatThread> getRecentChatList() {
            return this.recentChatList;
        }

        public final boolean getRequestSent() {
            return this.requestSent;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.requestSent;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(@NotNull ChatMessage message) {
            t.j(message, "message");
        }

        public final void setErrorMessage(@Nullable String str) {
            this.errorMessage = str;
        }

        public final void setRecentChatList(@NotNull ArrayList<ChatThread> arrayList) {
            t.j(arrayList, "<set-?>");
            this.recentChatList = arrayList;
        }

        public final void setRequestSent(boolean z6) {
            this.requestSent = z6;
        }

        public ChatListAdapter(NVContext nVContext) {
            super(nVContext);
            this.recentChatList = new ArrayList<>();
            this.myChatListDelegate = new MyChatListDelegate(this, this, true, null, true, 8, null);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.recentChatList.size();
        }

        @Override // android.widget.Adapter
        @NotNull
        public Object getItem(int i10) {
            ChatThread chatThread = this.recentChatList.get(i10);
            t.i(chatThread, "get(...)");
            return chatThread;
        }

        @Override // com.narvii.chat.util.IMyChatList
        @Nullable
        public ChatThread getMappedThreadFromList(@Nullable String str) {
            for (ChatThread chatThread : this.recentChatList) {
                if (Utils.isEqualsNotNull(chatThread.threadId, str)) {
                    return chatThread;
                }
            }
            return null;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.requestSent && this.recentChatList.isEmpty();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (!(obj instanceof ChatThread)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            ChatThread chatThread = (ChatThread) obj;
            MyChatListDelegate.openMyChat$default(this.myChatListDelegate, chatThread, Integer.valueOf(chatThread.ndcId), null, 4, null);
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (!(obj instanceof ChatThread)) {
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
            ChatThread chatThread = (ChatThread) obj;
            this.myChatListDelegate.onLongClick(chatThread, Integer.valueOf(chatThread.ndcId), RecentChatListFragment.this.getChildFragmentManager(), false);
            return true;
        }

        public final void onNewMessage(@NotNull ChatMessage message) {
            t.j(message, "message");
            this.myChatListDelegate.onNewChatMessage(message);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(@Nullable Notification notification) {
            if (notification == null) {
                return;
            }
            Object obj = notification.obj;
            if (!(obj instanceof ChatThread)) {
                this.myChatListDelegate.onNotification(notification, null);
                return;
            }
            ArrayList<ChatThread> arrayList = this.recentChatList;
            t.h(obj, "null cannot be cast to non-null type com.narvii.model.ChatThread");
            int iIndexOfId = Utils.indexOfId(arrayList, ((ChatThread) obj).id());
            if (iIndexOfId >= 0) {
                ArrayList<ChatThread> arrayList2 = this.recentChatList;
                Object obj2 = notification.obj;
                t.h(obj2, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                arrayList2.set(iIndexOfId, (ChatThread) obj2);
                notifyDataSetChanged();
            }
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onThreadUpdateInfo(@NotNull ThreadUpdateObject updateObject) {
            t.j(updateObject, "updateObject");
            ChatThread mappedThreadFromList = getMappedThreadFromList(updateObject.id());
            if (mappedThreadFromList != null) {
                mappedThreadFromList.lastReadTime = updateObject.chatThread.lastReadTime;
            }
            ChatService chatService = RecentChatListFragment.this.chatService;
            if (chatService == null) {
                t.B("chatService");
                chatService = null;
            }
            Date threadLastReadTime = chatService.getThreadLastReadTime(updateObject.chatThread.ndcId, mappedThreadFromList != null ? mappedThreadFromList.threadId : null);
            if (RecentChatListFragment.this.getChatHelper().isNewerTime(mappedThreadFromList != null ? mappedThreadFromList.lastReadTime : null, threadLastReadTime) && mappedThreadFromList != null) {
                mappedThreadFromList.lastReadTime = threadLastReadTime;
            }
            notifyDataSetChanged();
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

        public final void sendRecentChatRequest() {
            GlobalChatService globalChatService = RecentChatListFragment.this.globalChatService;
            if (globalChatService == null) {
                t.B("globalChatService");
                globalChatService = null;
            }
            globalChatService.getRecentChatList(new Callback<GlobalChatService.RecentChatResult>() { // from class: com.narvii.chat.global.chat.RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1
                @Override // com.narvii.util.Callback
                public void call(@Nullable GlobalChatService.RecentChatResult recentChatResult) {
                    this.this$0.setRequestSent(true);
                    this.this$0.setErrorMessage(recentChatResult != null ? recentChatResult.errorMessage : null);
                    RecentChatListFragment.ChatListAdapter chatListAdapter = this.this$0;
                    ArrayList<ChatThread> arrayList = recentChatResult != null ? recentChatResult.chatThreads : null;
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    chatListAdapter.setRecentChatList(arrayList);
                    this.this$0.notifyDataSetChanged();
                }
            });
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            ChatThread chatThread;
            ThreadListItem threadListItem;
            Object item = getItem(i10);
            ChatService chatService = null;
            if (item instanceof ChatThread) {
                chatThread = (ChatThread) item;
            } else {
                chatThread = null;
            }
            t.h(chatThread, "null cannot be cast to non-null type com.narvii.model.ChatThread");
            int viewType = ThreadListItem.getViewType(RecentChatListFragment.this.getChatHelper(), chatThread);
            if (viewType != 1) {
                if (viewType != 2) {
                    View viewCreateView = createView(R.layout.chat_thread_user_item, viewGroup, view, "plain");
                    t.i(viewCreateView, "createView(...)");
                    threadListItem = (ThreadListItem) viewCreateView;
                } else {
                    View viewCreateView2 = createView(R.layout.chat_thread_hangout_item, viewGroup, view, "hangout");
                    t.i(viewCreateView2, "createView(...)");
                    threadListItem = (ThreadListItem) viewCreateView2;
                }
            } else {
                View viewCreateView3 = createView(R.layout.chat_thread_group_item, viewGroup, view, "group");
                t.i(viewCreateView3, "createView(...)");
                threadListItem = (ThreadListItem) viewCreateView3;
            }
            threadListItem.setDarkTheme(true);
            AccountService accountService = RecentChatListFragment.this.accountService;
            if (accountService == null) {
                t.B("accountService");
                accountService = null;
            }
            User userProfile = accountService.getUserProfile();
            ChatService chatService2 = RecentChatListFragment.this.chatService;
            if (chatService2 == null) {
                t.B("chatService");
            } else {
                chatService = chatService2;
            }
            threadListItem.setChatThread(chatThread, chatService.getDraft(chatThread.threadId), userProfile);
            threadListItem.setBackgroundColor(0);
            tagCellForLog(threadListItem, chatThread);
            return threadListItem;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
            sendRecentChatRequest();
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

    public final class EmptyAdapter extends NVPagerStatusAdapter {
        final /* synthetic */ RecentChatListFragment this$0;

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected int emptyLayoutId() {
            return R.layout.empty_inner_chat;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmptyAdapter(@NotNull RecentChatListFragment recentChatListFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = recentChatListFragment;
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        @NotNull
        public View createEmptyView(@Nullable ViewGroup viewGroup, @Nullable View view) {
            View viewFindViewById;
            View viewCreateEmptyView = super.createEmptyView(viewGroup, view);
            if (viewCreateEmptyView != null) {
                viewFindViewById = viewCreateEmptyView.findViewById(R.id.empty_retry);
            } else {
                viewFindViewById = null;
            }
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            t.g(viewCreateEmptyView);
            return viewCreateEmptyView;
        }
    }

    public static final class ExplorChatAdapter extends AdriftAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("MoreChats").send();
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(GlobalChatsFragment.class));
            return true;
        }

        public ExplorChatAdapter(@Nullable NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_cell_explorer_global_chat, viewGroup, view);
            t.i(viewCreateView, "createView(...)");
            viewCreateView.setOnClickListener(this.subviewClickListener);
            ViewUtils.setMontserratExtraBoldTypeface((TextView) viewCreateView.findViewById(R.id.more_aminos));
            return viewCreateView;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public final ChatListAdapter getChatListAdapter() {
        return this.chatListAdapter;
    }

    public final boolean getNeedFetchDataWhenResume() {
        return this.needFetchDataWhenResume;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "chats";
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

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
    }

    public final void setChatHelper(@NotNull ChatHelper chatHelper) {
        t.j(chatHelper, "<set-?>");
        this.chatHelper = chatHelper;
    }

    public final void setChatListAdapter(@Nullable ChatListAdapter chatListAdapter) {
        this.chatListAdapter = chatListAdapter;
    }

    public final void setChatRequestHelper(@NotNull ChatRequestHelper chatRequestHelper) {
        t.j(chatRequestHelper, "<set-?>");
        this.chatRequestHelper = chatRequestHelper;
    }

    public final void setNeedFetchDataWhenResume(boolean z6) {
        this.needFetchDataWhenResume = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(RecentChatListFragment this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.listViewEnter).area("MoreChats").send();
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, FragmentWrapperActivity.intent(GlobalChatsFragment.class));
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        this.chatListAdapter = new ChatListAdapter(this);
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        dividerAdapter.setAdapter(this.chatListAdapter, 2);
        EmptyAdapter emptyAdapter = new EmptyAdapter(this, this);
        emptyAdapter.setAdapter(this.chatListAdapter);
        final RecommendChatAdapter recommendChatAdapter = new RecommendChatAdapter(this, 0, new RecentChatListFragment$createAdapter$recommendAdapter$1(this));
        this.recommendAdapter = recommendChatAdapter;
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.chat.global.chat.RecentChatListFragment$createAdapter$mergeAdapter$1
            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return recommendChatAdapter.isListShown() || super.isListShown();
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public void refresh(int i10, @Nullable Callback<Integer> callback) {
                super.refresh(i10, callback);
                recommendChatAdapter.refresh(i10, callback);
            }
        };
        mergeAdapter.addAdapter(dividerAdapter, true);
        mergeAdapter.addAdapter(emptyAdapter);
        mergeAdapter.addAdapter(recommendChatAdapter.new RecommendHeaderAdapter());
        mergeAdapter.addAdapter(recommendChatAdapter);
        mergeAdapter.addAdapter(new ExplorChatAdapter(this));
        return mergeAdapter;
    }

    @NotNull
    public final ChatHelper getChatHelper() {
        ChatHelper chatHelper = this.chatHelper;
        if (chatHelper != null) {
            return chatHelper;
        }
        t.B("chatHelper");
        return null;
    }

    @NotNull
    public final ChatRequestHelper getChatRequestHelper() {
        ChatRequestHelper chatRequestHelper = this.chatRequestHelper;
        if (chatRequestHelper != null) {
            return chatRequestHelper;
        }
        t.B("chatRequestHelper");
        return null;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
        ChatListAdapter chatListAdapter;
        t.j(chatMessageDto, "chatMessageDto");
        if (chatMessageDto.chatMessage != null) {
            ChatListAdapter chatListAdapter2 = this.chatListAdapter;
            ArrayList<ChatThread> recentChatList = chatListAdapter2 != null ? chatListAdapter2.getRecentChatList() : null;
            ChatMessage chatMessage = chatMessageDto.chatMessage;
            if (Utils.indexOfId(recentChatList, chatMessage != null ? chatMessage.threadId : null) < 0 || (chatListAdapter = this.chatListAdapter) == null) {
                return;
            }
            ChatMessage chatMessage2 = chatMessageDto.chatMessage;
            t.i(chatMessage2, "chatMessage");
            chatListAdapter.onNewMessage(chatMessage2);
        }
    }

    @Override // com.narvii.chat.util.GlobalChatService.RecentChatListChangedListener
    public void onRecentChatListChanged(@Nullable ArrayList<GlobalChatThread> arrayList) {
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
    public void onRedDotChanged(@Nullable ArrayList<GlobalChatThread> arrayList) {
        ChatListAdapter chatListAdapter;
        if (arrayList == null || (chatListAdapter = this.chatListAdapter) == null) {
            return;
        }
        chatListAdapter.notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        setOverScrollMode(2);
        getListView().setOnItemLongClickListener(this.chatListAdapter);
        TextView textView = (TextView) setEmptyView(R.layout.empty_recent_chat).findViewById(R.id.more_aminos);
        ViewUtils.setMontserratExtraBoldTypeface(textView);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RecentChatListFragment.onViewCreated$lambda$0(this.f1935a, view2);
            }
        });
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    @Override // com.narvii.chat.global.chat.RecommendChatAdapter.RecommendChatRefresh
    public void refreshRecommendChat() {
        RecommendChatAdapter recommendChatAdapter = this.recommendAdapter;
        if (recommendChatAdapter != null) {
            recommendChatAdapter.refreshWithRateControl();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        return requireContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height) * (-1);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (z6 && this.needFetchDataWhenResume) {
            this.needFetchDataWhenResume = false;
            ChatListAdapter chatListAdapter = this.chatListAdapter;
            if (chatListAdapter != null) {
                chatListAdapter.sendRecentChatRequest();
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("globalChat");
        t.i(service, "getService(...)");
        this.globalChatService = (GlobalChatService) service;
        Object service2 = getService("account");
        t.i(service2, "getService(...)");
        this.accountService = (AccountService) service2;
        Object service3 = getService("chat");
        t.i(service3, "getService(...)");
        ChatService chatService = (ChatService) service3;
        this.chatService = chatService;
        GlobalChatService globalChatService = null;
        if (chatService == null) {
            t.B("chatService");
            chatService = null;
        }
        chatService.addGlobalChatMessageReceptor(this);
        Object service4 = getService("api");
        t.i(service4, "getService(...)");
        this.apiService = (ApiService) service4;
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext(...)");
        setChatHelper(new ChatHelper(contextRequireContext));
        setChatRequestHelper(new ChatRequestHelper(this));
        GlobalChatService globalChatService2 = this.globalChatService;
        if (globalChatService2 == null) {
            t.B("globalChatService");
        } else {
            globalChatService = globalChatService2;
        }
        globalChatService.addRecentChatChangedListener(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        GlobalChatService globalChatService = this.globalChatService;
        ChatService chatService = null;
        if (globalChatService == null) {
            t.B("globalChatService");
            globalChatService = null;
        }
        globalChatService.removeRecentChatChangedListener(this);
        ChatService chatService2 = this.chatService;
        if (chatService2 == null) {
            t.B("chatService");
        } else {
            chatService = chatService2;
        }
        chatService.removeGlobalChatMessageReceptor(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        ChatListAdapter chatListAdapter = this.chatListAdapter;
        if (chatListAdapter != null) {
            chatListAdapter.sendRecentChatRequest();
        }
    }
}
