.class Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImagePostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/ImagePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageViewHolder"
.end annotation


# instance fields
.field imgContent:Lcom/narvii/widget/NVImageView;

.field final synthetic this$0:Lcom/narvii/blog/post/ImagePostActivity;

.field tvDesc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/blog/post/ImagePostActivity;Landroid/view/View;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 601
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090571

    .line 602
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;->imgContent:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f090197

    .line 603
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;->tvDesc:Landroid/widget/TextView;

    return-void
.end method
