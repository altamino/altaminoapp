.class Lcom/narvii/blog/detail/BlogDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$3800(Lcom/narvii/blog/detail/BlogDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/Blog;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    .line 24
    .line 25
    :cond_1
    const v2, 0x7f0a1002

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    new-instance v3, Lcom/narvii/feed/vote/VotePopupDialog;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$4;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v4}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 47
    .line 48
    new-instance p1, Lcom/narvii/blog/detail/BlogDetailFragment$4$1;

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p0, v2}, Lcom/narvii/blog/detail/BlogDetailFragment$4$1;-><init>(Lcom/narvii/blog/detail/BlogDetailFragment$4;Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    .line 58
    return v1
.end method
