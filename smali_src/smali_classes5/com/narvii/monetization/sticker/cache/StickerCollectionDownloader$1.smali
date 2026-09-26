.class Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStatusChanged(Lcom/narvii/model/Sticker;Lcom/narvii/asset/DownloadStatusInfo;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->finished:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->canceled:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    iget-object v0, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentSticker:Lcom/narvii/model/Sticker;

    .line 15
    .line 16
    if-eq v0, p1, :cond_2

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/asset/DownloadStatusInfo;->isFinished()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->a(Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;)V

    .line 29
    goto :goto_1

    .line 30
    .line 31
    .line 32
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/asset/DownloadStatusInfo;->isDownloading()Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->stickerList:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_4

    .line 50
    const/4 p1, 0x0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    int-to-float p1, p1

    .line 55
    .line 56
    div-float p1, v0, p1

    .line 57
    .line 58
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$1;->this$0:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;

    .line 59
    .line 60
    iget v1, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->currentIndex:I

    .line 61
    int-to-float v1, v1

    .line 62
    mul-float/2addr v1, p1

    .line 63
    .line 64
    iget p2, p2, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    .line 65
    mul-float/2addr p1, p2

    .line 66
    add-float/2addr v1, p1

    .line 67
    .line 68
    iget-object p1, v0, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader;->downloadListener:Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v1}, Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;->onProgressUpdate(F)V

    .line 72
    :cond_5
    :goto_1
    return-void
.end method
