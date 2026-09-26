.class public Lcom/narvii/model/Media;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaSelectItem;
.implements Lcom/narvii/util/LenientObject;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    using = Lcom/narvii/model/Media$MediaDeserializer;
.end annotation

.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    using = Lcom/narvii/model/Media$MediaSerializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/Media$MediaSerializer;,
        Lcom/narvii/model/Media$MediaDeserializer;
    }
.end annotation


# static fields
.field public static final TYPE_AUDIO:I = 0x6e

.field public static final TYPE_AUDIO_IN_PICKER:I = 0x6e

.field public static final TYPE_IMAGE:I = 0x64

.field public static final TYPE_INTER_VIDEO:I = 0x7b

.field public static final TYPE_MUSIC:I = 0x65

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_STICKER:I = 0x71

.field public static final TYPE_VIDEO:I = 0x66

.field public static final TYPE_YOUTUBE:I = 0x67


# instance fields
.field public author:Ljava/lang/String;

.field public caption:Ljava/lang/String;

.field public coverImage:Ljava/lang/String;

.field private downloadProgress:I

.field public duration:J

.field public fileName:Ljava/lang/String;

.field public height:I

.field public refId:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static hasVideo(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/narvii/model/Media;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/model/Media;

    .line 27
    .line 28
    iget v1, v1, Lcom/narvii/model/Media;->type:I

    .line 29
    .line 30
    const/16 v2, 0x66

    .line 31
    .line 32
    if-eq v1, v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x7b

    .line 35
    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    :cond_2
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public checkEqual(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/model/Media;->isNormalPartEqual(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x2

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/model/Media;->checkLenientPart(Ljava/lang/Object;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public checkLenientPart(Ljava/lang/Object;)I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-ne p1, p0, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Media;

    .line 11
    .line 12
    if-eqz v2, :cond_4

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/model/Media;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    move-result p1

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    return v0

    .line 61
    :cond_2
    const/4 p1, 0x1

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    return p1

    .line 73
    :cond_3
    return v1

    .line 74
    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/model/Media;->checkEqual(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public getDownloadProgress()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/Media;->downloadProgress:I

    return v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectMedia()Lcom/narvii/model/Media;
    .locals 0

    return-object p0
.end method

.method public getUniqueKey()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public isImage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/Media;->type:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNormalPartEqual(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, p0, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Media;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/model/Media;

    .line 15
    .line 16
    iget v2, p1, Lcom/narvii/model/Media;->type:I

    .line 17
    .line 18
    iget v3, p0, Lcom/narvii/model/Media;->type:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_2

    .line 21
    .line 22
    iget-object v2, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    move v0, v1

    .line 52
    :cond_2
    return v0
.end method

.method public isVideo()Z
    .locals 2

    iget v0, p0, Lcom/narvii/model/Media;->type:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setDownloadProgress(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/model/Media;->downloadProgress:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
