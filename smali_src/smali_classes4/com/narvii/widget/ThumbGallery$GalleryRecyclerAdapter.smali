.class Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/ThumbGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/ThumbGallery;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ThumbGallery;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/ThumbGallery;->c(Lcom/narvii/widget/ThumbGallery;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/ThumbGallery;->c(Lcom/narvii/widget/ThumbGallery;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->onBindViewHolder(Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    .line 2
    invoke-static {v0}, Lcom/narvii/widget/ThumbGallery;->c(Lcom/narvii/widget/ThumbGallery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;->thumbImageView:Lcom/narvii/widget/ThumbImageView;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p2}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 5
    iget-object v0, p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;->thumbImageView:Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    invoke-static {v2}, Lcom/narvii/widget/ThumbGallery;->b(Lcom/narvii/widget/ThumbGallery;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0603db

    goto :goto_0

    :cond_1
    const v2, 0x7f0603d9

    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_2
    iget-object v0, p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 7
    iget-object v1, p2, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;-><init>(Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;Lcom/narvii/model/Media;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d034d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;-><init>(Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method
