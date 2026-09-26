.class Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/ImagePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageRecyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/blog/post/ImagePostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/ImagePostActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->list:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public notifyImageChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->onBindViewHolder(Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->list:Ljava/util/List;

    .line 2
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter$1;-><init>(Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;Lcom/narvii/model/Media;Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p1, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;->imgContent:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;->tvDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 7
    iget-object v1, p2, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p1, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;->tvDesc:Landroid/widget/TextView;

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    iget-object p2, p2, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    .line 2
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0413

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-direct {p2, v0, p1}, Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;-><init>(Lcom/narvii/blog/post/ImagePostActivity;Landroid/view/View;)V

    return-object p2
.end method
