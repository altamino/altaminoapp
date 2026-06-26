.class Lcom/narvii/comment/list/CommentListFragment$3;
.super Ljava/lang/Object;
.source "CommentListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListFragment;

.field final synthetic val$isAnnouncement:Z


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListFragment;Z)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iput-boolean p2, p0, Lcom/narvii/comment/list/CommentListFragment$3;->val$isAnnouncement:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 385
    iget-boolean p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->val$isAnnouncement:Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    goto :goto_0

    .line 391
    :cond_1
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {p1, v2}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    goto :goto_0

    .line 388
    :cond_2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {p1, v0}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_7

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    goto :goto_0

    .line 409
    :cond_4
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    goto :goto_0

    .line 406
    :cond_5
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {p1, v2}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    goto :goto_0

    .line 403
    :cond_6
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {p1, v0}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    goto :goto_0

    .line 400
    :cond_7
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    invoke-virtual {p1, v1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    :goto_0
    return-void
.end method
