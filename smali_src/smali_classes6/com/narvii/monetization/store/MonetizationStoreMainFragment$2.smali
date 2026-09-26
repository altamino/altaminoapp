.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->queryPendingCount()V
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
.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    iget p1, p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;->pendingShareRequestCount:I

    invoke-static {v0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->H(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;I)V

    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->y(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->y(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;->call(Lcom/narvii/monetization/sticker/model/PendingStickerResponse;)V

    return-void
.end method
