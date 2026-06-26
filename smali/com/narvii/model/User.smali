.class public Lcom/narvii/model/User;
.super Lcom/narvii/model/NVObject;
.source "User.java"

# interfaces
.implements Lcom/narvii/image/BackgroundSource;
.implements Lcom/narvii/model/StrategyObject;
.implements Lcom/narvii/util/LenientObject;
.implements Lcom/narvii/model/ExtensionObject;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/User$IAvatarFrame;,
        Lcom/narvii/model/User$AvatarFrameLite;
    }
.end annotation


# static fields
.field public static final ACCOUNT_MEMBERSHIP_STATUS_AMINO_PLUS:I = 0x1

.field public static final ACCOUNT_MEMBERSHIP_STATUS_NONE:I = 0x0

.field public static final ACCOUNT_SECURITY_LEVEL_DANGER:I = 0x3

.field public static final ACCOUNT_SECURITY_LEVEL_OK:I = 0x1

.field public static final ACCOUNT_SECURITY_LEVEL_WARNING:I = 0x2

.field public static final CHAT:Ljava/lang/String; = "privilegeOfChatInviteRequest"

.field public static final COMMENT:Ljava/lang/String; = "privilegeOfCommentOnUserProfile"

.field public static final FOLLOW_NOTIFICATION_OFF:I = 0x0

.field public static final FOLLOW_NOTIFICATION_ON:I = 0x1

.field public static final MEMBERSHIP_STATUS_BACKWARD:I = 0x2

.field public static final MEMBERSHIP_STATUS_FORWARD:I = 0x1

.field public static final MEMBERSHIP_STATUS_MUTUAL:I = 0x3

.field public static final MEMBERSHIP_STATUS_NONE:I = 0x0

.field public static final ONLINE_STATUS_OFFLINE:I = 0x2

.field public static final ONLINE_STATUS_ONLINE:I = 0x1

.field public static final PRIVILEGE_EVERYONE:I = 0x1

.field public static final PRIVILEGE_MY_FOLLOWING:I = 0x2

.field public static final PRIVILEGE_NONE:I = 0x3

.field public static final ROLE_COLOR_AUTHOR:I = -0xcb6d25

.field public static final ROLE_COLOR_DEFAULT:I = -0xff307d

.field public static final USER_ROLE_ADMIN:I = 0xc9

.field public static final USER_ROLE_COMMUNITY_AGENT:I = 0x66

.field public static final USER_ROLE_COMMUNITY_CURATOR:I = 0x65

.field public static final USER_ROLE_COMMUNITY_LEADER:I = 0x64

.field public static final USER_ROLE_MODERATOR:I = 0xc8

.field public static final USER_ROLE_NEWS_FEED:I = 0xfd

.field public static final USER_ROLE_SYSTEM:I = 0xfe

.field public static final USER_ROLE_USER:I = 0x0

.field public static final VISIT_NOTIFICATION_STATUS_OFF:I = 0x2

.field public static final VISIT_NOTIFICATION_STATUS_ON:I = 0x1

.field public static final VISIT_PRIVACY_MODE_PRIVATE:I = 0x2

.field public static final VISIT_PRIVACY_MODE_PUBLIC:I = 0x1


# instance fields
.field public accountMembershipStatus:I

.field public activePublicLiveThreadId:Ljava/lang/String;

.field public activeTime:I

.field public address:Ljava/lang/String;

.field public adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public aminoId:Ljava/lang/String;

.field public avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

.field public blogsCount:I

.field public canNotBeInvitedToChat:Z

.field public commentsCount:I

.field public consecutiveCheckInDays:I

.field public content:Ljava/lang/String;

.field public createdTime:Ljava/lang/String;

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public fanClubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FanClub;",
            ">;"
        }
    .end annotation
.end field

.field public followingStatus:I

.field public icon:Ljava/lang/String;

.field public influencerInfo:Lcom/narvii/model/InfluencerInfo;

.field public isAvailableCandidate:Z

.field public isGlobal:Z

.field public isNicknameVerified:Z

.field public isPremiumItemMembership:Z

.field public itemsCount:I

.field public joinedCount:I

.field public latitude:I

.field public level:I

.field public linkedCommunityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public longitude:I

