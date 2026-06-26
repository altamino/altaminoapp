.class public Lcom/narvii/widget/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SmoothProgressBar.java"


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

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/SmoothProgressBar;->it:Landroid/view/animation/DecelerateInterpolator;

    const-wide/16 p1, 0x258

    .line 18
    iput-wide p1, p0, Lcom/narvii/widget/SmoothProgressBar;->duration:J

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    .line 54
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/narvii/widget/SmoothProgressBar;->to:I

    if-ge p1, v0, :cond_3

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 57
    iget-wide v2, p0, Lcom/narvii/widget/SmoothProgressBar;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 58
    :cond_0
    iget-wide v2, p0, Lcom/narvii/widget/SmoothProgressBar;->duration:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-float v0, v0

    mul-float v0, v0, p1

    iget-wide v1, p0, Lcom/narvii/widget/SmoothProgressBar;->duration:J

    long-to-float p1, v1

    div-float p1, v0, p1

    .line 59
    :goto_0
    iget v0, p0, Lcom/narvii/widget/SmoothProgressBar;->from:I

    iget-object v1, p0, Lcom/narvii/widget/SmoothProgressBar;->it:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iget v1, p0, Lcom/narvii/widget/SmoothProgressBar;->to:I

    iget v2, p0, Lcom/narvii/widget/SmoothProgressBar;->from:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 60
    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/narvii/widget/SmoothProgressBar;->onProgressFinishListener:Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/narvii/widget/SmoothProgressBar;->onProgressFinishListener:Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;

    invoke-interface {p1}, Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;->onProgressFinish()V

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDuration(I)V
    .locals 2

    int-to-long v0, p1

    .line 49
    iput-wide v0, p0, Lcom/narvii/widget/SmoothProgressBar;->duration:J

    return-void
.end method

.method public setOnProgressFinishListener(Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/widget/SmoothProgressBar;->onProgressFinishListener:Lcom/narvii/widget/SmoothProgressBar$OnProgressFinishListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/SmoothProgressBar;->from:I

    .line 36
    iput p1, p0, Lcom/narvii/widget/SmoothProgressBar;->to:I

    .line 37
    iget v0, p0, Lcom/narvii/widget/SmoothProgressBar;->from:I

    if-ge p1, v0, :cond_0

    .line 38
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 39
    iput p1, p0, Lcom/narvii/widget/SmoothProgressBar;->from:I

    .line 40
    iput p1, p0, Lcom/narvii/widget/SmoothProgressBar;->to:I

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/narvii/widget/SmoothProgressBar;->startTime:J

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/widget/SmoothProgressBar;->startTime:J

    .line 44
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
