package com.narvii.chat.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64OutputStream;
import android.util.SparseArray;
import android.view.View;
import androidx.activity.result.ActivityResultCaller;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.FragmentManager;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.ThreadInfoHost;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.chat.organizer.ChatOrganizerPickerFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.LinkSummary;
import com.narvii.model.User;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class ChatHelper {

    @NotNull
    private final AccountService accountService;

    @NotNull
    private final Context ctx;

    @NotNull
    private final NVContext nvContext;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final int[] NicknameColors = {R.color.chat_author_color_1, R.color.chat_author_color_2, R.color.chat_author_color_3, R.color.chat_author_color_4, R.color.chat_author_color_5};

    @NotNull
    private static final Comparator<ChatMessage> MESSAGE_COMPARATOR = new Comparator() { // from class: com.narvii.chat.util.g
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ChatHelper.MESSAGE_COMPARATOR$lambda$9((ChatMessage) obj, (ChatMessage) obj2);
        }
    };

    @NotNull
    private static final Comparator<ChatThread> THREAD_COMPARATOR = new Comparator() { // from class: com.narvii.chat.util.h
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ChatHelper.THREAD_COMPARATOR$lambda$10((ChatThread) obj, (ChatThread) obj2);
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        @Nullable
        public final ChatThread getThreadFromThreadInfoHost(@Nullable NVFragment nVFragment) {
            if (nVFragment == null || !nVFragment.isAdded()) {
                return null;
            }
            if (!(nVFragment.getParentFragment() instanceof ThreadInfoHost)) {
                return (ChatThread) JacksonUtils.readAs(nVFragment.getStringParam("thread"), ChatThread.class);
            }
            ActivityResultCaller parentFragment = nVFragment.getParentFragment();
            ThreadInfoHost threadInfoHost = parentFragment instanceof ThreadInfoHost ? (ThreadInfoHost) parentFragment : null;
            if (threadInfoHost != null) {
                return threadInfoHost.getThread();
            }
            return null;
        }

        private Companion() {
        }

        public final void buildBodyFile(@NotNull String json, @Nullable File file, @NotNull String token, @Nullable File file2) throws Throwable {
            FileOutputStream fileOutputStream;
            t.j(json, "json");
            t.j(token, "token");
            FileInputStream fileInputStream = null;
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    ArrayList<String> arrayListSplit = StringUtils.split(json, token);
                    if (arrayListSplit.size() != 2) {
                        throw new IOException();
                    }
                    String str = arrayListSplit.get(0);
                    t.i(str, "get(...)");
                    Charset charsetForName = Charset.forName("utf-8");
                    t.i(charsetForName, "forName(...)");
                    byte[] bytes = str.getBytes(charsetForName);
                    t.i(bytes, "getBytes(...)");
                    fileOutputStream.write(bytes);
                    Base64OutputStream base64OutputStream = new Base64OutputStream(fileOutputStream, 18);
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        base64OutputStream.write(kotlin.io.b.c(fileInputStream2));
                        base64OutputStream.close();
                        String str2 = arrayListSplit.get(1);
                        t.i(str2, "get(...)");
                        Charset charsetForName2 = Charset.forName("utf-8");
                        t.i(charsetForName2, "forName(...)");
                        byte[] bytes2 = str2.getBytes(charsetForName2);
                        t.i(bytes2, "getBytes(...)");
                        fileOutputStream.write(bytes2);
                        fileInputStream2.close();
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        t.g(fileInputStream);
                        fileInputStream.close();
                        t.g(fileOutputStream);
                        fileOutputStream.close();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        }

        public final int getNicknameColor(@NotNull String nickname) {
            t.j(nickname, "nickname");
            return getNicknameColors()[nickname.length() == 0 ? 0 : Math.abs(nickname.hashCode() % getNicknameColors().length)];
        }

        @NotNull
        public final Comparator<ChatMessage> getMESSAGE_COMPARATOR() {
            return ChatHelper.MESSAGE_COMPARATOR;
        }

        @NotNull
        public final int[] getNicknameColors() {
            return ChatHelper.NicknameColors;
        }

        @NotNull
        public final Comparator<ChatThread> getTHREAD_COMPARATOR() {
            return ChatHelper.THREAD_COMPARATOR;
        }
    }

    private final boolean canChat(User user) {
        int i10;
        if (user == null) {
            return true;
        }
        int privilege = user.getPrivilege(User.CHAT);
        if (privilege == 3) {
            return false;
        }
        return privilege != 2 || (i10 = user.followingStatus) == 2 || i10 == 3;
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public final boolean canChatWithCurrentUserInGlobalLevel(@Nullable User user) {
        if (user == null) {
            return false;
        }
        if (user.followingStatus != 3) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx);
            aCMAlertDialog.setMessage(R.string.start_chat_follow_limit);
            aCMAlertDialog.addButton(android.R.string.ok, null);
            aCMAlertDialog.show();
            return false;
        }
        if (canChat(user)) {
            return true;
        }
        ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(this.ctx);
        aCMAlertDialog2.setMessage(R.string.user_disable_chat_invite);
        aCMAlertDialog2.addButton(android.R.string.ok, null);
        aCMAlertDialog2.show();
        return false;
    }

    @NotNull
    public final AccountService getAccountService() {
        return this.accountService;
    }

    @NotNull
    public final Context getCtx() {
        return this.ctx;
    }

    @Nullable
    public final String getHostLabelName(@Nullable ChatThread chatThread, @Nullable String str) {
        if (chatThread != null && str != null && str.length() != 0) {
            if (isHost(chatThread, str)) {
                return this.nvContext.getContext().getString(R.string.host);
            }
            if (isCoHost(chatThread, str)) {
                return this.nvContext.getContext().getString(R.string.co_host);
            }
        }
        return null;
    }

    @Nullable
    public final String getMessage(@NotNull ChatMessage message) {
        t.j(message, "message");
        return getMessage(null, message);
    }

    @NotNull
    public final NVContext getNvContext() {
        return this.nvContext;
    }

    @Nullable
    public final User getPrivateChatTargetUer(@Nullable ChatThread chatThread) {
        List<User> list;
        if (chatThread != null && chatThread.type == 0 && (list = chatThread.membersSummary) != null) {
            for (User user : list) {
                if (!Utils.isEqualsNotNull(user.uid(), this.accountService.getUserId())) {
                    return user;
                }
            }
        }
        return null;
    }

    @Nullable
    public final StickerCollection getStickerCollectionSummary(@Nullable ChatMessage chatMessage) {
        JsonNode jsonNodeNodePath;
        if (chatMessage == null || chatMessage.type != 3 || (jsonNodeNodePath = JacksonUtils.nodePath(chatMessage.extensions, "sticker", "stickerCollectionSummary")) == null) {
            return null;
        }
        try {
            return (StickerCollection) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, StickerCollection.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public final User getUser(@Nullable ChatThread chatThread, @Nullable String str) {
        List<User> list;
        if (chatThread != null && str != null && str.length() != 0 && (list = chatThread.membersSummary) != null) {
            for (User user : list) {
                if (str.equals(user.uid())) {
                    return user;
                }
            }
        }
        return null;
    }

    public final boolean isChatThreadDisabledOrDelete(@Nullable ChatThread chatThread) {
        int i10;
        if (chatThread == null) {
            return false;
        }
        User user = chatThread.author;
        boolean z6 = user != null && ((i10 = user.status) == 9 || i10 == 10);
        int i11 = chatThread.status;
        return i11 == 9 || i11 == 10 || z6;
    }

    public final boolean isCoHost(@Nullable ChatThread chatThread) {
        return isCoHost(chatThread, this.accountService.getUserId());
    }

    public final boolean isHost(@Nullable ChatThread chatThread) {
        return isHost(chatThread, this.accountService.getUserId());
    }

    public final boolean isHostOrCoHost(@Nullable ChatThread chatThread) {
        return isCoHost(chatThread) | isHost(chatThread);
    }

    public final boolean isMeAccessibleToThisChat(@Nullable ChatThread chatThread) {
        if (chatThread == null || chatThread.type != 2 || Utils.isEqualsNotNull(this.accountService.getUserId(), chatThread.uid())) {
            return true;
        }
        return !chatThread.needHidden;
    }

    public final boolean isMyself(@Nullable ChannelUserWrapper channelUserWrapper) {
        User user = ChatHelperKt.getUser(channelUserWrapper);
        return isMyself(user != null ? user.uid : null);
    }

    public ChatHelper(@NotNull Context ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        NVContext nVContext = Utils.getNVContext(ctx);
        t.i(nVContext, "getNVContext(...)");
        this.nvContext = nVContext;
        Object service = nVContext.getService("account");
        t.i(service, "getService(...)");
        this.accountService = (AccountService) service;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int MESSAGE_COMPARATOR$lambda$9(ChatMessage chatMessage, ChatMessage chatMessage2) {
        if (ChatHelperKt.isAllNullOrEqual(chatMessage.createdTime, chatMessage2.createdTime)) {
            return 0;
        }
        return ChatHelperKt.isNewer(chatMessage.createdTime, chatMessage2.createdTime) ? -1 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int THREAD_COMPARATOR$lambda$10(ChatThread chatThread, ChatThread chatThread2) {
        boolean z6 = chatThread.isPinned;
        if (z6 != chatThread2.isPinned) {
            return z6 ? -1 : 1;
        }
        if (ChatHelperKt.isAllNullOrEqual(chatThread.lastPinOperationTime, chatThread2.lastPinOperationTime)) {
            return ChatHelperKt.isNewer(chatThread.latestActivityTime, chatThread2.latestActivityTime) ? -1 : 1;
        }
        return ChatHelperKt.isNewer(chatThread.lastPinOperationTime, chatThread2.lastPinOperationTime) ? -1 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int appendNewMessageWithSort$lambda$3(ChatMessage chatMessage, ChatMessage chatMessage2) {
        Date date;
        Date date2 = chatMessage.createdTime;
        if (date2 == null || (date = chatMessage2.createdTime) == null) {
            return -1;
        }
        if (date2.before(date)) {
            return 1;
        }
        return chatMessage.createdTime.after(chatMessage2.createdTime) ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void leaveChat$lambda$4(ChatThread chatThread, ChatHelper this$0, View view) {
        t.j(this$0, "this$0");
        if (chatThread == null || !chatThread.isFansOnly()) {
            this$0.transOrganizer(chatThread);
            return;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this$0.ctx);
        aCMAlertDialog.setMessage(R.string.not_allow_transfrom_fans_only_chat);
        aCMAlertDialog.addButton(R.string.got_it, null);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void leaveChat$lambda$6(final ChatHelper this$0, final ChatThread chatThread, final ConfigService configService, final FragmentManager fragmentManager, View view) {
        t.j(this$0, "this$0");
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this$0.ctx);
        aCMAlertDialog.setMessage(R.string.delete_chat_hint);
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.chat.util.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatHelper.leaveChat$lambda$6$lambda$5(this.f2084a, chatThread, configService, fragmentManager, view2);
            }
        }, -62966);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void leaveChat$lambda$6$lambda$5(ChatHelper this$0, ChatThread chatThread, ConfigService configService, FragmentManager fragmentManager, View view) {
        t.j(this$0, "this$0");
        new ChatRequestHelper(this$0.nvContext).delete(chatThread != null ? chatThread.ndcId : configService.getCommunityId(), chatThread, fragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void leaveChat$lambda$7(ChatHelper this$0, ChatThread chatThread, ConfigService configService, FragmentManager fragmentManager, View view) {
        t.j(this$0, "this$0");
        new ChatRequestHelper(this$0.nvContext).delete(chatThread != null ? chatThread.ndcId : configService.getCommunityId(), chatThread, fragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void transOrganizer$lambda$8(ChatThread chatThread, int i10, Integer num, ChatHelper this$0, View view) {
        t.j(this$0, "this$0");
        Intent intent = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
        intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
        if (num == null || i10 != num.intValue()) {
            intent.putExtra("__communityId", num);
        }
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this$0.ctx, intent);
    }

    @NotNull
    public final <T extends ChatMessage> List<ChatMessage> appendNewMessageWithSort(@Nullable List<T> list, @Nullable ChatMessage chatMessage) {
        if (chatMessage == 0) {
            return list == null ? v.m() : list;
        }
        if (list == null) {
            return v.g(chatMessage);
        }
        if (list.isEmpty()) {
            list.add(chatMessage);
            return list;
        }
        int iBinarySearch = Collections.binarySearch(list, chatMessage, new Comparator() { // from class: com.narvii.chat.util.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ChatHelper.appendNewMessageWithSort$lambda$3((ChatMessage) obj, (ChatMessage) obj2);
            }
        });
        if (iBinarySearch < 0) {
            iBinarySearch = (iBinarySearch + 1) * (-1);
        }
        if (iBinarySearch >= list.size()) {
            list.add(chatMessage);
        } else {
            list.add(iBinarySearch, chatMessage);
        }
        return list;
    }

    @Nullable
    public final String buildMessageContent(int i10, int i11, @Nullable String str) {
        return (str == null || str.length() == 0) ? this.ctx.getString(i10) : this.ctx.getString(i11, str);
    }

    @Nullable
    public final List<String> getAvatarList(@Nullable ChatThread chatThread) {
        if (chatThread == null) {
            return v.m();
        }
        if (chatThread.type != 0) {
            List<User> optimizedMembersSummary = chatThread.getOptimizedMembersSummary();
            ArrayList arrayList = new ArrayList();
            t.g(optimizedMembersSummary);
            for (User user : optimizedMembersSummary) {
                if (user.membershipStatus != 0) {
                    arrayList.add(user.icon());
                }
            }
            return arrayList;
        }
        String userId = this.accountService.getUserId();
        List<User> list = chatThread.membersSummary;
        if (list == null) {
            return v.m();
        }
        for (User user2 : list) {
            if (!Utils.isEqualsNotNull(user2.uid, userId)) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(user2.icon);
                return arrayList2;
            }
        }
        return v.m();
    }

    public final int getChannelType(@Nullable ChatMessage chatMessage) {
        if (chatMessage == null) {
            return -1;
        }
        int i10 = chatMessage.type;
        if (i10 == 114) {
            return 5;
        }
        switch (i10) {
            case 107:
                return 1;
            case 108:
                return 4;
            case 109:
                return 3;
            default:
                return 0;
        }
    }

    public final int getMemberCount(@Nullable ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.membersCount;
        }
        return 0;
    }

    @Nullable
    public final ArrayList<MentionedEditText.Range> getMentionedTextRange(@NotNull ChatMessage message) {
        t.j(message, "message");
        if (message.hasMentionedUser() && message.content != null) {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(message.extensions, "mentionedArray");
            if (jsonNodeNodePath instanceof ArrayNode) {
                ArrayList<MentionedEditText.Range> arrayList = new ArrayList<>();
                StringBuilder sb = new StringBuilder(message.content);
                int size = jsonNodeNodePath.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String strNodeString = JacksonUtils.nodeString(jsonNodeNodePath.get(i10), "uid");
                    int iIndexOf = sb.indexOf(MentionedEditText.MENTION_BLOCK_START);
                    if (iIndexOf >= 0 && iIndexOf < sb.length()) {
                        sb.delete(iIndexOf, iIndexOf + 2);
                    }
                    int iIndexOf2 = sb.indexOf(MentionedEditText.MENTION_BLOCK_END);
                    if (iIndexOf2 >= 0 && iIndexOf2 < sb.length()) {
                        sb.delete(iIndexOf2, iIndexOf2 + 2);
                    }
                    if (iIndexOf >= 0 && iIndexOf < iIndexOf2) {
                        arrayList.add(new MentionedEditText.Range(strNodeString, null, iIndexOf, iIndexOf2));
                    }
                }
                return arrayList;
            }
        }
        return null;
    }

    @Nullable
    public final String getMessage(@Nullable ChatThread chatThread, @Nullable ChatMessage chatMessage) {
        String strNickname;
        String strNickname2;
        String str = "";
        if (chatMessage == null) {
            return "";
        }
        String str2 = chatMessage.content;
        if (str2 != null && str2.length() != 0) {
            return chatMessage.content;
        }
        User user = chatMessage.author;
        if (user == null || (strNickname = user.nickname()) == null) {
            strNickname = "";
        }
        if (TextUtils.isEmpty(strNickname) && chatThread != null) {
            User user2 = getUser(chatThread, chatMessage.uid());
            if (user2 != null && (strNickname2 = user2.nickname()) != null) {
                str = strNickname2;
            }
            strNickname = str;
        }
        int i10 = chatMessage.type;
        switch (i10) {
            case 100:
                return buildMessageContent(R.string.chat_info_delete_0, R.string.chat_info_delete_n, strNickname);
            case 101:
                return buildMessageContent(R.string.chat_info_member_become_active_0, R.string.chat_info_member_become_active_n, strNickname);
            case 102:
                return buildMessageContent(R.string.chat_info_member_quit_0, R.string.chat_info_member_quit_n, strNickname);
            case 103:
                return buildMessageContent(R.string.chat_info_session_init_0, R.string.chat_info_session_init_n, strNickname);
            case 104:
                return buildMessageContent(R.string.chat_info_background_change_0, R.string.chat_info_background_change_n, strNickname);
            case 105:
                return buildMessageContent(R.string.chat_info_title_change_0, R.string.chat_info_title_change_n, strNickname);
            case 106:
                return buildMessageContent(R.string.chat_info_icon_change_0, R.string.chat_info_icon_change_n, strNickname);
            case 107:
            case 108:
            case 109:
            case 114:
                return buildMessageContent(R.string.chat_info_turn_on_live_mode_0, R.string.chat_info_turn_on_live_mode_n, strNickname);
            case 110:
            case 111:
            case 112:
            case 115:
                return buildMessageContent(R.string.chat_info_turn_off_live_mode_0, R.string.chat_info_turn_off_live_mode_n, strNickname);
            case 113:
                return buildMessageContent(R.string.chat_info_content_change_0, R.string.chat_info_content_change_n, strNickname);
            case 116:
                return buildMessageContent(R.string.chat_info_organizer_transferred_0, R.string.chat_info_organizer_transferred_n, strNickname);
            default:
                switch (i10) {
                    case 122:
                        return buildMessageContent(R.string.chat_info_change_permission_free_talk_0, R.string.chat_info_change_permission_free_talk_n, strNickname);
                    case 123:
                        return buildMessageContent(R.string.chat_info_change_permission_request_to_speak_0, R.string.chat_info_change_permission_request_to_speak_n, strNickname);
                    case 124:
                        return buildMessageContent(R.string.chat_info_change_permission_invite_only_0, R.string.chat_info_change_permission_invite_only_n, strNickname);
                    case 125:
                        return buildMessageContent(R.string.turn_on_the_view_only_0, R.string.turn_on_the_view_only_n, strNickname);
                    case 126:
                        return buildMessageContent(R.string.turn_off_the_view_only_0, R.string.turn_off_the_view_only_n, strNickname);
                    default:
                        return chatMessage.content;
                }
        }
    }

    @Nullable
    public final String getThreadTitle(@Nullable ChatThread chatThread) {
        String strNickname;
        if (chatThread == null) {
            return "";
        }
        String str = chatThread.title;
        if (str != null && str.length() != 0) {
            return chatThread.title;
        }
        String userId = this.accountService.getUserId();
        if (chatThread.type == 0) {
            User privateChatTargetUer = getPrivateChatTargetUer(chatThread);
            return (privateChatTargetUer == null || (strNickname = privateChatTargetUer.nickname()) == null) ? this.ctx.getString(R.string.chat) : strNickname;
        }
        StringBuilder sb = new StringBuilder();
        List<User> optimizedMembersSummary = chatThread.getOptimizedMembersSummary();
        t.i(optimizedMembersSummary, "getOptimizedMembersSummary(...)");
        ArrayList<User> arrayList = new ArrayList();
        for (Object obj : optimizedMembersSummary) {
            if (!Utils.isEquals(((User) obj).uid, userId)) {
                arrayList.add(obj);
            }
        }
        for (User user : arrayList) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(user.nickname);
        }
        return sb.toString();
    }

    public final void handleLinkSnippetClick(@Nullable LinkSummary linkSummary) {
        if (linkSummary == null || TextUtils.isEmpty(linkSummary.link)) {
            return;
        }
        try {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.ctx, new Intent("android.intent.action.VIEW", Uri.parse(linkSummary.link)));
        } catch (Exception unused) {
        }
    }

    public final boolean isCoHost(@Nullable ChatThread chatThread, @Nullable String str) {
        if (chatThread != null) {
            return chatThread.isCoHost(str);
        }
        return false;
    }

    public final boolean isCurrentChat(@Nullable ChatThread chatThread) {
        ChatThread mainChannelChatThread = ((RtcService) this.nvContext.getService("rtc")).getMainChannelChatThread();
        return Utils.isEqualsNotNull(mainChannelChatThread != null ? mainChannelChatThread.threadId : null, chatThread != null ? chatThread.threadId : null);
    }

    public final boolean isGuest(@Nullable ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.isGuest();
        }
        return false;
    }

    public final boolean isHost(@Nullable ChatThread chatThread, @Nullable String str) {
        return isHost(chatThread != null ? chatThread.uid : null, str);
    }

    public final boolean isHostOrCoHost(@Nullable ChatThread chatThread, @Nullable String str) {
        return isCoHost(chatThread, str) | isHost(chatThread, str);
    }

    public final boolean isMemeber(@Nullable ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.joined();
        }
        return false;
    }

    public final boolean isMine(@Nullable ChatMessage chatMessage) {
        return (chatMessage != null ? chatMessage.author : null) != null && Utils.isEqualsNotNull(this.accountService.getUserId(), chatMessage.author.uid);
    }

    public final boolean isMyself(@Nullable String str) {
        return Utils.isEqualsNotNull(this.accountService.getUserId(), str);
    }

    public final boolean isThreadUnread(@Nullable ChatThread chatThread) {
        Date date;
        Date date2;
        long time = 0;
        long time2 = (chatThread == null || (date2 = chatThread.lastReadTime) == null) ? 0L : date2.getTime();
        if (chatThread != null && (date = chatThread.latestActivityTime) != null) {
            time = date.getTime();
        }
        return time2 < time;
    }

    public final void setChatThreadChannelType(@Nullable ChatThread chatThread, int i10) {
        if (chatThread != null) {
            if (SignallingChannel.isLegalChannelType(i10) || i10 == 0) {
                if (chatThread.extensions == null) {
                    chatThread.extensions = JacksonUtils.createObjectNode();
                }
                chatThread.extensions.put("channelType", i10);
            }
        }
    }

    public final void transOrganizer(@Nullable final ChatThread chatThread) {
        ChatThread mainChannelChatThread;
        Object service = this.nvContext.getService("rtc");
        t.i(service, "getService(...)");
        RtcService rtcService = (RtcService) service;
        final int communityId = ((ConfigService) this.nvContext.getService("config")).getCommunityId();
        final Integer numValueOf = chatThread != null ? Integer.valueOf(chatThread.ndcId) : null;
        if (rtcService.getMainChannelType() == 5 && (mainChannelChatThread = rtcService.getMainChannelChatThread()) != null) {
            if (TextUtils.equals(mainChannelChatThread.threadId, chatThread != null ? chatThread.threadId : null)) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx);
                aCMAlertDialog.setTitle(R.string.heads_up_ex);
                aCMAlertDialog.setMessage(R.string.trans_organizer_hint_dialog_screenroom_title);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.continue_, new View.OnClickListener() { // from class: com.narvii.chat.util.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ChatHelper.transOrganizer$lambda$8(chatThread, communityId, numValueOf, this, view);
                    }
                });
                aCMAlertDialog.show();
                return;
            }
        }
        Intent intent = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
        intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
        if (numValueOf == null || communityId != numValueOf.intValue()) {
            intent.putExtra("__communityId", numValueOf);
        }
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.ctx, intent);
    }

    @Nullable
    public final List<ChannelUserWrapper> getSpeakerChannelUser(@Nullable ChatThread chatThread) {
        if (!isCurrentChat(chatThread)) {
            return null;
        }
        RtcService rtcService = (RtcService) this.nvContext.getService("rtc");
        ArrayList arrayList = new ArrayList();
        SparseArray<ChannelUserWrapper> sparseArrayClone = rtcService.getMainChannelUserWrapperList().clone();
        t.i(sparseArrayClone, "clone(...)");
        int size = sparseArrayClone.size();
        for (int i10 = 0; i10 < size; i10++) {
            ChannelUser channelUser = sparseArrayClone.valueAt(i10).channelUser;
            if (channelUser != null && channelUser.joinRole == 1) {
                ChannelUserWrapper channelUserWrapperValueAt = sparseArrayClone.valueAt(i10);
                t.i(channelUserWrapperValueAt, "valueAt(...)");
                arrayList.add(channelUserWrapperValueAt);
            }
        }
        return arrayList;
    }

    public final boolean isHost(@Nullable String str, @Nullable String str2) {
        return Utils.isEqualsNotNull(str, str2);
    }

    public final boolean isNewerTime(@Nullable Date date, @Nullable Date date2) {
        return ChatHelperKt.isNewer(date2, date);
    }

    public final boolean isSpeaker(@Nullable ChatThread chatThread) {
        ChannelUserWrapper mainChannelLocalUserWrapper;
        if (!isCurrentChat(chatThread) || (mainChannelLocalUserWrapper = ((RtcService) this.nvContext.getService("rtc")).getMainChannelLocalUserWrapper()) == null) {
            return false;
        }
        return ChatHelperKt.isSpeaker(mainChannelLocalUserWrapper);
    }

    public final boolean isSpeakerHasOtherOriganizer(@Nullable ChatThread chatThread, @Nullable String str) {
        String str2;
        List<ChannelUserWrapper> speakerChannelUser = getSpeakerChannelUser(chatThread);
        if (speakerChannelUser == null) {
            return false;
        }
        int size = speakerChannelUser.size();
        for (int i10 = 0; i10 < size; i10++) {
            User user = ChatHelperKt.getUser(speakerChannelUser.get(i10));
            if (user != null) {
                str2 = user.uid;
            } else {
                str2 = null;
            }
            if (str2 == null) {
                str2 = "";
            }
            if (!Utils.isEqualsNotNull(str, str2) && isHostOrCoHost(chatThread, str2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isVideoPlayer(@Nullable ChatThread chatThread) {
        RtcService rtcService;
        ChannelUserWrapper mainChannelLocalUserWrapper;
        if (!isCurrentChat(chatThread) || (mainChannelLocalUserWrapper = (rtcService = (RtcService) this.nvContext.getService("rtc")).getMainChannelLocalUserWrapper()) == null || !ChatHelperKt.isVideoPlayer(mainChannelLocalUserWrapper) || rtcService.getMainChannelType() != 5) {
            return false;
        }
        return true;
    }

    public final void leaveChat(@Nullable String str, @Nullable final ChatThread chatThread, @Nullable final FragmentManager fragmentManager) {
        int i10;
        boolean zIsVideoPlayer = isVideoPlayer(chatThread);
        final ConfigService configService = (ConfigService) this.nvContext.getService("config");
        if (isHost(chatThread) && (ChatHelperKt.isGroupChat(chatThread) || ChatHelperKt.isPublicChat(chatThread))) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx);
            aCMAlertDialog.setTitle(R.string.trans_organizer_hint_dialog_title);
            aCMAlertDialog.setMessage(R.string.trans_organizer_hint_dialog_message);
            aCMAlertDialog.setVerticalButtons();
            aCMAlertDialog.setDismissByClickOutside();
            aCMAlertDialog.addButton(R.string.trans_organizer, new View.OnClickListener() { // from class: com.narvii.chat.util.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatHelper.leaveChat$lambda$4(chatThread, this, view);
                }
            });
            aCMAlertDialog.addButton(R.string.delete_the_chat, new View.OnClickListener() { // from class: com.narvii.chat.util.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatHelper.leaveChat$lambda$6(this.f2089a, chatThread, configService, fragmentManager, view);
                }
            }, SupportMenu.CATEGORY_MASK);
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.show();
            return;
        }
        if (zIsVideoPlayer) {
            i10 = R.string.leave_chat_stop_play_video_hint;
        } else {
            i10 = R.string.leave_fans_only_chat_confirm;
        }
        ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(this.ctx);
        aCMAlertDialog2.setMessage(i10);
        aCMAlertDialog2.addButton(R.string.no, (View.OnClickListener) null, -4473925);
        aCMAlertDialog2.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.util.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatHelper.leaveChat$lambda$7(this.f2092a, chatThread, configService, fragmentManager, view);
            }
        });
        aCMAlertDialog2.show();
    }
}
