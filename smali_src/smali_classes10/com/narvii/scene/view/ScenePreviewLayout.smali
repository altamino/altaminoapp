.class public final Lcom/narvii/scene/view/ScenePreviewLayout;
.super Lcom/narvii/scene/view/BaseScenePreviewLayout;
.source "SourceFile"

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
    value = "SMAP\nScenePreviewLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenePreviewLayout.kt\ncom/narvii/scene/view/ScenePreviewLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,258:1\n1#2:259\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/view/ScenePreviewLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ScenePreviewLayout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final aspectFrameLayout:Lcom/narvii/scene/view/AspectFrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAutoPlay:Z

.field private isPreciseControl:Z

.field private final maskView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final previewView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/view/ScenePreviewLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/view/ScenePreviewLayout;->Companion:Lcom/narvii/scene/view/ScenePreviewLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/view/ScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/view/ScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/BaseScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/narvii/mediaeditor/R$styleable;->NVScenePreviewLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget p2, Lcom/narvii/mediaeditor/R$styleable;->NVScenePreviewLayout_auto_play:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->isAutoPlay:Z

    .line 6
    sget p2, Lcom/narvii/mediaeditor/R$styleable;->NVScenePreviewLayout_precise_control:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->isPreciseControl:Z

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    new-instance p1, Lcom/narvii/video/player/NvScenePlayer;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p2

    const-string p3, "instance(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/player/NvScenePlayer;-><init>(Landroid/content/Context;)V

    iget-boolean p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->isPreciseControl:Z

    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/video/player/BaseScenePlayer;->setPreciseControl(Z)V

    .line 10
    invoke-virtual {p1, p0}, Lcom/narvii/video/player/BaseScenePlayer;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    iput-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 11
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->getPreviewView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->previewView:Landroid/view/View;

    .line 12
    invoke-direct {p0}, Lcom/narvii/scene/view/ScenePreviewLayout;->getMaskView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->maskView:Landroid/view/View;

    .line 13
    new-instance p3, Lcom/narvii/scene/view/AspectFrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/narvii/scene/view/AspectFrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p3, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->aspectFrameLayout:Lcom/narvii/scene/view/AspectFrameLayout;

    .line 17
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/ScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/view/ScenePreviewLayout;JJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/scene/view/ScenePreviewLayout;->onPlayingProgress$lambda$7(Lcom/narvii/scene/view/ScenePreviewLayout;JJ)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/scene/view/ScenePreviewLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/view/ScenePreviewLayout;->onPrepared$lambda$8(Lcom/narvii/scene/view/ScenePreviewLayout;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/scene/view/ScenePreviewLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft$lambda$3(Lcom/narvii/scene/view/ScenePreviewLayout;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/view/ScenePreviewLayout;->onSceneChanged$lambda$5(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/view/ScenePreviewLayout;->onSceneEnd$lambda$6(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V

    return-void
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

.method private static final onPlayingProgress$lambda$7(Lcom/narvii/scene/view/ScenePreviewLayout;JJ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final onPrepared$lambda$8(Lcom/narvii/scene/view/ScenePreviewLayout;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPrepared()V

    .line 16
    :cond_0
    return-void
.end method

.method private static final onSceneChanged$lambda$5(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$sceneId"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    .line 21
    :cond_0
    return-void
.end method

.method private static final onSceneEnd$lambda$6(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$sceneId"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneEnd(Ljava/lang/String;I)V

    .line 21
    :cond_0
    return-void
.end method

.method private static final setSceneDraft$lambda$3(Lcom/narvii/scene/view/ScenePreviewLayout;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lcom/narvii/scene/interfaces/IScenePlayer;->play()V

    .line 12
    return-void
.end method


# virtual methods
.method public final fadeBackgroundMusic(ZZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer;->fadeBackgroundMusic(ZZ)V

    .line 6
    return-void
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getCurrentPosition()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getCurrentSceneId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getCurrentSceneId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getCurrentSceneIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getCurrentSceneIndex()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getCurrentSceneIndexIgnoreEmpty()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getCurrentSceneIndexIgnoreEmpty()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTotalDuration()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->getTotalDuration()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->isPlaying()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final mute()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->mute()V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->isPlaying()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->pause()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->play()V

    .line 20
    :goto_0
    return-void
.end method

.method public onPlayingError(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingError(Ljava/lang/Exception;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onPlayingPause()V
    .locals 2

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
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingPause()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->maskView:Landroid/view/View;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/narvii/scene/view/e;

    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/view/e;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;JJ)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public onPlayingStart()V
    .locals 2

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
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStart()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->maskView:Landroid/view/View;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    return-void
.end method

.method public onPlayingStop()V
    .locals 2

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
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingStop()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->maskView:Landroid/view/View;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/scene/view/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/scene/view/h;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
.end method

.method public onSceneChanged(Ljava/lang/String;I)V
    .locals 1
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
    new-instance v0, Lcom/narvii/scene/view/g;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/scene/view/g;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public onSceneEnd(Ljava/lang/String;I)V
    .locals 1
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
    new-instance v0, Lcom/narvii/scene/view/i;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/scene/view/i;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
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
    const-string v0, "exception"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 20
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->pause()V

    .line 6
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->play()V

    .line 6
    return-void
.end method

.method public final playLast()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->playLastScene()Ljava/lang/String;

    .line 6
    return-void
.end method

.method public final playNext()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->playNextScene()Ljava/lang/String;

    .line 6
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->aspectFrameLayout:Lcom/narvii/scene/view/AspectFrameLayout;

    .line 1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->release()V

    return-void
.end method

.method public final varargs release([Ljava/lang/Object;)V
    .locals 2
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->aspectFrameLayout:Lcom/narvii/scene/view/AspectFrameLayout;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 6
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->release([Ljava/lang/Object;)V

    return-void
.end method

.method public final seekPoint(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    const/4 v1, 0x0

    .line 1
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/narvii/scene/interfaces/IScenePlayer;->seek(IJZ)V

    return-void
.end method

.method public final seekPoint(J)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, p2, v1}, Lcom/narvii/scene/interfaces/IScenePlayer;->seek(JZ)V

    return-void
.end method

.method public final seekScene(Lcom/narvii/scene/model/SceneInfo;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Lcom/narvii/scene/model/SceneInfo;Z)V

    return-void
.end method

.method public final seekScene(Lcom/narvii/scene/model/SceneInfo;Z)V
    .locals 1
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public seekScene(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Ljava/lang/String;Z)V

    return-void
.end method

.method public final seekScene(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer;->seekScene(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setBackToBeginningWhenStop(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/scene/interfaces/IScenePlayer;->Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->getBACK_TO_BEGINNING()I

    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object p1, Lcom/narvii/scene/interfaces/IScenePlayer;->Companion:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->getBACK_TO_CURRENT_SCENE_BEGINNING()I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setStopLocation(I)V

    .line 21
    return-void
.end method

.method public final setBackgroundMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 3
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "getContext(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setBackgroundMusic(Landroid/content/Context;Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 15
    return-void
.end method

.method public final setLoop(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setLoop(Z)V

    .line 6
    return-void
.end method

.method public final setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/model/SceneDraft;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sceneDraft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;I)V

    return-void
.end method

.method public final setSceneDraft(Lcom/narvii/scene/model/SceneDraft;I)V
    .locals 2
    .param p1    # Lcom/narvii/scene/model/SceneDraft;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sceneDraft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string v1, "sceneInfos"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneList(Ljava/util/List;)V

    .line 3
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p0, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->setBackgroundMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    int-to-long v0, p2

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekPoint(J)V

    iget-boolean p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->isAutoPlay:Z

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/narvii/scene/view/f;

    invoke-direct {p2, p0}, Lcom/narvii/scene/view/f;-><init>(Lcom/narvii/scene/view/ScenePreviewLayout;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->previewView:Landroid/view/View;

    const/16 p2, 0x8

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->previewView:Landroid/view/View;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
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
            "Lcom/narvii/scene/model/SceneInfo;",
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
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "getContext(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setScenes(Landroid/content/Context;Ljava/util/List;)V

    .line 20
    return-void
.end method

.method public final setVolume(FF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/narvii/scene/interfaces/IScenePlayer;->setVolume(FF)V

    .line 6
    return-void
.end method

.method public final setVolumePercent(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->setVolumePercent(F)V

    .line 6
    return-void
.end method

.method public toPause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->pause()V

    .line 6
    return-void
.end method

.method public final toResume()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->toResume(Z)V

    return-void
.end method

.method public toResume(Z)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 2
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->restoreStatus()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    invoke-interface {p1}, Lcom/narvii/scene/interfaces/IScenePlayer;->play()V

    :cond_0
    return-void
.end method

.method public final unMute()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout;->scenePlayer:Lcom/narvii/scene/interfaces/IScenePlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->unMute()V

    .line 6
    return-void
.end method
