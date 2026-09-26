.class public Lio/agora/rtc/video/VideoEncoderConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;,
        Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;,
        Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;,
        Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;
    }
.end annotation


# static fields
.field public static final COMPATIBLE_BITRATE:I = -0x1

.field public static final DEFAULT_MIN_BITRATE:I = -0x1

.field public static final DEFAULT_MIN_FRAMERATE:I = -0x1

.field public static final STANDARD_BITRATE:I

.field public static final VD_120x120:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_1280x720:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_160x120:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_180x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_240x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_240x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_320x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_320x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_360x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_424x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_480x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_480x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_640x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_640x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_840x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_960x720:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;


# instance fields
.field public bitrate:I

.field public degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

.field public dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public frameRate:I

.field public minBitrate:I

.field public minFrameRate:I

.field public mirrorMode:I

.field public orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 3
    .line 4
    const/16 v1, 0x78

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 8
    .line 9
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_120x120:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 10
    .line 11
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 12
    .line 13
    const/16 v2, 0xa0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 17
    .line 18
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_160x120:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 19
    .line 20
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 21
    .line 22
    const/16 v1, 0xb4

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 26
    .line 27
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_180x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 28
    .line 29
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 30
    .line 31
    const/16 v2, 0xf0

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 35
    .line 36
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_240x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 37
    .line 38
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 39
    .line 40
    const/16 v3, 0x140

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v3, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 44
    .line 45
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_320x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 46
    .line 47
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v2, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 51
    .line 52
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_240x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 53
    .line 54
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v3, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 58
    .line 59
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_320x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 60
    .line 61
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 62
    .line 63
    const/16 v1, 0x1a8

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 67
    .line 68
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_424x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 69
    .line 70
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 71
    .line 72
    const/16 v1, 0x168

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 76
    .line 77
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_360x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 78
    .line 79
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 80
    .line 81
    const/16 v2, 0x1e0

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v2, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 85
    .line 86
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_480x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 87
    .line 88
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 89
    .line 90
    const/16 v3, 0x280

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v3, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 94
    .line 95
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_640x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 96
    .line 97
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v2, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 101
    .line 102
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_480x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 103
    .line 104
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v3, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 108
    .line 109
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_640x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 110
    .line 111
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 112
    .line 113
    const/16 v1, 0x348

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 117
    .line 118
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_840x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 119
    .line 120
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 121
    .line 122
    const/16 v1, 0x3c0

    .line 123
    .line 124
    const/16 v2, 0x2d0

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 128
    .line 129
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_960x720:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 130
    .line 131
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 132
    .line 133
    const/16 v1, 0x500

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    .line 137
    .line 138
    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_1280x720:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 3
    sget-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_15:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    invoke-virtual {v0}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->getValue()I

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->frameRate:I

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minFrameRate:I

    const/4 v1, 0x0

    iput v1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->bitrate:I

    iput v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minBitrate:I

    .line 4
    sget-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;->ORIENTATION_MODE_ADAPTIVE:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    iput-object v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    .line 5
    sget-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;->MAINTAIN_QUALITY:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    iput-object v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    iput v1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(IILio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;ILio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "frameRate",
            "bitrate",
            "orientationMode"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    invoke-direct {v0, p1, p2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 11
    invoke-virtual {p3}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->getValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->frameRate:I

    const/4 p1, -0x1

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minFrameRate:I

    iput p4, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->bitrate:I

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minBitrate:I

    iput-object p5, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    .line 12
    sget-object p1, Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;->MAINTAIN_QUALITY:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    iput-object p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    const/4 p1, 0x0

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;ILio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimensions",
            "frameRate",
            "bitrate",
            "orientationMode"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 7
    invoke-virtual {p2}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->getValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->frameRate:I

    const/4 p1, -0x1

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minFrameRate:I

    iput p3, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->bitrate:I

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minBitrate:I

    iput-object p4, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    .line 8
    sget-object p1, Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;->MAINTAIN_QUALITY:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    iput-object p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    const/4 p1, 0x0

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->mirrorMode:I

    return-void
.end method
