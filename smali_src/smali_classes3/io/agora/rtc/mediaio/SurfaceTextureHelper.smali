.class public Lio/agora/rtc/mediaio/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    }
.end annotation


# static fields
.field private static final MAX_TEXTURE_COPY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Lio/agora/rtc/gl/EglBase;

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

.field private mCopyTo2DTexture:Z

.field private mHeight:I

.field private mWidth:I

.field private final oesTextureId:I

.field private pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

.field final setListenerRunnable:Ljava/lang/Runnable;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

.field private yuvConverter:Lio/agora/rtc/gl/YuvConverter;


# direct methods
.method private constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "handler"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mCopyTo2DTexture:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    .line 4
    new-instance v0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 6
    sget-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, v0}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->createDummyPbufferSurface()V

    .line 8
    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x8d65

    .line 9
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    .line 10
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 11
    new-instance p1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$4;

    invoke-direct {p1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$4;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    invoke-static {v0, p1, p2}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SurfaceTextureHelper"

    const-string v1, "SurfaceTextureHelper: failed to create pbufferSurface!!"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 13
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 14
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 15
    throw p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;Lio/agora/rtc/mediaio/SurfaceTextureHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "handler",
            "copyTo2DTexture",
            "width",
            "height"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mCopyTo2DTexture:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    .line 18
    new-instance v0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 19
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iput-object p2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 20
    sget-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, v0}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->createDummyPbufferSurface()V

    .line 22
    invoke-virtual {p1}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mCopyTo2DTexture:Z

    if-eqz p3, :cond_0

    iput p4, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mWidth:I

    iput p5, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mHeight:I

    .line 23
    new-instance p1, Lio/agora/rtc/gl/TextureTransformer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lio/agora/rtc/gl/TextureTransformer;-><init>(I)V

    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    :cond_0
    const p1, 0x8d65

    .line 24
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    .line 25
    new-instance p3, Landroid/graphics/SurfaceTexture;

    invoke-direct {p3, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 26
    new-instance p1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;

    invoke-direct {p1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    invoke-static {p3, p1, p2}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception p1

    const-string p3, "SurfaceTextureHelper"

    const-string p4, "SurfaceTextureHelper: failed to create pbufferSurface!!"

    .line 27
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 28
    invoke-virtual {p3}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 29
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZIILio/agora/rtc/mediaio/SurfaceTextureHelper$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZII)V

    return-void
.end method

.method static synthetic access$1000(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/gl/YuvConverter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/gl/YuvConverter;)Lio/agora/rtc/gl/YuvConverter;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 3
    return-object p1
.end method

.method static synthetic access$302(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 3
    return p0
.end method

.method static synthetic access$402(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 3
    return p1
.end method

.method static synthetic access$500(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->updateTexImage()V

    .line 4
    return-void
.end method

.method static synthetic access$600(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    .line 4
    return-void
.end method

.method static synthetic access$700(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    .line 3
    return p0
.end method

.method static synthetic access$702(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    .line 3
    return p1
.end method

.method static synthetic access$800(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    .line 3
    return p0
.end method

.method static synthetic access$802(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    .line 3
    return p1
.end method

.method static synthetic access$900(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->release()V

    .line 4
    return-void
.end method

.method public static create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;)Lio/agora/rtc/mediaio/SurfaceTextureHelper;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "threadName",
            "sharedContext"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$1;

    invoke-direct {v0, p1, v1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$1;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;ZII)Lio/agora/rtc/mediaio/SurfaceTextureHelper;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "threadName",
            "sharedContext",
            "copyTo2DTexture",
            "width",
            "height"
        }
    .end annotation

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v8

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZIILjava/lang/String;)V

    invoke-static {v8, v0}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    return-object p0
.end method

.method private release()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->yuvConverter:Lio/agora/rtc/gl/YuvConverter;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lio/agora/rtc/gl/YuvConverter;->release()V

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lio/agora/rtc/gl/TextureTransformer;->release()V

    .line 37
    .line 38
    iget v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    .line 39
    .line 40
    .line 41
    filled-new-array {v0}, [I

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 48
    .line 49
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 53
    .line 54
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 58
    .line 59
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 67
    return-void

    .line 68
    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v1, "Unexpected release."

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0

    .line 76
    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "Wrong thread."

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0
.end method

.method private static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceTexture",
            "listener",
            "handler"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 4
    return-void
.end method

.method private tryDeliverTextureFrame()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-ne v0, v1, :cond_3

    .line 17
    .line 18
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isQuitting:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    .line 36
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->updateTexImage()V

    .line 43
    .line 44
    const/16 v0, 0x10

    .line 45
    .line 46
    new-array v4, v0, [F

    .line 47
    .line 48
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 52
    .line 53
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 57
    move-result-wide v5

    .line 58
    .line 59
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mCopyTo2DTexture:Z

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureTransformer:Lio/agora/rtc/gl/TextureTransformer;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    .line 68
    .line 69
    sget-object v2, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_OES:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    .line 73
    move-result v2

    .line 74
    .line 75
    iget v3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mWidth:I

    .line 76
    .line 77
    iget v7, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->mHeight:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2, v3, v7}, Lio/agora/rtc/gl/TextureTransformer;->copy(IIII)I

    .line 81
    move-result v2

    .line 82
    .line 83
    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 84
    .line 85
    sget-object v3, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->TEXTURE_2D:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 86
    .line 87
    .line 88
    invoke-interface/range {v1 .. v6}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;->onTextureFrameAvailable(ILio/agora/rtc/mediaio/MediaIO$PixelFormat;[FJ)V

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 92
    .line 93
    iget v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v1, v4, v5, v6}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;->onTextureFrameAvailable(I[FJ)V

    .line 97
    :cond_2
    :goto_0
    return-void

    .line 98
    .line 99
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v1, "Wrong thread."

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v0
.end method

.method private updateTexImage()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 9
    monitor-exit v0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 14
    .line 15
    :catch_0
    const-string v0, "SurfaceTextureHelper"

    .line 16
    .line 17
    const-string v1, "SurfaceTextureHelper: failed to updateTexImage!!"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :goto_0
    return-void
.end method


# virtual methods
.method public createTextureBuffer(IILandroid/graphics/Matrix;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "transformMatrix"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v8, Lio/agora/rtc/gl/TextureBufferImpl;

    .line 3
    .line 4
    sget-object v3, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 5
    .line 6
    iget v4, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    .line 7
    .line 8
    new-instance v7, Lio/agora/rtc/mediaio/SurfaceTextureHelper$10;

    .line 9
    .line 10
    .line 11
    invoke-direct {v7, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$10;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    .line 12
    move-object v0, v8

    .line 13
    move v1, p1

    .line 14
    move v2, p2

    .line 15
    move-object v5, p3

    .line 16
    move-object v6, p0

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/gl/TextureBufferImpl;-><init>(IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Lio/agora/rtc/mediaio/SurfaceTextureHelper;Ljava/lang/Runnable;)V

    .line 20
    return-object v8
.end method

.method public dispose()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "SurfaceTextureHelper"

    .line 3
    .line 4
    const-string v1, "dispose()"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$8;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$8;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method

.method public getEglContext()Lio/agora/rtc/gl/EglBase$Context;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public isTextureInUse()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method public returnTextureFrame()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    new-instance v1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public startListening(Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->listener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->pendingListener:Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 11
    .line 12
    iget-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "SurfaceTextureHelper listener has already been set."

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1
.end method

.method public stopListening()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "SurfaceTextureHelper"

    .line 3
    .line 4
    const-string v1, "stopListening()"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v1, Lio/agora/rtc/mediaio/SurfaceTextureHelper$6;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$6;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method

.method public textureToYuv(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/gl/VideoFrame$I420Buffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "textureBuffer"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTextureId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->oesTextureId:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    new-array v0, v0, [Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    .line 12
    .line 13
    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v2, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, p0, v0, p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;-><init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;[Lio/agora/rtc/gl/VideoFrame$I420Buffer;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 22
    const/4 p1, 0x0

    .line 23
    .line 24
    aget-object p1, v0, p1

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    .line 30
    const-string/jumbo v0, "textureToByteBuffer called with unexpected textureId"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method
