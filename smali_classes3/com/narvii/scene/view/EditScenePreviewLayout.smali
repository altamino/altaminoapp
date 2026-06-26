.class public final Lcom/narvii/scene/view/EditScenePreviewLayout;
.super Lcom/narvii/scene/view/BaseScenePreviewLayout;
.source "EditScenePreviewLayout.kt"

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
    value = "SMAP\nEditScenePreviewLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditScenePreviewLayout.kt\ncom/narvii/scene/view/EditScenePreviewLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,236:1\n1313#2:237\n1382#2,3:238\n1871#2,5:241\n*E\n*S KotlinDebug\n*F\n+ 1 EditScenePreviewLayout.kt\ncom/narvii/scene/view/EditScenePreviewLayout\n*L\n84#1:237\n84#1,3:238\n186#1,5:241\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/scene/view/EditScenePreviewLayout$Companion;

.field public static final TAG:Ljava/lang/String; = "EditScenePreviewLayout"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private currentSceneIndex:I

.field private isPlaying:Z

.field private maskView:Landroid/view/View;

.field private final nvContext:Lcom/narvii/app/NVContext;

.field private nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field private final sceneList$delegate:Lkotlin/Lazy;

.field private surface:Landroid/view/Surface;

.field private final timer$delegate:Lkotlin/Lazy;

.field private final timerTask:Ljava/util/TimerTask;

