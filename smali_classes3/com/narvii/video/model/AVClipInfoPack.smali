.class public Lcom/narvii/video/model/AVClipInfoPack;
.super Lcom/narvii/video/model/BaseClipInfoPack;
.source "AVClipInfoPack.java"

# interfaces
.implements Lcom/narvii/video/interfaces/IAVClipInfoPack;


# instance fields
.field public author:Ljava/lang/String;

.field public bitRate:I

.field public categoryId:Ljava/lang/String;

.field public croppingData:Lcom/narvii/cropping/CroppingData;

.field public fadeIn:Z

.field public fadeOut:Z

.field public fileName:Ljava/lang/String;

.field public frameRate:I

.field public hasAudioTrack:Z

.field public hasVideoTrack:Z

.field public inputPath:Ljava/lang/String;

.field public isSfx:Z

.field public musicId:Ljava/lang/String;

.field public musicType:I

.field public originalInputPath:Ljava/lang/String;

.field public previewStartInMs:I

.field public rawVideoHeight:I

.field public rawVideoWidth:I

.field public speed:D

.field public streamInfo:Lcom/narvii/video/model/StreamInfo;

.field public targetRectInfo:[F

.field public trackVolume:F

.field public trimEndInMs:I

.field public trimStartInMs:I

.field public videoSource:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/narvii/video/model/BaseClipInfoPack;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 37
    iput-wide v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 42
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public clipLength()I
    .locals 4

    .line 100
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 2

    .line 222
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-class v1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_18

    .line 231
    const-class v2, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 233
    :cond_1
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 234
    iget-object v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 235
    :cond_3
    iget v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    iget v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    if-eq v2, v3, :cond_4

    return v1

    .line 236
    :cond_4
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 237
    :cond_5
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 238
    :cond_6
    iget v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-eq v2, v3, :cond_7

    return v1

    .line 239
    :cond_7
    iget v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    iget v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    if-eq v2, v3, :cond_8

    return v1

    .line 240
    :cond_8
    iget v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    iget v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    if-eq v2, v3, :cond_9

    return v1

    .line 241
    :cond_9
    iget v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    if-eq v2, v3, :cond_a

    return v1

    .line 242
    :cond_a
    iget v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    if-eq v2, v3, :cond_b

    return v1

    .line 243
    :cond_b
    iget v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    if-eq v2, v3, :cond_c

    return v1

    .line 244
    :cond_c
    iget v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    iget v3, p0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_d

    return v1

    .line 245
    :cond_d
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    if-eq v2, v3, :cond_e

    return v1

    .line 246
    :cond_e
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    if-eq v2, v3, :cond_f

    return v1

    .line 247
    :cond_f
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    if-eq v2, v3, :cond_10

    return v1

    .line 248
    :cond_10
    iget-object v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_1

    :cond_11
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v2, :cond_12

    :goto_1
    return v1

    .line 250
    :cond_12
    iget-object v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_2

    :cond_13
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    if-eqz v2, :cond_14

    :goto_2
    return v1

    .line 251
    :cond_14
    iget-wide v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    iget-wide v4, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_15

    return v1

    .line 252
    :cond_15
    iget-object v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_16
    if-nez p1, :cond_17

    goto :goto_3

    :cond_17
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_18
    :goto_4
    return v1
.end method

.method public fadeIn()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    return v0
.end method

.method public fadeOut()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    return v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-nez v0, :cond_0

    const-string v0, "assets:/bg_#000000.png"

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/cropping/CroppingData;->bgColor:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getBgColorContent()Ljava/lang/String;
    .locals 5

    .line 171
    invoke-virtual {p0}, Lcom/narvii/video/model/AVClipInfoPack;->getBgColor()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "#"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v3, v1, 0x7

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getClipInputName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/narvii/video/model/AVClipInfoPack;->getClipInputName(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClipInputName(Z)Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    return-object p1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 66
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    const-string v1, "."

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_1
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getInputFile()Ljava/io/File;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getRotateAngle()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/cropping/CroppingData;->rotateAngle:I

    :goto_0
    return v0
.end method

.method public getScale()F
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/cropping/CroppingData;->scale:F

    :goto_0
    return v0
.end method

.method public getStreamInfo()Lcom/narvii/video/model/StreamInfo;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    return-object v0
.end method

.method public getTrackContent()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    return-object v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    return-object v0

    .line 156
    :cond_2
    invoke-super {p0}, Lcom/narvii/video/model/BaseClipInfoPack;->getTrackContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransformX()F
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/cropping/CroppingData;->transformX:F

    :goto_0
    return v0
.end method

.method public getTransformY()F
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/cropping/CroppingData;->transformY:F

    :goto_0
    return v0
.end method

.method public hasInvisibleFrames()Z
    .locals 2

    .line 85
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    iget v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 257
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    mul-int/lit8 v0, v0, 0x1f

    .line 258
    iget-object v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 261
    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 262
    iget v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 263
    iget v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 264
    iget v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 265
    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 266
    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 267
    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-boolean v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-boolean v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-boolean v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-wide v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public inputPath()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    return-object v0
.end method

.method public isTrimSectionValid()Z
    .locals 2

    .line 75
    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public merge(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 203
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 204
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 205
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 206
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 207
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 208
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 209
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 211
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 212
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 213
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    .line 214
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 215
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    .line 216
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 217
    iget-wide v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    iput-wide v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    return-void
.end method

.method public replaceFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public speed()D
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    return-wide v0
.end method

.method public trimEndInMs()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    return v0
.end method

.method public trimStartInMs()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    return v0
.end method

.method public trimStartInMsWithSpeed()I
    .locals 4

    .line 104
    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public trimmedDurationInMs()I
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    :goto_0
    return v0
.end method

.method public trimmedDurationInMsWithSpeed()I
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    :goto_0
    int-to-double v0, v0

    iget-wide v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method
