.class public Lcom/narvii/video/model/AVClipInfoPack;
.super Lcom/narvii/video/model/BaseClipInfoPack;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/model/BaseClipInfoPack;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 14
    .line 15
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 18
    const/4 v0, 0x4

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
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

    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_18

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_1
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iget-object v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    iget-object v2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    :goto_0
    return v1

    .line 40
    .line 41
    :cond_3
    iget v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    .line 42
    .line 43
    iget v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    .line 44
    .line 45
    if-eq v2, v3, :cond_4

    .line 46
    return v1

    .line 47
    .line 48
    :cond_4
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 51
    .line 52
    if-eq v2, v3, :cond_5

    .line 53
    return v1

    .line 54
    .line 55
    :cond_5
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    .line 56
    .line 57
    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    .line 58
    .line 59
    if-eq v2, v3, :cond_6

    .line 60
    return v1

    .line 61
    .line 62
    :cond_6
    iget v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 63
    .line 64
    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 65
    .line 66
    if-eq v2, v3, :cond_7

    .line 67
    return v1

    .line 68
    .line 69
    :cond_7
    iget v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 70
    .line 71
    iget v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 72
    .line 73
    if-eq v2, v3, :cond_8

    .line 74
    return v1

    .line 75
    .line 76
    :cond_8
    iget v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 77
    .line 78
    iget v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 79
    .line 80
    if-eq v2, v3, :cond_9

    .line 81
    return v1

    .line 82
    .line 83
    :cond_9
    iget v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 84
    .line 85
    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 86
    .line 87
    if-eq v2, v3, :cond_a

    .line 88
    return v1

    .line 89
    .line 90
    :cond_a
    iget v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 91
    .line 92
    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 93
    .line 94
    if-eq v2, v3, :cond_b

    .line 95
    return v1

    .line 96
    .line 97
    :cond_b
    iget v2, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 98
    .line 99
    iget v3, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 100
    .line 101
    if-eq v2, v3, :cond_c

    .line 102
    return v1

    .line 103
    .line 104
    :cond_c
    iget v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 105
    .line 106
    iget v3, p0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 110
    move-result v2

    .line 111
    .line 112
    if-eqz v2, :cond_d

    .line 113
    return v1

    .line 114
    .line 115
    :cond_d
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 116
    .line 117
    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 118
    .line 119
    if-eq v2, v3, :cond_e

    .line 120
    return v1

    .line 121
    .line 122
    :cond_e
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 123
    .line 124
    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 125
    .line 126
    if-eq v2, v3, :cond_f

    .line 127
    return v1

    .line 128
    .line 129
    :cond_f
    iget-boolean v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 130
    .line 131
    iget-boolean v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 132
    .line 133
    if-eq v2, v3, :cond_10

    .line 134
    return v1

    .line 135
    .line 136
    :cond_10
    iget-object v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v2, :cond_11

    .line 139
    .line 140
    iget-object v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v2

    .line 145
    .line 146
    if-nez v2, :cond_12

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_11
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 150
    .line 151
    if-eqz v2, :cond_12

    .line 152
    :goto_1
    return v1

    .line 153
    .line 154
    :cond_12
    iget-object v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v2, :cond_13

    .line 157
    .line 158
    iget-object v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v2

    .line 163
    .line 164
    if-nez v2, :cond_14

    .line 165
    goto :goto_2

    .line 166
    .line 167
    :cond_13
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v2, :cond_14

    .line 170
    :goto_2
    return v1

    .line 171
    .line 172
    :cond_14
    iget-wide v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 173
    .line 174
    iget-wide v4, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 175
    .line 176
    .line 177
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 178
    move-result v2

    .line 179
    .line 180
    if-eqz v2, :cond_15

    .line 181
    return v1

    .line 182
    .line 183
    :cond_15
    iget-object v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 184
    .line 185
    iget-object p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 186
    .line 187
    if-eqz v2, :cond_16

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v0

    .line 192
    goto :goto_3

    .line 193
    .line 194
    :cond_16
    if-nez p1, :cond_17

    .line 195
    goto :goto_3

    .line 196
    :cond_17
    move v0, v1

    .line 197
    :goto_3
    return v0

    .line 198
    :cond_18
    :goto_4
    return v1
.end method

.method public fadeIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    return v0
.end method

.method public fadeOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    return v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "assets:/bg_#000000.png"

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, v0, Lcom/narvii/cropping/CroppingData;->bgColor:Ljava/lang/String;

    .line 10
    :goto_0
    return-object v0
.end method

