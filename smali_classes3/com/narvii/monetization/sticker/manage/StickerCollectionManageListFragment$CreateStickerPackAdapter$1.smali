.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;
.super Ljava/lang/Object;
.source "StickerCollectionManageListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
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
.field final synthetic this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 330
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 327
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
