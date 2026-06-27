package com.narvii.model;

import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.influencer.FansOnlyContent;
import com.narvii.lib.R;
import com.narvii.list.DateCompare;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ChatThread extends NVObject implements AuthorGetter, FansOnlyContent, DateCompare, StrategyObject, CommunityObjectInGlobal, Tippable, ExtensionObject {
    public static final int CHAT_ALERT_OPTION_OFF = 0;
    public static final int CHAT_ALERT_OPTION_ON = 1;
    public static final int CHAT_ALERT_OPTION_SILENT = 2;
    public static final int CHAT_MEMBERSHIP_STATUS_ACTIVE = 1;
    public static final int CHAT_MEMBERSHIP_STATUS_INVITE_SENT = 2;
    public static final int CHAT_MEMBERSHIP_STATUS_JOIN_REQUESTED = 3;
    public static final int CHAT_MEMBERSHIP_STATUS_NONE = 0;
    public static final int CHAT_THREAD_CONDITION_AUTHORABSENT = 2;
    public static final int CHAT_THREAD_CONDITION_NORMAL = 0;
    public static final int CHAT_THREAD_CONDITION_PUBLIC_OPEN = 1;
    public static final int CHAT_THREAD_TYPE_GROUP = 1;
    public static final int CHAT_THREAD_TYPE_PUBLIC = 2;
    public static final int CHAT_THREAD_TYPE_SINGLE = 0;
    public static final int VV_CHAT_JOIN_TYPE_INVITED_AND_REQUESTED = 2;
    public static final int VV_CHAT_JOIN_TYPE_INVITE_ONLY = 3;
    public static final int VV_CHAT_JOIN_TYPE_OPEN_TO_EVERYONE = 1;
    public int alertOption;
    public User author;

    @JsonDeserialize(contentAs = ChatBubble.class, keyAs = String.class)
    public Map<String, ChatBubble> chatBubbles;

    @JsonIgnoreProperties
    private List<String> coHostUidList;
    public boolean complete;
    public int condition;
    public String content;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public ObjectNode extensions;
    public String icon;
    public boolean isPinned;
    public String keywords;
    public ChatMessage lastMessageSummary;
    public Date lastPinOperationTime;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date lastReadTime;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date latestActivityTime;
    public int latitude;
    public int longitude;
    public int membersCount;
    public int membersQuota;

    @JsonDeserialize(contentAs = User.class)
    public List<User> membersSummary;
    public int membershipStatus;
    public boolean mentionMe;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public int ndcId;
    public boolean needHidden;
    public StoryTopic promotedTopic;
    public int publishToGlobal;
    public boolean replyMe;
    public int status;
    public String strategyInfo;
    public String threadId;
    public TippingInfo tipInfo;
    public String title;
    public int type;
    public String uid;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> userAddedTopicList;

    @JsonIgnoreProperties
    private int vvChatJoinType = -1;

    public static boolean isLegalThreadType(int i) {
        return i == 0 || i == 2 || i == 1;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 12;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.threadId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.uid;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    public User owner() {
        List<User> list = this.membersSummary;
        if (list == null) {
            return null;
        }
        for (User user : list) {
            if (Utils.isEqualsNotNull(user.uid, this.uid)) {
                return user;
            }
        }
        return null;
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(this.threadId) || TextUtils.isEmpty(this.title) || TextUtils.isEmpty(this.icon)) ? false : true;
    }

    public boolean isOrganizedByInfluencer() {
        User user = this.author;
        return user != null && user.isInfluencer();
    }

    public List<User> getOptimizedMembersSummary() {
        return getOptimizedMembersSummary(this.membersSummary);
    }

    public List<User> getOptimizedMembersSummary(List<User> list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(list);
        int i = this.type;
        if ((i == 1 || i == 2) && arrayList.size() > 1) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                User user = (User) it.next();
                if (user.role == 254 && Utils.isEqualsNotNull(user.uid, this.uid)) {
                    it.remove();
                    break;
                }
            }
        }
        int i2 = this.type;
        if (i2 == 1 || i2 == 2) {
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                User user2 = (User) it2.next();
                if (user2.membershipStatus != 1) {
                    it2.remove();
                    arrayList2.add(user2);
                }
            }
            arrayList.addAll(arrayList2);
        }
        if (this.type == 0) {
            ArrayList arrayList3 = new ArrayList(arrayList.size());
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                User user3 = (User) it3.next();
                if (Utils.isEqualsNotNull(user3.uid, this.uid)) {
                    it3.remove();
                    arrayList3.add(0, user3);
                } else {
                    it3.remove();
                    arrayList3.add(user3);
                }
            }
            arrayList.addAll(arrayList3);
        }
        return arrayList;
    }

    public boolean hasLiveEvents() {
        int rTCType = getRTCType();
        return rTCType == 1 || rTCType == 4 || rTCType == 5;
    }

    public boolean hasEqualId(ChatThread chatThread) {
        return chatThread != null && TextUtils.equals(chatThread.id(), id());
    }

    public boolean isJumpstart() {
        User userOwner;
        return this.type == 1 && (userOwner = owner()) != null && userOwner.role == 254;
    }

    public Media getBackground() {
        try {
            JsonNode jsonNode = this.extensions == null ? null : this.extensions.get("bm");
            if (jsonNode == null) {
                return null;
            }
            return (Media) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, Media.class);
        } catch (Exception e) {
            Log.e("unable to read chat thread background", e);
            return null;
        }
    }

    public boolean organizerLeft() {
        return this.condition == 2 && this.type == 2;
    }

    public OrganizerTransferRequest getOrganizerTransferRequest() {
        try {
            JsonNode jsonNode = this.extensions == null ? null : this.extensions.get("organizerTransferRequest");
            if (jsonNode == null) {
                return null;
            }
            return (OrganizerTransferRequest) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, OrganizerTransferRequest.class);
        } catch (JsonProcessingException e) {
            Log.e("unable to read chat thread OrganizerTransferRequest", e);
            return null;
        }
    }

    public boolean canMemberInvite() {
        ObjectNode objectNode = this.extensions;
        JsonNode jsonNode = objectNode == null ? null : objectNode.get("membersCanInvite");
        if (jsonNode == null) {
            return false;
        }
        return jsonNode.asBoolean(false);
    }

    public void setCanMemberInvite(boolean z) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("membersCanInvite", z);
    }

    public boolean isCurrentUserEligibleToBeTheOrganizer() {
        ObjectNode objectNode = this.extensions;
        JsonNode jsonNode = objectNode == null ? null : objectNode.get("isCurrentUserEligibleToBeTheOrganizer");
        if (jsonNode == null) {
            return false;
        }
        return jsonNode.asBoolean(false);
    }

    public int getRTCType() {
        return JacksonUtils.nodeInt(this.extensions, "channelType");
    }

    public void setBackground(Media media) throws Throwable {
        try {
            if (media == null) {
                if (this.extensions != null) {
                    this.extensions.remove("bm");
                }
            } else {
                if (this.extensions == null) {
                    this.extensions = JacksonUtils.createObjectNode();
                }
                this.extensions.put("bm", JacksonUtils.DEFAULT_MAPPER.valueToTree(media));
            }
        } catch (Exception e) {
            Log.e("unable to set chat thread background", e);
        }
    }

    public ChatBubble getCurBubble(String str) {
        Map<String, ChatBubble> map = this.chatBubbles;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public void updateBubble(String str, ChatBubble chatBubble) {
        if (str == null || chatBubble == null) {
            return;
        }
        if (this.chatBubbles == null) {
            this.chatBubbles = new HashMap();
        }
        this.chatBubbles.put(str, chatBubble);
    }

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.author;
    }

    public boolean isGuest() {
        return this.membershipStatus == 0;
    }

    public boolean joined() {
        return this.membershipStatus == 1;
    }

    public boolean notJoined() {
        return !joined();
    }

    public boolean singleChat() {
        return this.type == 0;
    }

    public boolean publicChat() {
        return this.type == 2;
    }

    public boolean groupChat() {
        return this.type == 1;
    }

    public String getDeepLink(String str) {
        return str + "://x" + this.ndcId + "/" + apiTypeName() + "/" + id();
    }

    public void setAnnouncement(String str) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("announcement", str);
    }

    public String getAnnouncement() {
        return JacksonUtils.nodeString(this.extensions, "announcement");
    }

    public void setPinAnnouncement(boolean z) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("pinAnnouncement", z);
    }

    public Boolean isPinAnnouncement() {
        return Boolean.valueOf(JacksonUtils.nodeBoolean(this.extensions, "pinAnnouncement"));
    }

    public void setViewOnly(boolean z) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("viewOnly", z);
    }

    public boolean isViewOnly() {
        return JacksonUtils.nodeBoolean(this.extensions, "viewOnly");
    }

    public boolean isEnableProps() {
        TippingInfo tippingInfo = this.tipInfo;
        return tippingInfo != null && tippingInfo.tippable;
    }

    public boolean isFansOnly() {
        return JacksonUtils.nodeBoolean(this.extensions, "fansOnly");
    }

    public void setFansOnly(boolean z) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("fansOnly", z);
    }

    public boolean isPublishToGlobal() {
        return this.publishToGlobal == 1;
    }

    public boolean isGlobal() {
        return this.ndcId == 0;
    }

    @Override // com.narvii.influencer.FansOnlyContent
    public User influencer() {
        return this.author;
    }

    @Override // com.narvii.influencer.FansOnlyContent
    public String influencerUid() {
        return this.uid;
    }

    @Override // com.narvii.influencer.FansOnlyContent
    public int HintTextId() {
        return R.string.some_one_fans_only_hint_chat;
    }

    @Override // com.narvii.influencer.FansOnlyContent
    public boolean isContentAccessible() {
        return !this.needHidden;
    }

    @Override // com.narvii.list.DateCompare
    public Date getCompareDate() {
        return this.createdTime;
    }

    @Override // com.narvii.model.StrategyObject
    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    @Override // com.narvii.model.StrategyObject
    public void setStrategyInfo(String str) {
        this.strategyInfo = str;
    }

    @Override // com.narvii.model.CommunityObjectInGlobal
    public int getNdcId() {
        return this.ndcId;
    }

    public int featureType() {
        return JacksonUtils.nodeInt(this.extensions, "featuredType");
    }

    @Override // com.narvii.model.Tippable
    public TippingInfo getTippingInfo() {
        return this.tipInfo;
    }

    @Override // com.narvii.model.Tippable
    public User getTipAuthor() {
        return this.author;
    }

    @Override // com.narvii.model.ExtensionObject
    public ObjectNode getExtension() {
        return this.extensions;
    }

    public List<String> getCoHostUidList() {
        if (this.coHostUidList == null) {
            this.coHostUidList = new ArrayList();
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "coHost");
            if (jsonNodeNodePath == null) {
                return this.coHostUidList;
            }
            for (int i = 0; i < jsonNodeNodePath.size(); i++) {
                this.coHostUidList.add(jsonNodeNodePath.get(i).textValue());
            }
        }
        return this.coHostUidList;
    }

    public void setCoHostUidList(List<String> list) {
        this.coHostUidList = list;
    }

    public boolean isCoHost(String str) {
        return getCoHostUidList().contains(str);
    }

    public int getVvChatJoinType() {
        if (this.vvChatJoinType == -1) {
            this.vvChatJoinType = JacksonUtils.nodeInt(this.extensions, "vvChatJoinType");
        }
        return this.vvChatJoinType;
    }

    public void setVvChatJoinType(int i) {
        this.vvChatJoinType = i;
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("vvChatJoinType", i);
    }

    public boolean isHostOrCoHost(String str) {
        User user = this.author;
        return (user != null && Utils.isEqualsNotNull(str, user.uid)) || isCoHost(str);
    }

    public ChatThread getBriefContent() {
        ChatThread chatThread = (ChatThread) m46clone();
        chatThread.content = "";
        chatThread.membersSummary = new ArrayList();
        chatThread.chatBubbles = new HashMap();
        chatThread.userAddedTopicList = new ArrayList();
        return chatThread;
    }
}
