.class public Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;
.super Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->createOffscreenSurface(II)V

    .line 7
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->releaseEglSurface()V

    .line 4
    return-void
.end method
