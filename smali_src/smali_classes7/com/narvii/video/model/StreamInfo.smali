.class public Lcom/narvii/video/model/StreamInfo;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->bitrateInKbps:I

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->width:I

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->height:I

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->sampleRate:I

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->fps:I

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->frameCount:I

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput v1, p0, Lcom/narvii/video/model/StreamInfo;->dar:F

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    .line 29
    .line 30
    iput v0, p0, Lcom/narvii/video/model/StreamInfo;->rotate:I

    .line 31
    return-void
.end method


# virtual methods
.method public isACodecInWhiteList()Z
    .locals 6

    .line 1
    .line 2
    const-string v0, "h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp"

    .line 3
    .line 4
    const-string v1, ","

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-gtz v1, :cond_0

    .line 13
    return v2

    .line 14
    :cond_0
    array-length v1, v0

    .line 15
    move v3, v2

    .line 16
    .line 17
    :goto_0
    if-ge v3, v1, :cond_2

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    iget-object v5, p0, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    move-result v4

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v2
.end method

.method public isResolutionValid()Z
    .locals 2

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

    .line 1
    .line 2
    const-string v0, "h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp"

    .line 3
    .line 4
    const-string v1, ","

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-gtz v1, :cond_0

    .line 13
    return v2

    .line 14
    :cond_0
    array-length v1, v0

    .line 15
    move v3, v2

    .line 16
    .line 17
    :goto_0
    if-ge v3, v1, :cond_2

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    iget-object v5, p0, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    move-result v4

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v2
.end method

.method public setMediaDuration(I)V
    .locals 0

    .line 1
    .line 2
    div-int/lit8 p1, p1, 0x64

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x64

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 7
    return-void
.end method
