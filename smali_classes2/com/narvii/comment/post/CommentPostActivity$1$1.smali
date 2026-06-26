.class Lcom/narvii/comment/post/CommentPostActivity$1$1;
.super Ljava/lang/Object;
.source "CommentPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/post/CommentPostActivity$1;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

.field final synthetic val$l:Lcom/narvii/comment/post/CommentPostActivity$StatusListener;


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity$1;Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$1$1;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    iput-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$1$1;->val$l:Lcom/narvii/comment/post/CommentPostActivity$StatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1$1;->val$l:Lcom/narvii/comment/post/CommentPostActivity$StatusListener;

    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity$1$1;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    iget-object v1, v1, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-interface {v0, v1}, Lcom/narvii/comment/post/CommentPostActivity$StatusListener;->onHeightFix(Lcom/narvii/comment/post/CommentPostActivity;)V

    return-void
.end method
