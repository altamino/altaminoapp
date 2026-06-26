.class Lcom/narvii/feed/BaseFeedListAdapter$5;
.super Ljava/lang/Object;
.source "BaseFeedListAdapter.java"

# interfaces
.implements Lcom/narvii/feed/FeedHelper$StartQuizListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;

.field final synthetic val$b:Lcom/narvii/model/Blog;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iput-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->val$b:Lcom/narvii/model/Blog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuizStartFailed()V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->access$400(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->access$500(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public onQuizStarted()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->val$b:Lcom/narvii/model/Blog;

    invoke-virtual {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->onFeedQuizStarted(Lcom/narvii/model/Blog;)V

    .line 610
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->access$400(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V

    .line 611
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$5;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->access$500(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V

    return-void
.end method
