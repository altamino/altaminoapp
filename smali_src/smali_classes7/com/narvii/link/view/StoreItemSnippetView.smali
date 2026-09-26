.class public Lcom/narvii/link/view/StoreItemSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/view/NVLinkSnippetView<",
        "Lcom/narvii/model/StoreItemBaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field imageView:Lcom/narvii/widget/NVImageView;

.field itemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d047a

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0a0dc5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/link/view/StoreItemSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0a076a

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/link/view/StoreItemSnippetView;->itemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/StoreItemSnippetView;->setObject(Lcom/narvii/model/StoreItemBaseObject;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/StoreItemBaseObject;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/link/view/StoreItemSnippetView;->itemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 2
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    iget-object v0, p0, Lcom/narvii/link/view/StoreItemSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 3
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/StoreItemSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 4
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method
