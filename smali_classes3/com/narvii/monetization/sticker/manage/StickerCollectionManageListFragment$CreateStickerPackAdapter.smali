.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "StickerCollectionManageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateStickerPackAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 316
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "CreateNewStickerPack"

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0118

    .line 344
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 326
    sget-object p1, Lcom/narvii/logging/ActSemantic;->createStickerPack:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 327
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    new-instance p2, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;)V

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->checkStickerCollectionCreatable(ILcom/narvii/util/Callback;)V

    const/4 p1, 0x1

    return p1
.end method
