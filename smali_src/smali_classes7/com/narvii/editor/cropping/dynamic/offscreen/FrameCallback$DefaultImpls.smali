.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static decodeFrameBegin(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V
    .locals 1
    .param p0    # Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p0, "FrameCallback"

    .line 3
    .line 4
    const-string v0, "decodeFrameBegin"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public static decodeFrameEnd(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V
    .locals 1
    .param p0    # Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p0, "FrameCallback"

    .line 3
    .line 4
    const-string v0, "decodeFrameEnd"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public static decodeOneFrame(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;J)V
    .locals 0
    .param p0    # Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
