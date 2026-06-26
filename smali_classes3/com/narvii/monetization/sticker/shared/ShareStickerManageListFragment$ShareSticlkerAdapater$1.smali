.class Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;
.super Ljava/lang/Object;
.source "ShareStickerManageListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;Ljava/lang/Object;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->this$1:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 260
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->this$1:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    .line 261
    iget-object v0, p1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->access$200(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Lcom/narvii/monetization/store/data/StoreSectionMini;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->this$1:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->access$200(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Lcom/narvii/monetization/store/data/StoreSectionMini;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->storeSectionId:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->val$item:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteStickerFromShareSection(Ljava/lang/String;Lcom/narvii/monetization/store/data/StoreItem;)V

    return-void
.end method
