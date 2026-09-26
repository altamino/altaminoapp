.class Lcom/narvii/comment/list/CommentListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->this$1:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->val$pos:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->this$1:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->this$1:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v1

    .line 25
    add-int/2addr v1, v0

    .line 26
    .line 27
    iget v2, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->val$pos:I

    .line 28
    .line 29
    if-le v2, v0, :cond_0

    .line 30
    .line 31
    if-lt v2, v1, :cond_1

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->this$1:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget v1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;->val$pos:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 45
    :cond_1
    return-void
.end method
