package com.narvii.chat.util;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentManager;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.util.Base64OutputStream;
import android.util.SparseArray;
import android.view.View;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
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
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatHelper.kt */
/* loaded from: classes2.dex */
public final class ChatHelper {
    private final AccountService accountService;
    private final Context ctx;
    private final NVContext nvContext;
    public static final Companion Companion = new Companion(null);
    private static final int[] NicknameColors = {R.color.chat_author_color_1, R.color.chat_author_color_2, R.color.chat_author_color_3, R.color.chat_author_color_4, R.color.chat_author_color_5};
    private static final Comparator<ChatMessage> MESSAGE_COMPARATOR = new Comparator<ChatMessage>() { // from class: com.narvii.chat.util.ChatHelper$Companion$MESSAGE_COMPARATOR$1
        @Override // java.util.Comparator
        public final int compare(ChatMessage chatMessage, ChatMessage chatMessage2) {
            if (ChatHelperKt.isAllNullOrEqual(chatMessage.createdTime, chatMessage2.createdTime)) {
                return 0;
            }
            return ChatHelperKt.isNewer(chatMessage.createdTime, chatMessage2.createdTime) ? -1 : 1;
        }
    };
    private static final Comparator<ChatThread> THREAD_COMPARATOR = new Comparator<ChatThread>() { // from class: com.narvii.chat.util.ChatHelper$Companion$THREAD_COMPARATOR$1
        @Override // java.util.Comparator
        public final int compare(ChatThread chatThread, ChatThread chatThread2) {
            boolean z = chatThread.isPinned;
            return z != chatThread2.isPinned ? z ? -1 : 1 : !ChatHelperKt.isAllNullOrEqual(chatThread.lastPinOperationTime, chatThread2.lastPinOperationTime) ? ChatHelperKt.isNewer(chatThread.lastPinOperationTime, chatThread2.lastPinOperationTime) ? -1 : 1 : ChatHelperKt.isNewer(chatThread.latestActivityTime, chatThread2.latestActivityTime) ? -1 : 1;
        }
    };

