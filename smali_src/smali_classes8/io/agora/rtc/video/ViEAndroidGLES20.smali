.class public Lio/agora/rtc/video/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "ViEAndroidGLES20"


# instance fields
.field private mLastRotation:I

.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private nativeGLPragram:I

.field private nativeGLResourceUpdated:Z

.field private nativeGLTextureId:[I

.field private nativeObject:J

.field private openGLCreated:Z

.field private surfaceCreated:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    filled-new-array {p1, p1, p1}, [I

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    .line 3
    invoke-direct {p0, p1, p1, p1}, Lio/agora/rtc/video/ViEAndroidGLES20;->init(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "translucent",
            "depth",
            "stencil"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    filled-new-array {p1, p1, p1}, [I

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    const/4 p1, -0x1

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    .line 6
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/video/ViEAndroidGLES20;->init(ZII)V

    return-void
.end method

.method private native CreateOpenGLNative(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeObject",
            "width",
            "height"
        }
    .end annotation
.end method

.method private native DrawNative(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeObject"
        }
    .end annotation
.end method

.method public static IsSupported(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroid/app/ActivityManager;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    return v0

    .line 17
    .line 18
    :cond_0
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 19
    .line 20
    const/high16 v1, 0x20000

    .line 21
    .line 22
    if-lt p0, v1, :cond_1

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    return v0
.end method

.method private native OnCfgChangedNative(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeObject",
            "ori"
        }
    .end annotation
.end method

.method public static UseOpenGL2(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderWindow"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lio/agora/rtc/video/ViEAndroidGLES20;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/agora/rtc/video/ViEAndroidGLES20;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    .line 3
    return p0
.end method

.method static synthetic access$200(Lio/agora/rtc/video/ViEAndroidGLES20;)[I
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    .line 3
    return-object p0
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prompt",
            "egl"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x3000

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    sget-object v1, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "%s: EGL error: 0x%x"

    .line 13
    const/4 v3, 0x2

    .line 14
    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    const/4 v4, 0x0

    .line 17
    .line 18
    aput-object p0, v3, v4

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    const/4 v4, 0x1

    .line 24
    .line 25
    aput-object v0, v3, v4

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :catch_0
    const-string v0, "AGORA_SDK"

    .line 36
    .line 37
    const-string v1, "egl error!!, video may not displayed!!"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method private checkOrientation()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "window"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroid/view/WindowManager;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 38
    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return v0

    .line 40
    .line 41
    :catch_0
    sget-object v0, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "checkOrientation display getRotation throwout exception"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    iget v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    .line 49
    return v0

    .line 50
    .line 51
    :cond_0
    iget v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    .line 52
    return v0
.end method

.method private init(ZII)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "translucent",
            "depth",
            "stencil"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, -0x3

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 12
    :cond_0
    const/4 v1, 0x2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 16
    .line 17
    new-instance v1, Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    const/16 v6, 0x8

    .line 28
    move-object v2, v1

    .line 29
    .line 30
    move/from16 v7, p2

    .line 31
    .line 32
    move/from16 v8, p3

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v2 .. v8}, Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v8, 0x5

    .line 38
    const/4 v9, 0x6

    .line 39
    const/4 v10, 0x5

    .line 40
    const/4 v11, 0x0

    .line 41
    move-object v7, v1

    .line 42
    .line 43
    move/from16 v12, p2

    .line 44
    .line 45
    move/from16 v13, p3

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v7 .. v13}, Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 55
    const/4 v1, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 59
    return-void
.end method

.method private updateOrientation()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->checkOrientation()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    iget-boolean v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-wide v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v1, v2, v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->OnCfgChangedNative(JI)V

    .line 23
    .line 24
    :cond_0
    iput v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    .line 25
    .line 26
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 30
    :cond_1
    return-void
.end method


# virtual methods
.method public DeRegisterNativeObject()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    .line 15
    .line 16
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->releaseOpenGLResource()V

    .line 23
    return-void
.end method

.method public ReDraw()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 8
    :cond_0
    return-void
.end method

.method public RegisterNativeObject(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeObject"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    iput-wide p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 11
    .line 12
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    return-void
.end method

.method public UpdateOpenGLResource([I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget v1, p1, v0

    .line 4
    .line 5
    iput v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    .line 6
    move v1, v0

    .line 7
    :goto_0
    const/4 v2, 0x3

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    .line 12
    .line 13
    add-int/lit8 v3, v1, 0x1

    .line 14
    .line 15
    aget v4, p1, v3

    .line 16
    .line 17
    aput v4, v2, v1

    .line 18
    move v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    .line 22
    iput-boolean v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    .line 23
    .line 24
    sget-object v3, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v5, "UpdateOpenGLResource, program = "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    aget v0, p1, v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, " texture[0~2] = "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    aget v0, p1, v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, " ,"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/4 v1, 0x2

    .line 56
    .line 57
    aget v1, p1, v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    aget p1, p1, v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "io.agora"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->updateOrientation()V

    .line 7
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
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
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->updateOrientation()V

    .line 4
    .line 5
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9
    .line 10
    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    .line 24
    .line 25
    iget p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    .line 26
    .line 27
    iget v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1, p1, v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    return-void

    .line 40
    :cond_1
    const/4 p1, 0x1

    .line 41
    .line 42
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 43
    .line 44
    :cond_2
    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/video/ViEAndroidGLES20;->DrawNative(J)V

    .line 48
    .line 49
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_3
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    const-string v0, "io.agora"

    const/4 v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gl",
            "width",
            "height"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    .line 4
    .line 5
    iput p2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    .line 6
    .line 7
    iput p3, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "Surface changed to width "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, " height "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "AGORA_SDK"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 43
    .line 44
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-wide v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v2, v3, p2, p3}, Lio/agora/rtc/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    .line 52
    move-result p2

    .line 53
    .line 54
    if-nez p2, :cond_0

    .line 55
    .line 56
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_0
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :catch_0
    :try_start_1
    const-string p1, "Exception occurs when create RtcEngine"

    .line 68
    .line 69
    .line 70
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :goto_1
    return-void

    .line 73
    .line 74
    :goto_2
    iget-object p2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    throw p1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gl",
            "config"
        }
    .end annotation

    return-void
.end method

.method public releaseOpenGLResource()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lio/agora/rtc/video/ViEAndroidGLES20$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lio/agora/rtc/video/ViEAndroidGLES20$1;-><init>(Lio/agora/rtc/video/ViEAndroidGLES20;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    .line 17
    return-void
.end method
