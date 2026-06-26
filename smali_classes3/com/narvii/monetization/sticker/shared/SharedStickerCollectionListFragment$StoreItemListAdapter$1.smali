.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;
.super Ljava/lang/Object;
.source "SharedStickerCollectionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 409
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    iget-object v0, p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->access$400(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;)Lcom/narvii/monetization/store/data/StoreSectionMini;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->access$400(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;)Lcom/narvii/monetization/store/data/StoreSectionMini;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->storeSectionId:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->val$item:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteStickerFromShareSection(Ljava/lang/String;Lcom/narvii/monetization/store/data/StoreItem;)V

    return-void
.end method
