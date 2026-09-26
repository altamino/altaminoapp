.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/monetization/sticker/post/StickerCollectionPostActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;

    .line 3
    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
