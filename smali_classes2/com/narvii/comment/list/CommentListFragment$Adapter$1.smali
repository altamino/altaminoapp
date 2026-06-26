.class Lcom/narvii/comment/list/CommentListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "CommentListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListFragment$Adapter;->onNotification(Lcom/narvii/notification/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/comment/list/CommentListFragment$Adapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListFragment$Adapter;I)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->this$1:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    iput p2, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->this$1:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 620
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->this$1:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    .line 621
    iget v2, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->val$pos:I

    if-le v2, v0, :cond_0

    if-lt v2, v1, :cond_1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->this$1:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->val$pos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method
