.class public Lcom/narvii/model/User;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

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
        Lcom/narvii/model/User$AvatarFrameLite;,
        Lcom/narvii/model/User$IAvatarFrame;
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

.field public static final USER_ROLE_USER:I


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

.field public isBot:Z

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

.field public showStoreBadge:Ljava/lang/Boolean;

.field public status:I

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

.field public visitorsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/model/User;->ndcId:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/model/User;->visitorsCount:I

    .line 9
    return-void
.end method

.method public static eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
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

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/narvii/lib/R$string;->only_me:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget p1, Lcom/narvii/lib/R$string;->disabled:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget p1, Lcom/narvii/lib/R$string;->members_i_am_following:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget p1, Lcom/narvii/lib/R$string;->everyone:I

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addFollowingStatus(I)V
    .locals 1

    iget v0, p0, Lcom/narvii/model/User;->followingStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/narvii/model/User;->followingStatus:I

    iget v0, p0, Lcom/narvii/model/User;->membershipStatus:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/model/User;->membershipStatus:I

    return-void
.end method

.method public checkEqual(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/model/User;->isNormalPartEqual(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x2

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/model/User;->checkLenientPart(Ljava/lang/Object;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public checkLenientPart(Ljava/lang/Object;)I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/User;

    .line 21
    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/model/User;

    .line 25
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iget-object v3, p1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    iget-object v3, p1, Lcom/narvii/model/User;->moodSticker:Lcom/narvii/model/Sticker;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/narvii/model/User;->moodSticker:Lcom/narvii/model/Sticker;

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Lcom/narvii/util/LenientObject;Lcom/narvii/util/LenientObject;)I

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    iget-object p1, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 67
    move-result p1

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result p1

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    return v0

    .line 86
    :cond_2
    const/4 p1, 0x1

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 94
    move-result v0

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    return p1

    .line 98
    :cond_3
    return v1

    .line 99
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "customTitles"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 27
    .line 28
    const-class v4, [Lcom/narvii/model/api/UserTitle;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, [Lcom/narvii/model/api/UserTitle;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :cond_1
    return-object v1
.end method

.method public ellipticalNickname(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-le v1, p1, :cond_1

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string/jumbo p1, "\u2026"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/model/User;->checkEqual(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public featureType()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "featuredType"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBackgroundMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    .line 6
    move-result-object v0

    .line 7
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/util/text/IMGUtils;->extractRefIds(Ljava/lang/String;)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v5

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    .line 54
    check-cast v5, Lcom/narvii/model/Media;

    .line 55
    .line 56
    iget-object v6, v5, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v6}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    move-result v6

    .line 61
    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "contentLanguage"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getExtension()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

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

    iget-object v0, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    return-object v0
.end method

.method public getFansCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget v0, v0, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 9
    :goto_0
    return v0
.end method

.method public getInfluencerInfo()Lcom/narvii/model/InfluencerInfo;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    return-object v0
.end method

.method public getLastWarningOrStrikeTime()Ljava/util/Date;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "lastStrikeTime"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    .line 20
    const-string v2, "lastWarningTime"

    .line 21
    .line 22
    .line 23
    filled-new-array {v2}, [Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    :cond_0
    if-nez v1, :cond_2

    .line 43
    :cond_1
    return-object v0

    .line 44
    :cond_2
    return-object v1
.end method

.method public getMoodSticker()Lcom/narvii/model/Sticker;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/User;->moodSticker:Lcom/narvii/model/Sticker;

    return-object v0
.end method

.method public getPrivilege(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    :cond_0
    return p1
.end method

.method public getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/util/text/IMGUtils;->extractRefIds(Ljava/lang/String;)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Lcom/narvii/model/Media;

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v4, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 44
    move-result v4

    .line 45
    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/User;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStrikeCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "strikeCount"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
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

    iget-object v0, p0, Lcom/narvii/model/User;->tagList:Ljava/util/List;

    return-object v0
.end method

.method public getWarningCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "warningCount"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public hasAutoRenewFanClub()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 23
    .line 24
    iget-boolean v2, v2, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_2
    return v1
.end method

.method public hasAvatarFrame()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/User$AvatarFrameLite;->hasExpired()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/model/User$AvatarFrameLite;->resourceUrl:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public hasBackground()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/User;->getBackgroundColor()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/model/User;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public hideUserProfile()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/User;->status:I

    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    const-string v1, "hideUserProfile"

    .line 15
    .line 16
    .line 17
    filled-new-array {v1}, [Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/model/User;->icon(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public icon(Z)Ljava/lang/String;
    .locals 3

    .line 1
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

    .line 2
    invoke-virtual {p0}, Lcom/narvii/model/User;->hideUserProfile()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "res://placeholder_user_gray"

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public iconForCatalog()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/User;->role:I

    .line 3
    .line 4
    const/16 v1, 0xfe

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "res://ic_amino_catalog"

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isAminoRole()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/User;->isSystem()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/model/User;->isModerator()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/narvii/model/User;->role:I

    .line 15
    .line 16
    const/16 v1, 0xfd

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method public isBackwardFollowing()Z
    .locals 2

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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/User;->role:I

    .line 3
    .line 4
    const/16 v1, 0x65

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/model/User;->isLeader()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public isForwardFollowing()Z
    .locals 2

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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/User;->role:I

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x66

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/model/User;->isModerator()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public isModerator()Z
    .locals 2

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

    iget-boolean v0, p0, Lcom/narvii/model/User;->isNicknameVerified:Z

    return v0
.end method

.method public isNormalPartEqual(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    .line 18
    if-ne p1, p0, :cond_1

    .line 19
    return v1

    .line 20
    .line 21
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/User;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/User;

    .line 26
    .line 27
    iget v2, p1, Lcom/narvii/model/User;->role:I

    .line 28
    .line 29
    iget v3, p0, Lcom/narvii/model/User;->role:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget v2, p1, Lcom/narvii/model/User;->status:I

    .line 34
    .line 35
    iget v3, p0, Lcom/narvii/model/User;->status:I

    .line 36
    .line 37
    if-ne v2, v3, :cond_2

    .line 38
    .line 39
    iget v2, p1, Lcom/narvii/model/User;->reputation:I

    .line 40
    .line 41
    iget v3, p0, Lcom/narvii/model/User;->reputation:I

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    iget v2, p1, Lcom/narvii/model/User;->latitude:I

    .line 46
    .line 47
    iget v3, p0, Lcom/narvii/model/User;->latitude:I

    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    iget v2, p1, Lcom/narvii/model/User;->longitude:I

    .line 52
    .line 53
    iget v3, p0, Lcom/narvii/model/User;->longitude:I

    .line 54
    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    iget v2, p1, Lcom/narvii/model/User;->blogsCount:I

    .line 58
    .line 59
    iget v3, p0, Lcom/narvii/model/User;->blogsCount:I

    .line 60
    .line 61
    if-ne v2, v3, :cond_2

    .line 62
    .line 63
    iget v2, p1, Lcom/narvii/model/User;->itemsCount:I

    .line 64
    .line 65
    iget v3, p0, Lcom/narvii/model/User;->itemsCount:I

    .line 66
    .line 67
    if-ne v2, v3, :cond_2

    .line 68
    .line 69
    iget v2, p1, Lcom/narvii/model/User;->membersCount:I

    .line 70
    .line 71
    iget v3, p0, Lcom/narvii/model/User;->membersCount:I

    .line 72
    .line 73
    if-ne v2, v3, :cond_2

    .line 74
    .line 75
    iget v2, p1, Lcom/narvii/model/User;->joinedCount:I

    .line 76
    .line 77
    iget v3, p0, Lcom/narvii/model/User;->joinedCount:I

    .line 78
    .line 79
    if-ne v2, v3, :cond_2

    .line 80
    .line 81
    iget v2, p1, Lcom/narvii/model/User;->level:I

    .line 82
    .line 83
    iget v3, p0, Lcom/narvii/model/User;->level:I

    .line 84
    .line 85
    if-ne v2, v3, :cond_2

    .line 86
    .line 87
    iget v2, p1, Lcom/narvii/model/User;->onlineStatus:I

    .line 88
    .line 89
    iget v3, p0, Lcom/narvii/model/User;->onlineStatus:I

    .line 90
    .line 91
    if-ne v2, v3, :cond_2

    .line 92
    .line 93
    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    move-result v2

    .line 100
    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    iget-object v2, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    move-result v2

    .line 110
    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    iget-object v2, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    move-result v2

    .line 120
    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    iget-object v2, p1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    move-result v2

    .line 130
    .line 131
    if-eqz v2, :cond_2

    .line 132
    .line 133
    iget-object v2, p1, Lcom/narvii/model/User;->modifiedTime:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/narvii/model/User;->modifiedTime:Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    move-result v2

    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    .line 143
    iget-object v2, p1, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v3, p0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    move-result v2

    .line 150
    .line 151
    if-eqz v2, :cond_2

    .line 152
    .line 153
    iget-boolean v2, p1, Lcom/narvii/model/User;->verified:Z

    .line 154
    .line 155
    iget-boolean v3, p0, Lcom/narvii/model/User;->verified:Z

    .line 156
    .line 157
    if-ne v2, v3, :cond_2

    .line 158
    .line 159
    iget-boolean v2, p1, Lcom/narvii/model/User;->isNicknameVerified:Z

    .line 160
    .line 161
    iget-boolean v3, p0, Lcom/narvii/model/User;->isNicknameVerified:Z

    .line 162
    .line 163
    if-ne v2, v3, :cond_2

    .line 164
    .line 165
    iget-boolean v2, p1, Lcom/narvii/model/User;->isGlobal:Z

    .line 166
    .line 167
    iget-boolean v3, p0, Lcom/narvii/model/User;->isGlobal:Z

    .line 168
    .line 169
    if-ne v2, v3, :cond_2

    .line 170
    .line 171
    iget v2, p1, Lcom/narvii/model/User;->ndcId:I

    .line 172
    .line 173
    iget v3, p0, Lcom/narvii/model/User;->ndcId:I

    .line 174
    .line 175
    if-ne v2, v3, :cond_2

    .line 176
    .line 177
    iget-object v2, p1, Lcom/narvii/model/User;->tagList:Ljava/util/List;

    .line 178
    .line 179
    iget-object v3, p0, Lcom/narvii/model/User;->tagList:Ljava/util/List;

    .line 180
    .line 181
    .line 182
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 183
    move-result v2

    .line 184
    .line 185
    if-eqz v2, :cond_2

    .line 186
    .line 187
    iget-object v2, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v3, p0, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    move-result v2

    .line 194
    .line 195
    if-eqz v2, :cond_2

    .line 196
    .line 197
    iget-object v2, p1, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 198
    .line 199
    iget-object v3, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 200
    .line 201
    .line 202
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    move-result v2

    .line 204
    .line 205
    if-eqz v2, :cond_2

    .line 206
    .line 207
    iget v2, p1, Lcom/narvii/model/User;->accountMembershipStatus:I

    .line 208
    .line 209
    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object v2

    .line 212
    .line 213
    iget v3, p0, Lcom/narvii/model/User;->accountMembershipStatus:I

    .line 214
    .line 215
    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    move-result-object v3

    .line 218
    .line 219
    .line 220
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    move-result v2

    .line 222
    .line 223
    if-eqz v2, :cond_2

    .line 224
    .line 225
    iget-object v2, p1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 226
    .line 227
    iget-object v3, p0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 228
    .line 229
    .line 230
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    move-result v2

    .line 232
    .line 233
    if-eqz v2, :cond_2

    .line 234
    .line 235
    iget-object v2, p1, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 236
    .line 237
    iget-object v3, p0, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 238
    .line 239
    .line 240
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 241
    move-result v2

    .line 242
    .line 243
    if-eqz v2, :cond_2

    .line 244
    .line 245
    iget v2, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 246
    .line 247
    iget v3, p0, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 248
    .line 249
    if-ne v2, v3, :cond_2

    .line 250
    .line 251
    iget v2, p1, Lcom/narvii/model/User;->postsCount:I

    .line 252
    .line 253
    iget v3, p0, Lcom/narvii/model/User;->postsCount:I

    .line 254
    .line 255
    if-ne v2, v3, :cond_2

    .line 256
    .line 257
    iget v2, p1, Lcom/narvii/model/User;->commentsCount:I

    .line 258
    .line 259
    iget v3, p0, Lcom/narvii/model/User;->commentsCount:I

    .line 260
    .line 261
    if-ne v2, v3, :cond_2

    .line 262
    .line 263
    iget p1, p1, Lcom/narvii/model/User;->visitorsCount:I

    .line 264
    .line 265
    iget v2, p0, Lcom/narvii/model/User;->visitorsCount:I

    .line 266
    .line 267
    if-ne p1, v2, :cond_2

    .line 268
    move v0, v1

    .line 269
    :cond_2
    :goto_0
    return v0
.end method

.method public isOnline()Z
    .locals 2

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/narvii/model/InfluencerInfo;->pinned:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public isProfileAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/User;->hideUserProfile()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    return v1

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    return v1

    .line 19
    .line 20
    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public isSameUser(Lcom/narvii/model/User;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v2, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    return v0

    .line 18
    .line 19
    :cond_1
    iget v1, p0, Lcom/narvii/model/User;->ndcId:I

    .line 20
    const/4 v2, -0x1

    .line 21
    .line 22
    if-eq v1, v2, :cond_2

    .line 23
    .line 24
    iget p1, p1, Lcom/narvii/model/User;->ndcId:I

    .line 25
    .line 26
    if-eq p1, v2, :cond_2

    .line 27
    .line 28
    if-ne v1, p1, :cond_3

    .line 29
    :cond_2
    const/4 v0, 0x1

    .line 30
    :cond_3
    :goto_0
    return v0
.end method

.method public isSubscribeMemberShip()Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/narvii/model/User;->verified:Z

    return v0
.end method

.method public nickname()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/User;->role:I

    .line 3
    .line 4
    const/16 v1, 0xfe

    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/model/User;->isModerator()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/narvii/model/User;->role:I

    .line 16
    .line 17
    const/16 v1, 0xfd

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sget v1, Lcom/narvii/lib/R$string;->role_name_news_feed:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 33
    return-object v0

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sget v1, Lcom/narvii/lib/R$string;->role_name_official:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public nicknameForCatalog()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/User;->role:I

    .line 3
    .line 4
    const/16 v1, 0xfe

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$string;->role_name_official_catalog:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
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

    iget v0, p0, Lcom/narvii/model/User;->followingStatus:I

    not-int p1, p1

    and-int/2addr v0, p1

    iput v0, p0, Lcom/narvii/model/User;->followingStatus:I

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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/model/User;->role:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/model/User;->isModerator()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const-string v2, "Moderator"

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const-string v2, "System"

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const-string v2, "Admin"

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    :cond_0
    sget v1, Lcom/narvii/lib/R$string;->role_official:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    .line 54
    :cond_1
    iget v2, p0, Lcom/narvii/model/User;->role:I

    .line 55
    .line 56
    const/16 v3, 0xc8

    .line 57
    .line 58
    if-eq v2, v3, :cond_3

    .line 59
    .line 60
    const/16 v3, 0xc9

    .line 61
    .line 62
    if-eq v2, v3, :cond_3

    .line 63
    .line 64
    const/16 v3, 0xfd

    .line 65
    .line 66
    if-eq v2, v3, :cond_2

    .line 67
    .line 68
    const/16 v3, 0xfe

    .line 69
    .line 70
    if-eq v2, v3, :cond_3

    .line 71
    .line 72
    .line 73
    packed-switch v2, :pswitch_data_0

    .line 74
    return-object v1

    .line 75
    .line 76
    :pswitch_0
    sget v1, Lcom/narvii/lib/R$string;->role_leader:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    .line 83
    :pswitch_1
    sget v1, Lcom/narvii/lib/R$string;->role_curator:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    .line 90
    :pswitch_2
    sget v1, Lcom/narvii/lib/R$string;->role_leader:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    .line 97
    :cond_2
    sget v1, Lcom/narvii/lib/R$string;->role_name_news_feed:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    .line 104
    :cond_3
    sget v1, Lcom/narvii/lib/R$string;->role_name_official:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    return-object v0

    .line 110
    :cond_4
    return-object v1

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFollowingStatus(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/model/User;->followingStatus:I

    iput p1, p0, Lcom/narvii/model/User;->membershipStatus:I

    return-void
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/model/User;->strategyInfo:Ljava/lang/String;

    return-void
.end method

.method public status()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/User;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "User{uid=\'"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v1, 0x27

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, ", role="

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget v2, p0, Lcom/narvii/model/User;->role:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, ", status="

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget v2, p0, Lcom/narvii/model/User;->status:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, ", nickname=\'"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, ", icon=\'"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, ", reputation="

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget v2, p0, Lcom/narvii/model/User;->reputation:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, ", level="

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    iget v2, p0, Lcom/narvii/model/User;->level:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, ", securityLevel="

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    iget v2, p0, Lcom/narvii/model/User;->securityLevel:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, ", modifiedTime=\'"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/narvii/model/User;->modifiedTime:Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v2, ", createdTime=\'"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, ", latitude="

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    iget v2, p0, Lcom/narvii/model/User;->latitude:I

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, ", longitude="

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    iget v2, p0, Lcom/narvii/model/User;->longitude:I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v2, ", address=\'"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v2, ", consecutiveCheckInDays="

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    iget v2, p0, Lcom/narvii/model/User;->consecutiveCheckInDays:I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v2, ", blogsCount="

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    iget v2, p0, Lcom/narvii/model/User;->blogsCount:I

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v2, ", itemsCount="

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    iget v2, p0, Lcom/narvii/model/User;->itemsCount:I

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v2, ", membersCount="

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    iget v2, p0, Lcom/narvii/model/User;->membersCount:I

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v2, ", membershipStatus="

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    iget v2, p0, Lcom/narvii/model/User;->membershipStatus:I

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v2, ", followingStatus="

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    iget v2, p0, Lcom/narvii/model/User;->followingStatus:I

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v2, ", joinedCount="

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    iget v2, p0, Lcom/narvii/model/User;->joinedCount:I

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v2, ", canNotBeInvitedToChat="

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    iget-boolean v2, p0, Lcom/narvii/model/User;->canNotBeInvitedToChat:Z

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v2, ", verified="

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    iget-boolean v2, p0, Lcom/narvii/model/User;->verified:Z

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v2, ", isNicknameVerified="

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    iget-boolean v2, p0, Lcom/narvii/model/User;->isNicknameVerified:Z

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v2, ", tagList="

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    iget-object v2, p0, Lcom/narvii/model/User;->tagList:Ljava/util/List;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v2, ", influencerInfo="

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    iget-object v2, p0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v2, ", extensions="

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    iget-object v2, p0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v2, ", adminInfo="

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    iget-object v2, p0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v2, ", content=\'"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    iget-object v2, p0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v2, ", mediaList="

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    iget-object v2, p0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v2, ", activeTime="

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    iget v2, p0, Lcom/narvii/model/User;->activeTime:I

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v2, ", onlineStatus="

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    iget v2, p0, Lcom/narvii/model/User;->onlineStatus:I

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v2, ", moodSticker="

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    iget-object v2, p0, Lcom/narvii/model/User;->moodSticker:Lcom/narvii/model/Sticker;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v2, ", avatarFrame="

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    iget-object v2, p0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v2, ", settings="

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    iget-object v2, p0, Lcom/narvii/model/User;->settings:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string v2, ", totalQuizHighestScore="

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    iget v2, p0, Lcom/narvii/model/User;->totalQuizHighestScore:I

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    const-string v2, ", totalQuizPlayedTimes="

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    iget v2, p0, Lcom/narvii/model/User;->totalQuizPlayedTimes:I

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v2, ", accountMembershipStatus="

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    iget v2, p0, Lcom/narvii/model/User;->accountMembershipStatus:I

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string v2, ", isPremiumItemMembership="

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    iget-boolean v2, p0, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    const-string v2, ", isGlobal="

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    iget-boolean v2, p0, Lcom/narvii/model/User;->isGlobal:Z

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    const-string v2, ", ndcId="

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    iget v2, p0, Lcom/narvii/model/User;->ndcId:I

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    const-string v2, ", aminoId=\'"

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    iget-object v2, p0, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    const-string v2, ", isAvailableCandidate="

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    iget-boolean v2, p0, Lcom/narvii/model/User;->isAvailableCandidate:Z

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    const-string v2, ", fanClubList="

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    iget-object v2, p0, Lcom/narvii/model/User;->fanClubList:Ljava/util/List;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    const-string v2, ", strategyInfo=\'"

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    iget-object v2, p0, Lcom/narvii/model/User;->strategyInfo:Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    const-string v2, ", linkedCommunityList="

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    iget-object v2, p0, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    const-string v2, ", notificationSubscriptionStatus="

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    iget v2, p0, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    const-string v2, ", postsCount="

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    iget v2, p0, Lcom/narvii/model/User;->postsCount:I

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    const-string v2, ", commentsCount="

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    iget v2, p0, Lcom/narvii/model/User;->commentsCount:I

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string v2, ", visitorsCount="

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    iget v2, p0, Lcom/narvii/model/User;->visitorsCount:I

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    const-string v2, ", activePublicLiveThreadId=\'"

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    iget-object v2, p0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    const/16 v1, 0x7d

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    move-result-object v0

    .line 547
    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    return-object v0
.end method
