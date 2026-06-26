.class public final Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
.super Ljava/lang/Object;
.source "VideoPreloadDelegate.kt"

# interfaces
.implements Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoPreloadDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPreloadDelegate.kt\ncom/narvii/nvplayer/exoplayer/VideoPreloadDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1587#2,2:244\n1587#2,2:246\n*E\n*S KotlinDebug\n*F\n+ 1 VideoPreloadDelegate.kt\ncom/narvii/nvplayer/exoplayer/VideoPreloadDelegate\n*L\n177#1,2:244\n198#1,2:246\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;

.field private static final DOWN_GRADE_BUFFERING_DURATION:I = 0x7d0

.field private static final HI_RES_WITH_PRELOAD_LEVEL:I = 0x3

.field private static final LOW_RES_WITHOUT_PRELOAD_LEVEL:I = 0x1

.field private static final LOW_RES_WITH_PRELOAD_LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoPreloadDelegate"

.field private static final UP_GRADE_TO_LEVEL_1_FAIL_TIMES:I = 0x3

.field private static final UP_GRADE_WITHOUT_BUFFERING_TIMES:I = 0x3

.field public static final VIDEO_RES_360P:I = 0x2

.field public static final VIDEO_RES_720P:I = 0x1

.field public static final VIDEO_RES_DEFAULT:I = 0x0

.field public static final VIDEO_RES_PREFS_KEY:Ljava/lang/String; = "video_res_prefs_key"


# instance fields
.field private bufferingStartTime:J

.field private forceVideoRes:I

.field private keepVideoRes:Z

.field private lastState:I

.field private noBufferTimes:I

.field private final player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

.field private prefs:Landroid/content/SharedPreferences;

.field private preloadLevel:I

.field private upgradeFailCountEnable:Z

.field private upgradeFailTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->Companion:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 47
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v0, "prefs"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->prefs:Landroid/content/SharedPreferences;

    .line 67
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/app/NVApplication;->addLifecycleListener(Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;)V

    .line 68
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "video_res_prefs_key"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x7dd

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->setForceVideoRes(I)V

    :cond_0
    const/4 p1, 0x3

    .line 78
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    const/4 p1, 0x1

    .line 80
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->lastState:I

    return-void
.end method

.method private final downgradeLevel()V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    .line 125
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->updatePreloadLevel()V

    .line 126
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 129
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 130
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->videoResDowngrade()V

    :cond_2
    return-void
.end method

.method private final upgradeLevel()V
    .locals 3

    .line 136
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    .line 142
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailTimes:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->updatePreloadLevel()V

    .line 146
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 149
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 150
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    if-ne v0, v1, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->videoResUpgrade()V

    .line 153
    :cond_3
    iput-boolean v2, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailCountEnable:Z

    return-void
.end method

.method private final videoResDowngrade()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoResDowngrade()V

    return-void
.end method

.method private final videoResUpgrade()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoResUpgrade()V

    return-void
.end method


# virtual methods
.method public final getForceVideoRes()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->forceVideoRes:I

    return v0
.end method

.method public final getPlayer()Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    return-object v0
.end method

.method public final isHighPreloadLevel()Z
    .locals 2

    .line 239
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onApplicationPause(Landroid/app/Application;)V
    .locals 0

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailTimes:I

    .line 24
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    return-void
.end method

.method public onApplicationResume(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public onApplicationStart(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public onApplicationStop(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public final onPositionDiscontinuity()V
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    .line 114
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeLevel()V

    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 5

    .line 87
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->lastState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->bufferingStartTime:J

    sub-long/2addr v0, v2

    const/16 v2, 0x7d0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->downgradeLevel()V

    .line 95
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailCountEnable:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailCountEnable:Z

    .line 97
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailTimes:I

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onPositionDiscontinuity()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->bufferingStartTime:J

    .line 105
    :cond_3
    :goto_0
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->lastState:I

    return-void
.end method

.method public final preloadStrategyDebugInfo()Ljava/lang/String;
    .locals 3

    .line 219
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force preload "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->forceVideoRes:I

    if-ne v2, v1, :cond_0

    const-string v1, "360P"

    goto :goto_0

    :cond_0
    const-string v1, "720P"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_1
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    const-string v0, "Lv1: Hi-res, with preload"

    return-object v0

    :cond_3
    const-string v0, "Lv2: Low-res, with preload"

    return-object v0

    :cond_4
    const-string v0, "Lv3: Low-res, no preload"

    return-object v0
.end method

.method public final resetPreloadUrls(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Media;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    const-string v0, "medias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    const-string v1, "it.url"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 170
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->forceVideoRes:I

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_1

    goto :goto_2

    .line 175
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->videoSupportLowBitrate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    .line 178
    iget-object v5, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 179
    iget-object v5, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0

    .line 185
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 172
    :cond_6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 191
    :cond_7
    :goto_2
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    if-eq v0, v4, :cond_e

    if-eq v0, v2, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 213
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 193
    :cond_8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 196
    :cond_9
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->videoSupportLowBitrate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    .line 199
    iget-object v5, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_a

    .line 200
    iget-object v5, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    return-object v0

    .line 206
    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 210
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final setForceVideoRes(I)V
    .locals 4

    .line 50
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->forceVideoRes:I

    .line 51
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->forceVideoRes:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 60
    iput-boolean v1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iput-boolean v2, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 54
    iput-boolean v2, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    iput-boolean v1, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 58
    iput-boolean v2, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video_res_prefs_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
