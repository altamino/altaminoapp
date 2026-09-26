.class Lcom/narvii/widget/TouchImageView$Fling;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/TouchImageView;II)V
    .locals 11

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/widget/TouchImageView$State;->FLING:Lcom/narvii/widget/TouchImageView$State;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/narvii/widget/TouchImageView;->A(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->c(Lcom/narvii/widget/TouchImageView;)Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lcom/narvii/widget/TouchImageView$CompatScroller;-><init>(Lcom/narvii/widget/TouchImageView;Landroid/content/Context;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->i(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->f(Lcom/narvii/widget/TouchImageView;)[F

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->f(Lcom/narvii/widget/TouchImageView;)[F

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x2

    .line 38
    .line 39
    aget v0, v0, v1

    .line 40
    float-to-int v0, v0

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->f(Lcom/narvii/widget/TouchImageView;)[F

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x5

    .line 46
    .line 47
    aget v1, v1, v2

    .line 48
    float-to-int v10, v1

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->y(Lcom/narvii/widget/TouchImageView;)F

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->q(Lcom/narvii/widget/TouchImageView;)I

    .line 56
    move-result v2

    .line 57
    int-to-float v2, v2

    .line 58
    .line 59
    cmpl-float v1, v1, v2

    .line 60
    const/4 v2, 0x0

    .line 61
    .line 62
    if-lez v1, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->q(Lcom/narvii/widget/TouchImageView;)I

    .line 66
    move-result v1

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->y(Lcom/narvii/widget/TouchImageView;)F

    .line 70
    move-result v3

    .line 71
    float-to-int v3, v3

    .line 72
    sub-int/2addr v1, v3

    .line 73
    move v6, v1

    .line 74
    move v7, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move v6, v0

    .line 77
    move v7, v6

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->x(Lcom/narvii/widget/TouchImageView;)F

    .line 81
    move-result v1

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->p(Lcom/narvii/widget/TouchImageView;)I

    .line 85
    move-result v3

    .line 86
    int-to-float v3, v3

    .line 87
    .line 88
    cmpl-float v1, v1, v3

    .line 89
    .line 90
    if-lez v1, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->p(Lcom/narvii/widget/TouchImageView;)I

    .line 94
    move-result v1

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->x(Lcom/narvii/widget/TouchImageView;)F

    .line 98
    move-result p1

    .line 99
    float-to-int p1, p1

    .line 100
    sub-int/2addr v1, p1

    .line 101
    move v8, v1

    .line 102
    move v9, v2

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    move v8, v10

    .line 105
    move v9, v8

    .line 106
    .line 107
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 108
    move v2, v0

    .line 109
    move v3, v10

    .line 110
    move v4, p2

    .line 111
    move v5, p3

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v1 .. v9}, Lcom/narvii/widget/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    .line 115
    .line 116
    iput v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->currX:I

    .line 117
    .line 118
    iput v10, p0, Lcom/narvii/widget/TouchImageView$Fling;->currY:I

    .line 119
    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->A(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TouchImageView$CompatScroller;->forceFinished(Z)V

    .line 18
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->n(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->n(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$CompatScroller;->isFinished()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$CompatScroller;->computeScrollOffset()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$CompatScroller;->getCurrX()I

    .line 43
    move-result v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$Fling;->scroller:Lcom/narvii/widget/TouchImageView$CompatScroller;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/narvii/widget/TouchImageView$CompatScroller;->getCurrY()I

    .line 49
    move-result v1

    .line 50
    .line 51
    iget v2, p0, Lcom/narvii/widget/TouchImageView$Fling;->currX:I

    .line 52
    .line 53
    sub-int v2, v0, v2

    .line 54
    .line 55
    iget v3, p0, Lcom/narvii/widget/TouchImageView$Fling;->currY:I

    .line 56
    .line 57
    sub-int v3, v1, v3

    .line 58
    .line 59
    iput v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->currX:I

    .line 60
    .line 61
    iput v1, p0, Lcom/narvii/widget/TouchImageView$Fling;->currY:I

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->i(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    .line 67
    move-result-object v0

    .line 68
    int-to-float v1, v2

    .line 69
    int-to-float v2, v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->v(Lcom/narvii/widget/TouchImageView;)V

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->i(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$Fling;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 89
    .line 90
    .line 91
    invoke-static {v0, p0}, Lcom/narvii/widget/TouchImageView;->t(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V

    .line 92
    :cond_2
    return-void
.end method
