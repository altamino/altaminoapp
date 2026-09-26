.class Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaRecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;",
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

.field final synthetic this$0:Lcom/narvii/notice/NoticeDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeDetailFragment;Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

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
    iput-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->list:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->list:Ljava/util/List;

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
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->onBindViewHolder(Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;I)V
    .locals 3
    .param p1    # Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->list:Ljava/util/List;

    .line 2
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;-><init>(Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p1, Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;->imageView:Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 2
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0436

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;

    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-direct {p2, v0, p1}, Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Landroid/view/View;)V

    return-object p2
.end method