.field public mediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public membersCount:I

.field public membershipStatus:I

.field public modifiedTime:Ljava/lang/String;

.field public moodSticker:Lcom/narvii/model/Sticker;

.field public ndcId:I

.field public nickname:Ljava/lang/String;

.field public notificationSubscriptionStatus:I

.field public onlineStatus:I

.field public postsCount:I

.field public reputation:I

.field public role:I

.field public securityLevel:I

.field public settings:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public status:I

.field public storiesCount:I

.field public strategyInfo:Ljava/lang/String;

.field public tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public totalQuizHighestScore:I

.field public totalQuizPlayedTimes:I

.field public uid:Ljava/lang/String;

.field public verified:Z

.field public visitPrivacy:I

.field public visitorsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/narvii/model/User;->ndcId:I

    .line 142
    iput v0, p0, Lcom/narvii/model/User;->visitPrivacy:I

    .line 167
    iput v0, p0, Lcom/narvii/model/User;->visitorsCount:I

    return-void
.end method

.method public static eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 192
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static getPrivilegeText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo p1, "privilegeOfCommentOnUserProfile"

    .line 588
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 589
    sget p1, Lcom/narvii/lib/R$string;->only_me:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 591
    :cond_1
    sget p1, Lcom/narvii/lib/R$string;->disabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 586
    :cond_2
    sget p1, Lcom/narvii/lib/R$string;->members_i_am_following:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 584
    :cond_3
    sget p1, Lcom/narvii/lib/R$string;->everyone:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addFollowingStatus(I)V
    .locals 1

    .line 646
    iget v0, p0, Lcom/narvii/model/User;->followingStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/narvii/model/User;->followingStatus:I

    .line 647
    iget v0, p0, Lcom/narvii/model/User;->membershipStatus:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/model/User;->membershipStatus:I

    return-void
.end method

