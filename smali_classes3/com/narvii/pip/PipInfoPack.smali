.class public Lcom/narvii/pip/PipInfoPack;
.super Lcom/narvii/video/model/BaseAttachmentInfoPack;
.source "PipInfoPack.java"

# interfaces
.implements Lcom/narvii/video/interfaces/IAVClipInfoPack;


# static fields
.field public static final PIP_VIDEO_DEFAULT_SCALE:F = 0.5f

.field public static final PIP_VIDEO_MAX_SCALE:F = 1.5f


# instance fields
.field public fadeIn:Z

.field public fadeOut:Z

.field public inputPath:Ljava/lang/String;

.field public mute:Z

.field public streamInfo:Lcom/narvii/video/model/StreamInfo;

.field public trimEndInMs:I

.field public trimStartInMs:I

.field public vertexCoord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public videoHeight:I

.field public videoWidth:I

.field public volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/narvii/video/model/BaseAttachmentInfoPack;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    .line 25
    iput v0, p0, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/narvii/pip/PipInfoPack;->volume:F

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 34
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 35
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    return-void
.end method


# virtual methods
.method public copy()Lcom/narvii/pip/PipInfoPack;
    .locals 2

    .line 113
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/pip/PipInfoPack;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/narvii/pip/PipInfoPack;->copy()Lcom/narvii/pip/PipInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/narvii/pip/PipInfoPack;->copy()Lcom/narvii/pip/PipInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public fadeIn()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/narvii/pip/PipInfoPack;->fadeIn:Z

    return v0
.end method

.method public fadeOut()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/narvii/pip/PipInfoPack;->fadeOut:Z

    return v0
.end method

.method public getClipInputName(Z)Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    return-object p1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 46
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    const-string v1, "."

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getStreamInfo()Lcom/narvii/video/model/StreamInfo;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/narvii/pip/PipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    return-object v0
.end method

.method public hasInvisibleFrames()Z
    .locals 2

    .line 70
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

.method public inputPath()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    return-object v0
.end method

.method public isTrimSectionValid()Z
    .locals 2

    .line 55
    iget v0, p0, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    iget v1, p0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public speed()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public trimEndInMs()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    return v0
.end method

.method public trimStartInMs()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    return v0
.end method

.method public trimStartInMsWithSpeed()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    return v0
.end method

.method public trimmedDurationInMs()I
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/narvii/pip/PipInfoPack;->isTrimSectionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    iget v1, p0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    :goto_0
    return v0
.end method
