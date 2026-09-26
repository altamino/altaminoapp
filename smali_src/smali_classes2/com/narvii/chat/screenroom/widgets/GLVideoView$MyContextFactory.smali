.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field private mRenderer:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    const/16 p1, 0x3098

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->mRenderer:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

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
    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

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
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->mRenderer:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->a(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->mRenderer:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 25
    .line 26
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->b(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->mRenderer:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->a(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 39
    move-result-object p2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->mRenderer:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->a(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    :goto_0
    const-string p3, "after createContext"

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p3, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 52
    return-object p2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MyContextFactory;->mRenderer:Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->a(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 12
    :cond_0
    return-void
.end method