.method public checkEqual(Ljava/lang/Object;)I
    .locals 1

    .line 234
    invoke-virtual {p0, p1}, Lcom/narvii/model/User;->isNormalPartEqual(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/model/User;->checkLenientPart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public checkLenientPart(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 216
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/User;

    if-eqz v2, :cond_4

    .line 217
    check-cast p1, Lcom/narvii/model/User;

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v3, p1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v3, p1, Lcom/narvii/model/User;->moodSticker:Lcom/narvii/model/Sticker;

    iget-object v4, p0, Lcom/narvii/model/User;->moodSticker:Lcom/narvii/model/Sticker;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Lcom/narvii/util/LenientObject;Lcom/narvii/util/LenientObject;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object p1, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v3, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return p1

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public customTitles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "customTitles"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 304
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v4, [Lcom/narvii/model/api/UserTitle;

    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public ellipticalNickname(I)Ljava/lang/String;
    .locals 3

    .line 469
    invoke-virtual {p0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 473
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u2026"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/narvii/model/User;->checkEqual(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public featureType()I
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "featuredType"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getActiveFanClubList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FanClub;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 446
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
    iget-object v1, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 448
    invoke-virtual {v2}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    move-result v0

    return v0
.end method

.method public getBackgroundMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public getBioMedias()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    iget-object v1, p0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 543
    iget-object v1, p0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/text/IMGUtils;->extractRefIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 544
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 545
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 546
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 547
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 548
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    .line 549
    iget-object v6, v5, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 550
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 551
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contentLanguage"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public getFanClubList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FanClub;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    return-object v0
.end method

.method public getFansCount()I
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    :goto_0
    return v0
.end method

.method public getInfluencerInfo()Lcom/narvii/model/InfluencerInfo;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    return-object v0
.end method

.method public getLastWarningOrStrikeTime()Ljava/util/Date;
    .locals 5

    .line 519
    iget-object v0, p0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lastStrikeTime"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 521
    iget-object v2, p0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "lastWarningTime"

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-static {v1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    return-object v1
.end method

.method public getMoodSticker()Lcom/narvii/model/Sticker;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/narvii/model/User;->moodSticker:Lcom/narvii/model/Sticker;

    return-object v0
.end method

.method public getPrivilege(Ljava/lang/String;)I
    .locals 4

    .line 599
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 619
    invoke-virtual {p0, p2}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSlideShowMedias()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object v1, p0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 563
    iget-object v1, p0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/text/IMGUtils;->extractRefIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 564
    iget-object v2, p0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 568
    iget-object v4, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 569
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/narvii/model/User;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStrikeCount()I
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "strikeCount"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVerifiedTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/narvii/model/User;->tagList:Ljava/util/List;

    return-object v0
.end method

.method public getWarningCount()I
    .locals 4

    .line 514
    iget-object v0, p0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "warningCount"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasAutoRenewFanClub()Z
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 460
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 461
    iget-boolean v2, v2, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public hasAvatarFrame()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User$AvatarFrameLite;->hasExpired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    iget-object v0, v0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    iget-object v0, v0, Lcom/narvii/model/User$AvatarFrameLite;->resourceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBackground()Z
    .locals 1

    .line 578
    invoke-virtual {p0}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/model/User;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hideUserProfile()Z
    .locals 5

    .line 488
    iget v0, p0, Lcom/narvii/model/User;->status:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "hideUserProfile"

    aput-object v4, v3, v1

    .line 489
    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, v0}, Lcom/narvii/model/User;->icon(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icon(Z)Ljava/lang/String;
    .locals 3

    .line 378
    invoke-virtual {p0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v0

    const-string/jumbo v1, "res://ic_amino_team"

    if-nez v0, :cond_3

    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xfd

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/narvii/model/User;->hideUserProfile()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "res://placeholder_user_gray"

    return-object p1

    .line 387
    :cond_2
    iget-object p1, p0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public iconForCatalog()Ljava/lang/String;
    .locals 2

    .line 395
    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "res://ic_amino_catalog"

    return-object v0

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isAminoRole()Z
    .locals 2

    .line 623
    invoke-virtual {p0}, Lcom/narvii/model/User;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isBackwardFollowing()Z
    .locals 2

    .line 660
    iget v0, p0, Lcom/narvii/model/User;->followingStatus:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurator()Z
    .locals 2

    .line 342
    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isForwardFollowing()Z
    .locals 2

    .line 656
    iget v0, p0, Lcom/narvii/model/User;->followingStatus:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInfluencer()Z
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeader()Z
    .locals 2

    .line 335
    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22b

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isModerator()Z
    .locals 2

    .line 321
    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNicknameVerified()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/narvii/model/User;->isNicknameVerified:Z

    return v0
.end method

.method public isNormalPartEqual(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 247
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/User;

    if-eqz v2, :cond_2

    .line 248
    check-cast p1, Lcom/narvii/model/User;

    .line 249
    iget v2, p1, Lcom/narvii/model/User;->role:I

    iget v3, p0, Lcom/narvii/model/User;->role:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->status:I

    iget v3, p0, Lcom/narvii/model/User;->status:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->reputation:I

    iget v3, p0, Lcom/narvii/model/User;->reputation:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->latitude:I

    iget v3, p0, Lcom/narvii/model/User;->latitude:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->longitude:I

    iget v3, p0, Lcom/narvii/model/User;->longitude:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->blogsCount:I

    iget v3, p0, Lcom/narvii/model/User;->blogsCount:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->itemsCount:I

    iget v3, p0, Lcom/narvii/model/User;->itemsCount:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->membersCount:I

    iget v3, p0, Lcom/narvii/model/User;->membersCount:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->joinedCount:I

    iget v3, p0, Lcom/narvii/model/User;->joinedCount:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->level:I

    iget v3, p0, Lcom/narvii/model/User;->level:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->onlineStatus:I

    iget v3, p0, Lcom/narvii/model/User;->onlineStatus:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 260
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 261
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 262
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 263
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->modifiedTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/User;->modifiedTime:Ljava/lang/String;

    .line 264
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    .line 265
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/narvii/model/User;->verified:Z

    iget-boolean v3, p0, Lcom/narvii/model/User;->verified:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p1, Lcom/narvii/model/User;->isNicknameVerified:Z

    iget-boolean v3, p0, Lcom/narvii/model/User;->isNicknameVerified:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p1, Lcom/narvii/model/User;->isGlobal:Z

    iget-boolean v3, p0, Lcom/narvii/model/User;->isGlobal:Z

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->ndcId:I

    iget v3, p0, Lcom/narvii/model/User;->ndcId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->tagList:Ljava/util/List;

    iget-object v3, p0, Lcom/narvii/model/User;->tagList:Ljava/util/List;

    .line 270
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 271
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    iget-object v3, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 272
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->accountMembershipStatus:I

    .line 273
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/narvii/model/User;->accountMembershipStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    iget-object v3, p0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 274
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    iget-object v3, p0, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 275
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    iget v3, p0, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->postsCount:I

    iget v3, p0, Lcom/narvii/model/User;->postsCount:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/User;->commentsCount:I

    iget v3, p0, Lcom/narvii/model/User;->commentsCount:I

    if-ne v2, v3, :cond_2

    iget p1, p1, Lcom/narvii/model/User;->visitorsCount:I

    iget v2, p0, Lcom/narvii/model/User;->visitorsCount:I

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public isOnline()Z
    .locals 2

    .line 611
    iget v0, p0, Lcom/narvii/model/User;->onlineStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPinnedInfluencer()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/model/InfluencerInfo;->pinned:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProfileAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 497
    invoke-virtual {p0}, Lcom/narvii/model/User;->hideUserProfile()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 503
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 506
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSameUser(Lcom/narvii/model/User;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 285
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 291
    :cond_1
    iget v1, p0, Lcom/narvii/model/User;->ndcId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget p1, p1, Lcom/narvii/model/User;->ndcId:I

    if-eq p1, v2, :cond_2

    if-ne v1, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public isSubscribeMemberShip()Z
    .locals 1

    .line 607
    iget v0, p0, Lcom/narvii/model/User;->accountMembershipStatus:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystem()Z
    .locals 2

    .line 328
    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/narvii/model/User;->verified:Z

    return v0
.end method

.method public nickname()Ljava/lang/String;
    .locals 2

    .line 402
    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfd

    if-ne v0, v1, :cond_1

    .line 407
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    .line 408
    sget v1, Lcom/narvii/lib/R$string;->role_name_news_feed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    return-object v0

    .line 403
    :cond_2
    :goto_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    .line 404
    sget v1, Lcom/narvii/lib/R$string;->role_name_official:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nicknameForCatalog()Ljava/lang/String;
    .locals 2

    .line 480
    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    .line 481
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    .line 482
    sget v1, Lcom/narvii/lib/R$string;->role_name_official_catalog:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeFollowingStatus(I)V
    .locals 1

    .line 651
    iget v0, p0, Lcom/narvii/model/User;->followingStatus:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr v0, p1

    iput v0, p0, Lcom/narvii/model/User;->followingStatus:I

    .line 652
    iget v0, p0, Lcom/narvii/model/User;->membershipStatus:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/model/User;->membershipStatus:I

    return-void
.end method

.method public roleColor()I
    .locals 1

    const v0, -0xff307d

    return v0
.end method

.method public roleName()Ljava/lang/String;
    .locals 4

    .line 346
    iget v0, p0, Lcom/narvii/model/User;->role:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 347
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    const-string v3, "Moderator"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    const-string v3, "System"

    .line 349
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    const-string v3, "Admin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    :cond_0
    sget v1, Lcom/narvii/lib/R$string;->role_official:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 352
    :cond_1
    iget v2, p0, Lcom/narvii/model/User;->role:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_3

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_2

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 356
    :pswitch_0
    sget v1, Lcom/narvii/lib/R$string;->role_leader:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :pswitch_1
    sget v1, Lcom/narvii/lib/R$string;->role_curator:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :pswitch_2
    sget v1, Lcom/narvii/lib/R$string;->role_leader:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 364
    :cond_2
    sget v1, Lcom/narvii/lib/R$string;->role_name_news_feed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 362
    :cond_3
    sget v1, Lcom/narvii/lib/R$string;->role_name_official:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFollowingStatus(I)V
    .locals 0

    .line 641
    iput p1, p0, Lcom/narvii/model/User;->followingStatus:I

    .line 642
    iput p1, p0, Lcom/narvii/model/User;->membershipStatus:I

    return-void
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/narvii/model/User;->strategyInfo:Ljava/lang/String;

    return-void
.end method

.method public status()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/narvii/model/User;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    return-object v0
.end method
