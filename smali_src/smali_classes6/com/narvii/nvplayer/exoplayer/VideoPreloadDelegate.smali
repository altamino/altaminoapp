.class public final Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoPreloadDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPreloadDelegate.kt\ncom/narvii/nvplayer/exoplayer/VideoPreloadDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1855#2,2:244\n1855#2,2:246\n*S KotlinDebug\n*F\n+ 1 VideoPreloadDelegate.kt\ncom/narvii/nvplayer/exoplayer/VideoPreloadDelegate\n*L\n177#1:244,2\n198#1:246,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DOWN_GRADE_BUFFERING_DURATION:I = 0x7d0

.field private static final HI_RES_WITH_PRELOAD_LEVEL:I = 0x3

.field private static final LOW_RES_WITHOUT_PRELOAD_LEVEL:I = 0x1

.field private static final LOW_RES_WITH_PRELOAD_LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoPreloadDelegate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UP_GRADE_TO_LEVEL_1_FAIL_TIMES:I = 0x3

.field private static final UP_GRADE_WITHOUT_BUFFERING_TIMES:I = 0x3

.field public static final VIDEO_RES_360P:I = 0x2

.field public static final VIDEO_RES_720P:I = 0x1

.field public static final VIDEO_RES_DEFAULT:I = 0x0

.field public static final VIDEO_RES_PREFS_KEY:Ljava/lang/String; = "video_res_prefs_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bufferingStartTime:J

.field private forceVideoRes:I

.field private keepVideoRes:Z

.field private lastState:I

.field private noBufferTimes:I

.field private final player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;

.field private preloadLevel:I

.field private upgradeFailCountEnable:Z

.field private upgradeFailTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->Companion:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V
    .locals 2
    .param p1    # Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "player"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "prefs"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Landroid/content/SharedPreferences;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->prefs:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/narvii/app/NVApplication;->addLifecycleListener(Lcom/narvii/app/NVApplication$ApplicationLifecycleListener;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->prefs:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    const-string v0, "video_res_prefs_key"

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 40
    move-result p1

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, La2/b;->d(Landroid/content/Context;)I

    .line 48
    move-result v0

    .line 49
    .line 50
    const/16 v1, 0x7dd

    .line 51
    .line 52
    if-gt v0, v1, :cond_0

    .line 53
    const/4 v0, 0x2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->setForceVideoRes(I)V

    .line 57
    .line 58
    :cond_0
    if-eqz p1, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->setForceVideoRes(I)V

    .line 62
    :cond_1
    const/4 p1, 0x3

    .line 63
    .line 64
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 65
    const/4 p1, 0x1

    .line 66
    .line 67
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->lastState:I

    .line 68
    return-void
.end method

.method private final downgradeLevel()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->updatePreloadLevel()V

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 24
    const/4 v1, 0x2

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->videoResDowngrade()V

    .line 30
    :cond_2
    return-void
.end method

.method private final upgradeLevel()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailTimes:I

    .line 11
    const/4 v1, 0x3

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->updatePreloadLevel()V

    .line 25
    .line 26
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    return-void

    .line 30
    :cond_2
    const/4 v2, 0x1

    .line 31
    add-int/2addr v0, v2

    .line 32
    .line 33
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 34
    .line 35
    if-ne v0, v1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->videoResUpgrade()V

    .line 39
    .line 40
    :cond_3
    iput-boolean v2, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailCountEnable:Z

    .line 41
    return-void
.end method

.method private final videoResDowngrade()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoResDowngrade()V

    .line 6
    return-void
.end method

.method private final videoResUpgrade()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoResUpgrade()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getForceVideoRes()I
    .locals 1

    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->forceVideoRes:I

    return v0
.end method

.method public final getPlayer()Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    return-object v0
.end method

.method public final isHighPreloadLevel()Z
    .locals 2

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
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailTimes:I

    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    return-void
.end method

