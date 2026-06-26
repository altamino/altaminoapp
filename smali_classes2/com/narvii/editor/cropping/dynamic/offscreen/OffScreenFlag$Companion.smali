.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;
.super Ljava/lang/Object;
.source "OffScreenFlag.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStopRenderThread()Z
    .locals 1

    .line 6
    invoke-static {}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->access$getStopRenderThread$cp()Z

    move-result v0

    return v0
.end method

.method public final setStopRenderThread(Z)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->access$setStopRenderThread$cp(Z)V

    return-void
.end method
