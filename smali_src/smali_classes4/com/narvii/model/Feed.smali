.class public abstract Lcom/narvii/model/Feed;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/image/BackgroundSource;
.implements Lcom/narvii/model/AuthorGetter;
.implements Lcom/narvii/model/Tippable;
.implements Lcom/narvii/influencer/FansOnlyContent;
.implements Lcom/narvii/model/api/CoverPost;
.implements Lcom/narvii/model/StrategyObject;
.implements Lcom/narvii/model/CommunityObjectInGlobal;
.implements Lcom/narvii/model/PreviewObject;
.implements Lcom/narvii/model/ExtensionObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/Feed$HeadlineFeedDeserializer;,
        Lcom/narvii/model/Feed$FeedDeserializer;
    }
.end annotation


# static fields
.field public static final FEATURED_TYPE_NONE:I = 0x0

.field public static final FEATURED_TYPE_NORMAL:I = 0x1

.field public static final FEATURED_TYPE_PINNED:I = 0x2


# instance fields
.field public _isPreview:Z

.field public address:Ljava/lang/String;

.field public author:Lcom/narvii/model/User;

.field public commentsCount:I

.field public content:Ljava/lang/String;

.field private coverMedia:Lcom/narvii/model/Media;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field private featureType:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field

.field public globalCommentsCount:I

.field public globalVotedValue:I

.field public globalVotesCount:I

.field private headlineStyle:Lcom/narvii/model/HeadlineStyle;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field

.field public keywords:Ljava/lang/String;

.field public latitude:I

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

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public ndcId:I

.field public needHidden:Z

.field private promoteInfo:Lcom/narvii/model/PromoteInfo;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field

.field public shareURLFullPath:Ljava/lang/String;

.field public status:I

.field public strategyInfo:Ljava/lang/String;

.field public tipInfo:Lcom/narvii/model/TippingInfo;

.field public viewCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public votedValue:I

.field public votesCount:I


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
    iput v0, p0, Lcom/narvii/model/Feed;->ndcId:I

    .line 7
    return-void
.end method

.method public static compactContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public HintTextId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$string;->some_one_fans_only_hint:I

    return v0
.end method

.method public compactContent()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->content()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/model/Feed;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract content()Ljava/lang/String;
.end method

.method public coverMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->coverMedia:Lcom/narvii/model/Media;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lcom/narvii/post/CoverUtils;->getCoverMedia(Lcom/narvii/model/api/CoverPost;)Lcom/narvii/model/Media;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/model/Feed;->coverMedia:Lcom/narvii/model/Media;

    .line 12
    return-object v0
.end method

.method public featureType()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->featureType:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 12
    .line 13
    const-string v1, "featuredType"

    .line 14
    .line 15
    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iput-object v1, p0, Lcom/narvii/model/Feed;->featureType:Ljava/lang/Integer;

    .line 28
    return v0
.end method

.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->coverMedia()Lcom/narvii/model/Media;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/Media;

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 30
    :goto_1
    return-object v0
.end method

