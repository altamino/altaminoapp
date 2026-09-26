.class Lio/agora/rtc/video/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GLThreadManager"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/video/GLTextureView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gl"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 9
    .line 10
    const/16 v0, 0x1f01

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESVersion:I

    .line 17
    .line 18
    const/high16 v1, 0x20000

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    const-string v0, "Q3Dimension MSM7500 "

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    move-result p1

    .line 28
    xor-int/2addr p1, v2

    .line 29
    .line 30
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 39
    xor-int/2addr p1, v2

    .line 40
    .line 41
    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 42
    .line 43
    iput-boolean v2, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public releaseEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 5
    .line 6
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public declared-synchronized threadExiting(Lio/agora/rtc/video/GLTextureView$GLThread;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {p1, v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->access$1102(Lio/agora/rtc/video/GLTextureView$GLThread;Z)Z

    .line 6
    .line 7
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 8
    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public tryAcquireEglContextLocked(Lio/agora/rtc/video/GLTextureView$GLThread;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thread"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, p1, :cond_3

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 12
    .line 13
    iget-boolean p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    return v1

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lio/agora/rtc/video/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    .line 24
    :cond_2
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    .line 27
    :cond_3
    :goto_0
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;->mEglOwner:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 31
    return v1
.end method
