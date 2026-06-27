package com.narvii.model;

import android.content.Context;
import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.image.BackgroundSource;
import com.narvii.influencer.FanClub;
import com.narvii.lib.R;
import com.narvii.model.api.UserTitle;
import com.narvii.post.BackgroundUtils;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LenientObject;
import com.narvii.util.Utils;
import com.narvii.util.text.IMGUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown = true)
/* loaded from: classes.dex */
public class User extends NVObject implements BackgroundSource, StrategyObject, LenientObject, ExtensionObject {
    public static final int ACCOUNT_MEMBERSHIP_STATUS_AMINO_PLUS = 1;
    public static final int ACCOUNT_MEMBERSHIP_STATUS_NONE = 0;
    public static final int ACCOUNT_SECURITY_LEVEL_DANGER = 3;
    public static final int ACCOUNT_SECURITY_LEVEL_OK = 1;
    public static final int ACCOUNT_SECURITY_LEVEL_WARNING = 2;
    public static final String CHAT = "privilegeOfChatInviteRequest";
    public static final String COMMENT = "privilegeOfCommentOnUserProfile";
    public static final int FOLLOW_NOTIFICATION_OFF = 0;
    public static final int FOLLOW_NOTIFICATION_ON = 1;
    public static final int MEMBERSHIP_STATUS_BACKWARD = 2;
    public static final int MEMBERSHIP_STATUS_FORWARD = 1;
    public static final int MEMBERSHIP_STATUS_MUTUAL = 3;
    public static final int MEMBERSHIP_STATUS_NONE = 0;
    public static final int ONLINE_STATUS_OFFLINE = 2;
    public static final int ONLINE_STATUS_ONLINE = 1;
    public static final int PRIVILEGE_EVERYONE = 1;
    public static final int PRIVILEGE_MY_FOLLOWING = 2;
    public static final int PRIVILEGE_NONE = 3;
    public static final int ROLE_COLOR_AUTHOR = -13331749;
    public static final int ROLE_COLOR_DEFAULT = -16724093;
    public static final int USER_ROLE_ADMIN = 201;
    public static final int USER_ROLE_COMMUNITY_AGENT = 102;
    public static final int USER_ROLE_COMMUNITY_CURATOR = 101;
    public static final int USER_ROLE_COMMUNITY_LEADER = 100;
    public static final int USER_ROLE_MODERATOR = 200;
    public static final int USER_ROLE_NEWS_FEED = 253;
    public static final int USER_ROLE_SYSTEM = 254;
    public static final int USER_ROLE_USER = 0;
    public static final int VISIT_NOTIFICATION_STATUS_OFF = 2;
    public static final int VISIT_NOTIFICATION_STATUS_ON = 1;
    public static final int VISIT_PRIVACY_MODE_PRIVATE = 2;
    public static final int VISIT_PRIVACY_MODE_PUBLIC = 1;
    public int accountMembershipStatus;
    public String activePublicLiveThreadId;
    public int activeTime;
    public String address;
    public ObjectNode adminInfo;
    public String aminoId;
    public AvatarFrameLite avatarFrame;
    public int blogsCount;
    public boolean canNotBeInvitedToChat;
    public int commentsCount;
    public int consecutiveCheckInDays;
    public String content;
    public String createdTime;
    public ObjectNode extensions;
    public List<FanClub> fanClubList;
    public int followingStatus;
    public String icon;
    public InfluencerInfo influencerInfo;
    public boolean isAvailableCandidate;
    public boolean isGlobal;
    public boolean isNicknameVerified;
    public boolean isPremiumItemMembership;
    public int itemsCount;
    public int joinedCount;
    public int latitude;
    public int level;
    public List<Community> linkedCommunityList;
    public int longitude;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public int membersCount;
    public int membershipStatus;
    public String modifiedTime;
    public Sticker moodSticker;
    public String nickname;
    public int notificationSubscriptionStatus;
    public int onlineStatus;
    public int postsCount;
    public int reputation;
    public int role;
    public int securityLevel;
    public ObjectNode settings;
    public int status;
    public int storiesCount;
    public String strategyInfo;
    public List<String> tagList;
    public int totalQuizHighestScore;
    public int totalQuizPlayedTimes;
    public String uid;
    public boolean verified;
    public int ndcId = -1;
    public int visitPrivacy = -1;
    public int visitorsCount = -1;

    public interface IAvatarFrame {
        String getFrameId();

