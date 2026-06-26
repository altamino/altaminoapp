.class Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;
.super Ljava/lang/Object;
.source "CustomizedStickerListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->sendBatchDeleteRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

.field final synthetic val$adapterList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Ljava/util/List;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;->val$adapterList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 222
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;->val$adapterList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    .line 223
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    const-string v0, "stickerCache"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    .line 224
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->deleteList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/narvii/sticker/StickerCacheService;->deleteCachedFiles(Ljava/util/List;)V

    .line 225
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->setEditing(Z)V

    .line 226
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v1, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->collectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/monetization/sticker/StickerService;->setStickerList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 219
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
