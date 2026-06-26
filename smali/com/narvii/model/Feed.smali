.class public abstract Lcom/narvii/model/Feed;
.super Lcom/narvii/model/NVObject;
.source "Feed.java"

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

.field public votedValue:I

.field public votesCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/narvii/model/Feed;->ndcId:I

    return-void
.end method

.method public static compactContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 193
    invoke-static {p0}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public HintTextId()I
    .locals 1

    .line 397
    sget v0, Lcom/narvii/lib/R$string;->some_one_fans_only_hint:I

    return v0
.end method

.method public compactContent()Ljava/lang/String;
    .locals 1

    .line 186
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

    .line 110
    iget-object v0, p0, Lcom/narvii/model/Feed;->coverMedia:Lcom/narvii/model/Media;

    if-eqz v0, :cond_0

    return-object v0

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/narvii/post/CoverUtils;->getCoverMedia(Lcom/narvii/model/api/CoverPost;)Lcom/narvii/model/Media;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/Feed;->coverMedia:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public featureType()I
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/narvii/model/Feed;->featureType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "featuredType"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/model/Feed;->featureType:Ljava/lang/Integer;

    return v0
.end method

.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->coverMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public firstMediaIndex()I
    .locals 1

    .line 117
    invoke-static {p0}, Lcom/narvii/post/CoverUtils;->getCoverMediaIndex(Lcom/narvii/model/api/CoverPost;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    move-result v0

    return v0
.end method

.method public getBackgroundMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsCount(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 469
    iget p1, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/narvii/model/Feed;->commentsCount:I

    :goto_0
    return p1
.end method

.method public getDeepLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExtension()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public getExtensions()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 132
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

    .line 338
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->coverMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    return-object v0
.end method

.method public getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/narvii/model/Feed;->headlineStyle:Lcom/narvii/model/HeadlineStyle;

    if-eqz v0, :cond_0

    return-object v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "headlineStyle"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 287
    :cond_1
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/HeadlineStyle;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/HeadlineStyle;

    iput-object v0, p0, Lcom/narvii/model/Feed;->headlineStyle:Lcom/narvii/model/HeadlineStyle;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

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

    .line 137
    iget-object v0, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    return-object v0
.end method

.method public getNdcId()I
    .locals 1

    .line 421
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

    if-eqz p1, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object p1

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 363
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    .line 364
    invoke-virtual {v1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p1

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 375
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public getPromoteInfo()Lcom/narvii/model/PromoteInfo;
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "promoteInfo"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 271
    :cond_0
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/PromoteInfo;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PromoteInfo;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public getRealFeed()Lcom/narvii/model/Feed;
    .locals 0

    return-object p0
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/PromoteInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/PromoteInfo;->title:Ljava/lang/String;

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v0

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

    .line 298
    iget-object v0, p0, Lcom/narvii/model/Feed;->promoteInfo:Lcom/narvii/model/PromoteInfo;

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getPromoteInfo()Lcom/narvii/model/PromoteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/Feed;->promoteInfo:Lcom/narvii/model/PromoteInfo;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Feed;->promoteInfo:Lcom/narvii/model/PromoteInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/model/PromoteInfo;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    return-object v0

    .line 304
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 306
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->coverMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 310
    iget v2, v2, Lcom/narvii/model/HeadlineStyle;->layout:I

    if-nez v2, :cond_3

    .line 311
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 315
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 318
    :goto_0
    iget-object v7, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 319
    iget-object v7, p0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/Media;

    if-ne v6, v4, :cond_4

    .line 320
    invoke-virtual {v7}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 322
    invoke-interface {v0, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v6, v5

    goto :goto_1

    .line 323
    :cond_4
    iget-object v8, v7, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 324
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    :cond_5
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 329
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTipAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getTippingInfo()Lcom/narvii/model/TippingInfo;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/narvii/model/Feed;->tipInfo:Lcom/narvii/model/TippingInfo;

    return-object v0
.end method

.method public getTotalCommentsCount()I
    .locals 2

    .line 473
    iget v0, p0, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v0, :cond_0

    .line 474
    iget v0, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    return v0

    .line 476
    :cond_0
    iget v0, p0, Lcom/narvii/model/Feed;->commentsCount:I

    iget v1, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalVotesCount()I
    .locals 2

    .line 454
    iget v0, p0, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v0, :cond_0

    .line 455
    iget v0, p0, Lcom/narvii/model/Feed;->globalVotesCount:I

    return v0

    .line 457
    :cond_0
    iget v0, p0, Lcom/narvii/model/Feed;->votesCount:I

    iget v1, p0, Lcom/narvii/model/Feed;->globalVotesCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getVoteCount(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 442
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

    .line 430
    iget p1, p0, Lcom/narvii/model/Feed;->globalVotedValue:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/narvii/model/Feed;->votedValue:I

    :goto_0
    return p1
.end method

.method public hasBackground()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

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

.method public influencer()Lcom/narvii/model/User;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public influencerUid()Ljava/lang/String;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isContentAccessible()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/narvii/model/Feed;->needHidden:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isFansOnly()Z
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "fansOnly"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGlobalFeed()Z
    .locals 1

    .line 257
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

    .line 426
    iget-boolean v0, p0, Lcom/narvii/model/Feed;->_isPreview:Z

    return v0
.end method

.method public isPromoted()Z
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "promoteInfo"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isiModeDisableForUser(Lcom/narvii/model/User;)Z
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "__disabledLevel__"

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public setCommentsCount(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 462
    iput p2, p0, Lcom/narvii/model/Feed;->globalCommentsCount:I

    goto :goto_0

    .line 464
    :cond_0
    iput p2, p0, Lcom/narvii/model/Feed;->commentsCount:I

    :goto_0
    return-void
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/narvii/model/Feed;->strategyInfo:Ljava/lang/String;

    return-void
.end method

.method public setVoteCount(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 447
    iput p2, p0, Lcom/narvii/model/Feed;->globalVotesCount:I

    goto :goto_0

    .line 449
    :cond_0
    iput p2, p0, Lcom/narvii/model/Feed;->votesCount:I

    :goto_0
    return-void
.end method

.method public setVotedValue(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 435
    iput p2, p0, Lcom/narvii/model/Feed;->globalVotedValue:I

    goto :goto_0

    .line 437
    :cond_0
    iput p2, p0, Lcom/narvii/model/Feed;->votedValue:I

    :goto_0
    return-void
.end method

.method public abstract title()Ljava/lang/String;
.end method
