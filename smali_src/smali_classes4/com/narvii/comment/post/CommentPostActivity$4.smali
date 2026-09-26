.class Lcom/narvii/comment/post/CommentPostActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$4;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$4;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/comment/post/CommentPostActivity;->finish()V

    .line 13
    :goto_0
    const/4 p1, 0x1

    .line 14
    return p1
.end method
