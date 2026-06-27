package com.narvii.chat.post;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.influencer.FansOnlyPost;
import com.narvii.language.ContentLanguageService;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.story.StoryTopic;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public class ThreadPost implements PostObject, FansOnlyPost {
    public Media backgroundMedia;
    public String content;
    public ObjectNode extensions;
    public int latitude;
    public int longitude;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public ArrayList<User> memberList;
    public int publishToGlobal;
    public String title;
    public int type;
    public List<StoryTopic> userAddedTopicList;

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        return false;
    }

    public ThreadPost() {
        this.type = 2;
        this.memberList = new ArrayList<>();
    }

    public ThreadPost(ChatThread chatThread) {
        this.type = chatThread.type;
        if (chatThread.icon != null) {
            this.mediaList = new ArrayList();
            Media media = new Media();
            media.type = 100;
            media.url = chatThread.icon;
            this.mediaList.add(media);
        }
        this.title = chatThread.title;
        this.content = chatThread.content;
        this.latitude = chatThread.latitude;
        this.longitude = chatThread.longitude;
        this.backgroundMedia = chatThread.getBackground();
        this.userAddedTopicList = chatThread.userAddedTopicList;
        this.extensions = chatThread.extensions;
        this.publishToGlobal = chatThread.publishToGlobal;
    }

    @Override // com.narvii.post.PostObject
    public String title() {
        return this.title;
    }

    @Override // com.narvii.post.PostObject
    public String content() {
        return this.content;
    }

    @Override // com.narvii.post.PostObject
    public String icon() {
        List<Media> list = this.mediaList;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.mediaList.get(0).url;
    }

    public void setIcon(String str) {
        if (str == null) {
            List<Media> list = this.mediaList;
            if (list != null) {
                list.clear();
                return;
            }
            return;
        }
        Media media = new Media();
        media.type = 100;
        media.url = str;
        List<Media> list2 = this.mediaList;
        if (list2 == null) {
            this.mediaList = new ArrayList();
        } else {
            list2.clear();
        }
        this.mediaList.add(media);
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNode = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
        objectNode.remove("memberList");
        objectNode.remove("mediaList");
        objectNode.put("icon", icon());
        objectNode.putNull("address");
        objectNode.putNull("keywords");
        if (this.memberList != null) {
            ArrayNode arrayNodePutArray = objectNode.putArray("inviteeUids");
            Iterator<User> it = this.memberList.iterator();
            while (it.hasNext()) {
                arrayNodePutArray.add(it.next().uid);
            }
        }
        objectNode.remove("backgroundUrl");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("bm", JacksonUtils.DEFAULT_MAPPER.valueToTree(this.backgroundMedia));
        ObjectNode objectNode2 = this.extensions;
        if (objectNode2 != null) {
            objectNodeCreateObjectNode.put("fansOnly", JacksonUtils.nodeBoolean(objectNode2, "fansOnly"));
        }
        if (getLanguage(nVContext) != null) {
            objectNodeCreateObjectNode.put(IjkMediaMeta.IJKM_KEY_LANGUAGE, getLanguage(nVContext));
        }
        objectNode.put("extensions", objectNodeCreateObjectNode);
        return objectNode;
    }

    private String getLanguage(NVContext nVContext) {
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (configService.getCommunityId() == 0) {
            return ((ContentLanguageService) nVContext.getService("content_language")).getRequestPrefLanguageWithLocalAsDefault();
        }
        Community community = ((CommunityService) nVContext.getService("community")).getCommunity(configService.getCommunityId());
        if (community != null) {
            return community.primaryLanguage;
        }
        return null;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        List<Media> list;
        List<StoryTopic> list2;
        return StringUtils.isTrimEmpty(this.title) && StringUtils.isTrimEmpty(this.content) && ((list = this.mediaList) == null || list.size() == 0) && this.backgroundMedia == null && ((list2 = this.userAddedTopicList) == null || list2.size() == 0);
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        if (!(postObject instanceof ThreadPost)) {
            return false;
        }
        ThreadPost threadPost = (ThreadPost) postObject;
        return this.type == threadPost.type && Utils.isStringEquals(this.title, threadPost.title) && Utils.isStringEquals(this.content, threadPost.content) && Utils.isListEquals(this.mediaList, threadPost.mediaList) && this.latitude == threadPost.latitude && this.longitude == threadPost.longitude && Utils.isEquals(this.backgroundMedia, threadPost.backgroundMedia) && Utils.isEquals(this.userAddedTopicList, threadPost.userAddedTopicList);
    }

    @Override // com.narvii.influencer.FansOnlyPost
    public boolean isFansOnly() {
        return JacksonUtils.nodeBoolean(this.extensions, "fansOnly");
    }

    @Override // com.narvii.influencer.FansOnlyPost
    public void setFansOnly(boolean z) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("fansOnly", z);
    }
}
