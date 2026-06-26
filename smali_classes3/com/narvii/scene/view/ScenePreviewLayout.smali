.class public final Lcom/narvii/scene/view/ScenePreviewLayout;
.super Lcom/narvii/scene/view/BaseScenePreviewLayout;
.source "ScenePreviewLayout.kt"

# interfaces
.implements Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/ScenePreviewLayout$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenePreviewLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenePreviewLayout.kt\ncom/narvii/scene/view/ScenePreviewLayout\n*L\n1#1,258:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/view/ScenePreviewLayout$Companion;

.field public static final TAG:Ljava/lang/String; = "ScenePreviewLayout"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final aspectFrameLayout:Lcom/narvii/scene/view/AspectFrameLayout;

.field private isAutoPlay:Z

.field private isPreciseControl:Z

.field private final maskView:Landroid/view/View;

.field private final previewView:Landroid/view/View;

.field private final scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/view/ScenePreviewLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/view/ScenePreviewLayout;->Companion:Lcom/narvii/scene/view/ScenePreviewLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/view/ScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/view/ScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    sget-object p3, Lcom/narvii/mediaeditor/R$styleable;->NVScenePreviewLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 34
    sget p3, Lcom/narvii/mediaeditor/R$styleable;->NVScenePreviewLayout_auto_play:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->isAutoPlay:Z

    if-eqz p1, :cond_1

    .line 35
    sget p3, Lcom/narvii/mediaeditor/R$styleable;->NVScenePreviewLayout_precise_control:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 36
    :cond_1
    iput-boolean p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->isPreciseControl:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    new-instance p1, Lcom/narvii/video/player/NvScenePlayer;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p2

    const-string p3, "NVApplication.instance()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/player/NvScenePlayer;-><init>(Landroid/content/Context;)V

    .line 40
    iget-boolean p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->isPreciseControl:Z

    invoke-virtual {p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->setPreciseControl(Z)V

    .line 41
    invoke-virtual {p1, p0}, Lcom/narvii/video/player/BaseScenePlayer;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 39
    iput-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 44
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->getPreviewView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->previewView:Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/narvii/scene/view/ScenePreviewLayout;->getMaskView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->maskView:Landroid/view/View;

    .line 46
    new-instance p1, Lcom/narvii/scene/view/AspectFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/scene/view/AspectFrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->previewView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 49
    iget-object p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->maskView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 46
    iput-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->aspectFrameLayout:Lcom/narvii/scene/view/AspectFrameLayout;

    .line 51
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->aspectFrameLayout:Lcom/narvii/scene/view/AspectFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/ScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getScenePlayer$p(Lcom/narvii/scene/view/ScenePreviewLayout;)Lcom/narvii/scene/interfaces/IScenePlayer;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    return-object p0
.end method

.method private final getMaskView()Landroid/view/View;
    .locals 3

    .line 252
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 253
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x1000000

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x3dcccccd    # 0.1f

    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final fadeBackgroundMusic(ZZ)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer;->fadeBackgroundMusic(ZZ)V

    return-void
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentSceneId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentSceneIndex()I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getCurrentSceneIndex()I

    move-result v0

    return v0
.end method

.method public final getCurrentSceneIndexIgnoreEmpty()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getCurrentSceneIndexIgnoreEmpty()I

    move-result v0

    return v0
.end method

.method public final getTotalDuration()J
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final mute()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->mute()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->pause()V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->play()V

    :goto_0
    return-void
.end method

.method public onPlayingError(Ljava/lang/Exception;)V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onPlayingPause()V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->maskView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 7

    .line 236
    new-instance v6, Lcom/narvii/scene/view/ScenePreviewLayout$onPlayingProgress$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/view/ScenePreviewLayout$onPlayingProgress$1;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;JJ)V

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayingStart()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStart()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->maskView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPlayingStop()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStop()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->maskView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 240
    new-instance v0, Lcom/narvii/scene/view/ScenePreviewLayout$onPrepared$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/view/ScenePreviewLayout$onPrepared$1;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSceneChanged(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneChanged$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneChanged$1;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSceneEnd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneEnd$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneEnd$1;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->play()V

    return-void
.end method

.method public final playLast()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->playLastScene()Ljava/lang/String;

    return-void
.end method

.method public final playNext()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->playNextScene()Ljava/lang/String;

    return-void
.end method

.method public release()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->aspectFrameLayout:Lcom/narvii/scene/view/AspectFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 173
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 174
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->release()V

    return-void
.end method

.method public final varargs release([Ljava/lang/Object;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->aspectFrameLayout:Lcom/narvii/scene/view/AspectFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 179
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 180
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->release([Ljava/lang/Object;)V

    return-void
.end method

.method public final seekPoint(IJ)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/narvii/scene/interfaces/IScenePlayer;->seek(IJZ)V

    return-void
.end method

.method public final seekPoint(J)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/narvii/scene/interfaces/IScenePlayer;->seek(JZ)V

    return-void
.end method

.method public final seekScene(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Lcom/narvii/scene/model/SceneInfo;Z)V

    return-void
.end method

.method public final seekScene(Lcom/narvii/scene/model/SceneInfo;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v0, "it.id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public seekScene(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Ljava/lang/String;Z)V

    return-void
.end method

.method public final seekScene(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer;->seekScene(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setBackToBeginningWhenStop(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/narvii/scene/interfaces/IScenePlayer;->Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    invoke-virtual {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->getBACK_TO_BEGINNING()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/narvii/scene/interfaces/IScenePlayer;->Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    invoke-virtual {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->getBACK_TO_CURRENT_SCENE_BEGINNING()I

    move-result p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setStopLocation(I)V

    return-void
.end method

.method public final setBackgroundMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setBackgroundMusic(Landroid/content/Context;Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method

.method public final setLoop(Z)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setLoop(Z)V

    return-void
.end method

.method public final setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V
    .locals 1

    const-string v0, "sceneDraft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;I)V

    return-void
.end method

.method public final setSceneDraft(Lcom/narvii/scene/model/SceneDraft;I)V
    .locals 2

    const-string v0, "sceneDraft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string v1, "sceneDraft.sceneInfos"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneList(Ljava/util/List;)V

    .line 76
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p0, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setBackgroundMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    int-to-long v0, p2

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekPoint(J)V

    .line 78
    iget-boolean p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->isAutoPlay:Z

    if-eqz p2, :cond_0

    .line 79
    new-instance p2, Lcom/narvii/scene/view/ScenePreviewLayout$setSceneDraft$1;

    invoke-direct {p2, p0}, Lcom/narvii/scene/view/ScenePreviewLayout$setSceneDraft$1;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->previewView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->previewView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final setSceneList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sceneList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setScenes(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public final setVolume(FF)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer;->setVolume(FF)V

    return-void
.end method

.method public final setVolumePercent(F)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setVolumePercent(F)V

    return-void
.end method

.method public toPause()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->pause()V

    return-void
.end method

.method public final toResume()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->toResume(Z)V

    return-void
.end method

.method public toResume(Z)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->restoreStatus()V

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->play()V

    :cond_0
    return-void
.end method

.method public final unMute()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->unMute()V

    return-void
.end method
