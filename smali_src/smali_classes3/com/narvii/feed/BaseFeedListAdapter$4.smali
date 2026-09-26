.class Lcom/narvii/feed/BaseFeedListAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$4;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$4;->val$b:Lcom/narvii/model/Blog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onQuizStartFailed()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$4;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->m(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$4;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->n(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V

    .line 14
    return-void
.end method

.method public onQuizStarted()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$4;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$4;->val$b:Lcom/narvii/model/Blog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->onFeedQuizStarted(Lcom/narvii/model/Blog;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$4;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/narvii/feed/BaseFeedListAdapter;->loadingQuizView:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->m(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$4;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->n(Lcom/narvii/feed/BaseFeedListAdapter;Landroid/view/View;)V

    .line 21
    return-void
.end method
