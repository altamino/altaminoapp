.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "FrameCallback.kt"


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

    const-string p0, "FrameCallback"

    const-string v0, "decodeFrameBegin"

    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static decodeFrameEnd(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V
    .locals 1

    const-string p0, "FrameCallback"

    const-string v0, "decodeFrameEnd"

    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static decodeOneFrame(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;J)V
    .locals 0

    return-void
.end method
