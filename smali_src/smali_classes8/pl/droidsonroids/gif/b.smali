.class public Lpl/droidsonroids/gif/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field final mBuffer:Landroid/graphics/Bitmap;

.field private final mDstRect:Landroid/graphics/Rect;

.field final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field final mInvalidationHandler:Lpl/droidsonroids/gif/f;

.field final mIsRenderingTriggeredOnDraw:Z

.field volatile mIsRunning:Z

.field final mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lpl/droidsonroids/gif/a;",
            ">;"
        }
    .end annotation
.end field

.field final mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

.field mNextFrameRenderTime:J

.field protected final mPaint:Landroid/graphics/Paint;

.field private final mRenderTask:Lpl/droidsonroids/gif/j;

.field mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mScaledHeight:I

.field private mScaledWidth:I

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTransform:Lsa/a;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->n(Landroid/content/ContentResolver;Landroid/net/Uri;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p2, v0}, Lpl/droidsonroids/gif/b;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/b;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .param p1    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lpl/droidsonroids/gif/b;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/b;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/b;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/b;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 2
    invoke-static {p1, p2}, Lpl/droidsonroids/gif/e;->a(Landroid/content/res/Resources;I)F

    move-result p1

    iget-object p2, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    invoke-virtual {p2}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lpl/droidsonroids/gif/b;->mScaledHeight:I

    iget-object p2, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 4
    invoke-virtual {p2}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lpl/droidsonroids/gif/b;->mScaledWidth:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lpl/droidsonroids/gif/b;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/b;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lpl/droidsonroids/gif/b;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/b;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lpl/droidsonroids/gif/b;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/b;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lpl/droidsonroids/gif/b;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/b;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method constructor <init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/b;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V
    .locals 5

    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lpl/droidsonroids/gif/b;->mNextFrameRenderTime:J

    .line 15
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lpl/droidsonroids/gif/b;->mDstRect:Landroid/graphics/Rect;

    .line 16
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lpl/droidsonroids/gif/b;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 18
    new-instance v1, Lpl/droidsonroids/gif/j;

    invoke-direct {v1, p0}, Lpl/droidsonroids/gif/j;-><init>(Lpl/droidsonroids/gif/b;)V

    iput-object v1, p0, Lpl/droidsonroids/gif/b;->mRenderTask:Lpl/droidsonroids/gif/j;

    iput-boolean p4, p0, Lpl/droidsonroids/gif/b;->mIsRenderingTriggeredOnDraw:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lpl/droidsonroids/gif/d;->a()Lpl/droidsonroids/gif/d;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lpl/droidsonroids/gif/b;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object p1, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    .line 20
    iget-object v2, p2, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    monitor-enter v2

    .line 21
    :try_start_0
    iget-object v3, p2, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->l()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p2, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 22
    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    move-result v3

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    move-result v4

    if-lt v3, v4, :cond_1

    iget-object v3, p2, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 23
    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result v3

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 24
    invoke-direct {p2}, Lpl/droidsonroids/gif/b;->j()V

    .line 25
    iget-object p4, p2, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {p4, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 27
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_3
    if-nez p4, :cond_3

    .line 28
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result p2

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    move-result p4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_3
    iput-object p4, p0, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    :goto_4
    iget-object p2, p0, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    .line 29
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->k()Z

    move-result p4

    xor-int/2addr p4, v0

    invoke-virtual {p2, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 30
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result p4

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    move-result v0

    invoke-direct {p2, p3, p3, p4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lpl/droidsonroids/gif/b;->mSrcRect:Landroid/graphics/Rect;

    .line 31
    new-instance p2, Lpl/droidsonroids/gif/f;

    invoke-direct {p2, p0}, Lpl/droidsonroids/gif/f;-><init>(Lpl/droidsonroids/gif/b;)V

    iput-object p2, p0, Lpl/droidsonroids/gif/b;->mInvalidationHandler:Lpl/droidsonroids/gif/f;

    .line 32
    invoke-virtual {v1}, Lpl/droidsonroids/gif/j;->a()V

    .line 33
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result p2

    iput p2, p0, Lpl/droidsonroids/gif/b;->mScaledWidth:I

    .line 34
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/gif/b;->mScaledHeight:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>([B)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lpl/droidsonroids/gif/b;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/b;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mInvalidationHandler:Lpl/droidsonroids/gif/f;

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    return-void
.end method

.method private h()V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRenderingTriggeredOnDraw:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Lpl/droidsonroids/gif/b;->mNextFrameRenderTime:J

    .line 11
    .line 12
    const-wide/high16 v2, -0x8000000000000000L

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    move-result-wide v4

    .line 21
    sub-long/2addr v0, v4

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    iput-wide v2, p0, Lpl/droidsonroids/gif/b;->mNextFrameRenderTime:J

    .line 30
    .line 31
    iget-object v2, p0, Lpl/droidsonroids/gif/b;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 32
    .line 33
    iget-object v3, p0, Lpl/droidsonroids/gif/b;->mRenderTask:Lpl/droidsonroids/gif/j;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    iget-object v2, p0, Lpl/droidsonroids/gif/b;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 39
    .line 40
    iget-object v3, p0, Lpl/droidsonroids/gif/b;->mRenderTask:Lpl/droidsonroids/gif/j;

    .line 41
    .line 42
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iput-object v0, p0, Lpl/droidsonroids/gif/b;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 49
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    .line 4
    .line 5
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mInvalidationHandler:Lpl/droidsonroids/gif/f;

    .line 6
    const/4 v1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->o()V

    .line 15
    return-void
.end method

.method private l(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 14
    move-result p1

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->b()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 20
    :cond_1
    :goto_0
    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->d()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method public canSeekForward()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->d()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method public d()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->i()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    iget-object v1, p0, Lpl/droidsonroids/gif/b;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lpl/droidsonroids/gif/b;->mTransform:Lsa/a;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    iget-object v2, p0, Lpl/droidsonroids/gif/b;->mSrcRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    iget-object v3, p0, Lpl/droidsonroids/gif/b;->mDstRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    iget-object v4, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    iget-object v3, p0, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, p1, v2, v3}, Lsa/a;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    :goto_1
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 50
    const/4 v0, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 54
    :cond_2
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->l()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lpl/droidsonroids/gif/b;->j()V

    .line 4
    .line 5
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 3
    .line 4
    new-instance v1, Lpl/droidsonroids/gif/b$a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p0}, Lpl/droidsonroids/gif/b$a;-><init>(Lpl/droidsonroids/gif/b;Lpl/droidsonroids/gif/b;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->d()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lpl/droidsonroids/gif/b;->mScaledHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lpl/droidsonroids/gif/b;->mScaledWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->k()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 14
    move-result v0

    .line 15
    .line 16
    const/16 v1, 0xff

    .line 17
    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, -0x1

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, -0x2

    .line 23
    return v0
.end method

.method public i(Lsa/a;)V
    .locals 1
    .param p1    # Lsa/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lpl/droidsonroids/gif/b;->mTransform:Lsa/a;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mDstRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lsa/a;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 10
    :cond_0
    return-void
.end method

.method public invalidateSelf()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lpl/droidsonroids/gif/b;->h()V

    .line 7
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mTint:Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method k(J)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRenderingTriggeredOnDraw:Z

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-wide v1, p0, Lpl/droidsonroids/gif/b;->mNextFrameRenderTime:J

    .line 9
    .line 10
    iget-object p1, p0, Lpl/droidsonroids/gif/b;->mInvalidationHandler:Lpl/droidsonroids/gif/f;

    .line 11
    const/4 p2, -0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lpl/droidsonroids/gif/b;->a()V

    .line 19
    .line 20
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 21
    .line 22
    iget-object v3, p0, Lpl/droidsonroids/gif/b;->mRenderTask:Lpl/droidsonroids/gif/j;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 26
    move-result-wide p1

    .line 27
    .line 28
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lpl/droidsonroids/gif/b;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 35
    :goto_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mDstRect:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mTransform:Lsa/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Lsa/a;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 13
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lpl/droidsonroids/gif/b;->mTint:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lpl/droidsonroids/gif/b;->l(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lpl/droidsonroids/gif/b;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public pause()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->stop()V

    .line 4
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    .line 6
    new-instance v1, Lpl/droidsonroids/gif/b$b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p0, p1}, Lpl/droidsonroids/gif/b$b;-><init>(Lpl/droidsonroids/gif/b;Lpl/droidsonroids/gif/b;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Position is not positive"

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lpl/droidsonroids/gif/b;->mTint:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lpl/droidsonroids/gif/b;->l(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lpl/droidsonroids/gif/b;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->invalidateSelf()V

    .line 14
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lpl/droidsonroids/gif/b;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    .line 4
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mTint:Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lpl/droidsonroids/gif/b;->l(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lpl/droidsonroids/gif/b;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->invalidateSelf()V

    .line 14
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lpl/droidsonroids/gif/b;->mIsRenderingTriggeredOnDraw:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->g()V

    .line 16
    .line 17
    :cond_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->start()V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->stop()V

    .line 27
    :cond_2
    :goto_0
    return v0
.end method

.method public start()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    .line 12
    iput-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->r()J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lpl/droidsonroids/gif/b;->k(J)V

    .line 23
    return-void

    .line 24
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public stop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-boolean v0, p0, Lpl/droidsonroids/gif/b;->mIsRunning:Z

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lpl/droidsonroids/gif/b;->a()V

    .line 17
    .line 18
    iget-object v0, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->s()V

    .line 22
    return-void

    .line 23
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    .line 11
    move-result v2

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    aput-object v2, v1, v3

    .line 19
    .line 20
    iget-object v2, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    .line 31
    aput-object v2, v1, v3

    .line 32
    .line 33
    iget-object v2, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->i()I

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x2

    .line 43
    .line 44
    aput-object v2, v1, v3

    .line 45
    .line 46
    iget-object v2, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->g()I

    .line 50
    move-result v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x3

    .line 56
    .line 57
    aput-object v2, v1, v3

    .line 58
    .line 59
    const-string v2, "GIF: size: %dx%d, frames: %d, error: %d"

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
