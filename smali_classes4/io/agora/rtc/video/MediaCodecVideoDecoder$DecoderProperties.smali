.class Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecoderProperties"
.end annotation


# instance fields
.field public final codecName:Ljava/lang/String;

.field public final colorFormat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;->codecName:Ljava/lang/String;

    .line 190
    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    return-void
.end method
