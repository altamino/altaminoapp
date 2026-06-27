package com.narvii.model;

import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.lib.R;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LenientObject;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class Community extends NVObject implements StrategyObject, LenientObject {
    public static final int COMMUNITY_JOIN_TYPE_INVITE = 2;
    public static final int COMMUNITY_JOIN_TYPE_OPEN = 0;
    public static final int COMMUNITY_JOIN_TYPE_REQUESTED = 1;
    public static final int LISTED_STATUS_LISTED = 2;
    public static final int LISTED_STATUS_NONE = 0;
    public static final int LISTED_STATUS_UNLISTED = 1;
    public boolean _isFaked;
    public ActiveInfo activeInfo;
    public User agent;

    @JsonDeserialize(contentAs = User.class)
    public List<User> communityHeadList;
    public float communityHeat;
    public CommunityMemberSummary communityMembersSummary;
    public ObjectNode configuration;
    public String content;
    public String createdTime;
    public String endpoint;
    public ObjectNode extensions;
    public String icon;

    @JsonProperty(CommentPostActivity.COMMENT_POST_KEY_NDC_ID)
    public int id;
    public List<User> influencerList;
    public boolean isStandaloneAppDeprecated;
    public int joinType;
    public LaunchPage launchPage;
    public String link;
    public int listedStatus;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public int membersCount;
    public String modifiedTime;
    public String name;
    public String primaryLanguage;
    public int probationStatus;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> promotionalMediaList;
    public boolean searchable;
    public int status;
    public String strategyInfo;
    public String tagline;
    public int templateId;
    public ThemePack themePack;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> userAddedTopicList;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 16;
    }

    @Override // com.narvii.model.NVObject
    public String objectTypeName() {
        return "community";
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int hashCode() {
        return this.id ^ 54720654;
    }

    public boolean equals(Object obj) {
        return checkEqual(obj) == 0;
    }

    @Override // com.narvii.util.LenientObject
    public int checkLenientPart(Object obj) {
        if (obj != null && obj.hashCode() == hashCode()) {
            if (obj == this) {
                return 0;
            }
            if (obj instanceof Community) {
                Community community = (Community) obj;
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(Utils.compareLenientObject(community.icon, this.icon)));
                arrayList.add(Integer.valueOf(Utils.compareLenientObjectList(community.promotionalMediaList, this.promotionalMediaList)));
                arrayList.add(Integer.valueOf(Utils.compareLenientObjectList(community.mediaList, this.mediaList)));
                arrayList.add(Integer.valueOf(Utils.compareLenientObject((LenientObject) community.agent, (LenientObject) this.agent)));
                arrayList.add(Integer.valueOf(Utils.compareLenientObjectList(community.influencerList, this.influencerList)));
                if (arrayList.contains(2)) {
                    return 2;
                }
                return arrayList.contains(1) ? 1 : 0;
            }
        }
        return 2;
    }

    @Override // com.narvii.util.LenientObject
    public boolean isNormalPartEqual(Object obj) {
        if (obj == null || obj.hashCode() != hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Community)) {
            return false;
        }
        Community community = (Community) obj;
        return community.id == this.id && community.status == this.status && community.joinType == this.joinType && community.listedStatus == this.listedStatus && community.probationStatus == this.probationStatus && community.isStandaloneAppDeprecated == this.isStandaloneAppDeprecated && Utils.isEquals(community.name, this.name) && Utils.isEquals(community.themePack, this.themePack) && Utils.isEquals(community.primaryLanguage, this.primaryLanguage) && Utils.isEquals(community.modifiedTime, this.modifiedTime) && Utils.isEquals(community.createdTime, this.createdTime) && Utils.isEquals(community.content, this.content) && Utils.isListEquals(community.userAddedTopicList, this.userAddedTopicList) && Utils.isEquals(community.configuration, this.configuration);
    }

    @Override // com.narvii.util.LenientObject
    public int checkEqual(Object obj) {
        if (isNormalPartEqual(obj)) {
            return checkLenientPart(obj);
        }
        return 2;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return "" + this.id;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    public String toString() {
        return this.id + ": " + this.name;
    }

    public int themePackRevision() {
        ThemePack themePack = this.themePack;
        if (themePack == null) {
            return 0;
        }
        return themePack.themePackRevision;
    }

    public String themePackUrl() {
        ThemePack themePack = this.themePack;
        if (themePack == null) {
            return null;
        }
        return themePack.themePackUrl;
    }

    public Media getLaunchImage() {
        List<Media> list = this.promotionalMediaList;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.promotionalMediaList.get(0);
    }

    public int themeColor() {
        String str;
        ThemePack themePack = this.themePack;
        if (themePack == null || (str = themePack.themeColor) == null) {
            return NVApplication.instance().getResources().getColor(R.color.color_default);
        }
        if (TextUtils.isEmpty(str)) {
            return NVApplication.instance().getResources().getColor(R.color.color_default);
        }
        try {
            return StringUtils.parseColor(this.themePack.themeColor);
        } catch (Exception unused) {
            return NVApplication.instance().getResources().getColor(R.color.color_default);
        }
    }

    public String getMemberCount() {
        if (this.membersCount == 1) {
            return NVApplication.instance().getString(R.string.member_1);
        }
        try {
            return NVApplication.instance().getString(R.string.members_n, new Object[]{NumberFormat.getNumberInstance(Locale.US).format(this.membersCount)});
        } catch (Exception unused) {
            return NVApplication.instance().getString(R.string.members_n, new Object[]{String.valueOf(this.membersCount)});
        }
    }

    @Override // com.narvii.model.StrategyObject
    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    /* loaded from: classes3.dex */
    public static class LaunchPage {

        @JsonDeserialize(contentAs = Media.class)
        public List<Media> mediaList;
        public String title;

        public Media image() {
            List<Media> list = this.mediaList;
            if (list == null || list.size() == 0) {
                return null;
            }
            return this.mediaList.get(0);
        }
    }

    public boolean shouldShowLock() {
        return this.joinType != 0;
    }

    public CommunityStyle getCommunityStyle() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "communityStyle");
        if (jsonNodeNodePath == null) {
            return null;
        }
        try {
            return (CommunityStyle) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, CommunityStyle.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.narvii.model.StrategyObject
    public void setStrategyInfo(String str) {
        this.strategyInfo = str;
    }

    public User getInfluencer() {
        List<User> list = this.influencerList;
        if (list != null && !list.isEmpty()) {
            for (User user : this.influencerList) {
                if (user != null && user.isPinnedInfluencer()) {
                    return user;
                }
            }
        }
        return null;
    }
}
