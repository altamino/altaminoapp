.class Lcom/narvii/asset/AssetAdapter$StyleHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/asset/AssetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StyleHolder"
.end annotation


# instance fields
.field cover:Lcom/narvii/widget/NVImageView;

.field downloading:Lcom/narvii/widget/CircleProgressBar;

.field downloadingLayout:Landroid/view/View;

.field notDownloaded:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/narvii/asset/AssetAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/asset/AssetAdapter;Landroid/view/View;)V
    .locals 1

    .line 242
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->this$0:Lcom/narvii/asset/AssetAdapter;

    .line 243
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 244
    sget p1, Lcom/narvii/lib/R$id;->cover:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->cover:Lcom/narvii/widget/NVImageView;

    .line 245
    iget-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->cover:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 246
    sget p1, Lcom/narvii/lib/R$id;->not_downloaded:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->notDownloaded:Landroid/widget/ImageView;

    .line 247
    sget p1, Lcom/narvii/lib/R$id;->downloading:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/CircleProgressBar;

    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->downloading:Lcom/narvii/widget/CircleProgressBar;

    .line 248
    sget p1, Lcom/narvii/lib/R$id;->downloading_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->downloadingLayout:Landroid/view/View;

    return-void
.end method
