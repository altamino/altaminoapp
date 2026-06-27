package com.narvii.chat.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.chat.util.IMyChatList;
import com.narvii.chat.util.MyChatListDelegate;
import com.narvii.config.ConfigService;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: MyChatListService.kt */
/* loaded from: classes2.dex */
public final class MyChatListService implements ChatService.ChatMessageReceptor {
    private final AccountService accountService;
    private final MyChatListAdapter adapter;
    private final ChatHelper chatHelper;
    private final ChatService chatService;
    private int communityId;
    private final NVContext ctx;
    private final EventDispatcher<MyChatListObserver> observers;
    private final BroadcastReceiver receiver;
    private long requestTime;

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
    }

    public MyChatListService(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.observers = new EventDispatcher<>();
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        this.chatHelper = new ChatHelper(context);
        Object service = this.ctx.getService("chat");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"chat\")");
        this.chatService = (ChatService) service;
        Object service2 = this.ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service2, "ctx.getService(\"account\")");
        this.accountService = (AccountService) service2;
        this.adapter = new MyChatListAdapter(this, this.ctx);
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.chat.service.MyChatListService$receiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Intrinsics.checkParameterIsNotNull(context2, "context");
                Intrinsics.checkParameterIsNotNull(intent, "intent");
                if (Intrinsics.areEqual(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                    this.this$0.getAdapter().resetList();
                }
            }
        };
        ConfigService configService = (ConfigService) this.ctx.getService("config");
        Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
        this.communityId = configService.getCommunityId();
        ((NotificationCenter) this.ctx.getService("notification")).registerListener(this.adapter);
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final EventDispatcher<MyChatListObserver> getObservers() {
        return this.observers;
    }

    public final ChatHelper getChatHelper() {
        return this.chatHelper;
    }

    public final ChatService getChatService() {
        return this.chatService;
    }

    public final AccountService getAccountService() {
        return this.accountService;
    }

    public final MyChatListAdapter getAdapter() {
        return this.adapter;
    }

    public final long getRequestTime$Amino_bundle() {
        return this.requestTime;
    }

    public final void setRequestTime$Amino_bundle(long j) {
        this.requestTime = j;
    }

    public final int getCommunityId() {
        return this.communityId;
    }

    public final void setCommunityId(int i) {
        this.communityId = i;
    }

    public final BroadcastReceiver getReceiver$Amino_bundle() {
        return this.receiver;
    }

    public final void onCreate(NVContext nVContext) {
        this.chatService.addCommunityLevelReceptor(this.communityId, this);
        Context context = nVContext != null ? nVContext.getContext() : null;
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(context);
        Intrinsics.checkExpressionValueIsNotNull(localBroadcastManager, "LocalBroadcastManager.getInstance(ctx?.context!!)");
        localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public final void onDestroy(NVContext nVContext) {
        this.chatService.removeCommunityLevelReceptor(this.communityId, this);
        Context context = nVContext != null ? nVContext.getContext() : null;
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(context);
        Intrinsics.checkExpressionValueIsNotNull(localBroadcastManager, "LocalBroadcastManager.getInstance(ctx?.context!!)");
        localBroadcastManager.unregisterReceiver(this.receiver);
    }

    public final long getChatRequestTime() {
        return this.requestTime;
    }

    public final void addObserver(MyChatListObserver myChatListObserver) {
        if (myChatListObserver != null) {
            this.observers.addListener(myChatListObserver);
        }
    }

    public final void removeObserver(MyChatListObserver myChatListObserver) {
        if (myChatListObserver != null) {
            this.observers.removeListener(myChatListObserver);
        }
    }

    public final void dispatchChatListChange(final ThreadListResponse threadListResponse) {
        this.observers.dispatch(new Callback<MyChatListObserver>() { // from class: com.narvii.chat.service.MyChatListService.dispatchChatListChange.1
            @Override // com.narvii.util.Callback
            public final void call(MyChatListObserver myChatListObserver) {
                myChatListObserver.onMyChatListChanged(MyChatListService.this, threadListResponse);
            }
        });
    }

    public final void onAttach() {
        this.adapter.onAttach();
    }

    public final List<ChatThread> list() {
        List listRawList = this.adapter.rawList();
        return listRawList != null ? listRawList : CollectionsKt__CollectionsKt.emptyList();
    }

    public final boolean isEnd() {
        return this.adapter.isEnd();
    }

    public final String errorMessage() {
        return this.adapter.errorMessage();
    }

    public final String getErrorMessageValue() {
        return this.adapter.getErrorMessageValue();
    }

    public final void loadNextPage(boolean z) {
        this.adapter.loadNextPage(z);
    }

    public final void errorRetry() {
        this.adapter.onErrorRetry();
    }

    public final void resetList() {
        this.adapter.resetList();
    }

    public final void refresh(int i, Callback<Integer> callback) {
        this.adapter.refresh(i, callback);
    }

    /* compiled from: MyChatListService.kt */
    public final class MyChatListAdapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener, IMyChatList {
        private List<? extends ChatThread> chatList;
        private final NVContext ctx;
        private final MyChatListDelegate myChatListDelegate;
        private boolean suspendObserver;
        final /* synthetic */ MyChatListService this$0;

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 3;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            return null;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onThreadUpdateInfo(ThreadUpdateObject updateObject) {
            Intrinsics.checkParameterIsNotNull(updateObject, "updateObject");
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean resetWhenEmpty() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyChatListAdapter(MyChatListService myChatListService, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = myChatListService;
            this.ctx = ctx;
            this.myChatListDelegate = new MyChatListDelegate(this, this, false, null, false, 28, null);
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        public final boolean getSuspendObserver() {
            return this.suspendObserver;
        }

        public final void setSuspendObserver(boolean z) {
            this.suspendObserver = z;
        }

        public final List<ChatThread> getChatList() {
            return this.chatList;
        }

        public final void setChatList(List<? extends ChatThread> list) {
            this.chatList = list;
        }

        public final MyChatListDelegate getMyChatListDelegate() {
            return this.myChatListDelegate;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            if (this.attached) {
                return;
            }
            super.onAttach();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            if (!this.this$0.getAccountService().hasAccount() && callback != null) {
                callback.call(0);
            }
            super.refresh(i, callback);
        }

        public final String getErrorMessageValue() {
            return this._errorMsg;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ChatThread> dataType() {
            return ChatThread.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ThreadListResponse> responseType() {
            return ThreadListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (this.this$0.getAccountService().hasAccount()) {
                ApiRequest.Builder builderParam = ApiRequest.builder().chatServer().path("/chat/thread").param("type", "joined-me");
                if (z) {
                    builderParam.tag("start0");
                }
                return builderParam.build();
            }
            if (this._list.size() > 0 || !this._isEnd) {
                resetEmptyList();
                this.this$0.dispatchChatListChange(null);
            }
            return null;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            if (!(obj instanceof ChatThread)) {
                obj = null;
            }
            return ThreadListItem.getViewType(this.this$0.getChatHelper(), (ChatThread) obj);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<ChatThread> list() {
            return this.chatList;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            this.chatList = super.rawList();
            Collections.sort(this.chatList, ChatHelper.Companion.getTHREAD_COMPARATOR());
            super.notifyDataSetChanged();
            if (this.suspendObserver) {
                return;
            }
            this.this$0.dispatchChatListChange(null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ThreadListResponse threadListResponse, int i) {
            this.suspendObserver = true;
            super.onPageResponse(apiRequest, (ApiRequest) threadListResponse, i);
            if (Intrinsics.areEqual("start0", apiRequest != null ? apiRequest.tag() : null)) {
                this.this$0.setRequestTime$Amino_bundle(SystemClock.elapsedRealtime());
            }
            this.suspendObserver = false;
            this.this$0.dispatchChatListChange(threadListResponse);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<ChatThread> filterResponseList(List<ChatThread> list, int i) {
            if (list == null || i == 2 || !filterDuplicate()) {
                return list != null ? list : new ArrayList();
            }
            List listFilterDuplicated = Utils.filterDuplicated(rawList(), list);
            if (listFilterDuplicated != null) {
                return TypeIntrinsics.asMutableList(listFilterDuplicated);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.MutableList<com.narvii.model.ChatThread>");
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
            ArrayList<T> arrayList;
            if (Intrinsics.areEqual("start0", apiRequest != null ? apiRequest.tag() : null) && ((arrayList = this._list) == 0 || arrayList.isEmpty())) {
                this.this$0.setRequestTime$Amino_bundle(0L);
            }
            super.onFailResponse(apiRequest, str, apiResponse, i);
            this._isEnd = false;
            this.this$0.dispatchChatListChange(null);
        }

        @Override // com.narvii.chat.util.IMyChatList
        public ChatThread getMappedThreadFromList(String str) {
            List<? extends ChatThread> list = this.chatList;
            Object obj = null;
            if (list == null) {
                return null;
            }
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (Intrinsics.areEqual(((ChatThread) next).threadId, str)) {
                    obj = next;
                    break;
                }
            }
            return (ChatThread) obj;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(ChatMessage message) {
            Intrinsics.checkParameterIsNotNull(message, "message");
            refresh(256, null);
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void refreshList() {
            refresh(256, null);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            this.myChatListDelegate.onNotification(notification, Integer.valueOf(this.this$0.getCommunityId()));
        }

        public final void onNewMessage(ChatMessage chatMessage) {
            if (chatMessage != null) {
                this.myChatListDelegate.onNewChatMessage(chatMessage);
            }
        }
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
        Intrinsics.checkParameterIsNotNull(chatMessageDto, "chatMessageDto");
        this.adapter.onNewMessage(chatMessageDto.chatMessage);
    }
}
