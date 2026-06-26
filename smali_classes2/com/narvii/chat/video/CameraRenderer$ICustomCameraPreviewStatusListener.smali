.class public interface abstract Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;
.super Ljava/lang/Object;
.source "CameraRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/CameraRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICustomCameraPreviewStatusListener"
.end annotation


# virtual methods
.method public abstract onEglContextReady(Ljavax/microedition/khronos/egl/EGLContext;)V
.end method

.method public abstract onFrameAvailable(ILjavax/microedition/khronos/egl/EGLContext;III)V
.end method

.method public abstract onInitResourceFail()V
.end method

.method public abstract onPreDraw()V
.end method

.method public abstract onTrackStatusChange(I)V
.end method
