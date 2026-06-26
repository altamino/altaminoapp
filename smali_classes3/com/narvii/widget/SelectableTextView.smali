.class public Lcom/narvii/widget/SelectableTextView;
.super Landroid/widget/TextView;
.source "SelectableTextView.java"


# instance fields
.field block:Z

.field ev:Landroid/view/MotionEvent;

.field gestureDetector:Landroid/view/GestureDetector;

.field private final gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field hasSavedMovementMethod:Z

.field isSelectionChanging:Z

.field savedMovementMethod:Landroid/text/method/MovementMethod;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p2, Lcom/narvii/widget/SelectableTextView$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/SelectableTextView$1;-><init>(Lcom/narvii/widget/SelectableTextView;)V

    iput-object p2, p0, Lcom/narvii/widget/SelectableTextView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 28
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/widget/SelectableTextView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    iget-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->block:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 83
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/widget/SelectableTextView;->block:Z

    :cond_3
    return v2

    .line 86
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    .line 99
    iget-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->block:Z

    if-nez v0, :cond_1

    if-ne p1, p2, :cond_1

    .line 100
    new-instance p1, Lcom/narvii/widget/SelectableTextView$2;

    invoke-direct {p1, p0}, Lcom/narvii/widget/SelectableTextView$2;-><init>(Lcom/narvii/widget/SelectableTextView;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onSingleTapUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
