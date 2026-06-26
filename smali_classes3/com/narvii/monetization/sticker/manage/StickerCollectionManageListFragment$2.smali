.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;
.super Ljava/lang/Object;
.source "StickerCollectionManageListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->queryShareStickerCount()V
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
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    iget p1, p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;->pendingShareRequestCount:I

    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->access$102(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;I)I

    .line 122
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerEntryAdapter:Lcom/narvii/monetization/common/ManageEntryAdapter;

    if-eqz v0, :cond_1

    .line 123
    invoke-static {p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->access$100(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/common/ManageEntryAdapter;->setNumber(I)V

    .line 124
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerEntryAdapter:Lcom/narvii/monetization/common/ManageEntryAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;->call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V

    return-void
.end method
