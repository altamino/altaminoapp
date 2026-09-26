.class Lpl/droidsonroids/gif/j;
.super Lpl/droidsonroids/gif/l;
.source "SourceFile"


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/l;-><init>(Lpl/droidsonroids/gif/b;)V

    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    iget-object v1, v0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 5
    .line 6
    iget-object v0, v0, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->p(Landroid/graphics/Bitmap;)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-ltz v4, :cond_1

    .line 17
    .line 18
    iget-object v4, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 22
    move-result-wide v5

    .line 23
    add-long/2addr v5, v0

    .line 24
    .line 25
    iput-wide v5, v4, Lpl/droidsonroids/gif/b;->mNextFrameRenderTime:J

    .line 26
    .line 27
    iget-object v4, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 31
    move-result v4

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    iget-object v4, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 36
    .line 37
    iget-boolean v4, v4, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    iget-object v4, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 42
    .line 43
    iget-boolean v5, v4, Lpl/droidsonroids/gif/b;->mIsRenderingTriggeredOnDraw:Z

    .line 44
    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    iget-object v4, v4, Lpl/droidsonroids/gif/b;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    iget-object v4, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 53
    .line 54
    iget-object v5, v4, Lpl/droidsonroids/gif/b;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 55
    .line 56
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, p0, v0, v1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iput-object v0, v4, Lpl/droidsonroids/gif/b;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 65
    .line 66
    iget-object v0, v0, Lpl/droidsonroids/gif/b;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->b()I

    .line 78
    move-result v0

    .line 79
    .line 80
    iget-object v1, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 81
    .line 82
    iget-object v1, v1, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->i()I

    .line 86
    move-result v1

    .line 87
    .line 88
    add-int/lit8 v1, v1, -0x1

    .line 89
    .line 90
    if-ne v0, v1, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 93
    .line 94
    iget-object v1, v0, Lpl/droidsonroids/gif/b;->mInvalidationHandler:Lpl/droidsonroids/gif/f;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->c()I

    .line 98
    move-result v0

    .line 99
    .line 100
    iget-object v4, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 101
    .line 102
    iget-wide v4, v4, Lpl/droidsonroids/gif/b;->mNextFrameRenderTime:J

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_1
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 109
    .line 110
    const-wide/high16 v4, -0x8000000000000000L

    .line 111
    .line 112
    iput-wide v4, v0, Lpl/droidsonroids/gif/b;->mNextFrameRenderTime:J

    .line 113
    const/4 v1, 0x0

    .line 114
    .line 115
    iput-boolean v1, v0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    .line 116
    .line 117
    :cond_2
    :goto_0
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 121
    move-result v0

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 126
    .line 127
    iget-object v0, v0, Lpl/droidsonroids/gif/b;->mInvalidationHandler:Lpl/droidsonroids/gif/f;

    .line 128
    const/4 v1, -0x1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 132
    move-result v0

    .line 133
    .line 134
    if-nez v0, :cond_3

    .line 135
    .line 136
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->mGifDrawable:Lpl/droidsonroids/gif/b;

    .line 137
    .line 138
    iget-object v0, v0, Lpl/droidsonroids/gif/b;->mInvalidationHandler:Lpl/droidsonroids/gif/f;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 142
    :cond_3
    return-void
.end method
