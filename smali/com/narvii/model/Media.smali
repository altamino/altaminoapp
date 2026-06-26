.class public Lcom/narvii/model/Media;
.super Ljava/lang/Object;
.source "Media.java"

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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 247
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    .line 250
    iget v1, v1, Lcom/narvii/model/Media;->type:I

    const/16 v2, 0x66

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public checkEqual(Ljava/lang/Object;)I
    .locals 1

    .line 224
    invoke-virtual {p0, p1}, Lcom/narvii/model/Media;->isNormalPartEqual(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/model/Media;->checkLenientPart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public checkLenientPart(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x2

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 192
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Media;

    if-eqz v2, :cond_4

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    check-cast p1, Lcom/narvii/model/Media;

    iget-object v3, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object p1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->compareLenientObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return p1

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lcom/narvii/model/Media;->checkEqual(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDownloadProgress()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/narvii/model/Media;->downloadProgress:I

    return v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 1

    .line 62
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

    .line 176
    iget-object v0, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isImage()Z
    .locals 2

    .line 75
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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 212
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/Media;

    if-eqz v2, :cond_2

    .line 213
    check-cast p1, Lcom/narvii/model/Media;

    .line 214
    iget v2, p1, Lcom/narvii/model/Media;->type:I

    iget v3, p0, Lcom/narvii/model/Media;->type:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 215
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 216
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 217
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isVideo()Z
    .locals 2

    .line 71
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

    .line 239
    iput p1, p0, Lcom/narvii/model/Media;->downloadProgress:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
