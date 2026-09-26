.class Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->this$1:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->val$m:Lcom/narvii/model/Media;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->val$holder:Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->this$1:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->val$m:Lcom/narvii/model/Media;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;->val$holder:Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/narvii/blog/post/ImagePostActivity;->C(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;I)V

    .line 16
    return-void
.end method
