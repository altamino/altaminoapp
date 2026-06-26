.class Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;
.super Ljava/lang/Object;
.source "ImagePostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->onBindViewHolder(Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

.field final synthetic val$holder:Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;

.field final synthetic val$m:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;Lcom/narvii/model/Media;Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->this$1:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    iput-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->val$m:Lcom/narvii/model/Media;

    iput-object p3, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->val$holder:Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 576
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->this$1:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    iget-object p1, p1, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->val$m:Lcom/narvii/model/Media;

    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->val$holder:Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/narvii/blog/post/ImagePostActivity;->access$100(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;I)V

    return-void
.end method
