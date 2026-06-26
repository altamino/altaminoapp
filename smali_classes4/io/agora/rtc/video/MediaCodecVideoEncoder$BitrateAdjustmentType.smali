.class public final enum Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;
.super Ljava/lang/Enum;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BitrateAdjustmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public static final enum ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public static final enum DYNAMIC_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public static final enum FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public static final enum NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 388
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v1, 0x0

    const-string v2, "NO_ADJUSTMENT"

    invoke-direct {v0, v2, v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 392
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v2, 0x1

    const-string v3, "FRAMERATE_ADJUSTMENT"

    invoke-direct {v0, v3, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 394
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x2

    const-string v4, "ACTUAL_FRAMERATE_ADJUSTMENT"

    invoke-direct {v0, v4, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 397
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v4, 0x3

    const-string v5, "DYNAMIC_ADJUSTMENT"

    invoke-direct {v0, v5, v4}, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 386
    sget-object v5, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    aput-object v5, v0, v1

    sget-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    aput-object v1, v0, v2

    sget-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    aput-object v1, v0, v3

    sget-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    aput-object v1, v0, v4

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->$VALUES:[Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .locals 1

    .line 386
    const-class v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .locals 1

    .line 386
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->$VALUES:[Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-virtual {v0}, [Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    return-object v0
.end method
