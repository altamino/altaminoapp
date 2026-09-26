.class Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/sticker/cache/StickerCollectionDownloader$StickerCollectionDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/StickerCollectionOwnStatusController;->onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/StickerCollectionOwnStatusController;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/StickerCollectionOwnStatusController;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;->this$0:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;->this$0:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    .line 6
    return-void
.end method

.method public onProgressUpdate(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;->this$0:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 3
    .line 4
    const/high16 v1, 0x42c80000    # 100.0f

    .line 5
    mul-float/2addr p1, v1

    .line 6
    float-to-int p1, p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateDownloadingProgress(I)V

    .line 10
    return-void
.end method
