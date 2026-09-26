.class public Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;
    }
.end annotation


# instance fields
.field canceled:Z

.field currentIndex:I

.field currentSticker:Lcom/narvii/model/Sticker;

.field downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

.field finished:Z

.field nvContext:Lcom/narvii/app/NVContext;

.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

.field stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field stickerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field stickerListener:Lcom/narvii/sticker/StickerStatusChangeListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    const-string v0, "stickerCache"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 19
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->observeNextSticker()V

    return-void
.end method

.method private observeNextSticker()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    .line 15
    add-int/2addr v0, v2

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/model/Sticker;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentSticker:Lcom/narvii/model/Sticker;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerListener:Lcom/narvii/sticker/StickerStatusChangeListener;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lcom/narvii/sticker/StickerCacheService;->observeStickerStatusChange(Lcom/narvii/model/Sticker;Lcom/narvii/sticker/StickerStatusChangeListener;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iput-boolean v2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->finished:Z

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;->onFinished()V

    .line 45
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->canceled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    return-void
.end method

.method public downloadStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/util/FilterHelper;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    .line 42
    .line 43
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    new-instance p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    .line 53
    :cond_2
    const/4 p1, -0x1

    .line 54
    .line 55
    iput p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    .line 56
    const/4 p1, 0x0

    .line 57
    .line 58
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentSticker:Lcom/narvii/model/Sticker;

    .line 59
    .line 60
    new-instance p2, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;

    .line 61
    .line 62
    .line 63
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;-><init>(Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;)V

    .line 64
    .line 65
    iput-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerListener:Lcom/narvii/sticker/StickerStatusChangeListener;

    .line 66
    .line 67
    iget-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0, v1, p1}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 81
    .line 82
    iget-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0, v1, p1}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->observeNextSticker()V

    .line 99
    :cond_3
    :goto_1
    return-void
.end method
