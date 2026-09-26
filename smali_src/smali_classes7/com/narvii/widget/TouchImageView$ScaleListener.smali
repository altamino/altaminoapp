.class Lcom/narvii/widget/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 2
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView$ScaleListener;-><init>(Lcom/narvii/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 6
    move-result v1

    .line 7
    float-to-double v1, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 11
    move-result v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static/range {v0 .. v5}, Lcom/narvii/widget/TouchImageView;->z(Lcom/narvii/widget/TouchImageView;DFFZ)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->n(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->n(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    sget-object v0, Lcom/narvii/widget/TouchImageView$State;->ZOOM:Lcom/narvii/widget/TouchImageView$State;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/widget/TouchImageView;->A(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/narvii/widget/TouchImageView;->A(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->l(Lcom/narvii/widget/TouchImageView;)F

    .line 16
    move-result p1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->l(Lcom/narvii/widget/TouchImageView;)F

    .line 22
    move-result v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->j(Lcom/narvii/widget/TouchImageView;)F

    .line 28
    move-result v1

    .line 29
    .line 30
    cmpl-float v0, v0, v1

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->j(Lcom/narvii/widget/TouchImageView;)F

    .line 39
    move-result p1

    .line 40
    :goto_0
    move v4, p1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->l(Lcom/narvii/widget/TouchImageView;)F

    .line 47
    move-result v0

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lcom/narvii/widget/TouchImageView;->k(Lcom/narvii/widget/TouchImageView;)F

    .line 53
    move-result v2

    .line 54
    .line 55
    cmpg-float v0, v0, v2

    .line 56
    .line 57
    if-gez v0, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->k(Lcom/narvii/widget/TouchImageView;)F

    .line 63
    move-result p1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :goto_1
    if-eqz v1, :cond_2

    .line 69
    .line 70
    new-instance p1, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Lcom/narvii/widget/TouchImageView;->q(Lcom/narvii/widget/TouchImageView;)I

    .line 76
    move-result v0

    .line 77
    .line 78
    div-int/lit8 v0, v0, 0x2

    .line 79
    int-to-float v5, v0

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->p(Lcom/narvii/widget/TouchImageView;)I

    .line 85
    move-result v0

    .line 86
    .line 87
    div-int/lit8 v0, v0, 0x2

    .line 88
    int-to-float v6, v0

    .line 89
    const/4 v7, 0x1

    .line 90
    move-object v2, p1

    .line 91
    .line 92
    .line 93
    invoke-direct/range {v2 .. v7}, Lcom/narvii/widget/TouchImageView$DoubleTapZoom;-><init>(Lcom/narvii/widget/TouchImageView;FFFZ)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$ScaleListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 96
    .line 97
    .line 98
    invoke-static {v0, p1}, Lcom/narvii/widget/TouchImageView;->t(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V

    .line 99
    :cond_2
    return-void
.end method
