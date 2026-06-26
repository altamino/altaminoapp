.class public Lcom/narvii/youtube/YoutubeVideoList;
.super Ljava/lang/Object;
.source "YoutubeVideoList.java"


# static fields
.field private static final DOWNLOAD_RESS:[Ljava/lang/String;

.field private static final RESS:[Ljava/lang/String;

.field private static final THUMBNAIL_RESS:[Ljava/lang/String;


# instance fields
.field public audioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/youtube/YoutubeVideo;",
            ">;"
        }
    .end annotation
.end field

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/youtube/YoutubeVideo;",
            ">;"
        }
    .end annotation
.end field

.field public videoOnlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/youtube/YoutubeVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "720p"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "360p"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v6, "240p"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 22
    sput-object v1, Lcom/narvii/youtube/YoutubeVideoList;->RESS:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v8, "1080p"

    aput-object v8, v1, v3

    aput-object v2, v1, v5

    const-string v8, "480p"

    aput-object v8, v1, v7

    aput-object v4, v1, v0

    const/4 v8, 0x4

    aput-object v6, v1, v8

    .line 24
    sput-object v1, Lcom/narvii/youtube/YoutubeVideoList;->DOWNLOAD_RESS:[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    aput-object v6, v1, v7

    const-string v2, "144p"

    aput-object v2, v1, v0

    .line 26
    sput-object v1, Lcom/narvii/youtube/YoutubeVideoList;->THUMBNAIL_RESS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/youtube/YoutubeVideo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/narvii/youtube/YoutubeVideo;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 80
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeVideo;

    if-eqz p2, :cond_1

    .line 82
    iget-object v1, v0, Lcom/narvii/youtube/YoutubeVideo;->resolution:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    if-eqz p3, :cond_2

    .line 83
    iget v1, v0, Lcom/narvii/youtube/YoutubeVideo;->type:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDownloadMp4Url()Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/narvii/youtube/YoutubeVideoList;->DOWNLOAD_RESS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 47
    iget-object v6, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    invoke-virtual {p0, v6, v5, v3}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 49
    new-instance v0, Lkotlin/Pair;

    iget-object v1, v6, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 52
    :cond_0
    iget-object v6, p0, Lcom/narvii/youtube/YoutubeVideoList;->videoOnlyList:Ljava/util/List;

    invoke-virtual {p0, v6, v5, v3}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 54
    iget-object v6, p0, Lcom/narvii/youtube/YoutubeVideoList;->audioList:Ljava/util/List;

    const/4 v7, 0x0

    const/16 v8, 0x100

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 56
    new-instance v0, Lkotlin/Pair;

    iget-object v1, v5, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    iget-object v2, v6, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeVideo;

    .line 61
    new-instance v1, Lkotlin/Pair;

    iget-object v0, v0, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    invoke-direct {v1, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getThumbnailMp4Url()Ljava/lang/String;
    .locals 6

    .line 66
    sget-object v0, Lcom/narvii/youtube/YoutubeVideoList;->THUMBNAIL_RESS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 67
    iget-object v5, p0, Lcom/narvii/youtube/YoutubeVideoList;->videoOnlyList:Ljava/util/List;

    invoke-virtual {p0, v5, v4, v3}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 69
    iget-object v0, v5, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    return-object v0

    .line 71
    :cond_0
    iget-object v5, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    invoke-virtual {p0, v5, v4, v3}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 73
    iget-object v0, v4, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeVideo;

    iget-object v0, v0, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0, v0}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(II)Ljava/lang/String;
    .locals 5

    .line 34
    sget-object p1, Lcom/narvii/youtube/YoutubeVideoList;->RESS:[Ljava/lang/String;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    aget-object v3, p1, v1

    .line 35
    iget-object v4, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    invoke-virtual {p0, v4, v3, v2}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 37
    iget-object p1, v2, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/youtube/YoutubeVideo;

    iget-object v2, p1, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    :cond_2
    return-object v2
.end method
