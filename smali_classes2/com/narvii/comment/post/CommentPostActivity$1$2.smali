.class Lcom/narvii/comment/post/CommentPostActivity$1$2;
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


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity$1;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$1$2;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1$2;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    iget-object v0, v0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iget-object v0, v0, Lcom/narvii/comment/post/CommentPostActivity;->stickerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 200
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$1$2;->this$1:Lcom/narvii/comment/post/CommentPostActivity$1;

    iget-object v0, v0, Lcom/narvii/comment/post/CommentPostActivity$1;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/comment/post/CommentPostActivity;->defaultStickerSet:Z

    return-void
.end method
