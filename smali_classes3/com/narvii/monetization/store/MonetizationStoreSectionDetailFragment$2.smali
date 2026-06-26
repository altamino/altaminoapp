.class Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;
.super Ljava/lang/Object;
.source "MonetizationStoreSectionDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->queryPendingCount()V
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
.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    iget p1, p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;->pendingShareRequestCount:I

    invoke-static {v0, p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$202(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;I)I

    .line 147
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$300(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$300(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;->call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V

    return-void
.end method