.method public onApplicationResume(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onApplicationStart(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onApplicationStop(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final onPositionDiscontinuity()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->noBufferTimes:I

    .line 12
    const/4 v1, 0x3

    .line 13
    .line 14
    if-le v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeLevel()V

    .line 18
    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->lastState:I

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    if-ne p1, v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->bufferingStartTime:J

    .line 20
    sub-long/2addr v0, v2

    .line 21
    .line 22
    const-wide/16 v2, 0x7d0

    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    if-ltz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->downgradeLevel()V

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailCountEnable:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailCountEnable:Z

    .line 37
    .line 38
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailTimes:I

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->upgradeFailTimes:I

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onPositionDiscontinuity()V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    if-ne p1, v1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    move-result-wide v0

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->bufferingStartTime:J

    .line 56
    .line 57
    :cond_3
    :goto_0
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->lastState:I

    .line 58
    return-void
.end method

.method public final preloadStrategyDebugInfo()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v2, "force preload "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v2, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->forceVideoRes:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_0

    .line 20
    .line 21
    const-string v1, "360P"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string v1, "720P"

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    .line 34
    :cond_1
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    if-eq v0, v2, :cond_4

    .line 38
    .line 39
    if-eq v0, v1, :cond_3

    .line 40
    const/4 v1, 0x3

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    const-string v0, ""

    .line 45
    return-object v0

    .line 46
    .line 47
    :cond_2
    const-string v0, "Lv1: Hi-res, with preload"

    .line 48
    return-object v0

    .line 49
    .line 50
    :cond_3
    const-string v0, "Lv2: Low-res, with preload"

    .line 51
    return-object v0

    .line 52
    .line 53
    :cond_4
    const-string v0, "Lv3: Low-res, no preload"

    .line 54
    return-object v0
.end method

.method public final resetPreloadUrls(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "medias"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 19
    .line 20
    const-string v1, "url"

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x1

    .line 24
    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->forceVideoRes:I

    .line 28
    .line 29
    if-eq v0, v4, :cond_5

    .line 30
    .line 31
    if-eq v0, v3, :cond_1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/model/Media;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/util/Utils;->videoSupportLowBitrate(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    check-cast p1, Ljava/lang/Iterable;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    check-cast v2, Lcom/narvii/model/Media;

    .line 70
    .line 71
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 78
    move-result v3

    .line 79
    .line 80
    if-lez v3, :cond_2

    .line 81
    .line 82
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    iput-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    return-object v0

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_5
    move-object v0, p1

    .line 100
    .line 101
    check-cast v0, Ljava/lang/Iterable;

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lkotlin/collections/t;->U0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 105
    .line 106
    :cond_6
    :goto_1
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadLevel:I

    .line 107
    .line 108
    if-eq v0, v4, :cond_c

    .line 109
    .line 110
    if-eq v0, v3, :cond_8

    .line 111
    const/4 v1, 0x3

    .line 112
    .line 113
    if-eq v0, v1, :cond_7

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    .line 120
    :cond_7
    check-cast p1, Ljava/lang/Iterable;

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Lkotlin/collections/t;->U0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    .line 127
    .line 128
    :cond_8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    check-cast v0, Lcom/narvii/model/Media;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    invoke-static {v0}, Lcom/narvii/util/Utils;->videoSupportLowBitrate(Ljava/lang/String;)Z

    .line 137
    move-result v0

    .line 138
    .line 139
    if-eqz v0, :cond_b

    .line 140
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    check-cast p1, Ljava/lang/Iterable;

    .line 147
    .line 148
    .line 149
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    move-result v2

    .line 155
    .line 156
    if-eqz v2, :cond_a

    .line 157
    .line 158
    .line 159
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    move-result-object v2

    .line 161
    .line 162
    check-cast v2, Lcom/narvii/model/Media;

    .line 163
    .line 164
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 171
    move-result v3

    .line 172
    .line 173
    if-lez v3, :cond_9

    .line 174
    .line 175
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    invoke-static {v3}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v3

    .line 180
    .line 181
    iput-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    goto :goto_2

    .line 186
    :cond_a
    return-object v0

    .line 187
    .line 188
    .line 189
    :cond_b
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 190
    move-result-object p1

    .line 191
    return-object p1

    .line 192
    .line 193
    .line 194
    :cond_c
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 195
    move-result-object p1

    .line 196
    return-object p1
.end method

.method public final setForceVideoRes(I)V
    .locals 3

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->forceVideoRes:I

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-eq p1, v1, :cond_1

    .line 7
    const/4 v2, 0x2

    .line 8
    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 15
    .line 16
    iput-boolean v1, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->player:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 22
    .line 23
    iput-boolean v0, v2, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->keepVideoRes:Z

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->prefs:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "video_res_prefs_key"

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    return-void
.end method
