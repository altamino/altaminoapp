.class public interface abstract Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;
.super Ljava/lang/Object;
.source "GLVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaFrameAvailableListener"
.end annotation


# virtual methods
.method public abstract onAudioFrameAvailable([BIIII)V
.end method

.method public abstract onVideoFrameAvailable(IILjavax/microedition/khronos/egl/EGLContext;II[F)V
.end method
