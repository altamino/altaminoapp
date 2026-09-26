.class Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;
.super Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider14"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field mLastFrameTime:J

.field private final mRunnable:Ljava/lang/Runnable;


# virtual methods
.method a()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    .line 9
    const-wide/16 v2, 0xa

    .line 10
    sub-long/2addr v2, v0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    return-void
.end method
