.class public abstract Lcom/narvii/video/player/BaseScenePlayer;
.super Ljava/lang/Object;
.source "BaseScenePlayer.kt"

# interfaces
.implements Lcom/narvii/scene/interfaces/IScenePlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/player/BaseScenePlayer$SceneClip;,
        Lcom/narvii/video/player/BaseScenePlayer$VideoClip;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseScenePlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseScenePlayer.kt\ncom/narvii/video/player/BaseScenePlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,206:1\n1596#2,3:207\n1596#2,3:210\n716#2:213\n738#2,2:214\n1587#2,2:216\n716#2:218\n738#2,2:219\n1596#2,3:221\n*E\n*S KotlinDebug\n*F\n+ 1 BaseScenePlayer.kt\ncom/narvii/video/player/BaseScenePlayer\n*L\n47#1,3:207\n58#1,3:210\n142#1:213\n142#1,2:214\n148#1,2:216\n157#1:218\n157#1,2:219\n159#1,3:221\n*E\n"
.end annotation


# instance fields
.field private final durationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private globalBgmClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

.field private isPreciseOperation:Z

.field private onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

.field private playingSceneId:Ljava/lang/String;

.field private final sceneClipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/video/player/BaseScenePlayer$SceneClip;",
            ">;"
        }
    .end annotation
.end field

.field private final sceneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private stopLocationStatus:I

.field private totalDuration:Ljava/lang/Long;

.field private final totalDurationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final videoClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/player/BaseScenePlayer$VideoClip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneClipMap:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->durationList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDurationList:Ljava/util/ArrayList;

    .line 23
    sget-object v0, Lcom/narvii/scene/interfaces/IScenePlayer;->Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    invoke-virtual {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->getBACK_TO_CURRENT_SCENE_BEGINNING()I

    move-result v0

    iput v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->stopLocationStatus:I

    const-wide/16 v0, 0x0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$updateDuration(Lcom/narvii/video/player/BaseScenePlayer;J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->updateDuration(J)V

    return-void
.end method

.method private final clearData()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneClipMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 35
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->durationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDurationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    return-void
.end method

.method private final getMaxSceneDuration()I
    .locals 1

    .line 43
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    move-result v0

    return v0
.end method

.method private final updateDuration(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/narvii/video/player/BaseScenePlayer;->durationList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    add-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    .line 111
    iget-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDurationList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected final getCurrentClipIndex(J)I
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDurationList:Ljava/util/ArrayList;

    .line 211
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-ltz v2, :cond_0

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getCurrentSceneId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->playingSceneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCurrentSceneIndex()I
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 216
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 149
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSceneIndexIgnoreEmpty()I
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 158
    invoke-virtual {v3}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_3

    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 160
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    move v2, v4

    goto :goto_1

    .line 222
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    return v1
.end method

.method protected final getDurationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->durationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getGlobalBgmClipInfo()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->globalBgmClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method public final getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    return-object v0
.end method

.method public final getPlayingSceneId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->playingSceneId:Ljava/lang/String;

    return-object v0
.end method

.method protected final getSceneClipMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/video/player/BaseScenePlayer$SceneClip;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneClipMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSceneCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSceneCountIgnoreEmpty()I
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 143
    invoke-virtual {v3}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getSceneFirstClipIndex(Ljava/lang/String;)I
    .locals 4

    if-eqz p1, :cond_2

    .line 48
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 208
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 49
    invoke-virtual {v2}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected final getSceneIdByPosition(J)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentClipIndex(J)I

    move-result p1

    .line 68
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-gt p1, p2, :cond_1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    invoke-virtual {p1}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final getSceneList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getStopLocationStatus()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->stopLocationStatus:I

    return v0
.end method

.method public getTotalDuration()J
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getTotalDuration()Ljava/lang/Long;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    return-object v0
.end method

.method protected final getTotalDurationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDurationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getVideoClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/player/BaseScenePlayer$VideoClip;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final isPreciseOperation()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation:Z

    return v0
.end method

.method public release()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/narvii/video/player/BaseScenePlayer;->clearData()V

    return-void
.end method

.method public varargs release([Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/narvii/video/player/BaseScenePlayer;->clearData()V

    return-void
.end method

.method public seekScene(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->playingSceneId:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p1}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneFirstClipIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-wide/16 v1, 0x0

    .line 131
    invoke-interface {p0, v0, v1, v2, p2}, Lcom/narvii/scene/interfaces/IScenePlayer;->seek(IJZ)V

    return-void

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setBackgroundMusic(Landroid/content/Context;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->globalBgmClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public abstract setClipInfoList(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/video/player/BaseScenePlayer$VideoClip;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final setGlobalBgmClipInfo(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->globalBgmClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public final setOnPlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    return-void
.end method

.method public setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    return-void
.end method

.method public final setPlayingSceneId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->playingSceneId:Ljava/lang/String;

    return-void
.end method

.method public setPreciseControl(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation:Z

    return-void
.end method

.method protected final setPreciseOperation(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation:Z

    return-void
.end method

.method public setScenes(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sceneInfoList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/narvii/video/player/BaseScenePlayer;->clearData()V

    .line 84
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 86
    sget-object v1, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    new-instance v2, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;-><init>(Lcom/narvii/video/player/BaseScenePlayer;Lkotlin/jvm/internal/Ref$IntRef;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p2, p1, v2}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList(Ljava/util/List;ZLkotlin/jvm/functions/Function5;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->component2()Ljava/util/ArrayList;

    move-result-object v3

    .line 85
    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->component3()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->component4()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->component5()Ljava/util/ArrayList;

    move-result-object v6

    .line 101
    iget-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    invoke-virtual {p1}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->playingSceneId:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/player/BaseScenePlayer;->setClipInfoList(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStopLocation(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->stopLocationStatus:I

    return-void
.end method

.method protected final setStopLocationStatus(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->stopLocationStatus:I

    return-void
.end method

.method public final setTotalDuration(Ljava/lang/Long;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    return-void
.end method
