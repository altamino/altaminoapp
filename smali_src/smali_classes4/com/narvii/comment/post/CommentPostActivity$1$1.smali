.class Lcom/narvii/comment/post/CommentPostActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$1$1;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$1$1;->val$l:Lcom/narvii/comment/post/CommentPostActivity$StatusListener;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1$1;->val$l:Lcom/narvii/comment/post/CommentPostActivity$StatusListener;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity$1$1;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/narvii/comment/post/CommentPostActivity$StatusListener;->onHeightFix(Lcom/narvii/comment/post/CommentPostActivity;)V

    .line 10
    return-void
.end method
