.class Lcom/narvii/asset/AssetAdapter$StyleHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->this$0:Lcom/narvii/asset/AssetAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    sget p1, Lcom/narvii/lib/R$id;->cover:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->cover:Lcom/narvii/widget/NVImageView;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 20
    .line 21
    sget p1, Lcom/narvii/lib/R$id;->not_downloaded:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Landroid/widget/ImageView;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->notDownloaded:Landroid/widget/ImageView;

    .line 30
    .line 31
    sget p1, Lcom/narvii/lib/R$id;->downloading:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/widget/CircleProgressBar;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->downloading:Lcom/narvii/widget/CircleProgressBar;

    .line 40
    .line 41
    sget p1, Lcom/narvii/lib/R$id;->downloading_layout:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/asset/AssetAdapter$StyleHolder;->downloadingLayout:Landroid/view/View;

    .line 48
    return-void
.end method
