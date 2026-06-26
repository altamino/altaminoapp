.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;
.super Ljava/lang/Object;
.source "OffScreenFlag.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

.field private static stopRenderThread:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getStopRenderThread$cp()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->stopRenderThread:Z

    return v0
.end method

.method public static final synthetic access$setStopRenderThread$cp(Z)V
    .locals 0

    .line 3
    sput-boolean p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->stopRenderThread:Z

    return-void
.end method
