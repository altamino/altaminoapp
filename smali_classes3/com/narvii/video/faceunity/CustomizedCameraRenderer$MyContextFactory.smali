.class Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;
.super Ljava/lang/Object;
.source "CustomizedCameraRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/faceunity/CustomizedCameraRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyContextFactory"
.end annotation


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I = 0x3098


# instance fields
.field private mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyContextFactory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizedRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 4

    .line 80
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 81
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%s: EGL error: 0x%x"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizedRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizedRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "before createContext"

    .line 55
    invoke-static {v0, p1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 56
    sget v1, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 60
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    invoke-static {v1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$002(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 63
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    invoke-static {p2}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    goto :goto_0

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    invoke-static {p2}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p2

    :goto_0
    const-string p3, "after createContext"

    .line 67
    invoke-static {p3, p1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-object p2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    invoke-static {v1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizedRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    invoke-static {v0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_0
    return-void
.end method
