.class public final Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo$Companion;
.super Ljava/lang/Object;
.source "VideoFrameReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getACCEPT_KEY_FRAME_IN_RANGE()Z
    .locals 1

    .line 269
    invoke-static {}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->access$getACCEPT_KEY_FRAME_IN_RANGE$cp()Z

    move-result v0

    return v0
.end method

.method public final getKEY_FRAME_ONLY()Z
    .locals 1

    .line 268
    invoke-static {}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->access$getKEY_FRAME_ONLY$cp()Z

    move-result v0

    return v0
.end method

.method public final setACCEPT_KEY_FRAME_IN_RANGE(Z)V
    .locals 0

    .line 269
    invoke-static {p1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->access$setACCEPT_KEY_FRAME_IN_RANGE$cp(Z)V

    return-void
.end method

.method public final setKEY_FRAME_ONLY(Z)V
    .locals 0

    .line 268
    invoke-static {p1}, Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameRangeInfo;->access$setKEY_FRAME_ONLY$cp(Z)V

    return-void
.end method
