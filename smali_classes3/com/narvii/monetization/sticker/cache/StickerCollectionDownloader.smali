.class public Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;
.super Ljava/lang/Object;
.source "StickerCollectionDownloader.java"


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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    .line 34
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "stickerCache"

    .line 35
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->observeNextSticker()V

    return-void
.end method

.method private observeNextSticker()V
    .locals 3

    .line 101
    iget v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    iget-object v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 102
    iget v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    .line 103
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    iget v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Sticker;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentSticker:Lcom/narvii/model/Sticker;

    .line 104
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentSticker:Lcom/narvii/model/Sticker;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerListener:Lcom/narvii/sticker/StickerStatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/sticker/StickerCacheService;->observeStickerStatusChange(Lcom/narvii/model/Sticker;Lcom/narvii/sticker/StickerStatusChangeListener;)V

    goto :goto_0

    .line 106
    :cond_0
    iput-boolean v2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->finished:Z

    .line 107
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {v0}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;->onFinished()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->canceled:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    return-void
.end method

.method public downloadStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 45
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 50
    iput-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    .line 52
    iget-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    new-instance p1, Lcom/narvii/util/FilterHelper;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    if-nez p1, :cond_2

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    :cond_2
    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentSticker:Lcom/narvii/model/Sticker;

    .line 64
    new-instance p2, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;-><init>(Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;)V

    iput-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerListener:Lcom/narvii/sticker/StickerStatusChangeListener;

    .line 90
    iget-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 91
    iget-object p2, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 92
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->observeNextSticker()V

    :cond_3
    :goto_1
    return-void
.end method
