.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->val$item:Ljava/lang/Object;

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
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->m(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;)Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->this$1:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->m(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;)Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->storeSectionId:Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;->val$item:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteStickerFromShareSection(Ljava/lang/String;Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 30
    return-void
.end method
