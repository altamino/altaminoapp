package com.narvii.chat.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
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
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class MyChatListService implements ChatService.ChatMessageReceptor {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "MyChatListService";

    @NotNull
    private final AccountService accountService;

    @NotNull
    private final MyChatListAdapter adapter;

    @NotNull
    private final ChatHelper chatHelper;

    @NotNull
    private final ChatService chatService;
    private int communityId;

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final EventDispatcher<MyChatListObserver> observers;

    @NotNull
    private final BroadcastReceiver receiver;
    private long requestTime;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class MyChatListAdapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener, IMyChatList {

        @Nullable
        private List<? extends ChatThread> chatList;

        @NotNull
        private final NVContext ctx;

        @NotNull
        private final MyChatListDelegate myChatListDelegate;
        private boolean suspendObserver;
        final /* synthetic */ MyChatListService this$0;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        public Class<ChatThread> dataType() {
            return ChatThread.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Nullable
        public final List<ChatThread> getChatList() {
            return this.chatList;
        }

        @NotNull
        public final NVContext getCtx() {
            return this.ctx;
        }

        @Nullable
        public final String getErrorMessageValue() {
            return this._errorMsg;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 3;
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        protected View getItemView(@Nullable Object obj, @Nullable View view, @Nullable ViewGroup viewGroup) {
            return null;
        }

        @NotNull
        public final MyChatListDelegate getMyChatListDelegate() {
            return this.myChatListDelegate;
        }

        public final boolean getSuspendObserver() {
            return this.suspendObserver;
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        public List<ChatThread> list() {
            return this.chatList;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onFailResponse(@Nullable ApiRequest apiRequest, @Nullable String str, @Nullable ApiResponse apiResponse, int i10) {
            ArrayList<T> arrayList;
            if (t.e("start0", apiRequest != null ? apiRequest.tag() : null) && ((arrayList = this._list) == 0 || arrayList.isEmpty())) {
                this.this$0.setRequestTime$Amino_bundle(0L);
            }
            super.onFailResponse(apiRequest, str, apiResponse, i10);
            this._isEnd = false;
            this.this$0.dispatchChatListChange(null);
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onThreadUpdateInfo(@NotNull ThreadUpdateObject updateObject) {
            t.j(updateObject, "updateObject");
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean resetWhenEmpty() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        public Class<? extends ThreadListResponse> responseType() {
            return ThreadListResponse.class;
        }

        public final void setChatList(@Nullable List<? extends ChatThread> list) {
            this.chatList = list;
        }

        public final void setSuspendObserver(boolean z6) {
            this.suspendObserver = z6;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyChatListAdapter(@NotNull MyChatListService myChatListService, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = myChatListService;
            this.ctx = ctx;
            this.myChatListDelegate = new MyChatListDelegate(this, this, false, null, false, 28, null);
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        protected ApiRequest createRequest(boolean z6) {
            if (this.this$0.getAccountService().hasAccount()) {
                ApiRequest.Builder builderParam = ApiRequest.builder().chatServer().path("/chat/thread").param("type", "joined-me");
                if (z6) {
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
        @NotNull
        protected List<ChatThread> filterResponseList(@Nullable List<ChatThread> list, int i10) {
            if (list == null || i10 == 2 || !filterDuplicate()) {
                return list == null ? new ArrayList() : list;
            }
            List listFilterDuplicated = Utils.filterDuplicated(rawList(), list);
            t.h(listFilterDuplicated, "null cannot be cast to non-null type kotlin.collections.MutableList<com.narvii.model.ChatThread>");
            return v0.c(listFilterDuplicated);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(@Nullable Object obj) {
            return ThreadListItem.getViewType(this.this$0.getChatHelper(), obj instanceof ChatThread ? (ChatThread) obj : null);
        }

        @Override // com.narvii.chat.util.IMyChatList
        @Nullable
        public ChatThread getMappedThreadFromList(@Nullable String str) {
            List<? extends ChatThread> list = this.chatList;
            Object obj = null;
            if (list == null) {
                return null;
            }
            for (Object obj2 : list) {
                if (t.e(((ChatThread) obj2).threadId, str)) {
                    obj = obj2;
                    break;
                }
            }
            return (ChatThread) obj;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            if (this.attached) {
                return;
            }
            super.onAttach();
        }

        public final void onNewMessage(@Nullable ChatMessage chatMessage) {
            if (chatMessage != null) {
                this.myChatListDelegate.onNewChatMessage(chatMessage);
            }
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(@Nullable Notification notification) {
            this.myChatListDelegate.onNotification(notification, Integer.valueOf(this.this$0.getCommunityId()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(@Nullable ApiRequest apiRequest, @Nullable ThreadListResponse threadListResponse, int i10) {
            this.suspendObserver = true;
            super.onPageResponse(apiRequest, threadListResponse, i10);
            if (t.e("start0", apiRequest != null ? apiRequest.tag() : null)) {
                this.this$0.setRequestTime$Amino_bundle(SystemClock.elapsedRealtime());
            }
            this.suspendObserver = false;
            this.this$0.dispatchChatListChange(threadListResponse);
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(@NotNull ChatMessage message) {
            t.j(message, "message");
            refresh(256, null);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, @Nullable Callback<Integer> callback) {
            if (!this.this$0.getAccountService().hasAccount() && callback != null) {
                callback.call(0);
            }
            super.refresh(i10, callback);
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void refreshList() {
            refresh(256, null);
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends ChatThread> listRawList = super.rawList();
            this.chatList = listRawList;
            try {
                Collections.sort(listRawList, ChatHelper.Companion.getTHREAD_COMPARATOR());
            } catch (IllegalArgumentException e) {
                Log.e(MyChatListService.TAG, "notifyDataSetChanged: failed to sort thread list", e);
            }
            super.notifyDataSetChanged();
            if (!this.suspendObserver) {
                this.this$0.dispatchChatListChange(null);
            }
        }
    }

    @NotNull
    public final AccountService getAccountService() {
        return this.accountService;
    }

    @NotNull
    public final MyChatListAdapter getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final ChatHelper getChatHelper() {
        return this.chatHelper;
    }

    public final long getChatRequestTime() {
        return this.requestTime;
    }

    @NotNull
    public final ChatService getChatService() {
        return this.chatService;
    }

    public final int getCommunityId() {
        return this.communityId;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @NotNull
    public final EventDispatcher<MyChatListObserver> getObservers() {
        return this.observers;
    }

    @NotNull
    public final BroadcastReceiver getReceiver$Amino_bundle() {
        return this.receiver;
    }

    public final long getRequestTime$Amino_bundle() {
        return this.requestTime;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
    }

    public final void setCommunityId(int i10) {
        this.communityId = i10;
    }

    public final void setRequestTime$Amino_bundle(long j6) {
        this.requestTime = j6;
    }

    public MyChatListService(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        this.observers = new EventDispatcher<>();
        Context context = ctx.getContext();
        t.i(context, "getContext(...)");
        this.chatHelper = new ChatHelper(context);
        Object service = ctx.getService("chat");
        t.i(service, "getService(...)");
        this.chatService = (ChatService) service;
        Object service2 = ctx.getService("account");
        t.i(service2, "getService(...)");
        this.accountService = (AccountService) service2;
        MyChatListAdapter myChatListAdapter = new MyChatListAdapter(this, ctx);
        this.adapter = myChatListAdapter;
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.chat.service.MyChatListService$receiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(@NotNull Context context2, @NotNull Intent intent) {
                t.j(context2, "context");
                t.j(intent, "intent");
                if (t.e(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                    this.this$0.getAdapter().resetList();
                }
            }
        };
        this.communityId = ((ConfigService) ctx.getService("config")).getCommunityId();
        ((NotificationCenter) ctx.getService("notification")).registerListener(myChatListAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatchChatListChange$lambda$2(MyChatListService this$0, ThreadListResponse threadListResponse, MyChatListObserver myChatListObserver) {
        t.j(this$0, "this$0");
        myChatListObserver.onMyChatListChanged(this$0, threadListResponse);
    }

    public final void addObserver(@Nullable MyChatListObserver myChatListObserver) {
        if (myChatListObserver != null) {
            this.observers.addListener(myChatListObserver);
        }
    }

    public final void dispatchChatListChange(@Nullable final ThreadListResponse threadListResponse) {
        this.observers.dispatch(new Callback() { // from class: com.narvii.chat.service.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                MyChatListService.dispatchChatListChange$lambda$2(this.f2044a, threadListResponse, (MyChatListObserver) obj);
            }
        });
    }

    @Nullable
    public final String errorMessage() {
        return this.adapter.errorMessage();
    }

    public final void errorRetry() {
        this.adapter.onErrorRetry();
    }

    @Nullable
    public final String getErrorMessageValue() {
        return this.adapter.getErrorMessageValue();
    }

    public final boolean isEnd() {
        return this.adapter.isEnd();
    }

    @NotNull
    public final List<ChatThread> list() {
        List listRawList = this.adapter.rawList();
        return listRawList == null ? v.m() : listRawList;
    }

    public final void loadNextPage(boolean z6) {
        this.adapter.loadNextPage(z6);
    }

    public final void onAttach() {
        this.adapter.onAttach();
    }

    public final void onCreate(@Nullable NVContext nVContext) {
        this.chatService.addCommunityLevelReceptor(this.communityId, this);
        Context context = nVContext != null ? nVContext.getContext() : null;
        t.g(context);
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(context);
        t.i(localBroadcastManagerB, "getInstance(...)");
        localBroadcastManagerB.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public final void onDestroy(@Nullable NVContext nVContext) {
        this.chatService.removeCommunityLevelReceptor(this.communityId, this);
        Context context = nVContext != null ? nVContext.getContext() : null;
        t.g(context);
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(context);
        t.i(localBroadcastManagerB, "getInstance(...)");
        localBroadcastManagerB.f(this.receiver);
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
        t.j(chatMessageDto, "chatMessageDto");
        this.adapter.onNewMessage(chatMessageDto.chatMessage);
    }

    public final void refresh(int i10, @Nullable Callback<Integer> callback) {
        this.adapter.refresh(i10, callback);
    }

    public final void removeObserver(@Nullable MyChatListObserver myChatListObserver) {
        if (myChatListObserver != null) {
            this.observers.removeListener(myChatListObserver);
        }
    }

    public final void resetList() {
        this.adapter.resetList();
    }
}
