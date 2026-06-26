.class public Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;
.super Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;
.source "OffscreenSurface.java"


# direct methods
.method public constructor <init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->createOffscreenSurface(II)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->releaseEglSurface()V

    return-void
.end method
