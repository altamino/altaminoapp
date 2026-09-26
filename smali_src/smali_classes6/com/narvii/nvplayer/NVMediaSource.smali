.class public Lcom/narvii/nvplayer/NVMediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public areaName:Ljava/lang/String;

.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/app/NVContext;",
            ">;"
        }
    .end annotation
.end field

.field public loadLowResVideo:Z

.field public loop:Z

.field public mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public notCache:Z

.field private nvObject:Lcom/narvii/model/NVObject;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public pollOrQuiz:Z

.field public videoSupportLowRes:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->notCache:Z

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    .line 12
    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/nvplayer/NVMediaSource;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v1, p0, Lcom/narvii/nvplayer/NVMediaSource;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->contextWeakReference:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/narvii/nvplayer/NVMediaSource;->nvObject:Lcom/narvii/model/NVObject;

    .line 4
    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->nvObject:Lcom/narvii/model/NVObject;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/nvplayer/NVMediaSource;->clone()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v0

    return-object v0
.end method

.method public containValidVideo()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/model/Media;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_2
    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    instance-of v2, p1, Lcom/narvii/nvplayer/NVMediaSource;

    .line 11
    .line 12
    if-eqz v2, :cond_8

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/nvplayer/NVMediaSource;

    .line 17
    .line 18
    iget-boolean v3, p1, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    .line 19
    .line 20
    if-eq v2, v3, :cond_2

    .line 21
    return v0

    .line 22
    .line 23
    :cond_2
    iget-boolean v2, p0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    .line 24
    .line 25
    iget-boolean v3, p1, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    .line 26
    .line 27
    if-eq v2, v3, :cond_3

    .line 28
    return v0

    .line 29
    .line 30
    :cond_3
    iget-object p1, p1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    move-result v2

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 37
    .line 38
    if-nez v3, :cond_4

    .line 39
    move v3, v0

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 44
    move-result v3

    .line 45
    .line 46
    :goto_0
    if-eq v3, v2, :cond_5

    .line 47
    return v0

    .line 48
    :cond_5
    move v3, v0

    .line 49
    .line 50
    :goto_1
    if-ge v3, v2, :cond_7

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    check-cast v4, Lcom/narvii/model/Media;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    check-cast v5, Lcom/narvii/model/Media;

    .line 67
    .line 68
    iget-object v5, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v4

    .line 73
    .line 74
    if-nez v4, :cond_6

    .line 75
    return v0

    .line 76
    .line 77
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_7
    return v1

    .line 80
    :cond_8
    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/Media;

    .line 21
    return-object v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getLowResVideoUrl(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    if-ltz p1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-ge p1, v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/model/Media;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getNVContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public getNotCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->notCache:Z

    return v0
.end method

.method public getNvObject()Lcom/narvii/model/NVObject;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->nvObject:Lcom/narvii/model/NVObject;

    return-object v0
.end method

.method public getVideoUrlWithRes(IZ)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/nvplayer/NVMediaSource;->getLowResVideoUrl(I)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-object p2, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/model/Media;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 29
    return-object p1

    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public isLoadLowResVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->loadLowResVideo:Z

    return v0
.end method

.method public isLoop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    return v0
.end method

.method public isPollOrQuiz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    return v0
.end method

.method public isVideoSupportLowRes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->videoSupportLowRes:Z

    return v0
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->areaName:Ljava/lang/String;

    return-void
.end method

.method public setLoadLowResVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->loadLowResVideo:Z

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    return-void
.end method

.method public setNVContext(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public setNotCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->notCache:Z

    return-void
.end method

.method public setNvObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->nvObject:Lcom/narvii/model/NVObject;

    return-void
.end method

.method public setPollOrQuiz(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    return-void
.end method

.method public setVideoSupportLowRes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->videoSupportLowRes:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/model/Media;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v2, "["

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "]"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
