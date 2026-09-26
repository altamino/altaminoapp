.class public Lcom/narvii/model/MediaHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static getUrlsFromMediaList(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    new-array v1, v1, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-ge v0, v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/model/Media;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 31
    .line 32
    aput-object v2, v1, v0

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v1

    .line 37
    .line 38
    :cond_2
    :goto_1
    new-array p0, v0, [Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public static getVideoDurationsFromMediaList(Ljava/util/List;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)[F"
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
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    new-array v1, v1, [F

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-ge v0, v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/model/Media;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Lcom/narvii/model/Media;

    .line 41
    .line 42
    iget-wide v2, v2, Lcom/narvii/model/Media;->duration:J

    .line 43
    long-to-float v2, v2

    .line 44
    .line 45
    aput v2, v1, v0

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-object v1

    .line 50
    .line 51
    :cond_3
    :goto_1
    new-array p0, v0, [F

    .line 52
    return-object p0
.end method

.method public static getVideoUrlsFromMediaList(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)[",
            "Ljava/lang/String;"
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
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    new-array v1, v1, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-ge v0, v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/model/Media;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Lcom/narvii/model/Media;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 43
    .line 44
    aput-object v2, v1, v0

    .line 45
    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-object v1

    .line 49
    .line 50
    :cond_3
    :goto_1
    new-array p0, v0, [Ljava/lang/String;

    .line 51
    return-object p0
.end method
