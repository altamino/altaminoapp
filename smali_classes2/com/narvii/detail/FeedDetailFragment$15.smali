.class Lcom/narvii/detail/FeedDetailFragment$15;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 896
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 897
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/narvii/detail/FeedDetailAdapter;->touchFeedContentEnd:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 898
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$400(Lcom/narvii/detail/FeedDetailFragment;)I

    move-result p1

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    add-int/2addr p2, p3

    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 899
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$400(Lcom/narvii/detail/FeedDetailFragment;)I

    move-result p1

    if-le p2, p1, :cond_0

    .line 900
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$15;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/detail/FeedDetailAdapter;->touchFeedContentEnd:Z

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