.method public firstMediaIndex()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/post/CoverUtils;->getCoverMediaIndex(Lcom/narvii/model/api/CoverPost;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

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
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCommentsCount(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/narvii/model/Feed;->commentsCount:I

    :goto_0
    return p1
.end method

.method public getDeepLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, "://x"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    iget p1, p0, Lcom/narvii/model/Feed;->ndcId:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, "/"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public getExtension()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public getExtensions()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public getFeedPreviewMediaList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->coverMedia()Lcom/narvii/model/Media;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-object v1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 18
    return-object v0
.end method

.method public getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->headlineStyle:Lcom/narvii/model/HeadlineStyle;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    .line 9
    const-string v1, "headlineStyle"

    .line 10
    .line 11
    .line 12
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    return-object v1

    .line 22
    .line 23
    :cond_1
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 24
    .line 25
    const-class v3, Lcom/narvii/model/HeadlineStyle;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/model/HeadlineStyle;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/model/Feed;->headlineStyle:Lcom/narvii/model/HeadlineStyle;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    return-object v1
.end method

.method public getMediaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    return-object v0
.end method

.method public getNdcId()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/Feed;->ndcId:I

    return v0
.end method

.method public getPreviewVideoList(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/model/Media;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/model/Media;->isVideo()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    return-object v0

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    move-result v1

    .line 55
    .line 56
    if-lez v1, :cond_3

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/model/Media;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_3
    return-object v0
.end method

.method public getPromoteInfo()Lcom/narvii/model/PromoteInfo;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "promoteInfo"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    return-object v1

    .line 18
    .line 19
    :cond_0
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 20
    .line 21
    const-class v3, Lcom/narvii/model/PromoteInfo;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/PromoteInfo;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    return-object v1
.end method

.method public getRealFeed()Lcom/narvii/model/Feed;
    .locals 0

    return-object p0
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/model/PromoteInfo;->title:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/model/PromoteInfo;->title:Ljava/lang/String;

    .line 25
    return-object v0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public getSortedMediaList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->promoteInfo:Lcom/narvii/model/PromoteInfo;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/model/Feed;->promoteInfo:Lcom/narvii/model/PromoteInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->promoteInfo:Lcom/narvii/model/PromoteInfo;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/model/PromoteInfo;->mediaList:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v1, :cond_7

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    move-result v1

    .line 33
    .line 34
    if-lez v1, :cond_7

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->coverMedia()Lcom/narvii/model/Media;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget v2, v2, Lcom/narvii/model/HeadlineStyle;->layout:I

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-object v0

    .line 55
    .line 56
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, -0x1

    .line 67
    move v5, v3

    .line 68
    move v6, v4

    .line 69
    .line 70
    :goto_0
    iget-object v7, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 74
    move-result v7

    .line 75
    .line 76
    if-ge v5, v7, :cond_6

    .line 77
    .line 78
    iget-object v7, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 79
    .line 80
    .line 81
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v7

    .line 83
    .line 84
    check-cast v7, Lcom/narvii/model/Media;

    .line 85
    .line 86
    if-ne v6, v4, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Lcom/narvii/model/Media;->isVideo()Z

    .line 90
    move-result v8

    .line 91
    .line 92
    if-eqz v8, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    move v6, v5

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_4
    iget-object v8, v7, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v8

    .line 104
    .line 105
    if-nez v8, :cond_5

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 115
    goto :goto_0

    .line 116
    .line 117
    .line 118
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    :cond_7
    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTipAuthor()Lcom/narvii/model/User;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getTippingInfo()Lcom/narvii/model/TippingInfo;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Feed;->tipInfo:Lcom/narvii/model/TippingInfo;

    return-object v0
.end method

.method public getTotalCommentsCount()I
    .locals 2

    iget v0, p0, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    return v0

    :cond_0
    iget v0, p0, Lcom/narvii/model/Feed;->commentsCount:I

    iget v1, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalVotesCount()I
    .locals 2

    iget v0, p0, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/model/Feed;->globalVotesCount:I

    return v0

    :cond_0
    iget v0, p0, Lcom/narvii/model/Feed;->votesCount:I

    iget v1, p0, Lcom/narvii/model/Feed;->globalVotesCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getVoteCount(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/model/Feed;->globalVotesCount:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/narvii/model/Feed;->votesCount:I

    :goto_0
    return p1
.end method

.method public getVotedValue(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/model/Feed;->globalVotedValue:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/narvii/model/Feed;->votedValue:I

    :goto_0
    return p1
.end method

.method public hasBackground()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

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

.method public influencer()Lcom/narvii/model/User;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public influencerUid()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isContentAccessible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/model/Feed;->needHidden:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isFansOnly()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "fansOnly"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isGlobalFeed()Z
    .locals 1

    iget v0, p0, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/model/Feed;->_isPreview:Z

    return v0
.end method

.method public isPromoted()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "promoteInfo"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public isiModeDisableForUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    return v0

    .line 19
    .line 20
    :cond_1
    iget-object p1, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 21
    .line 22
    const-string v1, "__disabledLevel__"

    .line 23
    .line 24
    .line 25
    filled-new-array {v1}, [Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 30
    move-result p1

    .line 31
    const/4 v1, 0x3

    .line 32
    .line 33
    if-ne p1, v1, :cond_2

    .line 34
    const/4 v0, 0x1

    .line 35
    :cond_2
    return v0
.end method

.method public setCommentsCount(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    iput p2, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/narvii/model/Feed;->commentsCount:I

    :goto_0
    return-void
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    return-void
.end method

.method public setVoteCount(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    iput p2, p0, Lcom/narvii/model/Feed;->globalVotesCount:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/narvii/model/Feed;->votesCount:I

    :goto_0
    return-void
.end method

.method public setVotedValue(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    iput p2, p0, Lcom/narvii/model/Feed;->globalVotedValue:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/narvii/model/Feed;->votedValue:I

    :goto_0
    return-void
.end method

.method public abstract title()Ljava/lang/String;
.end method
