.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "UgcStickerCollectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;
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
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
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

    .line 618
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 619
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 665
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Sticker;

    const v0, 0x7f0b00e4

    .line 666
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b72

    .line 667
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 668
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result p1

    const p3, 0x7f090359

    invoke-static {p2, p3, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    if-nez p5, :cond_1

    .line 636
    instance-of v0, p3, Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_1

    .line 637
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Sticker;

    .line 638
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 640
    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v2}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$000(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$000(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object p1

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter$1;

    invoke-direct {p3, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;)V

    invoke-virtual {p1, p2, v0, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteDisabledSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;Lcom/narvii/util/Callback;)V

    const/4 p1, 0x1

    return p1

    .line 650
    :cond_0
    new-instance v2, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 651
    new-instance v3, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {v3, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 652
    invoke-virtual {v3, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->isContributedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->setSticker(Lcom/narvii/model/Sticker;Z)V

    .line 653
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 655
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 625
    instance-of p1, p3, Lcom/narvii/model/Sticker;

    if-eqz p1, :cond_0

    .line 626
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    if-eqz p1, :cond_0

    .line 627
    check-cast p3, Lcom/narvii/model/Sticker;

    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->startPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
