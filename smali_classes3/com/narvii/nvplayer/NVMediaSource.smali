.class public Lcom/narvii/nvplayer/NVMediaSource;
.super Ljava/lang/Object;
.source "NVMediaSource.java"


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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    .line 28
    iput-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->notCache:Z

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/nvplayer/NVMediaSource;
    .locals 2

    .line 181
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/nvplayer/NVMediaSource;

    .line 182
    iget-object v1, p0, Lcom/narvii/nvplayer/NVMediaSource;->contextWeakReference:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 183
    iget-object v1, p0, Lcom/narvii/nvplayer/NVMediaSource;->nvObject:Lcom/narvii/model/NVObject;

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

    .line 16
    invoke-virtual {p0}, Lcom/narvii/nvplayer/NVMediaSource;->clone()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v0

    return-object v0
.end method

.method public containValidVideo()Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    .line 102
    invoke-virtual {v2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 73
    :cond_1
    instance-of v2, p1, Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v2, :cond_8

    .line 74
    iget-boolean v2, p0, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    check-cast p1, Lcom/narvii/nvplayer/NVMediaSource;

    iget-boolean v3, p1, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    if-eq v2, v3, :cond_2

    return v0

    .line 77
    :cond_2
    iget-boolean v2, p0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    iget-boolean v3, p1, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 80
    :cond_3
    iget-object p1, p1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 82
    iget-object v3, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-eq v3, v2, :cond_5

    return v0

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_7

    .line 87
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    iget-object v5, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLowResVideoUrl(I)Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getNVContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVContext;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotCache()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->notCache:Z

    return v0
.end method

.method public getNvObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->nvObject:Lcom/narvii/model/NVObject;

    return-object v0
.end method

.method public getVideoUrlWithRes(IZ)Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 158
    invoke-virtual {p0, p1}, Lcom/narvii/nvplayer/NVMediaSource;->getLowResVideoUrl(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 160
    :cond_1
    iget-object p2, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isLoadLowResVideo()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->loadLowResVideo:Z

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    return v0
.end method

.method public isPollOrQuiz()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    return v0
.end method

.method public isVideoSupportLowRes()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->videoSupportLowRes:Z

    return v0
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->areaName:Ljava/lang/String;

    return-void
.end method

.method public setLoadLowResVideo(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->loadLowResVideo:Z

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    return-void
.end method

.method public setNVContext(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/nvplayer/NVMediaSource;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setNotCache(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->notCache:Z

    return-void
.end method

.method public setNvObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->nvObject:Lcom/narvii/model/NVObject;

    return-void
.end method

.method public setPollOrQuiz(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->pollOrQuiz:Z

    return-void
.end method

.method public setVideoSupportLowRes(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/narvii/nvplayer/NVMediaSource;->videoSupportLowRes:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    .line 122
    invoke-virtual {v2}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
