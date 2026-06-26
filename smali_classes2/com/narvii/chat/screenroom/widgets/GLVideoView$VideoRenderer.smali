.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoRenderer"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

.field private mFramebuffer:I

.field private mOffscreenTexture:I

.field private offlineFrameRect:Lcom/narvii/video/gles/FullFrameRect;

.field private final sTMatrix:[F

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureId:I

.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

.field public volatile updateSurface:Z

.field private updateTexImageErrorReported:Z


# direct methods
.method public constructor <init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/content/Context;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 912
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->sTMatrix:[F

    const/4 p1, 0x0

    .line 914
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z

    .line 916
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateTexImageErrorReported:Z

    .line 1034
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 1035
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 919
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$2600(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 903
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method private prepareFramebuffer(II)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "prepareFramebuffer start"

    .line 1038
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 1043
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v4, "glGenTextures"

    .line 1044
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 1045
    iget v4, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 1046
    aget v5, v2, v3

    iput v5, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 1047
    iget v5, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    const/16 v6, 0xde1

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1048
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "glBindTexture "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    if-lez v4, :cond_0

    new-array v5, v1, [I

    aput v4, v5, v3

    .line 1053
    invoke-static {v1, v5, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v14, 0x1401

    const/4 v15, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 1057
    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v4, 0x2801

    const/high16 v5, 0x46180000    # 9728.0f

    .line 1062
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2800

    const v5, 0x46180400    # 9729.0f

    .line 1064
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2802

    const v5, 0x812f

    .line 1066
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 1068
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v4, "glTexParameter"

    .line 1070
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 1073
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const-string v4, "glGenFramebuffers"

    .line 1074
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 1075
    iget v4, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 1076
    aget v2, v2, v3

    iput v2, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    if-lez v4, :cond_1

    new-array v2, v1, [I

    aput v4, v2, v3

    .line 1080
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 1082
    :cond_1
    iget v1, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glBindFramebuffer "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const-string v1, "glFramebufferRenderbuffer"

    .line 1085
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v1, 0x8ce0

    .line 1086
    iget v4, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    invoke-static {v2, v1, v6, v4, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const-string v1, "glFramebufferTexture2D"

    .line 1088
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 1091
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v4, 0x8cd5

    if-eq v1, v4, :cond_2

    .line 1093
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Framebuffer not complete, status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GLVideoView"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_2
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v1, "prepareFramebuffer done"

    .line 1099
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    .line 967
    monitor-enter p0

    .line 968
    :try_start_0
    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 970
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    :try_start_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 973
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->sTMatrix:[F

    invoke-virtual {p1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 975
    :try_start_2
    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateTexImageErrorReported:Z

    if-nez v2, :cond_0

    const-string v2, "GLVideoView"

    .line 976
    invoke-static {v2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 977
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateTexImageErrorReported:Z

    .line 980
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z

    const/4 p1, 0x1

    goto :goto_1

    .line 982
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x4000

    .line 985
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 986
    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 989
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 990
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2500(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 991
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1600(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->prepareFramebuffer(II)V

    .line 992
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v2, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2502(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)Z

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 995
    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 996
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 998
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1600(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v2

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 999
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1000
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    iget v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->textureId:I

    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->sTMatrix:[F

    invoke-virtual {v0, v3, v4}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 1001
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1003
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->offlineFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    sget-object v2, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 1006
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    iget-object v1, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mediaFrameAvailableListener:Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 1007
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1008
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1600(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v5

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1700(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    move-result v6

    sget-object v7, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    .line 1007
    invoke-interface/range {v1 .. v7}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;->onVideoFrameAvailable(IILjavax/microedition/khronos/egl/EGLContext;II[F)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 989
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 1105
    :try_start_0
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPause()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1014
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1015
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1016
    iput-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1018
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1019
    invoke-virtual {v2, v4}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 1020
    iput-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 1022
    :cond_1
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    const/4 v3, -0x1

    if-lez v2, :cond_2

    aput v2, v1, v4

    .line 1024
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1025
    iput v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 1027
    :cond_2
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    if-lez v2, :cond_3

    aput v2, v1, v4

    .line 1029
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 1030
    iput v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    :cond_3
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 957
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1602(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 958
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1, p3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1702(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 960
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2502(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)Z

    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    monitor-enter p0

    .line 930
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    iget-boolean p1, p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceInited:Z

    if-nez p1, :cond_0

    .line 931
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    sget-object v0, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 932
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    sget-object v0, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->offlineFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 933
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    invoke-virtual {p1}, Lcom/narvii/video/gles/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->textureId:I

    .line 934
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->textureId:I

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 935
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 937
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surface:Landroid/view/Surface;

    .line 938
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 939
    :try_start_1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z

    .line 940
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    :try_start_2
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer$1;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 951
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceInited:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 940
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 953
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
