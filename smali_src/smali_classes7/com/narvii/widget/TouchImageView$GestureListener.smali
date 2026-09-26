.class Lcom/narvii/widget/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView$GestureListener;-><init>(Lcom/narvii/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->d(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->d(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->m(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    sget-object v2, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    .line 29
    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->l(Lcom/narvii/widget/TouchImageView;)F

    .line 36
    move-result v0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->k(Lcom/narvii/widget/TouchImageView;)F

    .line 42
    move-result v1

    .line 43
    .line 44
    cmpl-float v0, v0, v1

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->j(Lcom/narvii/widget/TouchImageView;)F

    .line 52
    move-result v0

    .line 53
    :goto_1
    move v3, v0

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->k(Lcom/narvii/widget/TouchImageView;)F

    .line 60
    move-result v0

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :goto_2
    new-instance v0, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 69
    move-result v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 73
    move-result v5

    .line 74
    const/4 v6, 0x0

    .line 75
    move-object v1, v0

    .line 76
    .line 77
    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;-><init>(Lcom/narvii/widget/TouchImageView;FFFZ)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/narvii/widget/TouchImageView;->t(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V

    .line 84
    const/4 v0, 0x1

    .line 85
    :cond_2
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->d(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->d(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->e(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->e(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$Fling;->cancelFling()V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/widget/TouchImageView$Fling;

    .line 22
    float-to-int v2, p3

    .line 23
    float-to-int v3, p4

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0, v2, v3}, Lcom/narvii/widget/TouchImageView$Fling;-><init>(Lcom/narvii/widget/TouchImageView;II)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->s(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$Fling;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->e(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->t(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 42
    move-result p1

    .line 43
    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 6
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->d(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->d(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$GestureListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method
