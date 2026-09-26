.class Lcom/narvii/detail/FeedDetailFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/narvii/detail/FeedDetailAdapter;->touchFeedContentEnd:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->H(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 24
    move-result p1

    .line 25
    const/4 p4, -0x1

    .line 26
    .line 27
    if-eq p1, p4, :cond_0

    .line 28
    add-int/2addr p2, p3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->H(Lcom/narvii/detail/FeedDetailFragment;)I

    .line 34
    move-result p1

    .line 35
    .line 36
    if-le p2, p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeedDetailAdapter()Lcom/narvii/detail/FeedDetailAdapter;

    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x1

    .line 44
    .line 45
    iput-boolean p2, p1, Lcom/narvii/detail/FeedDetailAdapter;->touchFeedContentEnd:Z

    .line 46
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
