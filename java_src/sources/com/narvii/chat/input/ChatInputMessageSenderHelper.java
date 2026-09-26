package com.narvii.chat.input;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.GlobalChatThread;
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

/* JADX INFO: loaded from: classes8.dex */
public class ChatInputMessageSenderHelper {
    private final AccountService account;
    private final ChatService chat;
    private final ConfigService configService;
    private final GlobalChatService globalChatService;
    private NVContext nvContext;
    private ChatThread thread;
    private String threadId;

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
        chatMessage.setClientRefIdTmp(ChatService.Companion.generateClientRefId());
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

    public void setThread(ChatThread chatThread) {
        this.thread = chatThread;
    }

    private void setMeAsMessageAuthor(ChatMessage chatMessage) {
        ChatBubble curBubble;
        User userProfile = this.account.getUserProfile();
        if (userProfile != null) {
            User user = new User();
            chatMessage.author = user;
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
            int i10 = chatMessage.mediaType;
            if (((((i10 == 100 || i10 == 103) && chatMessage.mediaValue != null) || chatMessage.type != 0) && chatMessage.type != 2) || (curBubble = getThread().getCurBubble(this.account.getUserId())) == null) {
                return;
            }
            chatMessage.chatBubbleId = curBubble.id();
            chatMessage.chatBubbleVersion = curBubble.version;
        }
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

    public boolean sendImageMessage(Media media, boolean z6) {
        int i10 = media.type;
        if (i10 != 100 && i10 != 103) {
            return false;
        }
        Date date = new Date(ApiService.timestamp());
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.setClientRefIdTmp(ChatService.Companion.generateClientRefId());
        chatMessage.createdTime = date;
        chatMessage.type = 0;
        chatMessage.content = media.caption;
        chatMessage.mediaType = media.type;
        chatMessage.mediaValue = media.url;
        chatMessage.threadId = getThreadId();
        chatMessage.mediaUhqEnabled = z6;
        setMeAsMessageAuthor(chatMessage);
        this.chat.postMessage(chatMessage);
        recordChatActivity();
        return true;
    }

    public boolean sendVideoMessage(Media media) {
        int i10 = media.type;
        if (i10 != 123 && i10 != 102) {
            return false;
        }
        Date date = new Date(ApiService.timestamp());
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.setClientRefIdTmp(ChatService.Companion.generateClientRefId());
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

    public boolean sendVoiceMessage(Media media, long j6, ObjectNode objectNode) {
        if (media.type != 110) {
            return false;
        }
        Date date = new Date(ApiService.timestamp());
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.setClientRefIdTmp(ChatService.Companion.generateClientRefId());
        chatMessage.createdTime = date;
        chatMessage.type = 2;
        chatMessage.content = media.caption;
        chatMessage.mediaType = media.type;
        chatMessage.mediaValue = media.url;
        chatMessage.threadId = getThreadId();
        if (j6 != 0) {
            if (chatMessage.extensions == null) {
                chatMessage.extensions = JacksonUtils.createObjectNode();
            }
            chatMessage.extensions.put(TypedValues.TransitionType.S_DURATION, j6 / 1000.0d);
        }
        if (objectNode != null) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            chatMessage.extensions = objectNodeCreateObjectNode;
            objectNodeCreateObjectNode.put("attachedObjectInfo", objectNode);
        }
        setMeAsMessageAuthor(chatMessage);
        this.chat.postMessage(chatMessage);
        recordChatActivity();
        return true;
    }

    public ChatInputMessageSenderHelper(NVContext nVContext, String str) {
        this.nvContext = nVContext;
        this.chat = (ChatService) nVContext.getService("chat");
        this.account = (AccountService) nVContext.getService("account");
        this.globalChatService = (GlobalChatService) nVContext.getService("globalChat");
        this.configService = (ConfigService) nVContext.getService("config");
        this.threadId = str;
    }

    public void recordChatActivity() {
        if (getThread() == null) {
            return;
        }
        this.globalChatService.addRecentChat(GlobalChatThread.newGlobalChatThread(getThread(), this.configService.getCommunityId(), this.nvContext.getContext()));
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean sendMessage(String str, ObjectNode objectNode, ArrayList<MentionedEditText.Range> arrayList, ChatMessage chatMessage) {
        int i10 = 0;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str.trim())) {
            Date date = new Date(ApiService.timestamp());
            StringBuilder sb = new StringBuilder(str);
            ChatMessage chatMessage2 = new ChatMessage();
            chatMessage2.setClientRefIdTmp(ChatService.Companion.generateClientRefId());
            chatMessage2.createdTime = date;
            chatMessage2.type = 0;
            chatMessage2.threadId = getThreadId();
            if (chatMessage != null && !TextUtils.isEmpty(chatMessage.messageId)) {
                chatMessage2.setReplyMessage(chatMessage);
            }
            if (objectNode != null) {
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                chatMessage2.extensions = objectNodeCreateObjectNode;
                objectNodeCreateObjectNode.put("attachedObjectInfo", objectNode);
            }
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            if (arrayList != null && !arrayList.isEmpty()) {
                if (chatMessage2.extensions == null) {
                    chatMessage2.extensions = JacksonUtils.createObjectNode();
                }
                for (MentionedEditText.Range range : arrayList) {
                    ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode2.put("uid", range.id);
                    arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode2);
                    sb.insert(range.from + i10, MentionedEditText.MENTION_BLOCK_START);
                    sb.insert(range.to + i10 + 2, MentionedEditText.MENTION_BLOCK_END);
                    i10 += 4;
                }
                chatMessage2.extensions.put("mentionedArray", arrayNodeCreateArrayNode);
            }
            chatMessage2.content = sb.toString().trim();
            setMeAsMessageAuthor(chatMessage2);
            this.chat.postMessage(chatMessage2);
            recordChatActivity();
            return true;
        }
        NVToast.makeText(this.nvContext.getContext(), R.string.chat_input_not_empty, 0).show();
        return false;
    }
}
