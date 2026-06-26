.class Lcom/narvii/comment/list/CommentListAdapter$7;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "CommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListAdapter;->vote(Lcom/narvii/model/Comment;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;

.field final synthetic val$c:Lcom/narvii/model/Comment;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iput-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->val$c:Lcom/narvii/model/Comment;

    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 1

    .line 1008
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {p1}, Lcom/narvii/comment/list/CommentListAdapter;->access$1300(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->val$c:Lcom/narvii/model/Comment;

    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1009
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    return-void
.end method
