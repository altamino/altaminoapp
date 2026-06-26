.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;
.super Ljava/lang/Object;
.source "SharedStickerCollectionListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->queryShareStickerCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/monetization/sticker/model/PendingStickerResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    iget p1, p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;->pendingShareRequestCount:I

    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->access$102(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;I)I

    .line 184
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->access$200(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;->call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V

    return-void
.end method