    public ChatHelper(Context ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        NVContext nVContext = Utils.getNVContext(this.ctx);
        Intrinsics.checkExpressionValueIsNotNull(nVContext, "Utils.getNVContext(ctx)");
        this.nvContext = nVContext;
        Object service = this.nvContext.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "nvContext.getService(\"account\")");
        this.accountService = (AccountService) service;
    }

    public final Context getCtx() {
        return this.ctx;
    }

    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public final AccountService getAccountService() {
        return this.accountService;
    }

    /* compiled from: ChatHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int[] getNicknameColors() {
            return ChatHelper.NicknameColors;
        }

        public final int getNicknameColor(String nickname) {
            Intrinsics.checkParameterIsNotNull(nickname, "nickname");
            return getNicknameColors()[nickname.length() == 0 ? 0 : Math.abs(nickname.hashCode() % getNicknameColors().length)];
        }

        public final Comparator<ChatMessage> getMESSAGE_COMPARATOR() {
            return ChatHelper.MESSAGE_COMPARATOR;
        }

        public final Comparator<ChatThread> getTHREAD_COMPARATOR() {
            return ChatHelper.THREAD_COMPARATOR;
        }

        public final ChatThread getThreadFromThreadInfoHost(NVFragment nVFragment) {
            if (nVFragment == null || !nVFragment.isAdded()) {
                return null;
            }
            if (nVFragment.getParentFragment() instanceof ThreadInfoHost) {
                ComponentCallbacks parentFragment = nVFragment.getParentFragment();
                if (!(parentFragment instanceof ThreadInfoHost)) {
                    parentFragment = null;
                }
                ThreadInfoHost threadInfoHost = (ThreadInfoHost) parentFragment;
                if (threadInfoHost != null) {
                    return threadInfoHost.getThread();
                }
                return null;
            }
            return (ChatThread) JacksonUtils.readAs(nVFragment.getStringParam("thread"), ChatThread.class);
        }

        public final void buildBodyFile(String json, File file, String token, File file2) throws Throwable {
            FileInputStream fileInputStream;
            FileOutputStream fileOutputStream;
            Intrinsics.checkParameterIsNotNull(json, "json");
            Intrinsics.checkParameterIsNotNull(token, "token");
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    ArrayList<String> arrayListSplit = StringUtils.split(json, token);
                    if (arrayListSplit.size() != 2) {
                        throw new IOException();
                    }
                    String str = arrayListSplit.get(0);
                    Intrinsics.checkExpressionValueIsNotNull(str, "splits[0]");
                    String str2 = str;
                    Charset charsetForName = Charset.forName("utf-8");
                    Intrinsics.checkExpressionValueIsNotNull(charsetForName, "Charset.forName(charsetName)");
                    if (str2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    byte[] bytes = str2.getBytes(charsetForName);
                    Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
                    fileOutputStream.write(bytes);
                    Base64OutputStream base64OutputStream = new Base64OutputStream(fileOutputStream, 18);
                    fileInputStream = new FileInputStream(file);
                    try {
                        base64OutputStream.write(ByteStreamsKt.readBytes(fileInputStream));
                        base64OutputStream.close();
                        String str3 = arrayListSplit.get(1);
                        Intrinsics.checkExpressionValueIsNotNull(str3, "splits[1]");
                        String str4 = str3;
                        Charset charsetForName2 = Charset.forName("utf-8");
                        Intrinsics.checkExpressionValueIsNotNull(charsetForName2, "Charset.forName(charsetName)");
                        if (str4 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                        }
                        byte[] bytes2 = str4.getBytes(charsetForName2);
                        Intrinsics.checkExpressionValueIsNotNull(bytes2, "(this as java.lang.String).getBytes(charset)");
                        fileOutputStream.write(bytes2);
                        fileInputStream.close();
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                            if (fileOutputStream == null) {
                                Intrinsics.throwNpe();
                                throw null;
                            }
                            fileOutputStream.close();
                            throw th;
                        }
                        Intrinsics.throwNpe();
                        throw null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                fileOutputStream = null;
            }
        }
    }

    public final String getHostLabelName(ChatThread chatThread, String str) {
        if (chatThread != null) {
            if (!(str == null || str.length() == 0)) {
                if (isHost(chatThread, str)) {
                    return this.nvContext.getContext().getString(R.string.host);
                }
                if (isCoHost(chatThread, str)) {
                    return this.nvContext.getContext().getString(R.string.co_host);
                }
            }
        }
        return null;
    }

    public final void setChatThreadChannelType(ChatThread chatThread, int i) {
        if (chatThread != null) {
            if (SignallingChannel.isLegalChannelType(i) || i == 0) {
                if (chatThread.extensions == null) {
                    chatThread.extensions = JacksonUtils.createObjectNode();
                }
                chatThread.extensions.put("channelType", i);
            }
        }
    }

    public final ArrayList<MentionedEditText.Range> getMentionedTextRange(ChatMessage message) {
        Intrinsics.checkParameterIsNotNull(message, "message");
        if (message.hasMentionedUser() && message.content != null) {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(message.extensions, "mentionedArray");
            if (jsonNodeNodePath instanceof ArrayNode) {
                ArrayList<MentionedEditText.Range> arrayList = new ArrayList<>();
                StringBuilder sb = new StringBuilder(message.content);
                int size = jsonNodeNodePath.size();
                for (int i = 0; i < size; i++) {
                    String strNodeString = JacksonUtils.nodeString(jsonNodeNodePath.get(i), "uid");
                    int iIndexOf = sb.indexOf(MentionedEditText.MENTION_BLOCK_START);
                    int length = sb.length();
                    if (iIndexOf >= 0 && length > iIndexOf) {
                        sb.delete(iIndexOf, iIndexOf + 2);
                    }
                    int iIndexOf2 = sb.indexOf(MentionedEditText.MENTION_BLOCK_END);
                    int length2 = sb.length();
                    if (iIndexOf2 >= 0 && length2 > iIndexOf2) {
                        sb.delete(iIndexOf2, iIndexOf2 + 2);
                    }
                    if (iIndexOf >= 0 && iIndexOf2 > iIndexOf) {
                        arrayList.add(new MentionedEditText.Range(strNodeString, null, iIndexOf, iIndexOf2));
                    }
                }
                return arrayList;
            }
        }
        return null;
    }

    public final String getMessage(ChatMessage message) {
        Intrinsics.checkParameterIsNotNull(message, "message");
        return getMessage(null, message);
    }

    public final String getMessage(ChatThread chatThread, ChatMessage chatMessage) {
        String strNickname;
        String strNickname2;
        if (chatMessage == null) {
            return "";
        }
        String str = chatMessage.content;
        if (!(str == null || str.length() == 0)) {
            return chatMessage.content;
        }
        User user = chatMessage.author;
        if (user == null || (strNickname = user.nickname()) == null) {
            strNickname = "";
        }
        if (TextUtils.isEmpty(strNickname) && chatThread != null) {
            User user2 = getUser(chatThread, chatMessage.uid());
            strNickname = (user2 == null || (strNickname2 = user2.nickname()) == null) ? "" : strNickname2;
        }
        int i = chatMessage.type;
        switch (i) {
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
                switch (i) {
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

    public final String buildMessageContent(int i, int i2, String str) {
        return str == null || str.length() == 0 ? this.ctx.getString(i) : this.ctx.getString(i2, str);
    }

    public final User getPrivateChatTargetUer(ChatThread chatThread) {
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

    public final String getThreadTitle(ChatThread chatThread) {
        String strNickname;
        if (chatThread == null) {
            return "";
        }
        String str = chatThread.title;
        if (!(str == null || str.length() == 0)) {
            return chatThread.title;
        }
        String userId = this.accountService.getUserId();
        if (chatThread.type == 0) {
            User privateChatTargetUer = getPrivateChatTargetUer(chatThread);
            return (privateChatTargetUer == null || (strNickname = privateChatTargetUer.nickname()) == null) ? this.ctx.getString(R.string.chat) : strNickname;
        }
        StringBuilder sb = new StringBuilder();
        List<User> optimizedMembersSummary = chatThread.getOptimizedMembersSummary();
        Intrinsics.checkExpressionValueIsNotNull(optimizedMembersSummary, "chatThread.optimizedMembersSummary");
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

    public final int getMemberCount(ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.membersCount;
        }
        return 0;
    }

    public final List<String> getAvatarList(ChatThread chatThread) {
        if (chatThread == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        if (chatThread.type == 0) {
            String userId = this.accountService.getUserId();
            List<User> list = chatThread.membersSummary;
            if (list == null) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            for (User user : list) {
                if (!Utils.isEqualsNotNull(user.uid, userId)) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(user.icon);
                    return arrayList;
                }
            }
            return CollectionsKt__CollectionsKt.emptyList();
        }
        List<User> ul = chatThread.getOptimizedMembersSummary();
        ArrayList arrayList2 = new ArrayList();
        Intrinsics.checkExpressionValueIsNotNull(ul, "ul");
        for (User user2 : ul) {
            if (user2.membershipStatus != 0) {
                arrayList2.add(user2.icon());
            }
        }
        return arrayList2;
    }

    public final boolean canChatWithCurrentUserInGlobalLevel(User user) {
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

    private final boolean canChat(User user) {
        if (user == null) {
            return true;
        }
        int privilege = user.getPrivilege(User.CHAT);
        if (privilege != 2) {
            return privilege != 3;
        }
        int i = user.followingStatus;
        return i == 2 || i == 3;
    }

    public final User getUser(ChatThread chatThread, String str) {
        List<User> list;
        if (chatThread != null) {
            if (!(str == null || str.length() == 0) && (list = chatThread.membersSummary) != null) {
                for (User user : list) {
                    if (str.equals(user.uid())) {
                        return user;
                    }
                }
            }
        }
        return null;
    }

    public final boolean isThreadUnread(ChatThread chatThread) {
        Date date;
        Date date2;
        long time = 0;
        long time2 = (chatThread == null || (date2 = chatThread.lastReadTime) == null) ? 0L : date2.getTime();
        if (chatThread != null && (date = chatThread.latestActivityTime) != null) {
            time = date.getTime();
        }
        return time2 < time;
    }

    public final StickerCollection getStickerCollectionSummary(ChatMessage chatMessage) {
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

    public final void handleLinkSnippetClick(LinkSummary linkSummary) {
        if (linkSummary == null || TextUtils.isEmpty(linkSummary.link)) {
            return;
        }
        try {
            this.ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(linkSummary.link)));
        } catch (Exception unused) {
        }
    }

    public final boolean isMine(ChatMessage chatMessage) {
        return (chatMessage != null ? chatMessage.author : null) != null && Utils.isEqualsNotNull(this.accountService.getUserId(), chatMessage.author.uid);
    }

    public final boolean isMeAccessibleToThisChat(ChatThread chatThread) {
        if (chatThread == null || chatThread.type != 2 || Utils.isEqualsNotNull(this.accountService.getUserId(), chatThread.uid())) {
            return true;
        }
        return !chatThread.needHidden;
    }

    public final boolean isChatThreadDisabledOrDelete(ChatThread chatThread) {
        int i;
        if (chatThread == null) {
            return false;
        }
        User user = chatThread.author;
        boolean z = user != null && ((i = user.status) == 9 || i == 10);
        int i2 = chatThread.status;
        return i2 == 9 || i2 == 10 || z;
    }

    public final <T extends ChatMessage> List<ChatMessage> appendNewMessageWithSort(List<T> list, ChatMessage chatMessage) {
        if (chatMessage == 0) {
            return list != null ? list : CollectionsKt__CollectionsKt.emptyList();
        }
        if (list == null) {
            return CollectionsKt__CollectionsKt.arrayListOf(chatMessage);
        }
        if (list.isEmpty()) {
            list.add(chatMessage);
            return list;
        }
        int iBinarySearch = Collections.binarySearch(list, chatMessage, new Comparator<ChatMessage>() { // from class: com.narvii.chat.util.ChatHelper$appendNewMessageWithSort$insertIndex$1
            @Override // java.util.Comparator
            public final int compare(ChatMessage chatMessage2, ChatMessage chatMessage3) {
                Date date;
                Date date2 = chatMessage2.createdTime;
                if (date2 == null || (date = chatMessage3.createdTime) == null) {
                    return -1;
                }
                if (date2.before(date)) {
                    return 1;
                }
                return chatMessage2.createdTime.after(chatMessage3.createdTime) ? -1 : 0;
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

    public final boolean isNewerTime(Date date, Date date2) {
        return ChatHelperKt.isNewer(date2, date);
    }

    public final int getChannelType(ChatMessage chatMessage) {
        if (chatMessage == null) {
            return -1;
        }
        int i = chatMessage.type;
        if (i == 114) {
            return 5;
        }
        switch (i) {
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

    public final boolean isHost(ChatThread chatThread) {
        return isHost(chatThread, this.accountService.getUserId());
    }

    public final boolean isHost(ChatThread chatThread, String str) {
        return isHost(chatThread != null ? chatThread.uid : null, str);
    }

    public final boolean isHost(String str, String str2) {
        return Utils.isEqualsNotNull(str, str2);
    }

    public final boolean isCoHost(ChatThread chatThread) {
        return isCoHost(chatThread, this.accountService.getUserId());
    }

    public final boolean isCoHost(ChatThread chatThread, String str) {
        if (chatThread != null) {
            return chatThread.isCoHost(str);
        }
        return false;
    }

    public final boolean isHostOrCoHost(ChatThread chatThread) {
        return isCoHost(chatThread) | isHost(chatThread);
    }

    public final boolean isHostOrCoHost(ChatThread chatThread, String str) {
        return isCoHost(chatThread, str) | isHost(chatThread, str);
    }

    public final boolean isMemeber(ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.joined();
        }
        return false;
    }

    public final boolean isGuest(ChatThread chatThread) {
        if (chatThread != null) {
            return chatThread.isGuest();
        }
        return false;
    }

    public final boolean isCurrentChat(ChatThread chatThread) {
        RtcService rtc = (RtcService) this.nvContext.getService("rtc");
        Intrinsics.checkExpressionValueIsNotNull(rtc, "rtc");
        ChatThread mainChannelChatThread = rtc.getMainChannelChatThread();
        return Utils.isEqualsNotNull(mainChannelChatThread != null ? mainChannelChatThread.threadId : null, chatThread != null ? chatThread.threadId : null);
    }

    public final boolean isSpeaker(ChatThread chatThread) {
        if (!isCurrentChat(chatThread)) {
            return false;
        }
        RtcService rtc = (RtcService) this.nvContext.getService("rtc");
        Intrinsics.checkExpressionValueIsNotNull(rtc, "rtc");
        ChannelUserWrapper mainChannelLocalUserWrapper = rtc.getMainChannelLocalUserWrapper();
        if (mainChannelLocalUserWrapper != null) {
            return ChatHelperKt.isSpeaker(mainChannelLocalUserWrapper);
        }
        return false;
    }

    public final boolean isVideoPlayer(ChatThread chatThread) {
        if (!isCurrentChat(chatThread)) {
            return false;
        }
        RtcService rtc = (RtcService) this.nvContext.getService("rtc");
        Intrinsics.checkExpressionValueIsNotNull(rtc, "rtc");
        ChannelUserWrapper mainChannelLocalUserWrapper = rtc.getMainChannelLocalUserWrapper();
        return (mainChannelLocalUserWrapper != null ? ChatHelperKt.isVideoPlayer(mainChannelLocalUserWrapper) : false) && rtc.getMainChannelType() == 5;
    }

    public final boolean isMyself(ChannelUserWrapper channelUserWrapper) {
        User user = ChatHelperKt.getUser(channelUserWrapper);
        return isMyself(user != null ? user.uid : null);
    }

    public final boolean isMyself(String str) {
        return Utils.isEqualsNotNull(this.accountService.getUserId(), str);
    }

    public final List<ChannelUserWrapper> getSpeakerChannelUser(ChatThread chatThread) {
        if (!isCurrentChat(chatThread)) {
            return null;
        }
        RtcService rtc = (RtcService) this.nvContext.getService("rtc");
        ArrayList arrayList = new ArrayList();
        Intrinsics.checkExpressionValueIsNotNull(rtc, "rtc");
        SparseArray<ChannelUserWrapper> sparseArrayClone = rtc.getMainChannelUserWrapperList().clone();
        Intrinsics.checkExpressionValueIsNotNull(sparseArrayClone, "rtc.mainChannelUserWrapperList.clone()");
        int size = sparseArrayClone.size();
        for (int i = 0; i < size; i++) {
            ChannelUser channelUser = sparseArrayClone.valueAt(i).channelUser;
            if (channelUser != null && channelUser.joinRole == 1) {
                ChannelUserWrapper channelUserWrapperValueAt = sparseArrayClone.valueAt(i);
                Intrinsics.checkExpressionValueIsNotNull(channelUserWrapperValueAt, "userWrapperList.valueAt(i)");
                arrayList.add(channelUserWrapperValueAt);
            }
        }
        return arrayList;
    }

    public final boolean isSpeakerHasOtherOriganizer(ChatThread chatThread, String str) {
        String str2;
        List<ChannelUserWrapper> speakerChannelUser = getSpeakerChannelUser(chatThread);
        if (speakerChannelUser == null) {
            return false;
        }
        int size = speakerChannelUser.size();
        for (int i = 0; i < size; i++) {
            User user = ChatHelperKt.getUser(speakerChannelUser.get(i));
            if (user == null || (str2 = user.uid) == null) {
                str2 = "";
            }
            if (!Utils.isEqualsNotNull(str, str2) && isHostOrCoHost(chatThread, str2)) {
                return true;
            }
        }
        return false;
    }

    public final void leaveChat(String str, final ChatThread chatThread, final FragmentManager fragmentManager) {
        boolean zIsVideoPlayer = isVideoPlayer(chatThread);
        final ConfigService configService = (ConfigService) this.nvContext.getService("config");
        if (isHost(chatThread) && (ChatHelperKt.isGroupChat(chatThread) || ChatHelperKt.isPublicChat(chatThread))) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx);
            aCMAlertDialog.setTitle(R.string.trans_organizer_hint_dialog_title);
            aCMAlertDialog.setMessage(R.string.trans_organizer_hint_dialog_message);
            aCMAlertDialog.setVerticalButtons();
            aCMAlertDialog.setDismissByClickOutside();
            aCMAlertDialog.addButton(R.string.trans_organizer, new View.OnClickListener() { // from class: com.narvii.chat.util.ChatHelper.leaveChat.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatThread chatThread2 = chatThread;
                    if (chatThread2 != null && chatThread2.isFansOnly()) {
                        ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(ChatHelper.this.getCtx());
                        aCMAlertDialog2.setMessage(R.string.not_allow_transfrom_fans_only_chat);
                        aCMAlertDialog2.addButton(R.string.got_it, null);
                        aCMAlertDialog2.show();
                        return;
                    }
                    ChatHelper.this.transOrganizer(chatThread);
                }
            });
            aCMAlertDialog.addButton(R.string.delete_the_chat, new View.OnClickListener() { // from class: com.narvii.chat.util.ChatHelper.leaveChat.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(ChatHelper.this.getCtx());
                    aCMAlertDialog2.setMessage(R.string.delete_chat_hint);
                    aCMAlertDialog2.addButton(R.string.cancel, null);
                    aCMAlertDialog2.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.chat.util.ChatHelper.leaveChat.2.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            int communityId;
                            ChatRequestHelper chatRequestHelper = new ChatRequestHelper(ChatHelper.this.getNvContext());
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            ChatThread chatThread2 = chatThread;
                            if (chatThread2 != null) {
                                communityId = chatThread2.ndcId;
                            } else {
                                ConfigService configService2 = configService;
                                Intrinsics.checkExpressionValueIsNotNull(configService2, "configService");
                                communityId = configService2.getCommunityId();
                            }
                            AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                            chatRequestHelper.delete(communityId, chatThread, fragmentManager);
                        }
                    }, (int) 4294904330L);
                    aCMAlertDialog2.show();
                }
            }, SupportMenu.CATEGORY_MASK);
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.show();
            return;
        }
        int i = zIsVideoPlayer ? R.string.leave_chat_stop_play_video_hint : R.string.leave_fans_only_chat_confirm;
        ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(this.ctx);
        aCMAlertDialog2.setMessage(i);
        aCMAlertDialog2.addButton(R.string.no, (View.OnClickListener) null, (int) 4290493371L);
        aCMAlertDialog2.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.util.ChatHelper.leaveChat.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int communityId;
                ChatRequestHelper chatRequestHelper = new ChatRequestHelper(ChatHelper.this.getNvContext());
                ChatThread chatThread2 = chatThread;
                if (chatThread2 != null) {
                    communityId = chatThread2.ndcId;
                } else {
                    ConfigService configService2 = configService;
                    Intrinsics.checkExpressionValueIsNotNull(configService2, "configService");
                    communityId = configService2.getCommunityId();
                }
                chatRequestHelper.delete(communityId, chatThread, fragmentManager);
            }
        });
        aCMAlertDialog2.show();
    }

    public final void transOrganizer(final ChatThread chatThread) {
        ChatThread mainChannelChatThread;
        Object service = this.nvContext.getService("rtc");
        Intrinsics.checkExpressionValueIsNotNull(service, "nvContext.getService(\"rtc\")");
        RtcService rtcService = (RtcService) service;
        ConfigService configService = (ConfigService) this.nvContext.getService("config");
        Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
        final int communityId = configService.getCommunityId();
        final Integer numValueOf = chatThread != null ? Integer.valueOf(chatThread.ndcId) : null;
        if (rtcService.getMainChannelType() == 5 && (mainChannelChatThread = rtcService.getMainChannelChatThread()) != null) {
            if (TextUtils.equals(mainChannelChatThread.threadId, chatThread != null ? chatThread.threadId : null)) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.ctx);
                aCMAlertDialog.setTitle(R.string.heads_up_ex);
                aCMAlertDialog.setMessage(R.string.trans_organizer_hint_dialog_screenroom_title);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.continue_, new View.OnClickListener() { // from class: com.narvii.chat.util.ChatHelper.transOrganizer.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Intent intent = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
                        intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
                        int i = communityId;
                        Integer num = numValueOf;
                        if (num == null || i != num.intValue()) {
                            intent.putExtra("__communityId", numValueOf);
                        }
                        ChatHelper.this.getCtx().startActivity(intent);
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
        this.ctx.startActivity(intent);
    }
}
