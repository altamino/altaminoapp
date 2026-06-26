.class public Lcom/narvii/media/online/audio/model/Sound;
.super Lcom/narvii/model/NVObject;
.source "Sound.java"


# static fields
.field public static final SOUND_TYPE_MUSIC:I = 0x1

.field public static final SOUND_TYPE_SFX:I = 0x2


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public duration:F

.field public fileSizeInByte:I

.field public fileType:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public mediaType:I

.field public mediaUrl:Ljava/lang/String;

.field public status:I

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public thumbnailUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 96
    instance-of v0, p1, Lcom/narvii/media/online/audio/model/Sound;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/media/online/audio/model/Sound;

    iget-object p1, p1, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDurationInMs()J
    .locals 2

    .line 91
    iget v0, p0, Lcom/narvii/media/online/audio/model/Sound;->duration:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getMedia()Lcom/narvii/model/Media;
    .locals 3

    .line 80
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 81
    iget v1, p0, Lcom/narvii/media/online/audio/model/Sound;->mediaType:I

    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 82
    iget-object v1, p0, Lcom/narvii/media/online/audio/model/Sound;->mediaUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/narvii/media/online/audio/model/Sound;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/narvii/media/online/audio/model/Sound;->getDurationInMs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/narvii/model/Media;->duration:J

    .line 86
    iget-object v1, p0, Lcom/narvii/media/online/audio/model/Sound;->artist:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/Sound;->mediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTagStr()Ljava/lang/String;
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/Sound;->tags:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/narvii/media/online/audio/model/Sound;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ", "

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/narvii/media/online/audio/model/Sound;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
