package com.narvii.chat.input;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatMessageVideoInfo;
import com.narvii.model.ChatThread;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.sticker.StickerCacheService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiService;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class ChatInputMessageSenderHelper {
    private final AccountService account;
    private final ChatService chat;
    private final ConfigService configService;
    private final GlobalChatService globalChatService;
    private NVContext nvContext;
    private ChatThread thread;
    private String threadId;

    public ChatInputMessageSenderHelper(NVContext nVContext, String str) {
        this.nvContext = nVContext;
        this.chat = (ChatService) nVContext.getService("chat");
        this.account = (AccountService) nVContext.getService("account");
        this.globalChatService = (GlobalChatService) nVContext.getService("globalChat");
        this.configService = (ConfigService) nVContext.getService("config");
        this.threadId = str;
    }

    private void setMeAsMessageAuthor(ChatMessage chatMessage) {
        ChatBubble curBubble;
        User userProfile = this.account.getUserProfile();
        if (userProfile != null) {
            chatMessage.author = new User();
            User user = chatMessage.author;
            String userId = userProfile.uid;
            if (userId == null) {
                userId = this.account.getUserId();
            }
            user.uid = userId;
            User user2 = chatMessage.author;
            user2.icon = userProfile.icon;
            user2.nickname = userProfile.nickname;
            user2.role = userProfile.role;
            user2.level = userProfile.level;
            user2.avatarFrame = userProfile.avatarFrame;
            user2.influencerInfo = userProfile.influencerInfo;
            user2.accountMembershipStatus = userProfile.accountMembershipStatus;
            int i = chatMessage.mediaType;
            if (((((i == 100 || i == 103) && chatMessage.mediaValue != null) || chatMessage.type != 0) && chatMessage.type != 2) || (curBubble = getThread().getCurBubble(this.account.getUserId())) == null) {
                return;
            }
            chatMessage.chatBubbleId = curBubble.id();
            chatMessage.chatBubbleVersion = curBubble.version;
        }
    }

    public boolean sendMessage(String str, ObjectNode objectNode, ArrayList<MentionedEditText.Range> arrayList, ChatMessage chatMessage) {
        int i = 0;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            NVToast.makeText(this.nvContext.getContext(), R.string.chat_input_not_empty, 0).show();
            return false;
        }
        Date date = new Date(ApiService.timestamp());
        StringBuilder sb = new StringBuilder(str);
        ChatMessage chatMessage2 = new ChatMessage();
        chatMessage2.clientRefId = ChatService.Companion.generateClientRefId();
        chatMessage2.createdTime = date;
        chatMessage2.type = 0;
        chatMessage2.threadId = getThreadId();
        if (chatMessage != null && !TextUtils.isEmpty(chatMessage.messageId)) {
            chatMessage2.setReplyMessage(chatMessage);
        }
        if (objectNode != null) {
            chatMessage2.extensions = JacksonUtils.createObjectNode();
            chatMessage2.extensions.put("attachedObjectInfo", objectNode);
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        if (arrayList != null && !arrayList.isEmpty()) {
            if (chatMessage2.extensions == null) {
                chatMessage2.extensions = JacksonUtils.createObjectNode();
            }
            Iterator<MentionedEditText.Range> it = arrayList.iterator();
            while (it.hasNext()) {
                MentionedEditText.Range next = it.next();
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode.put("uid", next.id);
                arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode);
                sb.insert(next.from + i, MentionedEditText.MENTION_BLOCK_START);
                sb.insert(next.to + i + 2, MentionedEditText.MENTION_BLOCK_END);
                i += 4;
            }
            chatMessage2.extensions.put("mentionedArray", arrayNodeCreateArrayNode);
        }
        chatMessage2.content = sb.toString().trim();
        setMeAsMessageAuthor(chatMessage2);
        this.chat.postMessage(chatMessage2);
        recordChatActivity();
        return true;
    }

    public boolean sendVoiceMessage(Media media, long j, ObjectNode objectNode) {
        if (media.type != 110) {
            return false;
        }
        Date date = new Date(ApiService.timestamp());
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.clientRefId = ChatService.Companion.generateClientRefId();
        chatMessage.createdTime = date;
        chatMessage.type = 2;
        chatMessage.content = media.caption;
        chatMessage.mediaType = media.type;
        chatMessage.mediaValue = media.url;
        chatMessage.threadId = getThreadId();
        if (j != 0) {
            if (chatMessage.extensions == null) {
                chatMessage.extensions = JacksonUtils.createObjectNode();
            }
            ObjectNode objectNode2 = chatMessage.extensions;
            double d = j;
            Double.isNaN(d);
            objectNode2.put("duration", d / 1000.0d);
        }
        if (objectNode != null) {
            chatMessage.extensions = JacksonUtils.createObjectNode();
            chatMessage.extensions.put("attachedObjectInfo", objectNode);
        }
        setMeAsMessageAuthor(chatMessage);
        this.chat.postMessage(chatMessage);
        recordChatActivity();
        return true;
    }

    public boolean sendSticker(Sticker sticker, StickerCollection stickerCollection) {
        if (sticker == null || sticker.id() == null) {
            return false;
        }
        if (getThread() != null && getThread().type == 2 && this.chat.isSendTooFast()) {
            NVToast.makeText(this.nvContext.getContext(), R.string.chat_slow_down, 0).show();
            return false;
        }
        Date date = new Date(ApiService.timestamp());
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.clientRefId = ChatService.Companion.generateClientRefId();
        chatMessage.createdTime = date;
        chatMessage.type = 3;
        chatMessage.mediaType = 113;
        if (sticker.isLocalMood()) {
            chatMessage.mediaValue = Sticker.STICKER_SCHEME + sticker.id();
        } else {
            String iconUri = ((StickerCacheService) this.nvContext.getService("stickerCache")).getIconUri(sticker);
            if (iconUri == null) {
                iconUri = sticker.icon;
            }
            chatMessage.mediaValue = iconUri;
        }
        chatMessage.stickerId = sticker.id();
        chatMessage.threadId = getThreadId();
        if (chatMessage.extensions == null) {
            chatMessage.extensions = JacksonUtils.createObjectNode();
        }
        chatMessage.extensions.put("sticker", JacksonUtils.DEFAULT_MAPPER.valueToTree(sticker));
        setMeAsMessageAuthor(chatMessage);
        this.chat.postMessage(chatMessage);
        recordChatActivity();
        return true;
    }

    public boolean sendImageMessage(Media media, boolean z) {
        int i = media.type;
        if (i != 100 && i != 103) {
            return false;
        }
        Date date = new Date(ApiService.timestamp());
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.clientRefId = ChatService.Companion.generateClientRefId();
        chatMessage.createdTime = date;
        chatMessage.type = 0;
        chatMessage.content = media.caption;
        chatMessage.mediaType = media.type;
        chatMessage.mediaValue = media.url;
        chatMessage.threadId = getThreadId();
        chatMessage.mediaUhqEnabled = z;
        setMeAsMessageAuthor(chatMessage);
        this.chat.postMessage(chatMessage);
        recordChatActivity();
        return true;
    }

    public boolean sendVideoMessage(Media media) {
        int i = media.type;
        if (i != 123 && i != 102) {
            return false;
        }
        Date date = new Date(ApiService.timestamp());
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.clientRefId = ChatService.Companion.generateClientRefId();
        chatMessage.createdTime = date;
        chatMessage.type = 4;
        chatMessage.content = media.caption;
        chatMessage.mediaType = media.type;
        chatMessage.mediaValue = media.url;
        chatMessage.threadId = getThreadId();
        ChatMessageVideoInfo chatMessageVideoInfo = new ChatMessageVideoInfo();
        chatMessageVideoInfo.coverImage = media.coverImage;
        chatMessageVideoInfo.duration = media.duration / 1000;
        chatMessage.setVideoInfo(chatMessageVideoInfo);
        setMeAsMessageAuthor(chatMessage);
        this.chat.postMessage(chatMessage);
        recordChatActivity();
        return true;
    }

    public ChatThread getThread() {
        ChatThread chatThread = this.thread;
        if (chatThread != null) {
            return chatThread;
        }
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof ChatInputFragment) {
            this.thread = ((ChatInputFragment) nVContext).getThread();
        }
        return this.thread;
    }

    public void setThread(ChatThread chatThread) {
        this.thread = chatThread;
    }

    public String getThreadId() {
        if (!TextUtils.isEmpty(this.threadId)) {
            return this.threadId;
        }
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof ChatInputFragment) {
            this.threadId = ((ChatInputFragment) nVContext).getThreadId();
        }
        return this.threadId;
    }

    public void recordChatActivity() {
        if (getThread() == null) {
            return;
        }
        this.globalChatService.addRecentChat(GlobalChatThread.newGlobalChatThread(getThread(), this.configService.getCommunityId(), this.nvContext.getContext()));
    }
}
