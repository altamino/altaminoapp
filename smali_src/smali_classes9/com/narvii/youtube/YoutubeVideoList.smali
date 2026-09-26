.class public Lcom/narvii/youtube/YoutubeVideoList;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 5

    const-string v0, "720p"

    const-string v1, "360p"

    const-string v2, "240p"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/narvii/youtube/YoutubeVideoList;->RESS:[Ljava/lang/String;

    const-string v3, "1080p"

    const-string v4, "480p"

    filled-new-array {v3, v0, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/narvii/youtube/YoutubeVideoList;->DOWNLOAD_RESS:[Ljava/lang/String;

    const-string v3, "144p"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/youtube/YoutubeVideoList;->THUMBNAIL_RESS:[Ljava/lang/String;

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

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/youtube/YoutubeVideo;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Lcom/narvii/youtube/YoutubeVideo;->resolution:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    :cond_1
    if-eqz p3, :cond_2

    .line 37
    .line 38
    iget v1, v0, Lcom/narvii/youtube/YoutubeVideo;->type:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v2

    .line 43
    .line 44
    if-ne v1, v2, :cond_0

    .line 45
    :cond_2
    return-object v0

    .line 46
    :cond_3
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public getDownloadMp4Url()Lw7/u;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/youtube/YoutubeVideoList;->DOWNLOAD_RESS:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    move v4, v2

    .line 10
    .line 11
    :goto_0
    if-ge v4, v1, :cond_2

    .line 12
    .line 13
    aget-object v5, v0, v4

    .line 14
    .line 15
    iget-object v6, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v6, v5, v3}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    .line 19
    move-result-object v6

    .line 20
    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    new-instance v0, Lw7/u;

    .line 24
    .line 25
    iget-object v1, v6, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_0
    iget-object v6, p0, Lcom/narvii/youtube/YoutubeVideoList;->videoOnlyList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v6, v5, v3}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    .line 35
    move-result-object v5

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    iget-object v6, p0, Lcom/narvii/youtube/YoutubeVideoList;->audioList:Ljava/util/List;

    .line 40
    .line 41
    const/16 v7, 0x100

    .line 42
    .line 43
    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v7

    .line 46
    const/4 v8, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v6, v8, v7}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    .line 50
    move-result-object v6

    .line 51
    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    new-instance v0, Lw7/u;

    .line 55
    .line 56
    iget-object v1, v5, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v2, v6, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1, v2}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    return-object v0

    .line 63
    .line 64
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Lcom/narvii/youtube/YoutubeVideo;

    .line 74
    .line 75
    new-instance v1, Lw7/u;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v0, v0}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    return-object v1
.end method

.method public getThumbnailMp4Url()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/youtube/YoutubeVideoList;->THUMBNAIL_RESS:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    .line 10
    :goto_0
    if-ge v2, v1, :cond_2

    .line 11
    .line 12
    aget-object v4, v0, v2

    .line 13
    .line 14
    iget-object v5, p0, Lcom/narvii/youtube/YoutubeVideoList;->videoOnlyList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v5, v4, v3}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    .line 18
    move-result-object v5

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    iget-object v0, v5, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_0
    iget-object v5, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v5, v4, v3}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    iget-object v0, v4, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 34
    return-object v0

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    move-result v1

    .line 44
    .line 45
    add-int/lit8 v1, v1, -0x1

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/youtube/YoutubeVideo;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 54
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(II)Ljava/lang/String;
    .locals 5

    sget-object p1, Lcom/narvii/youtube/YoutubeVideoList;->RESS:[Ljava/lang/String;

    .line 2
    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    .line 3
    invoke-virtual {p0, v4, v3, v2}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, v2, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    .line 5
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
