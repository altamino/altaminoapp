.class public Lcom/narvii/media/online/audio/model/Sound;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/media/online/audio/model/Sound;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/media/online/audio/model/Sound;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public getDurationInMs()J
    .locals 2

    iget v0, p0, Lcom/narvii/media/online/audio/model/Sound;->duration:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getMedia()Lcom/narvii/model/Media;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Media;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/media/online/audio/model/Sound;->mediaType:I

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/media/online/audio/model/Sound;->mediaUrl:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/media/online/audio/model/Sound;->title:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/media/online/audio/model/Sound;->getDurationInMs()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    iput-wide v1, v0, Lcom/narvii/model/Media;->duration:J

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/media/online/audio/model/Sound;->artist:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 28
    return-object v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/media/online/audio/model/Sound;->mediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTagStr()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/Sound;->tags:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/media/online/audio/model/Sound;->tags:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, ", "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 51
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

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

    iget v0, p0, Lcom/narvii/media/online/audio/model/Sound;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
