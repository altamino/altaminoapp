.class public abstract Lcom/narvii/video/player/BaseScenePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

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
    value = "SMAP\nBaseScenePlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseScenePlayer.kt\ncom/narvii/video/player/BaseScenePlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,206:1\n1864#2,3:207\n1864#2,3:210\n819#2:213\n847#2,2:214\n1855#2,2:216\n819#2:218\n847#2,2:219\n1864#2,3:221\n*S KotlinDebug\n*F\n+ 1 BaseScenePlayer.kt\ncom/narvii/video/player/BaseScenePlayer\n*L\n48#1:207,3\n58#1:210,3\n142#1:213\n142#1:214,2\n148#1:216,2\n157#1:218\n157#1:219,2\n159#1:221,3\n*E\n"
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private globalBgmClipInfo:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isPreciseOperation:Z

.field private onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playingSceneId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sceneClipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/video/player/BaseScenePlayer$SceneClip;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private stopLocationStatus:I

.field private totalDuration:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final totalDurationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneClipMap:Ljava/util/Map;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->durationList:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDurationList:Ljava/util/ArrayList;

    .line 39
    .line 40
    sget-object v0, Lcom/narvii/scene/interfaces/IScenePlayer;->Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->getBACK_TO_CURRENT_SCENE_BEGINNING()I

    .line 44
    move-result v0

    .line 45
    .line 46
    iput v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->stopLocationStatus:I

    .line 47
    .line 48
    const-wide/16 v0, 0x0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    .line 55
    return-void
.end method

.method public static final synthetic access$updateDuration(Lcom/narvii/video/player/BaseScenePlayer;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->updateDuration(J)V

    .line 4
    return-void
.end method

.method private final clearData()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneClipMap:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->durationList:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDurationList:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    .line 34
    return-void
.end method

.method private final getMaxSceneDuration()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/scene/SceneConstant;->getMaxSceneLengthMs()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private final updateDuration(J)V
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v2, p1, v0

    .line 5
    .line 6
    if-lez v2, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/video/player/BaseScenePlayer;->durationList:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 23
    move-result-wide v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-wide v2, v0

    .line 26
    :goto_0
    add-long/2addr v2, p1

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDurationList:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 40
    move-result-wide v0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method protected final getCurrentClipIndex(J)I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDurationList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    add-int/lit8 v3, v1, 0x1

    .line 20
    .line 21
    if-gez v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 25
    .line 26
    :cond_0
    check-cast v2, Ljava/lang/Number;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    cmp-long v2, v4, p1

    .line 33
    .line 34
    if-ltz v2, :cond_1

    .line 35
    return v1

    .line 36
    :cond_1
    move v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p1, -0x1

    .line 39
    return p1
.end method

.method public getCurrentSceneId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->playingSceneId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCurrentSceneIndex()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 36
    move-result v0

    .line 37
    return v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    return v0
.end method

.method public getCurrentSceneIndexIgnoreEmpty()I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    .line 24
    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    move v2, v1

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    add-int/lit8 v4, v2, 0x1

    .line 53
    .line 54
    if-gez v2, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 58
    .line 59
    :cond_2
    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    return v2

    .line 73
    :cond_3
    move v2, v4

    .line 74
    goto :goto_1

    .line 75
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->durationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getGlobalBgmClipInfo()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->globalBgmClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method public final getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    return-object v0
.end method

.method public final getPlayingSceneId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneClipMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSceneCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSceneCountIgnoreEmpty()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    .line 24
    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 38
    move-result v0

    .line 39
    return v0
.end method

.method protected final getSceneFirstClipIndex(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 27
    .line 28
    :cond_0
    check-cast v2, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    return v1

    .line 40
    :cond_1
    move v1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, -0x1

    .line 43
    return p1
.end method

.method protected final getSceneIdByPosition(J)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->getCurrentClipIndex(J)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result p2

    .line 11
    .line 12
    add-int/lit8 p2, p2, -0x1

    .line 13
    .line 14
    if-gt p1, p2, :cond_1

    .line 15
    const/4 p2, -0x1

    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 33
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->sceneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getStopLocationStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->stopLocationStatus:I

    return v0
.end method

.method public getTotalDuration()J
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final isPreciseOperation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation:Z

    return v0
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/video/player/BaseScenePlayer;->clearData()V

    return-void
.end method

.method public varargs release([Ljava/lang/Object;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/narvii/video/player/BaseScenePlayer;->clearData()V

    return-void
.end method

.method public seekScene(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sceneId"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->playingSceneId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/video/player/BaseScenePlayer;->getSceneFirstClipIndex(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0, v1, v2, p2}, Lcom/narvii/scene/interfaces/IScenePlayer;->seek(IJZ)V

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/lang/Exception;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, p1, v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33
    :cond_1
    return-void
.end method

.method public setBackgroundMusic(Landroid/content/Context;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/video/player/BaseScenePlayer;->globalBgmClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public abstract setClipInfoList(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->globalBgmClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public final setOnPlayListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    return-void
.end method

.method public setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->onPlayListener:Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    return-void
.end method

.method public final setPlayingSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->playingSceneId:Ljava/lang/String;

    return-void
.end method

.method public setPreciseControl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation:Z

    return-void
.end method

.method protected final setPreciseOperation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->isPreciseOperation:Z

    return-void
.end method

.method public setScenes(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "sceneInfoList"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/video/player/BaseScenePlayer;->clearData()V

    .line 14
    .line 15
    new-instance p1, Lkotlin/jvm/internal/n0;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Lcom/narvii/video/player/BaseScenePlayer$setScenes$1;-><init>(Lcom/narvii/video/player/BaseScenePlayer;Lkotlin/jvm/internal/n0;)V

    .line 26
    const/4 p1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2, p1, v1}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList(Ljava/util/List;ZLe8/s;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->component2()Ljava/util/ArrayList;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->component3()Ljava/util/ArrayList;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->component4()Ljava/util/ArrayList;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->component5()Ljava/util/ArrayList;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result p1

    .line 53
    .line 54
    if-lez p1, :cond_0

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    .line 57
    const/4 p2, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/video/player/BaseScenePlayer$VideoClip;->getSceneId()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->playingSceneId:Ljava/lang/String;

    .line 70
    .line 71
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/player/BaseScenePlayer;->videoClipList:Ljava/util/ArrayList;

    .line 72
    move-object v0, p0

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/player/BaseScenePlayer;->setClipInfoList(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 76
    return-void
.end method

.method public setStopLocation(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->stopLocationStatus:I

    return-void
.end method

.method protected final setStopLocationStatus(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->stopLocationStatus:I

    return-void
.end method

.method public final setTotalDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/player/BaseScenePlayer;->totalDuration:Ljava/lang/Long;

    return-void
.end method
