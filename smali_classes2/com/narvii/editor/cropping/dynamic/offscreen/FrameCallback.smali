.class public interface abstract Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
.super Ljava/lang/Object;
.source "FrameCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$DefaultImpls;,
        Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$Companion;

.field public static final TAG:Ljava/lang/String; = "FrameCallback"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$Companion;->$$INSTANCE:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$Companion;

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract decodeFrameBegin()V
.end method

.method public abstract decodeFrameEnd()V
.end method

.method public abstract decodeOneFrame(J)V
.end method
