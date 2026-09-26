.class public Lcom/narvii/widget/SelectableTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectableTextView"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/widget/SelectableTextView$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/narvii/widget/SelectableTextView$1;-><init>(Lcom/narvii/widget/SelectableTextView;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/widget/SelectableTextView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 11
    .line 12
    new-instance v0, Landroid/view/GestureDetector;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/SelectableTextView;->gestureDetector:Landroid/view/GestureDetector;

    .line 18
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/widget/SelectableTextView;->ev:Landroid/view/MotionEvent;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SelectableTextView;->gestureDetector:Landroid/view/GestureDetector;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->block:Z

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 40
    move-result p1

    .line 41
    const/4 v0, 0x3

    .line 42
    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/widget/SelectableTextView;->block:Z

    .line 46
    :cond_3
    return v2

    .line 47
    .line 48
    .line 49
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    return v1
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->isSelectionChanging:Z

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/narvii/widget/SelectableTextView;->block:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    if-ne p1, p2, :cond_1

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/widget/SelectableTextView$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/narvii/widget/SelectableTextView$2;-><init>(Lcom/narvii/widget/SelectableTextView;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 29
    :cond_1
    return-void
.end method

.method protected onSingleTapUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
