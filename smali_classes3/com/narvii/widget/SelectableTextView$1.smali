.class Lcom/narvii/widget/SelectableTextView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SelectableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/SelectableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/SelectableTextView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/SelectableTextView;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/narvii/widget/SelectableTextView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/widget/SelectableTextView$1$1;-><init>(Lcom/narvii/widget/SelectableTextView$1;Landroid/view/MotionEvent;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-virtual {p1}, Lcom/narvii/widget/SelectableTextView;->onSingleTapUp()Z

    move-result p1

    return p1
.end method
