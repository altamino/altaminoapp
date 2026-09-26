.class Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->this$1:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->val$item:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->this$1:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->changed:Z

    .line 8
    .line 9
    iget-object v0, p1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->v(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->this$1:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->v(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->storeSectionId:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;->val$item:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteStickerFromShareSection(Ljava/lang/String;Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 35
    return-void
.end method