        String getResourceUrl();

        int getVersion();
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    public int roleColor() {
        return ROLE_COLOR_DEFAULT;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.uid;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.uid;
    }

    public static String eliminateZeroUid(String str) {
        if ("00000000-0000-0000-0000-000000000000".equals(str)) {
            return null;
        }
        return str;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
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
            if (obj instanceof User) {
                User user = (User) obj;
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(Utils.compareLenientObject(user.icon, this.icon)));
                arrayList.add(Integer.valueOf(Utils.compareLenientObject((LenientObject) user.moodSticker, (LenientObject) this.moodSticker)));
                arrayList.add(Integer.valueOf(Utils.compareLenientObject(user.extensions, this.extensions)));
                if (arrayList.contains(2)) {
                    return 2;
                }
                return arrayList.contains(1) ? 1 : 0;
            }
        }
        return 2;
    }

    @Override // com.narvii.util.LenientObject
    public int checkEqual(Object obj) {
        if (isNormalPartEqual(obj)) {
            return checkLenientPart(obj);
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
        if (!(obj instanceof User)) {
            return false;
        }
        User user = (User) obj;
        return user.role == this.role && user.status == this.status && user.reputation == this.reputation && user.latitude == this.latitude && user.longitude == this.longitude && user.blogsCount == this.blogsCount && user.itemsCount == this.itemsCount && user.membersCount == this.membersCount && user.joinedCount == this.joinedCount && user.level == this.level && user.onlineStatus == this.onlineStatus && Utils.isEquals(user.uid, this.uid) && Utils.isEquals(user.nickname, this.nickname) && Utils.isEquals(user.content, this.content) && Utils.isEquals(user.address, this.address) && Utils.isEquals(user.modifiedTime, this.modifiedTime) && Utils.isEquals(user.createdTime, this.createdTime) && user.verified == this.verified && user.isNicknameVerified == this.isNicknameVerified && user.isGlobal == this.isGlobal && user.ndcId == this.ndcId && Utils.isListEquals(user.tagList, this.tagList) && Utils.isEquals(user.aminoId, this.aminoId) && Utils.isEquals(user.influencerInfo, this.influencerInfo) && Utils.isEquals(Integer.valueOf(user.accountMembershipStatus), Integer.valueOf(this.accountMembershipStatus)) && Utils.isEquals(user.avatarFrame, this.avatarFrame) && Utils.isListEquals(user.linkedCommunityList, this.linkedCommunityList) && user.notificationSubscriptionStatus == this.notificationSubscriptionStatus && user.postsCount == this.postsCount && user.commentsCount == this.commentsCount && user.visitorsCount == this.visitorsCount;
    }

    public boolean isSameUser(User user) {
        String str;
        int i;
        if (user == null || (str = user.uid) == null || !Utils.isEqualsNotNull(this.uid, str)) {
            return false;
        }
        int i2 = this.ndcId;
        return i2 == -1 || (i = user.ndcId) == -1 || i2 == i;
    }

    public int featureType() {
        return JacksonUtils.nodeInt(this.extensions, "featuredType");
    }

    public List<UserTitle> customTitles() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "customTitles");
        if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
            try {
                return new ArrayList(Arrays.asList((Object[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, UserTitle[].class)));
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public boolean hasAvatarFrame() {
        AvatarFrameLite avatarFrameLite = this.avatarFrame;
        return (avatarFrameLite == null || avatarFrameLite.hasExpired() || TextUtils.isEmpty(this.avatarFrame.frameId) || TextUtils.isEmpty(this.avatarFrame.resourceUrl)) ? false : true;
    }

    public boolean isModerator() {
        int i = this.role;
        return i == 200 || i == 201;
    }

    public boolean isSystem() {
        return this.role == 254;
    }

    public boolean isLeader() {
        int i = this.role;
        return i == 100 || i == 102 || i == 555 || isModerator();
    }

    public boolean isCurator() {
        return this.role == 101 || isLeader();
    }

    public String roleName() {
        if (this.role == 0) {
            return null;
        }
        NVApplication nVApplicationInstance = NVApplication.instance();
        if (isModerator() && ("Moderator".equalsIgnoreCase(this.nickname) || "System".equalsIgnoreCase(this.nickname) || "Admin".equalsIgnoreCase(this.nickname))) {
            return nVApplicationInstance.getString(R.string.role_official);
        }
        int i = this.role;
        if (i != 200 && i != 201) {
            if (i == 253) {
                return nVApplicationInstance.getString(R.string.role_name_news_feed);
            }
            if (i != 254) {
                switch (i) {
                    case 100:
                        return nVApplicationInstance.getString(R.string.role_leader);
                    case 101:
                        return nVApplicationInstance.getString(R.string.role_curator);
                    case 102:
                        return nVApplicationInstance.getString(R.string.role_leader);
                    default:
                        return null;
                }
            }
        }
        return nVApplicationInstance.getString(R.string.role_name_official);
    }

    public String icon(boolean z) {
        int i;
        return (isModerator() || (i = this.role) == 254 || i == 253) ? "res://ic_amino_team" : (z || !hideUserProfile()) ? this.icon : "res://placeholder_user_gray";
    }

    public String icon() {
        return icon(false);
    }

    public String iconForCatalog() {
        return this.role == 254 ? "res://ic_amino_catalog" : icon();
    }

    public String nickname() {
        if (this.role == 254 || isModerator()) {
            return NVApplication.instance().getString(R.string.role_name_official);
        }
        if (this.role == 253) {
            return NVApplication.instance().getString(R.string.role_name_news_feed);
        }
        return this.nickname;
    }

    public boolean isVerified() {
        return this.verified;
    }

    public boolean isNicknameVerified() {
        return this.isNicknameVerified;
    }

    public boolean isInfluencer() {
        return this.influencerInfo != null;
    }

    public boolean isPinnedInfluencer() {
        InfluencerInfo influencerInfo = this.influencerInfo;
        return influencerInfo != null && influencerInfo.pinned;
    }

    public InfluencerInfo getInfluencerInfo() {
        return this.influencerInfo;
    }

    public List<String> getVerifiedTagList() {
        return this.tagList;
    }

    public List<FanClub> getFanClubList() {
        return this.fanClubList;
    }

    public List<FanClub> getActiveFanClubList() {
        if (this.fanClubList == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (FanClub fanClub : this.fanClubList) {
            if (fanClub.isActive()) {
                arrayList.add(fanClub);
            }
        }
        return arrayList;
    }

    public boolean hasAutoRenewFanClub() {
        List<FanClub> list = this.fanClubList;
        if (list == null) {
            return false;
        }
        Iterator<FanClub> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().isAutoRenew) {
                return true;
            }
        }
        return false;
    }

    public String ellipticalNickname(int i) {
        String strNickname = nickname();
        if (strNickname == null) {
            return null;
        }
        if (strNickname.length() <= i) {
            return strNickname;
        }
        return strNickname.substring(0, i) + "…";
    }

    public String nicknameForCatalog() {
        if (this.role == 254) {
            return NVApplication.instance().getString(R.string.role_name_official_catalog);
        }
        return nickname();
    }

    public boolean hideUserProfile() {
        int i = this.status;
        return i == 9 || i == 10 || JacksonUtils.nodeBoolean(this.extensions, "hideUserProfile");
    }

    public String getContentLanguage() {
        return JacksonUtils.nodeString(this.extensions, "contentLanguage");
    }

    public boolean isProfileAccessibleByUser(User user) {
        if (!hideUserProfile() || user == null || user.isCurator()) {
            return true;
        }
        return Utils.isEqualsNotNull(uid(), user.uid);
    }

    public int getStrikeCount() {
        return JacksonUtils.nodeInt(this.adminInfo, "strikeCount");
    }

    public int getWarningCount() {
        return JacksonUtils.nodeInt(this.adminInfo, "warningCount");
    }

    public Date getLastWarningOrStrikeTime() {
        Date iso8601 = DateTimeFormatter.parseISO8601(JacksonUtils.nodeString(this.adminInfo, "lastStrikeTime"));
        Date iso86012 = DateTimeFormatter.parseISO8601(JacksonUtils.nodeString(this.adminInfo, "lastWarningTime"));
        return ((iso8601 == null || !iso8601.after(iso86012)) && iso86012 != null) ? iso86012 : iso8601;
    }

    @Override // com.narvii.image.BackgroundSource
    public int getBackgroundColor() {
        return BackgroundUtils.getBackgroundColor(this.extensions);
    }

    @Override // com.narvii.image.BackgroundSource
    public Media getBackgroundMedia() {
        return BackgroundUtils.getBackgroundMedia(this.extensions);
    }

    public ArrayList<Media> getBioMedias() {
        ArrayList<Media> arrayList = new ArrayList<>();
        if (this.mediaList != null) {
            List<String> listExtractRefIds = IMGUtils.extractRefIds(this.content);
            ArrayList arrayList2 = new ArrayList(this.mediaList);
            for (String str : listExtractRefIds) {
                Iterator it = arrayList2.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Media media = (Media) it.next();
                        if (Utils.isStringEquals(str, media.refId)) {
                            it.remove();
                            arrayList.add(media);
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<Media> getSlideShowMedias() {
        ArrayList<Media> arrayList = new ArrayList<>();
        if (this.mediaList != null) {
            List<String> listExtractRefIds = IMGUtils.extractRefIds(this.content);
            for (Media media : this.mediaList) {
                if (media != null && (listExtractRefIds == null || !listExtractRefIds.contains(media.refId))) {
                    arrayList.add(media);
                }
            }
        }
        return arrayList;
    }

    @Override // com.narvii.image.BackgroundSource
    public boolean hasBackground() {
        return (getBackgroundColor() == 0 && getBackgroundMedia() == null) ? false : true;
    }

    public static String getPrivilegeText(Context context, int i, String str) {
        if (i == 1) {
            return context.getString(R.string.everyone);
        }
        if (i == 2) {
            return context.getString(R.string.members_i_am_following);
        }
        if (i != 3) {
            return null;
        }
        if (COMMENT.equals(str)) {
            return context.getString(R.string.only_me);
        }
        return context.getString(R.string.disabled);
    }

    public int getPrivilege(String str) {
        int iNodeInt = JacksonUtils.nodeInt(this.extensions, str);
        if (iNodeInt == 0) {
            return 1;
        }
        return iNodeInt;
    }

    public boolean isSubscribeMemberShip() {
        return this.accountMembershipStatus > 0 && !this.isPremiumItemMembership;
    }

    public boolean isOnline() {
        return this.onlineStatus == 1;
    }

    public Sticker getMoodSticker() {
        return this.moodSticker;
    }

    public String getPrivilegeText(Context context, String str) {
        return getPrivilegeText(context, getPrivilege(str), str);
    }

    public boolean isAminoRole() {
        return isSystem() || isModerator() || this.role == 253;
    }

    public int getFansCount() {
        InfluencerInfo influencerInfo = this.influencerInfo;
        if (influencerInfo == null) {
            return 0;
        }
        return influencerInfo.fansCount;
    }

    @Override // com.narvii.model.StrategyObject
    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    @Override // com.narvii.model.StrategyObject
    public void setStrategyInfo(String str) {
        this.strategyInfo = str;
    }

    public void setFollowingStatus(int i) {
        this.followingStatus = i;
        this.membershipStatus = i;
    }

    public void addFollowingStatus(int i) {
        this.followingStatus |= i;
        this.membershipStatus = i | this.membershipStatus;
    }

    public void removeFollowingStatus(int i) {
        int i2 = i ^ (-1);
        this.followingStatus &= i2;
        this.membershipStatus = i2 & this.membershipStatus;
    }

    public boolean isForwardFollowing() {
        return (this.followingStatus & 1) == 1;
    }

    public boolean isBackwardFollowing() {
        return (this.followingStatus & 2) == 2;
    }

    @Override // com.narvii.model.ExtensionObject
    public ObjectNode getExtension() {
        return this.extensions;
    }

    /* loaded from: classes3.dex */
    public static class AvatarFrameLite extends NVObject implements IAvatarFrame {
        public String frameId;
        public String icon;
        public String name;
        public int ownershipStatus;
        public String resourceUrl;
        public int status;
        public String uid;
        public int version;

        @Override // com.narvii.model.NVObject
        public int objectType() {
            return 122;
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
        public String id() {
            return this.frameId;
        }

        @Override // com.narvii.model.NVObject
        public int status() {
            return this.status;
        }

        @Override // com.narvii.model.User.IAvatarFrame
        public String getFrameId() {
            return this.frameId;
        }

        @Override // com.narvii.model.User.IAvatarFrame
        public String getResourceUrl() {
            return this.resourceUrl;
        }

        @Override // com.narvii.model.User.IAvatarFrame
        public int getVersion() {
            return this.version;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            if (obj instanceof AvatarFrameLite) {
                return Utils.isEquals(((AvatarFrameLite) obj).frameId, this.frameId);
            }
            return false;
        }

        public boolean hasExpired() {
            return this.ownershipStatus == 3;
        }
    }
}
