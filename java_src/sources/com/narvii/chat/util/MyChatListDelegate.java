package com.narvii.chat.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentManager;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.thread.object.BatchDeleteChatObject;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class MyChatListDelegate {

    @NotNull
    private final AccountService accountService;

    @NotNull
    private final NVAdapter adapter;

    @NotNull
    private ChatHelper chatHelper;

    @NotNull
    private final ChatService chatService;

    @Nullable
    private User curUser;

    @NotNull
    private final IMyChatList host;
    private final boolean isDarkTheme;
    private final boolean isRecentChat;

    @NotNull
    private final Runnable updateList;

    public MyChatListDelegate(@NotNull IMyChatList host, @NotNull NVAdapter adapter, boolean z6, @Nullable User user, boolean z10) {
        t.j(host, "host");
        t.j(adapter, "adapter");
        this.host = host;
        this.adapter = adapter;
        this.isDarkTheme = z6;
        this.curUser = user;
        this.isRecentChat = z10;
        Object service = adapter.getService("chat");
        t.i(service, "getService(...)");
        this.chatService = (ChatService) service;
        Object service2 = adapter.getService("account");
        t.i(service2, "getService(...)");
        this.accountService = (AccountService) service2;
        Context context = adapter.getContext();
        t.i(context, "getContext(...)");
        this.chatHelper = new ChatHelper(context);
        this.updateList = new Runnable() { // from class: com.narvii.chat.util.o
            @Override // java.lang.Runnable
            public final void run() {
                MyChatListDelegate.updateList$lambda$4(this.f2110a);
            }
        };
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    public final AccountService getAccountService() {
        return this.accountService;
    }

    @NotNull
    public final NVAdapter getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final ChatHelper getChatHelper() {
        return this.chatHelper;
    }

    @NotNull
    public final ChatService getChatService() {
        return this.chatService;
    }

    @Nullable
    public final User getCurUser() {
        return this.curUser;
    }

    @NotNull
    public final IMyChatList getHost() {
        return this.host;
    }

    @NotNull
    public final Runnable getUpdateList$Amino_bundle() {
        return this.updateList;
    }

    public final boolean isDarkTheme() {
        return this.isDarkTheme;
    }

    public final boolean isRecentChat() {
        return this.isRecentChat;
    }

    public final boolean openMyChat(@NotNull ChatThread chatThread) {
        t.j(chatThread, "chatThread");
        return openMyChat$default(this, chatThread, null, null, 6, null);
    }

    public final void setChatHelper(@NotNull ChatHelper chatHelper) {
        t.j(chatHelper, "<set-?>");
        this.chatHelper = chatHelper;
    }

    public final void setCurUser(@Nullable User user) {
        this.curUser = user;
    }

    public static /* synthetic */ void onLongClick$default(MyChatListDelegate myChatListDelegate, ChatThread chatThread, Integer num, FragmentManager fragmentManager, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 8) != 0) {
            z6 = true;
        }
        myChatListDelegate.onLongClick(chatThread, num, fragmentManager, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onLongClick$lambda$1(int[] itemIds, MyChatListDelegate this$0, ChatThread chatThread, ChatRequestHelper chatRequestHelper, int i10, FragmentManager fragmentManager, DialogInterface dialogInterface, int i11) {
        t.j(itemIds, "$itemIds");
        t.j(this$0, "this$0");
        t.j(chatThread, "$chatThread");
        t.j(chatRequestHelper, "$chatRequestHelper");
        int i12 = itemIds[i11];
        switch (i12) {
            case R.string.chat_mark_as_read /* 2131886689 */:
                this$0.adapter.logClickEvent(chatThread, ActSemantic.read);
                chatRequestHelper.markAsread(i10, this$0.adapter.getContext(), chatThread);
                break;
            case R.string.chat_mark_as_unread /* 2131886690 */:
                this$0.adapter.logClickEvent(chatThread, ActSemantic.unread);
                chatRequestHelper.markUnread(i10, this$0.adapter.getContext(), chatThread);
                break;
            case R.string.chat_pin_fast /* 2131886715 */:
            case R.string.chat_unpin_fast /* 2131886729 */:
                NVAdapter nVAdapter = this$0.adapter;
                if (nVAdapter != null) {
                    nVAdapter.logClickEvent(chatThread, R.string.chat_pin_fast == i12 ? ActSemantic.pin : ActSemantic.unpin);
                }
                chatRequestHelper.processPin(i10, this$0.adapter.getContext(), chatThread);
                break;
            case R.string.delete /* 2131887008 */:
                this$0.adapter.logClickEvent(chatThread, ActSemantic.delete);
                this$0.chatHelper.leaveChat(chatThread.threadId, chatThread, fragmentManager);
                break;
        }
    }

    public static /* synthetic */ void onNotification$default(MyChatListDelegate myChatListDelegate, Notification notification, Integer num, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        myChatListDelegate.onNotification(notification, num);
    }

    public static /* synthetic */ boolean openMyChat$default(MyChatListDelegate myChatListDelegate, ChatThread chatThread, Integer num, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        return myChatListDelegate.openMyChat(chatThread, num, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateList$lambda$4(MyChatListDelegate this$0) {
        t.j(this$0, "this$0");
        this$0.adapter.notifyDataSetChanged();
    }

    @NotNull
    public final View getChatThreadItemCell(@NotNull NVAdapter adapter, @Nullable ChatThread chatThread, @Nullable View view, @Nullable ViewGroup viewGroup) {
        ThreadListItem threadListItem;
        User userProfile;
        t.j(adapter, "adapter");
        int viewType = ThreadListItem.getViewType(this.chatHelper, chatThread);
        if (viewType == 1) {
            View viewCreateView = adapter.createView(R.layout.chat_thread_group_item, viewGroup, view, "group");
            t.i(viewCreateView, "createView(...)");
            threadListItem = (ThreadListItem) viewCreateView;
        } else if (viewType != 2) {
            View viewCreateView2 = adapter.createView(R.layout.chat_thread_user_item, viewGroup, view, "plain");
            t.i(viewCreateView2, "createView(...)");
            threadListItem = (ThreadListItem) viewCreateView2;
        } else {
            View viewCreateView3 = adapter.createView(R.layout.chat_thread_hangout_item, viewGroup, view, "hangout");
            t.i(viewCreateView3, "createView(...)");
            threadListItem = (ThreadListItem) viewCreateView3;
        }
        threadListItem.setDarkTheme(this.isDarkTheme);
        if (this.curUser == null) {
            if (this.isRecentChat) {
                userProfile = this.accountService.getUserProfile(chatThread != null ? chatThread.ndcId : 0);
            } else {
                userProfile = this.accountService.getUserProfile();
            }
            this.curUser = userProfile;
        }
        threadListItem.setChatThread(chatThread, this.chatService.getDraft(chatThread != null ? chatThread.threadId : null), this.curUser);
        boolean z6 = this.isDarkTheme;
        int i10 = z6 ? 285212671 : -460551;
        int i11 = z6 ? 0 : -1;
        if (chatThread == null || !chatThread.isPinned) {
            i10 = i11;
        }
        threadListItem.setBackgroundColor(i10);
        return threadListItem;
    }

    public final void onLongClick(@NotNull final ChatThread chatThread, @Nullable Integer num, @Nullable final FragmentManager fragmentManager, boolean z6) {
        t.j(chatThread, "chatThread");
        final ChatRequestHelper chatRequestHelper = new ChatRequestHelper(this.adapter);
        boolean zIsThreadUnread = this.chatHelper.isThreadUnread(chatThread);
        final int[] iArr = new int[3];
        ArrayList arrayList = new ArrayList();
        if (zIsThreadUnread) {
            iArr[0] = R.string.chat_mark_as_read;
            arrayList.add(this.adapter.getContext().getString(R.string.chat_mark_as_read));
        } else {
            iArr[0] = R.string.chat_mark_as_unread;
            arrayList.add(this.adapter.getContext().getString(R.string.chat_mark_as_unread));
        }
        char c7 = 1;
        if (z6) {
            boolean z10 = chatThread.isPinned;
            int i10 = R.string.chat_pin_fast;
            iArr[1] = z10 ? R.string.chat_unpin_fast : R.string.chat_pin_fast;
            Context context = this.adapter.getContext();
            if (chatThread.isPinned) {
                i10 = R.string.chat_unpin_fast;
            }
            arrayList.add(context.getString(i10));
            c7 = 2;
        }
        iArr[c7] = R.string.delete;
        arrayList.add(this.adapter.getContext().getString(R.string.delete));
        AlertDialog.Builder builder = new AlertDialog.Builder(this.adapter.getContext());
        final int iIntValue = num != null ? num.intValue() : ((ConfigService) this.adapter.getService("config")).getCommunityId();
        builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), new DialogInterface.OnClickListener() { // from class: com.narvii.chat.util.n
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                MyChatListDelegate.onLongClick$lambda$1(iArr, this, chatThread, chatRequestHelper, iIntValue, fragmentManager, dialogInterface, i11);
            }
        });
        builder.show();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0051  */
    /* JADX WARN: Code duplicated, block: B:33:0x0070  */
    public final void onNewChatMessage(@NotNull ChatMessage message) {
        boolean z6;
        boolean z10;
        t.j(message, "message");
        ChatThread mappedThreadFromList = this.host.getMappedThreadFromList(message.threadId);
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(this.accountService.getUserId(), message.uid());
        if (mappedThreadFromList != null) {
            ChatMessage chatMessage = mappedThreadFromList.lastMessageSummary;
            if ((!(!Utils.isEquals(message.id(), chatMessage != null ? chatMessage.id() : null)) && !message.isVVChatStartOrEndMessage()) || !message.includedInSummary) {
                z6 = false;
            } else if (this.chatHelper.isNewerTime(chatMessage != null ? chatMessage.createdTime : null, message.createdTime)) {
                z6 = true;
            } else {
                z6 = false;
            }
            int i10 = message.type;
            if (i10 != 100 && i10 != 119) {
                z10 = false;
            } else if (Utils.isEqualsNotNull(message.id(), chatMessage != null ? chatMessage.id() : null)) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean z11 = message.includedInSummary && this.chatHelper.isNewerTime(mappedThreadFromList.latestActivityTime, message.createdTime);
            if (z11) {
                Date date = message.createdTime;
                mappedThreadFromList.latestActivityTime = date;
                if (!zIsEqualsNotNull) {
                    date = mappedThreadFromList.lastReadTime;
                }
                mappedThreadFromList.lastReadTime = date;
            }
            if (z6) {
                NVObject nVObjectM1622clone = message.m1622clone();
                t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
                mappedThreadFromList.lastMessageSummary = (ChatMessage) nVObjectM1622clone;
                if (message.isVVChatStartOrEndMessage()) {
                    ChatHelper chatHelper = this.chatHelper;
                    chatHelper.setChatThreadChannelType(mappedThreadFromList, chatHelper.getChannelType(mappedThreadFromList.lastMessageSummary));
                }
            }
            if (z10) {
                NVObject nVObjectM1622clone2 = message.m1622clone();
                t.h(nVObjectM1622clone2, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
                ChatMessage chatMessage2 = (ChatMessage) nVObjectM1622clone2;
                mappedThreadFromList.lastMessageSummary = chatMessage2;
                chatMessage2.content = null;
            }
            if (z6 || z11 || z10) {
                Utils.handler.removeCallbacks(this.updateList);
                Utils.post(this.updateList);
            }
            ObjectNode objectNode = message.extensions;
            if (objectNode != null) {
                t.g(objectNode);
                JsonNode jsonNodeNodePath = JacksonUtils.nodePath(objectNode, "mentionedArray");
                if (jsonNodeNodePath instanceof ArrayNode) {
                    int size = jsonNodeNodePath.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        if (t.e(this.accountService.getUserId(), JacksonUtils.nodeString(jsonNodeNodePath.get(i11), "uid"))) {
                            mappedThreadFromList.mentionMe = true;
                            break;
                        }
                    }
                }
            }
            if (message.isReplyTo(this.accountService.getUserId())) {
                mappedThreadFromList.replyMe = true;
            }
        }
        if (mappedThreadFromList == null) {
            this.host.onUnknownThreadMessageCome(message);
        }
    }

    public final void onNotification(@Nullable Notification notification, @Nullable Integer num) {
        Date date;
        if (notification == null) {
            return;
        }
        Object obj = notification.obj;
        if (obj instanceof BatchDeleteChatObject) {
            t.h(obj, "null cannot be cast to non-null type com.narvii.chat.thread.object.BatchDeleteChatObject");
            BatchDeleteChatObject batchDeleteChatObject = (BatchDeleteChatObject) obj;
            int ndcId = batchDeleteChatObject.getNdcId();
            if (num != null && ndcId == num.intValue()) {
                List<String> selectThreadIdsList = batchDeleteChatObject.getSelectThreadIdsList();
                if (selectThreadIdsList != null) {
                    for (String str : selectThreadIdsList) {
                        NVAdapter nVAdapter = this.adapter;
                        if (nVAdapter instanceof NVPagedAdapter) {
                            ((NVPagedAdapter) nVAdapter).removeIdEqualsObjectId(str);
                        }
                    }
                }
                this.adapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        int iIntValue = num != null ? num.intValue() : ((ConfigService) this.adapter.getService("config")).getCommunityId();
        Object obj2 = notification.obj;
        if (obj2 instanceof ChatThread) {
            t.h(obj2, "null cannot be cast to non-null type com.narvii.model.ChatThread");
            if (((ChatThread) obj2).ndcId != iIntValue) {
                return;
            }
            ChatService chatService = this.chatService;
            Object obj3 = notification.obj;
            t.h(obj3, "null cannot be cast to non-null type com.narvii.model.ChatThread");
            Date threadLastReadTime = chatService.getThreadLastReadTime(iIntValue, ((ChatThread) obj3).threadId);
            ChatHelper chatHelper = this.chatHelper;
            Object obj4 = notification.obj;
            t.h(obj4, "null cannot be cast to non-null type com.narvii.model.ChatThread");
            if (chatHelper.isNewerTime(((ChatThread) obj4).lastReadTime, threadLastReadTime)) {
                Object obj5 = notification.obj;
                t.h(obj5, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                ((ChatThread) obj5).lastReadTime = threadLastReadTime;
            }
            NVAdapter nVAdapter2 = this.adapter;
            if (nVAdapter2 instanceof NVPagedAdapter) {
                ((NVPagedAdapter) nVAdapter2).editList(notification, false);
            }
            if (t.e(notification.action, "edit")) {
                Object obj6 = notification.obj;
                t.h(obj6, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                if (((ChatThread) obj6).type == 1) {
                    Object obj7 = notification.obj;
                    t.h(obj7, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                    String str2 = ((ChatThread) obj7).icon;
                    if (str2 != null && kotlin.text.t.K(str2, "photo://", false, 2, null)) {
                        this.host.refreshList();
                    }
                }
            }
        }
        Object obj8 = notification.obj;
        if (obj8 instanceof ThreadUpdateObject) {
            t.h(obj8, "null cannot be cast to non-null type com.narvii.chat.core.ThreadUpdateObject");
            ThreadUpdateObject threadUpdateObject = (ThreadUpdateObject) obj8;
            if (threadUpdateObject.chatThread == null) {
                return;
            }
            if (threadUpdateObject.action == 2) {
                this.adapter.notifyDataSetChanged();
                return;
            }
            ChatThread mappedThreadFromList = this.host.getMappedThreadFromList(threadUpdateObject.id());
            if (mappedThreadFromList != null && threadUpdateObject.action == 0 && (date = threadUpdateObject.chatThread.lastReadTime) != null && (this.chatHelper.isNewerTime(mappedThreadFromList.lastReadTime, date) || mappedThreadFromList.lastReadTime.equals(threadUpdateObject.chatThread.lastReadTime))) {
                if (this.adapter instanceof NVPagedAdapter) {
                    NVObject nVObjectM1622clone = mappedThreadFromList.m1622clone();
                    t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                    ChatThread chatThread = (ChatThread) nVObjectM1622clone;
                    chatThread.lastReadTime = threadUpdateObject.chatThread.lastReadTime;
                    Notification notification2 = new Notification("update", chatThread);
                    ChatService chatService2 = this.chatService;
                    Object obj9 = notification.obj;
                    t.h(obj9, "null cannot be cast to non-null type com.narvii.chat.core.ThreadUpdateObject");
                    Date threadLastReadTime2 = chatService2.getThreadLastReadTime(((ThreadUpdateObject) obj9).chatThread.ndcId, chatThread.threadId);
                    if (this.chatHelper.isNewerTime(chatThread.lastReadTime, threadLastReadTime2)) {
                        chatThread.lastReadTime = threadLastReadTime2;
                    }
                    ((NVPagedAdapter) this.adapter).editList(notification2, false);
                } else {
                    this.host.onThreadUpdateInfo(threadUpdateObject);
                }
            }
        }
        Object obj10 = notification.obj;
        if (obj10 instanceof ChatMessage) {
            t.h(obj10, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
            ChatMessage chatMessage = (ChatMessage) obj10;
            ChatThread mappedThreadFromList2 = this.host.getMappedThreadFromList(chatMessage.threadId);
            if (mappedThreadFromList2 != null) {
                NVObject nVObjectM1622clone2 = chatMessage.m1622clone();
                t.h(nVObjectM1622clone2, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
                mappedThreadFromList2.lastMessageSummary = (ChatMessage) nVObjectM1622clone2;
                if (chatMessage.isVVChatStartOrEndMessage()) {
                    ChatHelper chatHelper2 = this.chatHelper;
                    chatHelper2.setChatThreadChannelType(mappedThreadFromList2, chatHelper2.getChannelType(mappedThreadFromList2.lastMessageSummary));
                }
            }
            this.adapter.notifyDataSetChanged();
        }
    }

    public final boolean openMyChat(@NotNull ChatThread chatThread, @Nullable Integer num) {
        t.j(chatThread, "chatThread");
        return openMyChat$default(this, chatThread, num, null, 4, null);
    }

    public final boolean openMyChat(@NotNull ChatThread chatThread, @Nullable Integer num, @Nullable String str) {
        t.j(chatThread, "chatThread");
        chatThread.mentionMe = false;
        chatThread.replyMe = false;
        this.adapter.notifyDataSetChanged();
        this.adapter.logClickEvent(chatThread, ActSemantic.checkDetail);
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra("id", chatThread.threadId);
        intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, str);
        if (num != null) {
            intent.putExtra("__communityId", num.intValue());
        }
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.adapter.getContext(), intent);
        return true;
    }

    public /* synthetic */ MyChatListDelegate(IMyChatList iMyChatList, NVAdapter nVAdapter, boolean z6, User user, boolean z10, int i10, kotlin.jvm.internal.k kVar) {
        this(iMyChatList, nVAdapter, (i10 & 4) != 0 ? false : z6, (i10 & 8) != 0 ? null : user, (i10 & 16) != 0 ? false : z10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MyChatListDelegate(@NotNull IMyChatList host, @NotNull NVAdapter adapter, boolean z6) {
        this(host, adapter, z6, null, false);
        t.j(host, "host");
        t.j(adapter, "adapter");
    }
}
