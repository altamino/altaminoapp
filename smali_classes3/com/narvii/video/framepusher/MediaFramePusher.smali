.class public interface abstract Lcom/narvii/video/framepusher/MediaFramePusher;
.super Ljava/lang/Object;
.source "MediaFramePusher.java"


# static fields
.field public static final TEXTURE_TYPE_2D:I = 0x0

.field public static final TEXTURE_TYPE_OES:I = 0x1


# virtual methods
.method public abstract pushAudioFrame([B)V
.end method

.method public abstract pushVideoFrame(Ljavax/microedition/khronos/egl/EGLContext;IIII[F)V
.end method

.method public abstract pushVideoFrame([BIII)V
.end method
