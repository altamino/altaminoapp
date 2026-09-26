.class Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    const-string v1, "MyContextFactory "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "CustomizedRenderer"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    .line 28
    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 4

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
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    aput-object p0, v2, v3

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const-string v0, "%s: EGL error: 0x%x"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "CustomizedRenderer"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "createContext "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "CustomizedRenderer"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    const-string v0, "before createContext"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 42
    .line 43
    sget v0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 44
    const/4 v1, 0x2

    .line 45
    .line 46
    const/16 v2, 0x3038

    .line 47
    .line 48
    .line 49
    filled-new-array {v0, v1, v2}, [I

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    .line 61
    .line 62
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-static {v1, p2}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$002(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 75
    move-result-object p2

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    :goto_0
    const-string p3, "after createContext"

    .line 85
    .line 86
    .line 87
    invoke-static {p3, p1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 88
    return-object p2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "destroyContext "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    const-string v1, "CustomizedRenderer"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;->mRenderer:Lcom/narvii/video/faceunity/CustomizedCameraRenderer;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 60
    :cond_0
    return-void
.end method
