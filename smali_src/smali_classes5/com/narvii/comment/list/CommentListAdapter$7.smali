.class Lcom/narvii/comment/list/CommentListAdapter$7;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->val$c:Lcom/narvii/model/Comment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/comment/list/CommentListAdapter;->p(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashSet;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->val$c:Lcom/narvii/model/Comment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$7;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 21
    return-void
.end method
