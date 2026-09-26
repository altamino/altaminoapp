.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0131

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->createStickerPack:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;)V

    .line 15
    const/4 p3, 0x3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p3, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->checkStickerCollectionCreatable(ILcom/narvii/util/Callback;)V

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method
