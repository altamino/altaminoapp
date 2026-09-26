.class public final Lcom/narvii/scene/view/EditScenePreviewLayout;
.super Lcom/narvii/scene/view/BaseScenePreviewLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nvplayer/IVideoListener;
.implements Lcom/narvii/nvplayerview/ISurfaceListener;
.implements Lcom/narvii/nvplayer/WindowIndexChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/EditScenePreviewLayout$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditScenePreviewLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditScenePreviewLayout.kt\ncom/narvii/scene/view/EditScenePreviewLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,236:1\n1#2:237\n1549#3:238\n1620#3,3:239\n2976#3,5:242\n*S KotlinDebug\n*F\n+ 1 EditScenePreviewLayout.kt\ncom/narvii/scene/view/EditScenePreviewLayout\n*L\n85#1:238\n85#1:239,3\n186#1:242,5\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/view/EditScenePreviewLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "EditScenePreviewLayout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private currentSceneIndex:I

.field private isPlaying:Z

.field private maskView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nvPlayer:Lcom/narvii/nvplayer/INVPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sceneList$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private surface:Landroid/view/Surface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final timer$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final timerTask:Ljava/util/TimerTask;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoView:Lcom/narvii/nvplayerview/NVVideoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/view/EditScenePreviewLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/EditScenePreviewLayout$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/view/EditScenePreviewLayout;->Companion:Lcom/narvii/scene/view/EditScenePreviewLayout$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 7
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvContext:Lcom/narvii/app/NVContext;

    sget-object p1, Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;->INSTANCE:Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;

    .line 4
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->sceneList$delegate:Lw7/m;

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    sget-object p2, Lcom/narvii/scene/view/EditScenePreviewLayout$timer$2;->INSTANCE:Lcom/narvii/scene/view/EditScenePreviewLayout$timer$2;

    .line 5
    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->timer$delegate:Lw7/m;

    .line 6
    new-instance v1, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;-><init>(Lcom/narvii/scene/view/EditScenePreviewLayout;)V

    iput-object v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->timerTask:Ljava/util/TimerTask;

    .line 7
    new-instance p2, Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p2, p3}, Lcom/narvii/nvplayerview/NVVideoView;->setScaleType(I)V

    const/high16 p3, 0x3f100000    # 0.5625f

    .line 9
    invoke-virtual {p2, p3}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 10
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p2, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 11
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getMaskView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1, p0}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->reset()V

    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_2

    .line 17
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->clearVideoSurface()V

    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    .line 18
    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    :cond_3
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_4

    .line 19
    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    :cond_4
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_5

    .line 20
    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->addWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V

    .line 21
    :cond_5
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTimer()Ljava/util/Timer;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 22
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getCurrentPosition(Lcom/narvii/scene/view/EditScenePreviewLayout;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getCurrentPosition()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic access$getTotalDuration(Lcom/narvii/scene/view/EditScenePreviewLayout;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTotalDuration()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic access$isPlaying$p(Lcom/narvii/scene/view/EditScenePreviewLayout;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    .line 3
    return p0
.end method

.method private final getCurrentPosition()J
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 3
    .line 4
    if-lez v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 15
    .line 16
    if-le v0, v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Iterable;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    move v1, v2

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    check-cast v3, Lcom/narvii/model/Scene;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    iget-wide v3, v3, Lcom/narvii/model/Media;->duration:J

    .line 53
    long-to-int v3, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    move v3, v2

    .line 56
    :goto_1
    add-int/2addr v1, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    int-to-long v0, v1

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getPlayerCurPos()J

    .line 62
    move-result-wide v2

    .line 63
    add-long/2addr v0, v2

    .line 64
    goto :goto_2

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getPlayerCurPos()J

    .line 68
    move-result-wide v0

    .line 69
    :goto_2
    return-wide v0
.end method

.method private final getMaskView()Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    const/4 v2, -0x1

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    const/high16 v1, -0x1000000

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    .line 25
    .line 26
    const v1, 0x3dcccccd    # 0.1f

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    return-object v0
.end method

.method private final getMediaSource(Ljava/util/List;)Lcom/narvii/nvplayer/NVMediaSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;)",
            "Lcom/narvii/nvplayer/NVMediaSource;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 4
    .line 5
    new-instance v1, Lcom/narvii/nvplayer/NVMediaSource;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Iterable;

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    check-cast v3, Lcom/narvii/model/Scene;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iput-object v2, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 51
    .line 52
    iput-boolean v0, v1, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    .line 53
    return-object v1
.end method

.method private final getPlayerCurPos()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    :goto_0
    return-wide v0
.end method

.method private final getSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->sceneList$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    return-object v0
.end method

.method private final getTimer()Ljava/util/Timer;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->timer$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/Timer;

    .line 9
    return-object v0
.end method

.method private final getTotalDuration()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getTotalDuration()J

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    :goto_0
    return-wide v0
.end method

.method private final indexOf(Ljava/lang/String;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    move-object v3, v2

    .line 26
    .line 27
    check-cast v3, Lcom/narvii/model/Scene;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static {v0, v2}, Lkotlin/collections/t;->o0(Ljava/util/List;Ljava/lang/Object;)I

    .line 41
    move-result p1

    .line 42
    return p1
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    return v0
.end method

.method public synthetic onCachedBytesRead(JJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/b;->a(Lcom/narvii/nvplayer/IVideoListener;JJ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getBeforePlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;->beforePlayingPause()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->pause()V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getBeforePlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;->beforePlayingStart()V

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->play()V

    .line 30
    :goto_0
    return-void
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->b(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 2
    .param p1    # Lcom/narvii/nvplayer/NVVideoException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "onPlayerError  >>>  error = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "EditScenePreviewLayout"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingError(Ljava/lang/Exception;)V

    .line 49
    :cond_2
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
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
    const-string v1, "onPlayerStateChanged  >>> isPlaying = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "   playbackState = "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "EditScenePreviewLayout"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    .line 32
    .line 33
    if-eq p2, v0, :cond_9

    .line 34
    const/4 v1, 0x3

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    if-eq p2, v1, :cond_3

    .line 38
    const/4 p1, 0x4

    .line 39
    .line 40
    if-eq p2, p1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStop()V

    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    iput-boolean p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    .line 62
    .line 63
    if-ne p1, v0, :cond_6

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStart()V

    .line 73
    .line 74
    :cond_4
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_5
    const/16 p2, 0x8

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_6
    if-nez p1, :cond_b

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-eqz p1, :cond_7

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 95
    .line 96
    :cond_7
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    .line 97
    .line 98
    if-nez p1, :cond_8

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    if-eqz p1, :cond_a

    .line 110
    .line 111
    .line 112
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 113
    .line 114
    .line 115
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    if-eqz p1, :cond_b

    .line 119
    .line 120
    new-instance p2, Ljava/lang/Exception;

    .line 121
    .line 122
    const-string v0, "Unexpected Error"

    .line 123
    .line 124
    .line 125
    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingError(Ljava/lang/Exception;)V

    .line 129
    :cond_b
    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "onPositionDiscontinuity  >>>  reason = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "EditScenePreviewLayout"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public synthetic onPreloadStrategyChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->f(Lcom/narvii/nvplayer/IVideoListener;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onRenderFirstFrameInterval(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/b;->g(Lcom/narvii/nvplayer/IVideoListener;J)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPrepared()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getCurrentPosition()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTotalDuration()J

    .line 23
    move-result-wide v3

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    .line 27
    :cond_1
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/b;->i(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/b;->j(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(IIIF)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/b;->k(Lcom/narvii/nvplayer/IVideoListener;IIIF)V

    return-void
.end method

.method public synthetic onVideoSupportLowResVideo(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayer/b;->l(Lcom/narvii/nvplayer/IVideoListener;Z)V

    return-void
.end method

.method public onWindowIndexChanged(I)V
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
    const-string v1, "onWindowIndexChanged  >>>  windowIndex = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "EditScenePreviewLayout"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    iput p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-le v0, p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/model/Scene;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "sceneId"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    .line 61
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 9
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 9
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->clearVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->removeWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->timerTask:Ljava/util/TimerTask;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTimer()Ljava/util/Timer;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 27
    return-void
.end method

.method public seekScene(Ljava/lang/String;)V
    .locals 4
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
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/EditScenePreviewLayout;->indexOf(Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 20
    .line 21
    :cond_0
    iput p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getCurrentPosition()J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTotalDuration()J

    .line 35
    move-result-wide v2

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    .line 39
    :cond_1
    return-void
.end method

.method public final setSceneList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "sceneList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-class v1, Lcom/narvii/model/Scene;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v1, "readListAs(...)"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getMediaSource(Ljava/util/List;)Lcom/narvii/nvplayer/NVMediaSource;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->surface:Landroid/view/Surface;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 56
    :cond_0
    return-void
.end method

.method public shouldPauseForPageAboveVideo(I)Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "onWindowIndexChanged  >>>  windowIndex = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "EditScenePreviewLayout"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->surface:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 11
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->surface:Landroid/view/Surface;

    return-void
.end method

.method public synthetic surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/a;->c(Lcom/narvii/nvplayerview/ISurfaceListener;Landroid/view/Surface;II)V

    return-void
.end method

.method public toPause()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->pause()V

    .line 4
    return-void
.end method

.method public toResume(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->surface:Landroid/view/Surface;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 15
    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 23
    :cond_0
    return-void
.end method
