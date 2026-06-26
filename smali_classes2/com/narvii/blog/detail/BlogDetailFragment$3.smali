.class Lcom/narvii/blog/detail/BlogDetailFragment$3;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;Landroid/widget/ListView;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iput-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 395
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->val$list:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 396
    iget-object p3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object p3, p3, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    if-eqz p3, :cond_4

    .line 397
    invoke-virtual {p3}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Blog;

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 402
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    .line 403
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/narvii/blog/detail/BlogDetailFragment;->TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v2, :cond_4

    if-le p2, v0, :cond_3

    .line 410
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 411
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object p2, p3, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$202(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z

    goto :goto_2

    .line 415
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$200(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 416
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1, p3}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$300(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)V

    .line 417
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1, p4}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$202(Lcom/narvii/blog/detail/BlogDetailFragment;Z)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 386
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$100(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/widget/PromoteStoryView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$3;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$100(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/widget/PromoteStoryView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/PromoteStoryView;->hide()V

    :cond_0
    return-void
.end method
