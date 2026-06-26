.class Lcom/narvii/comment/list/CommentItem$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CommentItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentItem;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentItem;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/comment/list/CommentItem$1;->this$0:Lcom/narvii/comment/list/CommentItem;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/narvii/comment/list/CommentItem$1;->this$0:Lcom/narvii/comment/list/CommentItem;

    iget-object v0, p1, Lcom/narvii/comment/list/CommentItem;->voteCallback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/narvii/comment/list/CommentItem$1;->this$0:Lcom/narvii/comment/list/CommentItem;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method
