.class Lcom/narvii/blog/detail/BlogDetailFragment$5;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 2066
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$5;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 2069
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$5;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5300(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$5;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const v2, 0x7f090cdc

    .line 2076
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2077
    new-instance v3, Lcom/narvii/feed/vote/VotePopupDialog;

    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$5;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 2078
    invoke-virtual {v3, v0}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 2079
    invoke-virtual {v3, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 2080
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$5$1;

    invoke-direct {p1, p0, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$5$1;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$5;Landroid/view/View;)V

    invoke-virtual {v3, p1}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 2089
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    return v1
.end method
