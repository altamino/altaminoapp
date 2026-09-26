.class public Lcom/narvii/amino/speeddial/mode/LiveCategory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LIVE_CATEGORY_TOPIC_CHAT:Ljava/lang/String; = "users-chatting-public"

.field public static final LIVE_CATEGORY_TYPE_LIVE_CHATTING:Ljava/lang/String; = "users-live-chatting-public"

.field public static itemKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static liveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/amino/speeddial/mode/LiveItemSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public topic:Ljava/lang/String;

.field public userProfileCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->liveItems:Ljava/util/HashMap;

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    .line 17
    .line 18
    const-string v1, "users-chatting-public"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    .line 24
    .line 25
    const-string v2, "users-live-chatting-public"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->liveItems:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance v3, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;

    .line 33
    .line 34
    .line 35
    const v4, 0x7f120e0e

    .line 36
    .line 37
    .line 38
    const v5, -0xff5003

    .line 39
    .line 40
    .line 41
    const v6, 0x7f0805fb

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v6, v4, v5}, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;-><init>(III)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->liveItems:Ljava/util/HashMap;

    .line 50
    .line 51
    new-instance v1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;

    .line 52
    .line 53
    .line 54
    const v3, 0x7f120b9d

    .line 55
    .line 56
    .line 57
    const v4, -0xceaa35

    .line 58
    .line 59
    .line 60
    const v5, 0x7f0805fc

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v5, v3, v4}, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;-><init>(III)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getLiveCategoryType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    const-string v0, ":"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    array-length v0, p0

    .line 18
    const/4 v2, 0x3

    .line 19
    .line 20
    if-lt v0, v2, :cond_2

    .line 21
    .line 22
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    .line 23
    const/4 v2, 0x2

    .line 24
    .line 25
    aget-object v3, p0, v2

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    aget-object p0, p0, v2

    .line 35
    return-object p0

    .line 36
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    new-instance p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    sget-object v1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    const-string v3, "users-live-chatting-public"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAvatarChatEnable()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isScreenRoomEnable()Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-object p0
.end method

.method public static isValidTopic(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->isValidTopicInList(Ljava/util/List;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isValidTopicInList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const-string v1, ":"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    array-length v1, p1

    .line 26
    const/4 v2, 0x3

    .line 27
    .line 28
    if-lt v1, v2, :cond_2

    .line 29
    const/4 v1, 0x2

    .line 30
    .line 31
    aget-object p1, p1, v1

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    move-result p0

    .line 36
    .line 37
    if-nez p0, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_2
    :goto_0
    return v0
.end method
