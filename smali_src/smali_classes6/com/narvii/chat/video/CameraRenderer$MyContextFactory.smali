.class Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/CameraRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field private mRenderer:Lcom/narvii/chat/video/CameraRenderer;

.field final synthetic this$0:Lcom/narvii/chat/video/CameraRenderer;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/chat/video/CameraRenderer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    const/16 p1, 0x3098

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 12
    return-void
.end method

.method private checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-interface {p2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const/16 v0, 0x3000

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .line 1
    .line 2
    const-string v0, "before createContext"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    const/16 v2, 0x3038

    .line 11
    .line 12
    .line 13
    filled-new-array {v0, v1, v2}, [I

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iput-object p2, v1, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 31
    .line 32
    iget-object v2, p2, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 33
    .line 34
    :cond_0
    const-string p2, "after createContext"

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p2, p1}, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 38
    return-object v2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 10
    :cond_0
    return-void
.end method
