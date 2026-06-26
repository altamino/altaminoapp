.class Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ThumbGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryViewHolder"
.end annotation


# instance fields
.field textView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

.field thumbImageView:Lcom/narvii/widget/ThumbImageView;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;->this$1:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    .line 65
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090571

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;->thumbImageView:Lcom/narvii/widget/ThumbImageView;

    const p1, 0x7f090b5b

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method
