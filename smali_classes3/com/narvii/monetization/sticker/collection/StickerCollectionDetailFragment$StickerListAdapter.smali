.class Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "StickerCollectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StickerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/Sticker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    .line 483
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 484
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 506
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Sticker;

    const v0, 0x7f0b00e4

    .line 507
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b72

    .line 508
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 509
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    invoke-virtual {p3, v0, p1}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    if-nez p5, :cond_0

    .line 516
    instance-of v0, p3, Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_0

    .line 517
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Sticker;

    .line 518
    new-instance v1, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v2, 0x1

    .line 519
    invoke-virtual {v1, v0, v2}, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->setSticker(Lcom/narvii/model/Sticker;Z)V

    .line 520
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 523
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 490
    instance-of p1, p3, Lcom/narvii/model/Sticker;

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    if-eqz p1, :cond_0

    .line 492
    check-cast p3, Lcom/narvii/model/Sticker;

    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->startPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
