.class Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChipProperties"
.end annotation


# instance fields
.field public baseFrameRate:I

.field public bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public chipName:Ljava/lang/String;

.field public highProfileMinSdkVersion:I

.field public initFrameRate:I

.field public isNeedResetWhenDownBps:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "chipName",
            "bitrateAdjustmentType",
            "isNeedResetWhenDownBps",
            "baseFrameRate",
            "initFrameRate",
            "highProfileMinSdkVersion"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->chipName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 8
    .line 9
    iput-boolean p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->isNeedResetWhenDownBps:Z

    .line 10
    .line 11
    iput p4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->baseFrameRate:I

    .line 12
    .line 13
    iput p5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->initFrameRate:I

    .line 14
    .line 15
    iput p6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->highProfileMinSdkVersion:I

    .line 16
    return-void
.end method
