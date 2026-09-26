.class public Lcom/narvii/pip/PipInfoPack;
.super Lcom/narvii/video/model/BaseAttachmentInfoPack;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/model/BaseAttachmentInfoPack;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/pip/PipInfoPack;->volume:F

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 20
    .line 21
    const/high16 v0, 0x3f000000    # 0.5f

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 26
    return-void
.end method


# virtual methods
.method public copy()Lcom/narvii/pip/PipInfoPack;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/pip/PipInfoPack;->copy()Lcom/narvii/pip/PipInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/pip/PipInfoPack;->copy()Lcom/narvii/pip/PipInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public fadeIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/pip/PipInfoPack;->fadeIn:Z

    return v0
.end method

.method public fadeOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/pip/PipInfoPack;->fadeOut:Z

    return v0
.end method

.method public getClipInputName(Z)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p1, "default"

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    array-length p1, v0

    .line 23
    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    aget-object p1, v0, p1

    .line 27
    .line 28
    const-string v0, "."

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    array-length p1, v0

    .line 40
    .line 41
    add-int/lit8 p1, p1, -0x1

    .line 42
    .line 43
    aget-object p1, v0, p1

    .line 44
    return-object p1
.end method

.method public getStreamInfo()Lcom/narvii/video/model/StreamInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/pip/PipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    return-object v0
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

.method public inputPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    return-object v0
.end method

.method public isTrimSectionValid()Z
    .locals 2

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

    iget v0, p0, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    return v0
.end method

.method public trimStartInMs()I
    .locals 1

    iget v0, p0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    return v0
.end method

.method public trimStartInMsWithSpeed()I
    .locals 1

    iget v0, p0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    return v0
.end method

.method public trimmedDurationInMs()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/pip/PipInfoPack;->isTrimSectionValid()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

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
