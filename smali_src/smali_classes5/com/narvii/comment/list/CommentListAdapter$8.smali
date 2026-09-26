.class Lcom/narvii/comment/list/CommentListAdapter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListAdapter;->delete(Lcom/narvii/model/Comment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;

.field final synthetic val$comment:Lcom/narvii/model/Comment;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$8;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$8;->val$comment:Lcom/narvii/model/Comment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$8;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$8;->val$comment:Lcom/narvii/model/Comment;

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, v0}, Lcom/narvii/comment/list/CommentListAdapter;->q(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;Z)V

    .line 9
    return-void
.end method
