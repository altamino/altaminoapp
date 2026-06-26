.class public Lcom/narvii/link/view/StoreItemSnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "StoreItemSnippetView.java"


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

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0445

    .line 21
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090aca

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/link/view/StoreItemSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f0905ea

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/utils/StoreItemNameView;

    iput-object p1, p0, Lcom/narvii/link/view/StoreItemSnippetView;->itemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    return-void
.end method


# virtual methods
.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/StoreItemSnippetView;->setObject(Lcom/narvii/model/StoreItemBaseObject;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/StoreItemBaseObject;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/link/view/StoreItemSnippetView;->itemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 29
    iget-object v0, p0, Lcom/narvii/link/view/StoreItemSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 30
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/StoreItemSnippetView;->imageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method
