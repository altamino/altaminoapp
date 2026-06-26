.class Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;
.super Ljava/lang/Object;
.source "StickerCollectionDownloader.java"

# interfaces
.implements Lcom/narvii/sticker/StickerStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Lcom/narvii/model/Sticker;Lcom/narvii/asset/DownloadStatusInfo;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->finished:Z

    if-eqz v1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->canceled:Z

    if-eqz v1, :cond_1

    return-void

    .line 74
    :cond_1
    iget-object v0, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentSticker:Lcom/narvii/model/Sticker;

    if-eq v0, p1, :cond_2

    return-void

    .line 78
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/asset/DownloadStatusInfo;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    iget-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->access$000(Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;)V

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/asset/DownloadStatusInfo;->isDownloading()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 81
    iget-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    if-eqz v0, :cond_5

    .line 82
    iget-object p1, p1, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    div-float p1, v0, p1

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    iget v1, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    iget p2, p2, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 85
    iget-object p1, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    invoke-interface {p1, v1}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;->onProgressUpdate(F)V

    :cond_5
    :goto_1
    return-void
.end method
