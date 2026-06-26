.class Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

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

    .line 1133
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 1129
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 1134
    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/chat/video/CameraRenderer;

    return-void
.end method

.method private checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 1

    .line 1162
    :goto_0
    invoke-interface {p2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const-string v0, "before createContext"

    .line 1138
    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1139
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 1143
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/chat/video/CameraRenderer;

    iget-object v2, v1, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_0

    .line 1144
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    iput-object p2, v1, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1146
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/chat/video/CameraRenderer;

    iget-object v2, p2, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_0
    const-string p2, "after createContext"

    .line 1150
    invoke-direct {p0, p2, p1}, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-object v2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/chat/video/CameraRenderer;

    iget-object v0, v0, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_0

    .line 1156
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_0
    return-void
.end method
