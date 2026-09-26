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
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes4.dex */
@JsonIgnoreProperties(ignoreUnknown = true)
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
    public Boolean showStoreBadge;
    public int status;
    public String strategyInfo;
    public List<String> tagList;
    public int totalQuizHighestScore;
    public int totalQuizPlayedTimes;
    public String uid;
    public boolean verified;
    public int ndcId = -1;
    public int visitorsCount = -1;

    public static class AvatarFrameLite extends NVObject implements IAvatarFrame {
        public String frameId;
        public String icon;
        public String name;
        public int ownershipStatus;
        public String resourceUrl;
        public int status;
        public String uid;
        public int version;

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

        public boolean hasExpired() {
            return this.ownershipStatus == 3;
        }

        @Override // com.narvii.model.NVObject
        public String id() {
            return this.frameId;
        }

        @Override // com.narvii.model.NVObject
        public int objectType() {
            return 122;
        }

        @Override // com.narvii.model.NVObject
        public String parentId() {
            return null;
        }

        @Override // com.narvii.model.NVObject
        public int status() {
            return this.status;
        }

        @Override // com.narvii.model.NVObject
        public String uid() {
            return null;
        }
    }

    public interface IAvatarFrame {
        String getFrameId();

        String getResourceUrl();

        int getVersion();
    }

    public static String getPrivilegeText(Context context, int i10, String str) {
        if (i10 == 1) {
            return context.getString(R.string.everyone);
        }
        if (i10 == 2) {
            return context.getString(R.string.members_i_am_following);
        }
        if (i10 != 3) {
            return null;
        }
        return COMMENT.equals(str) ? context.getString(R.string.only_me) : context.getString(R.string.disabled);
    }

    public void addFollowingStatus(int i10) {
        this.followingStatus |= i10;
        this.membershipStatus = i10 | this.membershipStatus;
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

    @Override // com.narvii.model.ExtensionObject
    public ObjectNode getExtension() {
        return this.extensions;
    }

    public List<FanClub> getFanClubList() {
        return this.fanClubList;
    }

    public InfluencerInfo getInfluencerInfo() {
        return this.influencerInfo;
    }

    public Sticker getMoodSticker() {
        return this.moodSticker;
    }

    @Override // com.narvii.model.StrategyObject
    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    public List<String> getVerifiedTagList() {
        return this.tagList;
    }

    public String icon(boolean z6) {
        int i10;
        if (isModerator() || (i10 = this.role) == 254 || i10 == 253) {
            return "res://ic_amino_team";
        }
        return (z6 || !hideUserProfile()) ? this.icon : "res://placeholder_user_gray";
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.uid;
    }

    public boolean isBackwardFollowing() {
        return (this.followingStatus & 2) == 2;
    }

    public boolean isForwardFollowing() {
        return (this.followingStatus & 1) == 1;
    }

    public boolean isInfluencer() {
        return this.influencerInfo != null;
    }

    public boolean isModerator() {
        int i10 = this.role;
        return i10 == 200 || i10 == 201;
    }

    public boolean isNicknameVerified() {
        return this.isNicknameVerified;
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

    public boolean isOnline() {
        return this.onlineStatus == 1;
    }

    public boolean isSameUser(User user) {
        String str;
        int i10;
        if (user == null || (str = user.uid) == null || !Utils.isEqualsNotNull(this.uid, str)) {
            return false;
        }
        int i11 = this.ndcId;
        return i11 == -1 || (i10 = user.ndcId) == -1 || i11 == i10;
    }

    public boolean isSubscribeMemberShip() {
        return this.accountMembershipStatus > 0 && !this.isPremiumItemMembership;
    }

    public boolean isSystem() {
        return this.role == 254;
    }

    public boolean isVerified() {
        return this.verified;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    public void removeFollowingStatus(int i10) {
        int i11 = this.followingStatus;
        int i12 = ~i10;
        this.followingStatus = i11 & i12;
        this.membershipStatus = i12 & this.membershipStatus;
    }

    public int roleColor() {
        return ROLE_COLOR_DEFAULT;
    }

    public void setFollowingStatus(int i10) {
        this.followingStatus = i10;
        this.membershipStatus = i10;
    }

    @Override // com.narvii.model.StrategyObject
    public void setStrategyInfo(String str) {
        this.strategyInfo = str;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
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

    public List<UserTitle> customTitles() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "customTitles");
        if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
            try {
                return new ArrayList(Arrays.asList((UserTitle[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, UserTitle[].class)));
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public int featureType() {
        return JacksonUtils.nodeInt(this.extensions, "featuredType");
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
                while (it.hasNext()) {
                    Media media = (Media) it.next();
                    if (Utils.isStringEquals(str, media.refId)) {
                        it.remove();
                        arrayList.add(media);
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    public String getContentLanguage() {
        return JacksonUtils.nodeString(this.extensions, "contentLanguage");
    }

    public int getFansCount() {
        InfluencerInfo influencerInfo = this.influencerInfo;
        if (influencerInfo == null) {
            return 0;
        }
        return influencerInfo.fansCount;
    }

    public Date getLastWarningOrStrikeTime() {
        Date iso8601 = DateTimeFormatter.parseISO8601(JacksonUtils.nodeString(this.adminInfo, "lastStrikeTime"));
        Date iso8602 = DateTimeFormatter.parseISO8601(JacksonUtils.nodeString(this.adminInfo, "lastWarningTime"));
        return ((iso8601 == null || !iso8601.after(iso8602)) && iso8602 != null) ? iso8602 : iso8601;
    }

    public int getPrivilege(String str) {
        int iNodeInt = JacksonUtils.nodeInt(this.extensions, str);
        if (iNodeInt == 0) {
            return 1;
        }
        return iNodeInt;
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

    public int getStrikeCount() {
        return JacksonUtils.nodeInt(this.adminInfo, "strikeCount");
    }

    public int getWarningCount() {
        return JacksonUtils.nodeInt(this.adminInfo, "warningCount");
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

    public boolean hasAvatarFrame() {
        AvatarFrameLite avatarFrameLite = this.avatarFrame;
        return (avatarFrameLite == null || avatarFrameLite.hasExpired() || TextUtils.isEmpty(this.avatarFrame.frameId) || TextUtils.isEmpty(this.avatarFrame.resourceUrl)) ? false : true;
    }

    public boolean hideUserProfile() {
        int i10 = this.status;
        return i10 == 9 || i10 == 10 || JacksonUtils.nodeBoolean(this.extensions, "hideUserProfile");
    }

    public String iconForCatalog() {
        return this.role == 254 ? "res://ic_amino_catalog" : icon();
    }

    public boolean isCurator() {
        return this.role == 101 || isLeader();
    }

    public boolean isLeader() {
        int i10 = this.role;
        return i10 == 100 || i10 == 102 || isModerator();
    }

    public boolean isPinnedInfluencer() {
        InfluencerInfo influencerInfo = this.influencerInfo;
        return influencerInfo != null && influencerInfo.pinned;
    }

    public String nickname() {
        if (this.role == 254 || isModerator()) {
            return NVApplication.instance().getString(R.string.role_name_official);
        }
        return this.role == 253 ? NVApplication.instance().getString(R.string.role_name_news_feed) : this.nickname;
    }

    public String nicknameForCatalog() {
        return this.role == 254 ? NVApplication.instance().getString(R.string.role_name_official_catalog) : nickname();
    }

    public String roleName() {
        if (this.role == 0) {
            return null;
        }
        NVApplication nVApplicationInstance = NVApplication.instance();
        if (isModerator() && ("Moderator".equalsIgnoreCase(this.nickname) || "System".equalsIgnoreCase(this.nickname) || "Admin".equalsIgnoreCase(this.nickname))) {
            return nVApplicationInstance.getString(R.string.role_official);
        }
        int i10 = this.role;
        if (i10 != 200 && i10 != 201) {
            if (i10 == 253) {
                return nVApplicationInstance.getString(R.string.role_name_news_feed);
            }
            if (i10 != 254) {
                switch (i10) {
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

    public String toString() {
        return "User{uid='" + this.uid + "', role=" + this.role + ", status=" + this.status + ", nickname='" + this.nickname + "', icon='" + this.icon + "', reputation=" + this.reputation + ", level=" + this.level + ", securityLevel=" + this.securityLevel + ", modifiedTime='" + this.modifiedTime + "', createdTime='" + this.createdTime + "', latitude=" + this.latitude + ", longitude=" + this.longitude + ", address='" + this.address + "', consecutiveCheckInDays=" + this.consecutiveCheckInDays + ", blogsCount=" + this.blogsCount + ", itemsCount=" + this.itemsCount + ", membersCount=" + this.membersCount + ", membershipStatus=" + this.membershipStatus + ", followingStatus=" + this.followingStatus + ", joinedCount=" + this.joinedCount + ", canNotBeInvitedToChat=" + this.canNotBeInvitedToChat + ", verified=" + this.verified + ", isNicknameVerified=" + this.isNicknameVerified + ", tagList=" + this.tagList + ", influencerInfo=" + this.influencerInfo + ", extensions=" + this.extensions + ", adminInfo=" + this.adminInfo + ", content='" + this.content + "', mediaList=" + this.mediaList + ", activeTime=" + this.activeTime + ", onlineStatus=" + this.onlineStatus + ", moodSticker=" + this.moodSticker + ", avatarFrame=" + this.avatarFrame + ", settings=" + this.settings + ", totalQuizHighestScore=" + this.totalQuizHighestScore + ", totalQuizPlayedTimes=" + this.totalQuizPlayedTimes + ", accountMembershipStatus=" + this.accountMembershipStatus + ", isPremiumItemMembership=" + this.isPremiumItemMembership + ", isGlobal=" + this.isGlobal + ", ndcId=" + this.ndcId + ", aminoId='" + this.aminoId + "', isAvailableCandidate=" + this.isAvailableCandidate + ", fanClubList=" + this.fanClubList + ", strategyInfo='" + this.strategyInfo + "', linkedCommunityList=" + this.linkedCommunityList + ", notificationSubscriptionStatus=" + this.notificationSubscriptionStatus + ", postsCount=" + this.postsCount + ", commentsCount=" + this.commentsCount + ", visitorsCount=" + this.visitorsCount + ", activePublicLiveThreadId='" + this.activePublicLiveThreadId + '\'' + b.END_OBJ;
    }

    @Override // com.narvii.util.LenientObject
    public int checkEqual(Object obj) {
        if (!isNormalPartEqual(obj)) {
            return 2;
        }
        return checkLenientPart(obj);
    }

    public String ellipticalNickname(int i10) {
        String strNickname = nickname();
        if (strNickname == null) {
            return null;
        }
        if (strNickname.length() > i10) {
            return strNickname.substring(0, i10) + "…";
        }
        return strNickname;
    }

    public boolean equals(Object obj) {
        if (checkEqual(obj) == 0) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.image.BackgroundSource
    public boolean hasBackground() {
        if (getBackgroundColor() == 0 && getBackgroundMedia() == null) {
            return false;
        }
        return true;
    }

    public String icon() {
        return icon(false);
    }

    public boolean isAminoRole() {
        if (!isSystem() && !isModerator() && this.role != 253) {
            return false;
        }
        return true;
    }

    public boolean isProfileAccessibleByUser(User user) {
        if (!hideUserProfile() || user == null || user.isCurator()) {
            return true;
        }
        return Utils.isEqualsNotNull(uid(), user.uid);
    }

    public String getPrivilegeText(Context context, String str) {
        return getPrivilegeText(context, getPrivilege(str), str);
    }
}
