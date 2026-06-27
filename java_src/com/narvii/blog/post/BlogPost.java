package com.narvii.blog.post;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.feed.BackgroundPost;
import com.narvii.influencer.FansOnlyPost;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.PageSession;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.Item;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.model.PollOption;
import com.narvii.model.QuizQuestion;
import com.narvii.model.Scene;
import com.narvii.model.TippingInfo;
import com.narvii.model.api.CoverPost;
import com.narvii.model.story.StoryTopic;
import com.narvii.post.CoverUtils;
import com.narvii.post.PostObject;
import com.narvii.scene.helper.SceneUtils;
import com.narvii.scene.model.SceneDraft;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class BlogPost extends BackgroundPost implements FansOnlyPost, CoverPost {
    public static int FROM_BLOG_PROMOTE = 2;
    public static int FROM_STORY_EDITOR = 1;
    public String address;
    public List<BlogCategory> blogCategoryList;
    public String content;
    public String credits;
    public long duration;
    public int durationInDays;
    public PageSession editSession;
    public Date endTime;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> extensionMediaList;
    public int from;
    public List<Item> itemList;
    public int latitude;
    public String linkDesc;
    public int longitude;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public ObjectNode metadata;
    public SceneDraft oldSceneDraft;
    public int originPublishToGlobal;

    @JsonDeserialize(contentAs = PollOption.class)
    public List<PollOption> polloptList;
    public String promotedFrom;
    public int publishToGlobal;

    @JsonDeserialize(contentAs = QuizQuestion.class)
    public List<QuizQuestion> quizQuestionList;
    public SceneDraft sceneDraft;

    @JsonDeserialize(contentAs = Scene.class)
    public List<Scene> sceneList;
    public String title;
    public int type;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> userAddedTopicList;

    public BlogPost() {
    }

    public BlogPost(Blog blog, List<Item> list, List<BlogCategory> list2) {
        Media coverMedia;
        int i = blog.type;
        this.type = i;
        this.title = blog.title;
        this.content = blog.content;
        this.mediaList = blog.mediaList;
        this.itemList = list;
        this.blogCategoryList = list2;
        this.extensions = blog.extensions;
        int i2 = blog.publishToGlobal;
        this.publishToGlobal = i2;
        this.originPublishToGlobal = i2;
        if (i == 4) {
            Date date = blog.endTime;
            this.endTime = date == null ? new Date(0L) : date;
        }
        this.latitude = blog.latitude;
        this.longitude = blog.longitude;
        this.address = blog.address;
        this.extensionMediaList = blog.getLinkSummary() == null ? null : blog.getLinkSummary().mediaList;
        this.quizQuestionList = blog.quizQuestionList;
        this.polloptList = blog.polloptList;
        this.userAddedTopicList = blog.userAddedTopicList;
        this.credits = blog.credits;
        List<Scene> list3 = blog.sceneList;
        this.sceneList = list3;
        this.sceneDraft = new SceneDraft(blog.blogId, list3);
        this.sceneDraft.metadata = JacksonUtils.createObjectNode();
        ObjectNode objectNode = this.extensions;
        if (objectNode != null && (coverMedia = CoverUtils.getCoverMedia(objectNode)) != null && !TextUtils.isEmpty(coverMedia.getMediaUrl())) {
            this.sceneDraft.coverImage = coverMedia.getMediaUrl();
        }
        if (blog.getStoryLinkSummary() != null) {
            String str = blog.getStoryLinkSummary().title;
            if (!TextUtils.isEmpty(str)) {
                this.linkDesc = str;
            } else {
                this.linkDesc = NVApplication.instance().getString(R.string.post_entry_new_link);
            }
        }
        this.oldSceneDraft = this.sceneDraft.m54clone();
    }

    public Blog getPreviewBlog(Blog blog, NVContext nVContext, String str) {
        ObjectNode objectNode;
        int communityId;
        Blog blog2 = blog != null ? blog : new Blog();
        blog2.blogId = str;
        int i = this.type;
        blog2.type = i;
        blog2.title = this.title;
        blog2.content = this.content;
        blog2.mediaList = this.mediaList;
        if (i == 4) {
            Date date = this.endTime;
            if (date == null) {
                date = new Date(System.currentTimeMillis() + (this.durationInDays * 24 * 60 * 60 * 1000));
            }
            blog2.endTime = date;
        }
        blog2.latitude = this.latitude;
        blog2.longitude = this.longitude;
        blog2.address = this.address;
        blog2.publishToGlobal = this.publishToGlobal;
        blog2.author = ((AccountService) nVContext.getService("account")).getUserProfile();
        ObjectNode objectNode2 = this.extensions;
        blog2.extensions = objectNode2;
        if (this.extensionMediaList != null && objectNode2 != null && objectNode2.get("pageSnippet") != null) {
            LinkSummary linkSummary = (LinkSummary) JacksonUtils.readAs(this.extensions.get("pageSnippet").toString(), LinkSummary.class);
            linkSummary.mediaList = this.extensionMediaList;
            this.extensions.put("pageSnippet", (JsonNode) JacksonUtils.DEFAULT_MAPPER.convertValue(linkSummary, JsonNode.class));
            blog2.extensions = this.extensions;
        }
        if (blog == null) {
            blog2.createdTime = new Date();
            blog2.modifiedTime = new Date();
        } else {
            blog2.modifiedTime = new Date();
        }
        blog2.quizQuestionList = this.quizQuestionList;
        blog2.polloptList = this.polloptList;
        blog2.sceneList = SceneUtils.getAttachPreviewSceneList(this.sceneList);
        blog2.userAddedTopicList = this.userAddedTopicList;
        blog2.credits = this.credits;
        if (this.type == 9) {
            blog2.extensions = this.extensions.deepCopy();
            ObjectNode objectNode3 = blog2.extensions;
            if (objectNode3 != null) {
                JsonNode jsonNode = objectNode3.get(TtmlNode.TAG_STYLE);
                if (jsonNode != null) {
                    JsonNode jsonNode2 = jsonNode.get("coverMediaList");
                    ObjectNode objectNode4 = (ObjectNode) jsonNode;
                    objectNode4.put("coverMediaList", jsonNode2);
                    objectNode4.put("backgroundMediaList", jsonNode2);
                }
                blog2.extensions.put(TtmlNode.TAG_STYLE, jsonNode);
            }
            if (this.promotedFrom != null && (((objectNode = blog2.extensions) == null || objectNode.get("pageSnippet") == null) && (communityId = ((ConfigService) nVContext.getService("config")).getCommunityId()) > 0)) {
                if (blog2.extensions == null) {
                    blog2.extensions = JacksonUtils.createObjectNode();
                }
                LinkSummary linkSummary2 = new LinkSummary();
                linkSummary2.deepLink = "ndc://x" + communityId + "/blog/" + this.promotedFrom;
                blog2.extensions.put("pageSnippet", (JsonNode) JacksonUtils.DEFAULT_MAPPER.convertValue(linkSummary2, JsonNode.class));
            }
        }
        blog2._isPreview = true;
        blog2.tipInfo = new TippingInfo();
        return blog2;
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
        SceneDraft sceneDraft;
        if (this.type == 9 && (sceneDraft = this.sceneDraft) != null) {
            return sceneDraft.coverImage;
        }
        Media mediaCoverMedia = coverMedia();
        if (mediaCoverMedia != null && !TextUtils.isEmpty(mediaCoverMedia.url)) {
            return mediaCoverMedia.url;
        }
        LinkSummary linkSummary = getLinkSummary();
        if (this.type == 5 && linkSummary != null && linkSummary.getMediaList() != null) {
            if (linkSummary.getMediaList().size() > 0) {
                return getLinkSummary().getMediaList().get(0).url;
            }
            return null;
        }
        List<Media> list = this.mediaList;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.mediaList.get(0).url;
    }

    public void setCoverMediaIndex(int i) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        CoverUtils.setCoverMedia(this, i);
    }

    public int getCoverMediaIndex() {
        return CoverUtils.getCoverMediaIndex(this);
    }

    public Media coverMedia() {
        return CoverUtils.getCoverMedia(this);
    }

    public void setCoverMedia(Media media) {
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        CoverUtils.setCoverMedia(this.extensions, (List<Media>) Arrays.asList(media));
    }

    public Media getCoverMedia() {
        return CoverUtils.getCoverMedia(this.extensions);
    }

    @Override // com.narvii.post.PostObject
    public ObjectNode postBody(NVContext nVContext) {
        ObjectNode objectNode;
        ObjectNode objectNode2 = (ObjectNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(this);
        objectNode2.remove("itemList");
        objectNode2.remove("blogCategoryList");
        objectNode2.remove("endTime");
        objectNode2.remove("extensionMediaList");
        objectNode2.remove("sceneDraft");
        objectNode2.remove("editSession");
        objectNode2.remove("oldSceneDraft");
        objectNode2.remove("from");
        objectNode2.remove("originPublishToGlobal");
        objectNode2.remove("linkDesc");
        if (this.type != 6) {
            objectNode2.remove("quizQuestionList");
        }
        if (this.type != 4 || this.polloptList == null) {
            objectNode2.remove("polloptList");
        }
        if (this.type != 9) {
            objectNode2.remove("publishToGlobal");
            objectNode2.remove("sceneList");
            objectNode2.remove("duration");
            objectNode2.remove("credits");
            objectNode2.remove("userAddedTopicList");
            objectNode2.remove(TtmlNode.TAG_METADATA);
        } else {
            if (this.sceneList == null) {
                objectNode2.remove("sceneList");
                objectNode2.remove("duration");
            } else {
                JsonNode jsonNode = objectNode2.get("sceneList");
                if (jsonNode != null && jsonNode.isArray()) {
                    Iterator<JsonNode> it = jsonNode.iterator();
                    while (it.hasNext()) {
                        JsonNode next = it.next();
                        if (next != null) {
                            JsonNode jsonNode2 = next.get("pollAttach");
                            if (jsonNode2 instanceof ObjectNode) {
                                ((ObjectNode) jsonNode2).remove("isModified");
                            }
                        }
                    }
                }
            }
            if (this.credits == null) {
                objectNode2.remove("credits");
            }
            if (this.userAddedTopicList == null) {
                objectNode2.remove("userAddedTopicList");
            }
            if (this.metadata == null) {
                objectNode2.remove(TtmlNode.TAG_METADATA);
            }
        }
        if (this.itemList != null) {
            ArrayNode arrayNodePutArray = objectNode2.putArray("taggedObjectInfo");
            for (Item item : this.itemList) {
                ArrayNode arrayNodeAddArray = arrayNodePutArray.addArray();
                arrayNodeAddArray.add(item.itemId);
                arrayNodeAddArray.add(2);
            }
        }
        if (this.blogCategoryList != null) {
            ArrayNode arrayNodePutArray2 = objectNode2.putArray("taggedBlogCategoryIdList");
            Iterator<BlogCategory> it2 = this.blogCategoryList.iterator();
            while (it2.hasNext()) {
                arrayNodePutArray2.add(it2.next().id());
            }
        }
        if (this.type != 4 || this.endTime != null) {
            objectNode2.remove("durationInDays");
        }
        if (this.extensionMediaList != null && (objectNode = this.extensions) != null && objectNode.get("pageSnippet") != null) {
            LinkSummary linkSummary = (LinkSummary) JacksonUtils.readAs(this.extensions.get("pageSnippet").toString(), LinkSummary.class);
            linkSummary.mediaList = this.extensionMediaList;
            this.extensions.put("pageSnippet", (JsonNode) JacksonUtils.DEFAULT_MAPPER.convertValue(linkSummary, JsonNode.class));
            objectNode2.put("extensions", this.extensions);
        }
        if (this.type == 9) {
            objectNode2.remove("address");
            objectNode2.remove("address");
            objectNode2.remove("latitude");
            objectNode2.remove("longitude");
            objectNode2.remove("mediaList");
            SceneDraft sceneDraft = this.sceneDraft;
            if (sceneDraft != null) {
                objectNode2.put(TtmlNode.TAG_METADATA, sceneDraft.generateMetadata());
            }
        }
        ContentLanguageService contentLanguageService = (ContentLanguageService) nVContext.getService("content_language");
        if (contentLanguageService != null) {
            objectNode2.put("contentLanguage", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault());
        }
        return objectNode2;
    }

    public LinkSummary getLinkSummary() {
        ObjectNode objectNode;
        JsonNode jsonNode;
        if (this.type == 5 && (objectNode = this.extensions) != null && (jsonNode = objectNode.get("pageSnippet")) != null && jsonNode.isObject()) {
            return (LinkSummary) JacksonUtils.readAs(jsonNode.toString(), LinkSummary.class);
        }
        return null;
    }

    @Override // com.narvii.post.PostObject
    public boolean isEmpty() {
        List<Media> list;
        List<PollOption> list2;
        List<QuizQuestion> list3;
        if (!StringUtils.isTrimEmpty(this.title) || !StringUtils.isTrimEmpty(this.content) || ((list = this.mediaList) != null && list.size() != 0)) {
            return false;
        }
        if (this.type == 6 && (list3 = this.quizQuestionList) != null) {
            Iterator<QuizQuestion> it = list3.iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
        }
        if (this.type == 4 && (list2 = this.polloptList) != null) {
            Iterator<PollOption> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (!it2.next().isEmpty()) {
                    return false;
                }
            }
        }
        if (this.type != 9) {
            return true;
        }
        SceneDraft sceneDraft = this.sceneDraft;
        if ((sceneDraft != null && sceneDraft.sceneInfos.size() > 0) || !StringUtils.isTrimEmpty(this.credits)) {
            return false;
        }
        List<StoryTopic> list4 = this.userAddedTopicList;
        if (list4 == null) {
            return true;
        }
        Iterator<StoryTopic> it3 = list4.iterator();
        while (it3.hasNext()) {
            if (!StringUtils.isTrimEmpty(it3.next().name)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.narvii.post.PostObject
    public boolean isSame(PostObject postObject) {
        SceneDraft sceneDraft;
        List<PollOption> list;
        List<PollOption> list2;
        List<QuizQuestion> list3;
        List<QuizQuestion> list4;
        if (!(postObject instanceof BlogPost)) {
            return false;
        }
        BlogPost blogPost = (BlogPost) postObject;
        boolean z = this.type == blogPost.type && Utils.isStringEquals(this.title, blogPost.title) && Utils.isStringEquals(this.content, blogPost.content) && Utils.isListEquals(this.mediaList, blogPost.mediaList) && Utils.isListEquals(this.itemList, blogPost.itemList) && Utils.isListEquals(this.blogCategoryList, blogPost.blogCategoryList) && this.durationInDays == blogPost.durationInDays && Utils.isEquals(this.endTime, blogPost.endTime) && this.latitude == blogPost.latitude && this.longitude == blogPost.longitude && Utils.isEquals(this.extensions, blogPost.extensions);
        if (z && this.type == 6 && (list3 = this.quizQuestionList) != (list4 = blogPost.quizQuestionList)) {
            if (list3 == null || list4 == null) {
                z = false;
            } else {
                Iterator<QuizQuestion> it = list3.iterator();
                Iterator<QuizQuestion> it2 = blogPost.quizQuestionList.iterator();
                while (true) {
                    if (!it.hasNext() && !it2.hasNext()) {
                        break;
                    }
                    QuizQuestion next = null;
                    while (true) {
                        if ((next != null && !next.isEmpty()) || !it.hasNext()) {
                            break;
                        }
                        next = it.next();
                    }
                    QuizQuestion next2 = null;
                    while (true) {
                        if ((next2 != null && !next2.isEmpty()) || !it2.hasNext()) {
                            break;
                        }
                        next2 = it2.next();
                    }
                    if (next == null || next.isEmpty()) {
                        if (next2 != null && !next2.isEmpty()) {
                            break;
                        }
                    } else if (next2 == null || next2.isEmpty() || !next.isSame(next2)) {
                        break;
                    }
                }
                z = false;
            }
        }
        if (z && this.type == 4 && (list = this.polloptList) != (list2 = blogPost.polloptList)) {
            if (list == null || list2 == null) {
                z = false;
            } else {
                Iterator<PollOption> it3 = list.iterator();
                Iterator<PollOption> it4 = blogPost.polloptList.iterator();
                while (true) {
                    if (!it3.hasNext() && !it4.hasNext()) {
                        break;
                    }
                    PollOption next3 = null;
                    while (true) {
                        if ((next3 != null && !next3.isEmpty()) || !it3.hasNext()) {
                            break;
                        }
                        next3 = it3.next();
                    }
                    PollOption next4 = null;
                    while (true) {
                        if ((next4 != null && !next4.isEmpty()) || !it4.hasNext()) {
                            break;
                        }
                        next4 = it4.next();
                    }
                    if (next3 == null || next3.isEmpty()) {
                        if (next4 != null && !next4.isEmpty()) {
                            break;
                        }
                    } else if (next4 == null || next4.isEmpty() || !next3.isSame(next4)) {
                        break;
                    }
                }
                z = false;
            }
        }
        return (z && this.type == 9) ? z && Utils.isStringEquals(this.credits, blogPost.credits) && Utils.isListEquals(this.userAddedTopicList, blogPost.userAddedTopicList) && Utils.isListEquals(this.sceneList, blogPost.sceneList) && (sceneDraft = this.sceneDraft) != null && sceneDraft.isSame(blogPost.sceneDraft, false) : z;
    }

    @Override // com.narvii.post.PostObject
    public boolean hasVideo() {
        SceneDraft sceneDraft;
        return (this.type != 9 || (sceneDraft = this.sceneDraft) == null || sceneDraft.isEmpty()) ? false : true;
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

    @Override // com.narvii.model.api.CoverPost
    public List<Media> getMediaList() {
        return this.mediaList;
    }

    @Override // com.narvii.model.api.CoverPost
    public ObjectNode getExtensions() {
        return this.extensions;
    }

    public boolean fromStoryEditor() {
        return this.from == FROM_STORY_EDITOR;
    }
}
