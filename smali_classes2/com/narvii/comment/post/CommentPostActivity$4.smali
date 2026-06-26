.class Lcom/narvii/comment/post/CommentPostActivity$4;
.super Ljava/lang/Object;
.source "CommentPostActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/post/CommentPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/post/CommentPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$4;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$4;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPostActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
