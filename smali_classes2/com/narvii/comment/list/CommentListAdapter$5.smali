.class Lcom/narvii/comment/list/CommentListAdapter$5;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/comment/list/CommentItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$5;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/comment/list/CommentItem;)V
    .locals 2

    .line 878
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentItem;->hasVotes()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$5;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 883
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentItem;->getComment()Lcom/narvii/model/Comment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 884
    iget v0, p1, Lcom/narvii/model/Comment;->votedValue:I

    if-gtz v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$5;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lcom/narvii/comment/list/CommentListAdapter;->access$300(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;IZ)V

    .line 886
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$5;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_2

    .line 887
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$5;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f08055e

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->toastImage(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 875
    check-cast p1, Lcom/narvii/comment/list/CommentItem;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter$5;->call(Lcom/narvii/comment/list/CommentItem;)V

    return-void
.end method
