.class Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->this$1:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->val$m:Lcom/narvii/model/Media;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->this$1:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/widget/ThumbGallery;->d(Lcom/narvii/widget/ThumbGallery;)Lcom/narvii/widget/ThumbGallery$OnItemClickListener;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->val$m:Lcom/narvii/model/Media;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->this$1:Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter;->this$0:Lcom/narvii/widget/ThumbGallery;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/widget/ThumbGallery;->d(Lcom/narvii/widget/ThumbGallery;)Lcom/narvii/widget/ThumbGallery$OnItemClickListener;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/widget/ThumbGallery$GalleryRecyclerAdapter$1;->val$m:Lcom/narvii/model/Media;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/narvii/widget/ThumbGallery$OnItemClickListener;->onItemClick(Lcom/narvii/model/Media;)V

    .line 28
    :cond_0
    return-void
.end method