.field private videoView:Lcom/narvii/nvplayerview/NVVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/view/EditScenePreviewLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sceneList"

    const-string v4, "getSceneList()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/view/EditScenePreviewLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "timer"

    const-string v4, "getTimer()Ljava/util/Timer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/scene/view/EditScenePreviewLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/scene/view/EditScenePreviewLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/EditScenePreviewLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/view/EditScenePreviewLayout;->Companion:Lcom/narvii/scene/view/EditScenePreviewLayout$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "nvContext.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 33
    sget-object p1, Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;->INSTANCE:Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->sceneList$delegate:Lkotlin/Lazy;

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 36
    sget-object p2, Lcom/narvii/scene/view/EditScenePreviewLayout$timer$2;->INSTANCE:Lcom/narvii/scene/view/EditScenePreviewLayout$timer$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->timer$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p2, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;

    invoke-direct {p2, p0}, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;-><init>(Lcom/narvii/scene/view/EditScenePreviewLayout;)V

    iput-object p2, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->timerTask:Ljava/util/TimerTask;

    .line 52
    new-instance p2, Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 53
    invoke-virtual {p2, p3}, Lcom/narvii/nvplayerview/NVVideoView;->setScaleType(I)V

    const/high16 p3, 0x3f100000    # 0.5625f

    .line 54
    invoke-virtual {p2, p3}, Lcom/narvii/nvplayerview/NVVideoView;->setPredictedRatio(F)V

    .line 55
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iput-object p2, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 58
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getMaskView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    .line 59
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->videoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/narvii/nvplayerview/NVVideoView;->init(Lcom/narvii/nvplayerview/ISurfaceListener;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 65
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->reset()V

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->clearVideoSurface()V

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_4

    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 69
    :cond_4
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lcom/narvii/nvplayer/INVPlayer;->addWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V

    .line 71
    :cond_5
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 73
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getCurrentPosition(Lcom/narvii/scene/view/EditScenePreviewLayout;)J
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getTotalDuration(Lcom/narvii/scene/view/EditScenePreviewLayout;)J
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$isPlaying$p(Lcom/narvii/scene/view/EditScenePreviewLayout;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    return p0
.end method

.method public static final synthetic access$setPlaying$p(Lcom/narvii/scene/view/EditScenePreviewLayout;Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    return-void
.end method

.method private final getCurrentPosition()J
    .locals 5

    .line 185
    iget v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    if-le v0, v1, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 243
    check-cast v3, Lcom/narvii/model/Scene;

    .line 187
    iget-object v3, v3, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    if-eqz v3, :cond_0

    iget-wide v3, v3, Lcom/narvii/model/Media;->duration:J

    long-to-int v4, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    int-to-long v0, v1

    .line 188
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getPlayerCurPos()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_2

    .line 190
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getPlayerCurPos()J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method private final getMaskView()Landroid/view/View;
    .locals 3

    .line 220
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 221
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x1000000

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x3dcccccd    # 0.1f

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

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

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 84
    new-instance v1, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-direct {v1}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 239
    check-cast v3, Lcom/narvii/model/Scene;

    .line 85
    iget-object v3, v3, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_0
    iput-object v2, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 86
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvContext:Lcom/narvii/app/NVContext;

    invoke-virtual {v1, p1}, Lcom/narvii/nvplayer/NVMediaSource;->setNVContext(Lcom/narvii/app/NVContext;)V

    .line 87
    iput-boolean v0, v1, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    return-object v1
.end method

.method private final getPlayerCurPos()J
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private final getSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->sceneList$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/view/EditScenePreviewLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getTimer()Ljava/util/Timer;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->timer$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/view/EditScenePreviewLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    return-object v0
.end method

.method private final getTotalDuration()J
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getTotalDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private final indexOf(Ljava/lang/String;)I
    .locals 4

    .line 123
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/model/Scene;

    iget-object v3, v3, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    return v0
.end method

.method public synthetic onCachedBytesRead(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onCachedBytesRead(Lcom/narvii/nvplayer/IVideoListener;JJ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 228
    iget-boolean p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getBeforePlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;->beforePlayingPause()V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->pause()V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getBeforePlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;->beforePlayingStart()V

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->play()V

    :goto_0
    return-void
.end method

.method public synthetic onErrorDebug(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onErrorDebug(Lcom/narvii/nvplayer/IVideoListener;Lcom/narvii/nvplayer/NVVideoException;)V

    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerError  >>>  error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditScenePreviewLayout"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingError(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged  >>> isPlaying = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   playbackState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditScenePreviewLayout"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_8

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStop()V

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_2
    iput-boolean p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    .line 164
    iget-boolean p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->isPlaying:Z

    if-ne p1, v0, :cond_4

    .line 166
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStart()V

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    if-eqz p1, :cond_8

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_8

    .line 170
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 171
    :cond_5
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->maskView:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 157
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Unexpected Error"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingError(Ljava/lang/Exception;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPositionDiscontinuity  >>>  reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EditScenePreviewLayout"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onPreloadStrategyChanged(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onPreloadStrategyChanged(Lcom/narvii/nvplayer/IVideoListener;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onRenderFirstFrameInterval(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onRenderFirstFrameInterval(Lcom/narvii/nvplayer/IVideoListener;J)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 5

    .line 148
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPrepared()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getCurrentPosition()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTotalDuration()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    :cond_1
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onVideoSizeChanged(Lcom/narvii/nvplayer/IVideoListener;II)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onVideoSizeChanged(Lcom/narvii/nvplayer/IVideoListener;IIIF)V

    return-void
.end method

.method public synthetic onVideoSupportLowResVideo(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayer/IVideoListener$-CC;->$default$onVideoSupportLowResVideo(Lcom/narvii/nvplayer/IVideoListener;Z)V

    return-void
.end method

.method public onWindowIndexChanged(I)V
    .locals 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowIndexChanged  >>>  windowIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditScenePreviewLayout"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iput p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 209
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    iget-object v1, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    const-string v2, "sceneList[windowIndex].sceneId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->clearVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->removeWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 144
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public seekScene(Ljava/lang/String;)V
    .locals 4

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/EditScenePreviewLayout;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 118
    :cond_0
    iput p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->currentSceneIndex:I

    .line 119
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getCurrentPosition()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getTotalDuration()J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    :cond_1
    return-void
.end method

.method public final setSceneList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sceneList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/narvii/model/Scene;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "JacksonUtils.readListAs(\u2026List), Scene::class.java)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/narvii/scene/view/EditScenePreviewLayout;->getMediaSource(Ljava/util/List;)Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->surface:Landroid/view/Surface;

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/nvplayer/INVPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public shouldPauseForPageAboveVideo(I)Z
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowIndexChanged  >>>  windowIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EditScenePreviewLayout"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->surface:Landroid/view/Surface;

    .line 94
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->surface:Landroid/view/Surface;

    return-void
.end method

.method public synthetic surfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/ISurfaceListener$-CC;->$default$surfaceSizeChanged(Lcom/narvii/nvplayerview/ISurfaceListener;Landroid/view/Surface;II)V

    return-void
.end method

.method public toPause()V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->pause()V

    return-void
.end method

.method public toResume(Z)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p0}, Lcom/narvii/nvplayer/INVPlayer;->setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V

    .line 128
    iget-object v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 130
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 131
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method
