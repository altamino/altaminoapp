.class Lcom/narvii/widget/SelectableTextView$1$1;
.super Ljava/lang/Object;
.source "SelectableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/SelectableTextView$1;->onLongPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/widget/SelectableTextView$1;

.field final synthetic val$e:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/narvii/widget/SelectableTextView$1;Landroid/view/MotionEvent;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iput-object p2, p0, Lcom/narvii/widget/SelectableTextView$1$1;->val$e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 37
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->hasActionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 40
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    iget-object v1, v0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 42
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/widget/SelectableTextView;->block:Z

    .line 45
    invoke-virtual {v0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/widget/SelectableTextView;->savedMovementMethod:Landroid/text/method/MovementMethod;

    .line 46
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v0, v0, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    iput-boolean v1, v0, Lcom/narvii/widget/SelectableTextView;->hasSavedMovementMethod:Z

    .line 48
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "fail when long press text to select"

    .line 50
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 53
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView$1$1;->val$e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v5

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 54
    iget-object v2, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v2, v2, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 56
    iget-object v2, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v2, v2, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 58
    iget-object v2, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v2, v2, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 60
    iget-object v1, p0, Lcom/narvii/widget/SelectableTextView$1$1;->this$1:Lcom/narvii/widget/SelectableTextView$1;

    iget-object v1, v1, Lcom/narvii/widget/SelectableTextView$1;->this$0:Lcom/narvii/widget/SelectableTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method
