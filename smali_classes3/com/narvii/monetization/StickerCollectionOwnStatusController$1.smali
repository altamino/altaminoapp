.class Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;
.super Ljava/lang/Object;
.source "StickerCollectionOwnStatusController.java"

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

    .line 129
    iput-object p1, p0, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;->this$0:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;->this$0:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated()V

    return-void
.end method

.method public onProgressUpdate(F)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/narvii/monetization/StickerCollectionOwnStatusController$1;->this$0:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateDownloadingProgress(I)V

    return-void
.end method
