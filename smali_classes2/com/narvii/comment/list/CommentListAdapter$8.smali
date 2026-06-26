.class Lcom/narvii/comment/list/CommentListAdapter$8;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

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

    .line 1044
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$8;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iput-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$8;->val$comment:Lcom/narvii/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1047
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$8;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$8;->val$comment:Lcom/narvii/model/Comment;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/narvii/comment/list/CommentListAdapter;->access$500(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/model/Comment;Z)V

    return-void
.end method
