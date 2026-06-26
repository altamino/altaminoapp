.class public Lcom/narvii/video/model/StreamInfo;
.super Ljava/lang/Object;
.source "StreamInfo.java"


# instance fields
.field public aCodecType:Ljava/lang/String;

.field public bitrateInKbps:I

.field public dar:F

.field public durationInMs:I

.field public fps:I

.field public frameCount:I

.field public hasError:Z

.field public height:I

.field public rotate:I

.field public sampleRate:I

.field public vCodecType:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 7
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->bitrateInKbps:I

    .line 8
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->width:I

    .line 9
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->height:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 12
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->sampleRate:I

    .line 13
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->fps:I

    .line 14
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->frameCount:I

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/narvii/video/model/StreamInfo;->dar:F

    .line 16
    iput-boolean v0, p0, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    .line 17
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->rotate:I

    return-void
.end method


# virtual methods
.method public isACodecInWhiteList()Z
    .locals 6

    const-string v0, "h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp"

    const-string v1, ","

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    array-length v1, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    .line 24
    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 25
    iget-object v5, p0, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isResolutionValid()Z
    .locals 2

    .line 46
    iget v0, p0, Lcom/narvii/video/model/StreamInfo;->width:I

    const/16 v1, 0xa00

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/narvii/video/model/StreamInfo;->height:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVCodecInWhiteList()Z
    .locals 6

    const-string v0, "h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp"

    const-string v1, ","

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    array-length v1, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    .line 37
    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 38
    iget-object v5, p0, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public setMediaDuration(I)V
    .locals 0

    .line 50
    div-int/lit8 p1, p1, 0x64

    mul-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    return-void
.end method
