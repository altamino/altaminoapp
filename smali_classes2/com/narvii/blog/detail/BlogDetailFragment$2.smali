.class Lcom/narvii/blog/detail/BlogDetailFragment$2;
.super Lcom/narvii/list/MergeAdapter;
.source "BlogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    .line 322
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090a91

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1, p3}, Lcom/narvii/blog/detail/BlogDetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v1, v1, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 324
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/MergeAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0, p3}, Lcom/narvii/blog/detail/BlogDetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$2;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 334
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/MergeAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method
