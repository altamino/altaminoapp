.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->getErrorMsg()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Sticker;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d00fa

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a0e77

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const p3, 0x7f0a0441

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isDisabled()Z

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p3, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 40
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    if-nez p5, :cond_1

    .line 3
    .line 4
    instance-of v0, p3, Lcom/narvii/model/Sticker;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    move-object v0, p3

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/model/Sticker;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->isDisabled()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->u(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->u(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    new-instance p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter$1;

    .line 52
    .line 53
    .line 54
    invoke-direct {p3, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v0, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteDisabledSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;Lcom/narvii/util/Callback;)V

    .line 58
    const/4 p1, 0x1

    .line 59
    return p1

    .line 60
    .line 61
    :cond_0
    new-instance v2, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 65
    .line 66
    new-instance v3, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->isContributedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerDetailDialog;->setSticker(Lcom/narvii/model/Sticker;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 83
    move-result p1

    .line 84
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p3, Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    check-cast p3, Lcom/narvii/model/Sticker;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->startPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    return p1
.end method
