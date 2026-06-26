.class public Lcom/narvii/amino/speeddial/mode/LiveCategory;
.super Ljava/lang/Object;
.source "LiveCategory.java"


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

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->liveItems:Ljava/util/HashMap;

    .line 27
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    const-string/jumbo v1, "users-chatting-public"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    const-string/jumbo v2, "users-live-chatting-public"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->liveItems:Ljava/util/HashMap;

    new-instance v3, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;

    const v4, 0x7f0804cd

    const v5, 0x7f0f0ce6

    const v6, -0xff5003

    invoke-direct {v3, v4, v5, v6}, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->liveItems:Ljava/util/HashMap;

    new-instance v1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;

    const v3, 0x7f0804ce

    const v4, 0x7f0f0af2

    const v5, -0xceaa35

    invoke-direct {v1, v3, v4, v5}, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;-><init>(III)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLiveCategoryType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ":"

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 53
    array-length v0, p0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    const/4 v2, 0x2

    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    aget-object p0, p0, v2

    return-object p0

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

    if-nez p0, :cond_0

    .line 72
    sget-object p0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    return-object p0

    .line 74
    :cond_0
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 75
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    sget-object v1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "users-live-chatting-public"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAvatarChatEnable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isScreenRoomEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static isValidTopic(Ljava/lang/String;)Z
    .locals 1

    .line 44
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->isValidTopicInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

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

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 60
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ":"

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 64
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method
