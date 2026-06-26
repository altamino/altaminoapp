.class public final enum Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;
.super Ljava/lang/Enum;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

.field public static final enum VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

.field public static final enum VIDEO_CODEC_VP8:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

.field public static final enum VIDEO_CODEC_VP9:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    const/4 v1, 0x0

    const-string v2, "VIDEO_CODEC_VP8"

    invoke-direct {v0, v2, v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP8:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 60
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    const/4 v2, 0x1

    const-string v3, "VIDEO_CODEC_VP9"

    invoke-direct {v0, v3, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP9:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 61
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    const/4 v3, 0x2

    const-string v4, "VIDEO_CODEC_H264"

    invoke-direct {v0, v4, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 58
    sget-object v4, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP8:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    aput-object v4, v0, v1

    sget-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP9:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    aput-object v1, v0, v2

    sget-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    aput-object v1, v0, v3

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->$VALUES:[Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;
    .locals 1

    .line 58
    const-class v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;
    .locals 1

    .line 58
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->$VALUES:[Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    invoke-virtual {v0}, [Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    return-object v0
.end method
