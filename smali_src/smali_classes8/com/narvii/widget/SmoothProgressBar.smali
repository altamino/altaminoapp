.class public Lcom/narvii/widget/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;
    }
.end annotation


# instance fields
.field duration:J

.field from:I

.field it:Landroid/view/animation/DecelerateInterpolator;

.field onProgressFinishListener:Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;

.field startTime:J

.field to:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/SmoothProgressBar;->it:Landroid/view/animation/DecelerateInterpolator;

    .line 11
    .line 12
    const-wide/16 p1, 0x258

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/narvii/widget/SmoothProgressBar;->duration:J

    .line 15
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 8
    move-result p1

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/widget/SmoothProgressBar;->to:I

    .line 11
    .line 12
    if-ge p1, v0, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/narvii/widget/SmoothProgressBar;->startTime:J

    .line 19
    sub-long/2addr v0, v2

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long p1, v0, v2

    .line 24
    .line 25
    if-gez p1, :cond_0

    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-wide v2, p0, Lcom/narvii/widget/SmoothProgressBar;->duration:J

    .line 30
    .line 31
    cmp-long p1, v0, v2

    .line 32
    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    .line 35
    if-lez p1, :cond_1

    .line 36
    move p1, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    long-to-float p1, v0

    .line 39
    mul-float/2addr p1, v4

    .line 40
    long-to-float v0, v2

    .line 41
    div-float/2addr p1, v0

    .line 42
    .line 43
    :goto_0
    iget v0, p0, Lcom/narvii/widget/SmoothProgressBar;->from:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/widget/SmoothProgressBar;->it:Landroid/view/animation/DecelerateInterpolator;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 49
    move-result p1

    .line 50
    .line 51
    iget v1, p0, Lcom/narvii/widget/SmoothProgressBar;->to:I

    .line 52
    .line 53
    iget v2, p0, Lcom/narvii/widget/SmoothProgressBar;->from:I

    .line 54
    sub-int/2addr v1, v2

    .line 55
    int-to-float v1, v1

    .line 56
    mul-float/2addr p1, v1

    .line 57
    float-to-int p1, p1

    .line 58
    add-int/2addr v0, p1

    .line 59
    .line 60
    .line 61
    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 65
    move-result p1

    .line 66
    .line 67
    if-ne v0, p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/widget/SmoothProgressBar;->onProgressFinishListener:Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;->onProgressFinish()V

    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_2

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_3
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :goto_2
    monitor-exit p0

    .line 84
    throw p1
.end method

.method public setDuration(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/narvii/widget/SmoothProgressBar;->duration:J

    return-void
.end method

.method public setOnProgressFinishListener(Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/SmoothProgressBar;->onProgressFinishListener:Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 5
    move-result v0

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/widget/SmoothProgressBar;->from:I

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/widget/SmoothProgressBar;->to:I

    .line 10
    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    .line 16
    iput p1, p0, Lcom/narvii/widget/SmoothProgressBar;->from:I

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/widget/SmoothProgressBar;->to:I

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/narvii/widget/SmoothProgressBar;->startTime:J

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/narvii/widget/SmoothProgressBar;->startTime:J

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit p0

    .line 38
    throw p1
.end method
