.class public Lcom/narvii/video/gles/WindowSurface;
.super Lcom/narvii/video/gles/EglSurfaceBase;
.source "SourceFile"


# instance fields
.field private mReleaseSurface:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/narvii/video/gles/EglCore;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/gles/EglSurfaceBase;-><init>(Lcom/narvii/video/gles/EglCore;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/narvii/video/gles/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/video/gles/EglCore;Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/video/gles/EglSurfaceBase;-><init>(Lcom/narvii/video/gles/EglCore;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/narvii/video/gles/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/video/gles/WindowSurface;->mSurface:Landroid/view/Surface;

    iput-boolean p3, p0, Lcom/narvii/video/gles/WindowSurface;->mReleaseSurface:Z

    return-void
.end method


# virtual methods
.method public recreate(Lcom/narvii/video/gles/EglCore;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/video/gles/EglSurfaceBase;->mEglCore:Lcom/narvii/video/gles/EglCore;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/video/gles/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v0, "not yet implemented for SurfaceTexture"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/gles/EglSurfaceBase;->releaseEglSurface()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/gles/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/video/gles/WindowSurface;->mReleaseSurface:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/gles/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 18
    :cond_1
    return-void
.end method
