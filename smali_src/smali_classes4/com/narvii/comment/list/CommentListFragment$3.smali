.class Lcom/narvii/comment/list/CommentListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/comment/list/CommentListFragment$3;->val$isAnnouncement:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->val$isAnnouncement:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    if-eq p2, v2, :cond_1

    .line 12
    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_3
    if-eqz p2, :cond_7

    .line 41
    .line 42
    if-eq p2, v2, :cond_6

    .line 43
    .line 44
    if-eq p2, v1, :cond_5

    .line 45
    const/4 p1, 0x3

    .line 46
    .line 47
    if-eq p2, p1, :cond_4

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_4
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_5
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_6
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_7
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$3;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/narvii/comment/list/CommentListFragment;->adapter:Lcom/narvii/comment/list/CommentListFragment$Adapter;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 80
    :goto_0
    return-void
.end method
