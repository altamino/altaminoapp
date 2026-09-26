.class Lcom/narvii/comment/post/CommentPostActivity$1$2;
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


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$1$2;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1$2;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/comment/post/CommentPostActivity;->stickerContainer:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1$2;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    iput-boolean v1, v0, Lcom/narvii/comment/post/CommentPostActivity;->defaultStickerSet:Z

    .line 17
    return-void
.end method
