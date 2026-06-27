package com.narvii.chat.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.thread.object.BatchDeleteChatObject;
import com.narvii.config.ConfigService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: MyChatListDelegate.kt */
/* loaded from: classes2.dex */
public final class MyChatListDelegate {
    private final AccountService accountService;
    private final NVAdapter adapter;
    private ChatHelper chatHelper;
    private final ChatService chatService;
    private User curUser;
    private final IMyChatList host;
    private final boolean isDarkTheme;
    private final boolean isRecentChat;
    private final Runnable updateList;

    public final boolean openMyChat(ChatThread chatThread) {
        return openMyChat$default(this, chatThread, null, null, 6, null);
    }

    public final boolean openMyChat(ChatThread chatThread, Integer num) {
        return openMyChat$default(this, chatThread, num, null, 4, null);
    }

    public MyChatListDelegate(IMyChatList host, NVAdapter adapter, boolean z, User user, boolean z2) {
        Intrinsics.checkParameterIsNotNull(host, "host");
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        this.host = host;
        this.adapter = adapter;
        this.isDarkTheme = z;
        this.curUser = user;
        this.isRecentChat = z2;
        Object service = this.adapter.getService("chat");
        Intrinsics.checkExpressionValueIsNotNull(service, "adapter.getService(\"chat\")");
        this.chatService = (ChatService) service;
        Object service2 = this.adapter.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service2, "adapter.getService(\"account\")");
        this.accountService = (AccountService) service2;
        Context context = this.adapter.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "adapter.context");
        this.chatHelper = new ChatHelper(context);
        this.updateList = new Runnable() { // from class: com.narvii.chat.util.MyChatListDelegate$updateList$1
            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.getAdapter().notifyDataSetChanged();
            }
        };
    }

    public final NVAdapter getAdapter() {
        return this.adapter;
    }

    public final IMyChatList getHost() {
        return this.host;
    }

    public final boolean isDarkTheme() {
        return this.isDarkTheme;
    }

    public /* synthetic */ MyChatListDelegate(IMyChatList iMyChatList, NVAdapter nVAdapter, boolean z, User user, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(iMyChatList, nVAdapter, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : user, (i & 16) != 0 ? false : z2);
    }

    public final User getCurUser() {
        return this.curUser;
    }

    public final boolean isRecentChat() {
        return this.isRecentChat;
    }

    public final void setCurUser(User user) {
        this.curUser = user;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MyChatListDelegate(IMyChatList host, NVAdapter adapter, boolean z) {
        this(host, adapter, z, null, false);
        Intrinsics.checkParameterIsNotNull(host, "host");
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
    }

    public final ChatService getChatService() {
        return this.chatService;
    }

    public final AccountService getAccountService() {
        return this.accountService;
    }

    public final ChatHelper getChatHelper() {
        return this.chatHelper;
    }

    public final void setChatHelper(ChatHelper chatHelper) {
        Intrinsics.checkParameterIsNotNull(chatHelper, "<set-?>");
        this.chatHelper = chatHelper;
    }

    public final View getChatThreadItemCell(NVAdapter adapter, ChatThread chatThread, View view, ViewGroup viewGroup) {
        ThreadListItem threadListItem;
        User userProfile;
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        int viewType = ThreadListItem.getViewType(this.chatHelper, chatThread);
        if (viewType == 1) {
            View viewCreateView = adapter.createView(R.layout.chat_thread_group_item, viewGroup, view, "group");
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView, "adapter.createView(R.lay…nt, convertView, \"group\")");
            threadListItem = (ThreadListItem) viewCreateView;
        } else if (viewType == 2) {
            View viewCreateView2 = adapter.createView(R.layout.chat_thread_hangout_item, viewGroup, view, "hangout");
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView2, "adapter.createView(R.lay…, convertView, \"hangout\")");
            threadListItem = (ThreadListItem) viewCreateView2;
        } else {
            View viewCreateView3 = adapter.createView(R.layout.chat_thread_user_item, viewGroup, view, "plain");
            Intrinsics.checkExpressionValueIsNotNull(viewCreateView3, "adapter.createView(R.lay…nt, convertView, \"plain\")");
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
        int i = this.isDarkTheme ? 285212671 : (int) 4294506745L;
        int i2 = this.isDarkTheme ? 0 : -1;
        if (chatThread == null || !chatThread.isPinned) {
            i = i2;
        }
        threadListItem.setBackgroundColor(i);
        return threadListItem;
    }

    public static /* synthetic */ void onNotification$default(MyChatListDelegate myChatListDelegate, Notification notification, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        myChatListDelegate.onNotification(notification, num);
    }

    public final void onNotification(Notification notification, Integer num) {
        int communityId;
        Date date;
        if (notification == null) {
            return;
        }
        Object obj = notification.obj;
        if (obj instanceof BatchDeleteChatObject) {
            if (obj != null) {
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
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.thread.`object`.BatchDeleteChatObject");
        }
        ConfigService configService = (ConfigService) this.adapter.getService("config");
        if (num != null) {
            communityId = num.intValue();
        } else {
            Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
            communityId = configService.getCommunityId();
        }
        Object obj2 = notification.obj;
        if (obj2 instanceof ChatThread) {
            if (obj2 != null) {
                if (((ChatThread) obj2).ndcId != communityId) {
                    return;
                }
                ChatService chatService = this.chatService;
                if (obj2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                }
                Date threadLastReadTime = chatService.getThreadLastReadTime(communityId, ((ChatThread) obj2).threadId);
                ChatHelper chatHelper = this.chatHelper;
                Object obj3 = notification.obj;
                if (obj3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                }
                if (chatHelper.isNewerTime(((ChatThread) obj3).lastReadTime, threadLastReadTime)) {
                    Object obj4 = notification.obj;
                    if (obj4 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                    }
                    ((ChatThread) obj4).lastReadTime = threadLastReadTime;
                }
                NVAdapter nVAdapter2 = this.adapter;
                if (nVAdapter2 instanceof NVPagedAdapter) {
                    ((NVPagedAdapter) nVAdapter2).editList(notification, false);
                }
                if (Intrinsics.areEqual(notification.action, "edit")) {
                    Object obj5 = notification.obj;
                    if (obj5 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                    }
                    if (((ChatThread) obj5).type == 1) {
                        if (obj5 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                        }
                        String str2 = ((ChatThread) obj5).icon;
                        if (str2 != null && StringsKt__StringsJVMKt.startsWith$default(str2, "photo://", false, 2, null)) {
                            this.host.refreshList();
                        }
                    }
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
            }
        }
        Object obj6 = notification.obj;
        if (obj6 instanceof ThreadUpdateObject) {
            if (obj6 != null) {
                ThreadUpdateObject threadUpdateObject = (ThreadUpdateObject) obj6;
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
                        NVObject nVObjectM46clone = mappedThreadFromList.m46clone();
                        if (nVObjectM46clone == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                        }
                        ChatThread chatThread = (ChatThread) nVObjectM46clone;
                        chatThread.lastReadTime = threadUpdateObject.chatThread.lastReadTime;
                        Notification notification2 = new Notification("update", chatThread);
                        ChatService chatService2 = this.chatService;
                        Object obj7 = notification.obj;
                        if (obj7 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.core.ThreadUpdateObject");
                        }
                        Date threadLastReadTime2 = chatService2.getThreadLastReadTime(((ThreadUpdateObject) obj7).chatThread.ndcId, chatThread.threadId);
                        if (this.chatHelper.isNewerTime(chatThread.lastReadTime, threadLastReadTime2)) {
                            chatThread.lastReadTime = threadLastReadTime2;
                        }
                        ((NVPagedAdapter) this.adapter).editList(notification2, false);
                    } else {
                        this.host.onThreadUpdateInfo(threadUpdateObject);
                    }
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.core.ThreadUpdateObject");
            }
        }
        Object obj8 = notification.obj;
        if (obj8 instanceof ChatMessage) {
            if (obj8 != null) {
                ChatMessage chatMessage = (ChatMessage) obj8;
                ChatThread mappedThreadFromList2 = this.host.getMappedThreadFromList(chatMessage.threadId);
                if (mappedThreadFromList2 != null) {
                    NVObject nVObjectM46clone2 = chatMessage.m46clone();
                    if (nVObjectM46clone2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatMessage");
                    }
                    mappedThreadFromList2.lastMessageSummary = (ChatMessage) nVObjectM46clone2;
                    if (chatMessage.isVVChatStartOrEndMessage()) {
                        ChatHelper chatHelper2 = this.chatHelper;
                        chatHelper2.setChatThreadChannelType(mappedThreadFromList2, chatHelper2.getChannelType(mappedThreadFromList2.lastMessageSummary));
                    }
                }
                this.adapter.notifyDataSetChanged();
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatMessage");
        }
    }

    public static /* synthetic */ boolean openMyChat$default(MyChatListDelegate myChatListDelegate, ChatThread chatThread, Integer num, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        if ((i & 4) != 0) {
            str = null;
        }
        return myChatListDelegate.openMyChat(chatThread, num, str);
    }

    public final boolean openMyChat(ChatThread chatThread, Integer num, String str) {
        Intrinsics.checkParameterIsNotNull(chatThread, "chatThread");
        chatThread.mentionMe = false;
        chatThread.replyMe = false;
        this.adapter.notifyDataSetChanged();
        this.adapter.logClickEvent(chatThread, ActSemantic.checkDetail);
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra("id", chatThread.threadId);
        intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
        intent.putExtra("Source", str);
        if (num != null) {
            intent.putExtra("__communityId", num.intValue());
        }
        this.adapter.getContext().startActivity(intent);
        return true;
    }

    public static /* synthetic */ void onLongClick$default(MyChatListDelegate myChatListDelegate, ChatThread chatThread, Integer num, FragmentManager fragmentManager, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            z = true;
        }
        myChatListDelegate.onLongClick(chatThread, num, fragmentManager, z);
    }

    public final void onLongClick(final ChatThread chatThread, Integer num, final FragmentManager fragmentManager, boolean z) {
        char c;
        int communityId;
        Intrinsics.checkParameterIsNotNull(chatThread, "chatThread");
        final ChatRequestHelper chatRequestHelper = new ChatRequestHelper(this.adapter);
        boolean zIsThreadUnread = this.chatHelper.isThreadUnread(chatThread);
        final int[] iArr = new int[3];
        ArrayList arrayList = new ArrayList();
        if (!zIsThreadUnread) {
            iArr[0] = R.string.chat_mark_as_unread;
            arrayList.add(this.adapter.getContext().getString(R.string.chat_mark_as_unread));
        } else {
            iArr[0] = R.string.chat_mark_as_read;
            arrayList.add(this.adapter.getContext().getString(R.string.chat_mark_as_read));
        }
        if (z) {
            c = 2;
            boolean z2 = chatThread.isPinned;
            int i = R.string.chat_unpin_fast;
            iArr[1] = z2 ? R.string.chat_unpin_fast : R.string.chat_pin_fast;
            Context context = this.adapter.getContext();
            if (!chatThread.isPinned) {
                i = R.string.chat_pin_fast;
            }
            arrayList.add(context.getString(i));
        } else {
            c = 1;
        }
        iArr[c] = R.string.delete;
        arrayList.add(this.adapter.getContext().getString(R.string.delete));
        AlertDialog.Builder builder = new AlertDialog.Builder(this.adapter.getContext());
        ConfigService configService = (ConfigService) this.adapter.getService("config");
        if (num != null) {
            communityId = num.intValue();
        } else {
            Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
            communityId = configService.getCommunityId();
        }
        final int i2 = communityId;
        Object[] array = arrayList.toArray(new CharSequence[0]);
        if (array != null) {
            builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.narvii.chat.util.MyChatListDelegate.onLongClick.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    switch (iArr[i3]) {
                        case R.string.chat_mark_as_read /* 2131690014 */:
                            MyChatListDelegate.this.getAdapter().logClickEvent(chatThread, ActSemantic.read);
                            chatRequestHelper.markAsread(i2, MyChatListDelegate.this.getAdapter().getContext(), chatThread);
                            break;
                        case R.string.chat_mark_as_unread /* 2131690015 */:
                            MyChatListDelegate.this.getAdapter().logClickEvent(chatThread, ActSemantic.unread);
                            chatRequestHelper.markUnread(i2, MyChatListDelegate.this.getAdapter().getContext(), chatThread);
                            break;
                        case R.string.chat_pin_fast /* 2131690040 */:
                        case R.string.chat_unpin_fast /* 2131690054 */:
                            NVAdapter adapter = MyChatListDelegate.this.getAdapter();
                            if (adapter != null) {
                                adapter.logClickEvent(chatThread, R.string.chat_pin_fast == iArr[i3] ? ActSemantic.pin : ActSemantic.unpin);
                            }
                            chatRequestHelper.processPin(i2, MyChatListDelegate.this.getAdapter().getContext(), chatThread);
                            break;
                        case R.string.delete /* 2131690312 */:
                            MyChatListDelegate.this.getAdapter().logClickEvent(chatThread, ActSemantic.delete);
                            ChatHelper chatHelper = MyChatListDelegate.this.getChatHelper();
                            ChatThread chatThread2 = chatThread;
                            chatHelper.leaveChat(chatThread2.threadId, chatThread2, fragmentManager);
                            break;
                    }
                }
            });
            builder.show();
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onNewChatMessage(com.narvii.model.ChatMessage r11) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.util.MyChatListDelegate.onNewChatMessage(com.narvii.model.ChatMessage):void");
    }

    public final Runnable getUpdateList$Amino_bundle() {
        return this.updateList;
    }
}
