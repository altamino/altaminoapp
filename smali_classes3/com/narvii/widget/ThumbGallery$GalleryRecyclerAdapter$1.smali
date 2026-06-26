.class Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "ThumbGallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->onBindViewHolder(Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$GalleryViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

.field final synthetic val$m:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;Lcom/narvii/model/Media;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->this$1:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    iput-object p2, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->val$m:Lcom/narvii/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->this$1:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    iget-object p1, p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    invoke-static {p1}, Lcom/narvii/widget/ThumbGallery;->access$200(Lcom/narvii/widget/ThumbGallery;)Lcom/narvii/widget/ThumbGallery$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->val$m:Lcom/narvii/model/Media;

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->this$1:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    iget-object p1, p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    invoke-static {p1}, Lcom/narvii/widget/ThumbGallery;->access$200(Lcom/narvii/widget/ThumbGallery;)Lcom/narvii/widget/ThumbGallery$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->val$m:Lcom/narvii/model/Media;

    invoke-interface {p1, v0}, Lcom/narvii/widget/ThumbGallery$OnItemClickListener;->onItemClick(Lcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method
