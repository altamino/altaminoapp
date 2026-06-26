.class Lcom/narvii/comment/post/CommentPostActivity$2;
.super Ljava/lang/Object;
.source "CommentPostActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/post/CommentPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Landroid/view/KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/post/CommentPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$2;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/KeyEvent;)V
    .locals 2

    .line 210
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$2;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPostActivity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/narvii/comment/post/CommentPostActivity$2;->call(Landroid/view/KeyEvent;)V

    return-void
.end method
