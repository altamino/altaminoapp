.class public interface abstract Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$Companion;,
        Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "FrameCallback"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