.method public getBgColorContent()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/model/AVClipInfoPack;->getBgColor()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    return-object v2

    .line 13
    .line 14
    :cond_0
    const-string v1, "#"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ltz v1, :cond_2

    .line 21
    .line 22
    add-int/lit8 v3, v1, 0x7

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    move-result v4

    .line 27
    .line 28
    if-le v3, v4, :cond_1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_2
    :goto_0
    return-object v2
.end method

.method public getClipInputName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/video/model/AVClipInfoPack;->getClipInputName(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClipInputName(Z)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v1, "/"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    const-string v0, "."

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getInputFile()Ljava/io/File;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    :goto_0
    return-object v0
.end method

.method public getRotateAngle()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget v0, v0, Lcom/narvii/cropping/CroppingData;->rotateAngle:I

    .line 9
    :goto_0
    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget v0, v0, Lcom/narvii/cropping/CroppingData;->scale:F

    .line 10
    :goto_0
    return v0
.end method

.method public getStreamInfo()Lcom/narvii/video/model/StreamInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    return-object v0
.end method

.method public getTrackContent()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, " - "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 52
    return-object v0

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 63
    return-object v0

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-super {p0}, Lcom/narvii/video/model/BaseClipInfoPack;->getTrackContent()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public getTransformX()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget v0, v0, Lcom/narvii/cropping/CroppingData;->transformX:F

    .line 9
    :goto_0
    return v0
.end method

.method public getTransformY()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget v0, v0, Lcom/narvii/cropping/CroppingData;->transformY:F

    .line 9
    :goto_0
    return v0
.end method

.method public hasInvisibleFrames()Z
    .locals 2

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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v2

    .line 29
    :goto_1
    add-int/2addr v0, v1

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 34
    add-int/2addr v0, v1

    .line 35
    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 39
    add-int/2addr v0, v1

    .line 40
    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 44
    add-int/2addr v0, v1

    .line 45
    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 49
    add-int/2addr v0, v1

    .line 50
    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 54
    add-int/2addr v0, v1

    .line 55
    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 59
    const/4 v3, 0x0

    .line 60
    .line 61
    cmpl-float v3, v1, v3

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 67
    move-result v1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v1, v2

    .line 70
    :goto_2
    add-int/2addr v0, v1

    .line 71
    .line 72
    mul-int/lit8 v0, v0, 0x1f

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 80
    move-result v1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move v1, v2

    .line 83
    :goto_3
    add-int/2addr v0, v1

    .line 84
    .line 85
    mul-int/lit8 v0, v0, 0x1f

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 93
    move-result v2

    .line 94
    :cond_4
    add-int/2addr v0, v2

    .line 95
    .line 96
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 99
    add-int/2addr v0, v1

    .line 100
    .line 101
    mul-int/lit8 v0, v0, 0x1f

    .line 102
    .line 103
    iget-boolean v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 104
    add-int/2addr v0, v1

    .line 105
    .line 106
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 109
    add-int/2addr v0, v1

    .line 110
    .line 111
    mul-int/lit8 v0, v0, 0x1f

    .line 112
    .line 113
    iget-wide v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 117
    move-result-wide v1

    .line 118
    long-to-int v1, v1

    .line 119
    add-int/2addr v0, v1

    .line 120
    return v0
.end method

.method public inputPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    return-object v0
.end method

.method public isTrimSectionValid()Z
    .locals 2

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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 8
    .line 9
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 12
    .line 13
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 16
    .line 17
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 20
    .line 21
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 24
    .line 25
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 28
    .line 29
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 30
    .line 31
    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 32
    .line 33
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 40
    .line 41
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 44
    .line 45
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 48
    .line 49
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    .line 52
    .line 53
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 56
    .line 57
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    .line 58
    .line 59
    iput v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    .line 60
    .line 61
    iget-boolean v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 64
    .line 65
    iget-wide v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 66
    .line 67
    iput-wide v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 68
    return-void
.end method

.method public replaceFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 26
    :cond_1
    return-void
.end method

.method public speed()D
    .locals 2

    iget-wide v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    return-wide v0
.end method

.method public trimEndInMs()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    return v0
.end method

.method public trimStartInMs()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    return v0
.end method

.method public trimStartInMsWithSpeed()I
    .locals 4

    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public trimmedDurationInMs()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 11
    sub-int/2addr v0, v1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 15
    :goto_0
    return v0
.end method

.method public trimmedDurationInMsWithSpeed()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 11
    sub-int/2addr v0, v1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 15
    :goto_0
    int-to-double v0, v0

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 18
    div-double/2addr v0, v2

    .line 19
    double-to-int v0, v0

    .line 20
    return v0
.end method
