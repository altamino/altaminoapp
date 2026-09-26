package com.narvii.model;

import androidx.annotation.Nullable;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.sessions.settings.c;
import com.narvii.image.BackgroundSource;
import com.narvii.influencer.FansOnlyContent;
import com.narvii.lib.R;
import com.narvii.model.api.CoverPost;
import com.narvii.post.BackgroundUtils;
import com.narvii.post.CoverUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Feed extends NVObject implements BackgroundSource, AuthorGetter, Tippable, FansOnlyContent, CoverPost, StrategyObject, CommunityObjectInGlobal, PreviewObject, ExtensionObject {
    public static final int FEATURED_TYPE_NONE = 0;
    public static final int FEATURED_TYPE_NORMAL = 1;
    public static final int FEATURED_TYPE_PINNED = 2;
    public boolean _isPreview;
    public String address;
    public User author;
    public int commentsCount;
    public String content;

    @JsonIgnoreProperties
    private Media coverMedia;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public ObjectNode extensions;

    @JsonIgnoreProperties
    private Integer featureType;
    public int globalCommentsCount;
    public int globalVotedValue;
    public int globalVotesCount;

    @JsonIgnoreProperties
    private HeadlineStyle headlineStyle;
    public String keywords;
    public int latitude;
    public int longitude;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public int ndcId = -1;
    public boolean needHidden;

    @JsonIgnoreProperties
    private PromoteInfo promoteInfo;
    public String shareURLFullPath;
    public int status;
    public String strategyInfo;
    public TippingInfo tipInfo;

    @Nullable
    public Integer viewCount;
    public int votedValue;
    public int votesCount;

    public static class FeedDeserializer extends JsonDeserializer<Feed> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Feed deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonNode jsonNode = (JsonNode) jsonParser.readValueAsTree();
            if (jsonNode.hasNonNull("blogId")) {
                return (Feed) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, Blog.class);
            }
            if (jsonNode.hasNonNull("itemId")) {
                return (Feed) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, Item.class);
            }
            if (jsonNode.hasNonNull("_isPreview")) {
                return null;
            }
            Log.e("Unknown type: " + jsonNode);
            return null;
        }
    }

    public static class HeadlineFeedDeserializer extends JsonDeserializer<Feed> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Feed deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonNode jsonNode = (JsonNode) jsonParser.readValueAsTree();
            if (jsonNode.hasNonNull("blogId")) {
                return (Feed) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, Blog.class);
            }
            if (jsonNode.hasNonNull("itemId")) {
                return (Feed) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, Item.class);
            }
            Log.e("Unknown type: " + jsonNode);
            return null;
        }
    }

    @Override // com.narvii.influencer.FansOnlyContent
    public int HintTextId() {
        return R.string.some_one_fans_only_hint;
    }

    public String compactContent() {
        return compactContent(content());
    }

    public abstract String content();

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.author;
    }

    public int getCommentsCount(boolean z6) {
        return z6 ? this.globalCommentsCount : this.commentsCount;
    }

    @Override // com.narvii.model.ExtensionObject
    public ObjectNode getExtension() {
        return this.extensions;
    }

    @Override // com.narvii.model.api.CoverPost
    public ObjectNode getExtensions() {
        return this.extensions;
    }

    @Override // com.narvii.model.api.CoverPost
    public List<Media> getMediaList() {
        return this.mediaList;
    }

    @Override // com.narvii.model.CommunityObjectInGlobal
    public int getNdcId() {
        return this.ndcId;
    }

    public Feed getRealFeed() {
        return this;
    }

    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    @Override // com.narvii.model.Tippable
    public User getTipAuthor() {
        return this.author;
    }

    @Override // com.narvii.model.Tippable
    public TippingInfo getTippingInfo() {
        return this.tipInfo;
    }

    public int getTotalCommentsCount() {
        return this.ndcId == 0 ? this.globalCommentsCount : this.commentsCount + this.globalCommentsCount;
    }

    public int getTotalVotesCount() {
        return this.ndcId == 0 ? this.globalVotesCount : this.votesCount + this.globalVotesCount;
    }

    public int getVoteCount(boolean z6) {
        return z6 ? this.globalVotesCount : this.votesCount;
    }

    public int getVotedValue(boolean z6) {
        return z6 ? this.globalVotedValue : this.votedValue;
    }

    @Override // com.narvii.influencer.FansOnlyContent
    public User influencer() {
        return this.author;
    }

    @Override // com.narvii.influencer.FansOnlyContent
    public boolean isContentAccessible() {
        return !this.needHidden;
    }

    public boolean isGlobalFeed() {
        return this.ndcId == 0;
    }

    @Override // com.narvii.model.PreviewObject
    public boolean isPreview() {
        return this._isPreview;
    }

    public void setCommentsCount(boolean z6, int i10) {
        if (z6) {
            this.globalCommentsCount = i10;
        } else {
            this.commentsCount = i10;
        }
    }

    public void setStrategyInfo(String str) {
        this.strategyInfo = str;
    }

    public void setVoteCount(boolean z6, int i10) {
        if (z6) {
            this.globalVotesCount = i10;
        } else {
            this.votesCount = i10;
        }
    }

    public void setVotedValue(boolean z6, int i10) {
        if (z6) {
            this.globalVotedValue = i10;
        } else {
            this.votedValue = i10;
        }
    }

    public abstract String title();

    public static String compactContent(String str) {
        return TextUtils.compactContent(str);
    }

    public Media coverMedia() {
        Media media = this.coverMedia;
        if (media != null) {
            return media;
        }
        Media coverMedia = CoverUtils.getCoverMedia(this);
        this.coverMedia = coverMedia;
        return coverMedia;
    }

    public int featureType() {
        Integer num = this.featureType;
        if (num != null) {
            return num.intValue();
        }
        int iNodeInt = JacksonUtils.nodeInt(this.extensions, "featuredType");
        this.featureType = Integer.valueOf(iNodeInt);
        return iNodeInt;
    }

    @Override // com.narvii.image.BackgroundSource
    public int getBackgroundColor() {
        return BackgroundUtils.getBackgroundColor(this.extensions);
    }

    @Override // com.narvii.image.BackgroundSource
    public Media getBackgroundMedia() {
        return BackgroundUtils.getBackgroundMedia(this.extensions);
    }

    public String getDeepLink(String str) {
        return str + "://x" + this.ndcId + c.FORWARD_SLASH_STRING + apiTypeName() + c.FORWARD_SLASH_STRING + id();
    }

    public HeadlineStyle getHeadlineStyle() {
        HeadlineStyle headlineStyle = this.headlineStyle;
        if (headlineStyle != null) {
            return headlineStyle;
        }
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "headlineStyle");
        if (jsonNodeNodePath == null) {
            return null;
        }
        try {
            HeadlineStyle headlineStyle2 = (HeadlineStyle) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, HeadlineStyle.class);
            this.headlineStyle = headlineStyle2;
            return headlineStyle2;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Media> getPreviewVideoList(boolean z6) {
        if (!z6) {
            List<Media> feedPreviewMediaList = getFeedPreviewMediaList();
            ArrayList arrayList = new ArrayList();
            if (feedPreviewMediaList != null && feedPreviewMediaList.size() > 0) {
                arrayList.add(feedPreviewMediaList.get(0));
            }
            return arrayList;
        }
        List<Media> sortedMediaList = getSortedMediaList();
        ArrayList arrayList2 = new ArrayList();
        if (sortedMediaList != null) {
            for (Media media : sortedMediaList) {
                if (media.isVideo()) {
                    arrayList2.add(media);
                    break;
                }
            }
        }
        return arrayList2;
    }

    public PromoteInfo getPromoteInfo() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "promoteInfo");
        if (jsonNodeNodePath == null) {
            return null;
        }
        try {
            return (PromoteInfo) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, PromoteInfo.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Media> getSortedMediaList() {
        HeadlineStyle headlineStyle;
        List<Media> list;
        if (this.promoteInfo == null) {
            this.promoteInfo = getPromoteInfo();
        }
        PromoteInfo promoteInfo = this.promoteInfo;
        if (promoteInfo != null && (list = promoteInfo.mediaList) != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        List<Media> list2 = this.mediaList;
        if (list2 != null && list2.size() > 0) {
            Media mediaCoverMedia = coverMedia();
            if (mediaCoverMedia != null && ((headlineStyle = getHeadlineStyle()) == null || headlineStyle.layout == 0)) {
                arrayList.add(mediaCoverMedia);
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int i10 = -1;
            for (int i11 = 0; i11 < this.mediaList.size(); i11++) {
                Media media = this.mediaList.get(i11);
                if (i10 == -1 && media.isVideo()) {
                    arrayList.add(0, media);
                    i10 = i11;
                } else if (android.text.TextUtils.isEmpty(media.refId)) {
                    arrayList3.add(media);
                } else {
                    arrayList2.add(media);
                }
            }
            arrayList.addAll(arrayList2);
            arrayList.addAll(arrayList3);
        }
        return arrayList;
    }

    public boolean isFansOnly() {
        return JacksonUtils.nodeBoolean(this.extensions, "fansOnly");
    }

    public boolean isPromoted() {
        return JacksonUtils.nodePath(this.extensions, "promoteInfo") != null;
    }

    public Media firstMedia() {
        Media mediaCoverMedia = coverMedia();
        if (mediaCoverMedia != null) {
            return mediaCoverMedia;
        }
        List<Media> list = this.mediaList;
        if (list != null && list.size() != 0) {
            return this.mediaList.get(0);
        }
        return null;
    }

    public int firstMediaIndex() {
        int coverMediaIndex = CoverUtils.getCoverMediaIndex(this);
        if (coverMediaIndex >= 0) {
            return coverMediaIndex;
        }
        return 0;
    }

    public List<Media> getFeedPreviewMediaList() {
        Media mediaCoverMedia = coverMedia();
        if (mediaCoverMedia != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(mediaCoverMedia);
            return arrayList;
        }
        return this.mediaList;
    }

    public String getShowTitle() {
        if (getPromoteInfo() != null && !android.text.TextUtils.isEmpty(getPromoteInfo().title)) {
            return getPromoteInfo().title;
        }
        return title();
    }

    @Override // com.narvii.image.BackgroundSource
    public boolean hasBackground() {
        if (getBackgroundColor() == 0 && getBackgroundMedia() == null) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.influencer.FansOnlyContent
    public String influencerUid() {
        return uid();
    }

    @Override // com.narvii.model.NVObject
    public boolean isiModeDisableForUser(User user) {
        String str;
        String strUid = uid();
        if (user == null) {
            str = null;
        } else {
            str = user.uid;
        }
        if (Utils.isEqualsNotNull(strUid, str) || JacksonUtils.nodeInt(this.extensions, "__disabledLevel__") != 3) {
            return false;
        }
        return true;
    }
}
