.class Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a06eb

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;->imgContent:Lcom/narvii/widget/NVImageView;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a024b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;->tvDesc:Landroid/widget/TextView;

    .line 28
    return-void
.end method
