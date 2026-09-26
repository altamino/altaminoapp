.class public final Lcom/narvii/video/MediaSpeedFragment;
.super Lcom/narvii/video/BaseMediaEditorFragment;
.source "SourceFile"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeIndex:I

.field private activeMedia:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasVideoCompleted:Z

.field private isSeekBarSeeking:Z

.field private minOutputLengthMs:J

.field private videoDurationMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/video/MediaSpeedFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/video/MediaSpeedFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/video/MediaSpeedFragment$binding$2;->INSTANCE:Lcom/narvii/video/MediaSpeedFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    return-void
.end method

.method public static final synthetic access$getActiveIndex$p(Lcom/narvii/video/MediaSpeedFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/MediaSpeedFragment;->activeIndex:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getActiveMedia$p(Lcom/narvii/video/MediaSpeedFragment;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/narvii/video/MediaSpeedFragment;)Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMinOutputLengthMs$p(Lcom/narvii/video/MediaSpeedFragment;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/video/MediaSpeedFragment;->minOutputLengthMs:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/video/MediaSpeedFragment;->videoDurationMs:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic access$isSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/MediaSpeedFragment;->isSeekBarSeeking:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$setHasVideoCompleted$p(Lcom/narvii/video/MediaSpeedFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/MediaSpeedFragment;->hasVideoCompleted:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/MediaSpeedFragment;->isSeekBarSeeking:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/narvii/video/MediaSpeedFragment;->videoDurationMs:J

    .line 3
    return-void
.end method

.method public static final synthetic access$updateTime(Lcom/narvii/video/MediaSpeedFragment;JJZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/narvii/video/MediaSpeedFragment;->updateTime(JJZ)V

    .line 4
    return-void
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/video/MediaSpeedFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 14
    return-object v0
.end method

.method private final updateTime(JJZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->timeView:Landroid/widget/TextView;

    .line 7
    long-to-int v1, p1

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->totalTimeView:Landroid/widget/TextView;

    .line 21
    long-to-int v1, p3

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    if-eqz p5, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 34
    move-result-object p5

    .line 35
    .line 36
    iget-object p5, p5, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->seekbar:Landroid/widget/SeekBar;

    .line 37
    .line 38
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    cmp-long v0, p3, v0

    .line 41
    .line 42
    if-lez v0, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->seekbar:Landroid/widget/SeekBar;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 52
    move-result v0

    .line 53
    int-to-long v0, v0

    .line 54
    mul-long/2addr v0, p1

    .line 55
    div-long/2addr v0, p3

    .line 56
    long-to-int p1, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p1, 0x0

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p5, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    :cond_1
    return-void
.end method

.method static synthetic updateTime$default(Lcom/narvii/video/MediaSpeedFragment;JJZILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x4

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p5, 0x1

    .line 6
    :cond_0
    move v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-wide v1, p1

    .line 9
    move-wide v3, p3

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/MediaSpeedFragment;->updateTime(JJZ)V

    .line 13
    return-void
.end method


# virtual methods
.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/narvii/video/MediaSpeedFragment;->hasVideoCompleted:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/video/MediaSpeedFragment;->hasVideoCompleted:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 25
    return-void
.end method

.method protected getAudioInputClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object v0
.end method

.method protected getCaptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isAndroidVersion8()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Translucent_NoActionBar:I

    .line 12
    :goto_0
    return v0
.end method

.method protected getPipClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object v0
.end method

.method protected getStickerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object v0
.end method

.method protected getVideoInputClipList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    new-array v1, v1, [Lcom/narvii/video/model/AVClipInfoPack;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    return-object v0
.end method

.method public initComponent()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->playerButton:Landroid/widget/ImageView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->pauseShadow:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPauseShadow(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method protected innerOnVideoPrepared()V
    .locals 0

    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onAVClipsPrepared()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 11
    move-result v0

    .line 12
    int-to-long v0, v0

    .line 13
    :goto_0
    move-wide v5, v0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :goto_1
    iput-wide v5, p0, Lcom/narvii/video/MediaSpeedFragment;->videoDurationMs:J

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x4

    .line 24
    const/4 v9, 0x0

    .line 25
    move-object v2, p0

    .line 26
    .line 27
    .line 28
    invoke-static/range {v2 .. v9}, Lcom/narvii/video/MediaSpeedFragment;->updateTime$default(Lcom/narvii/video/MediaSpeedFragment;JJZILjava/lang/Object;)V

    .line 29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected onSeekingStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onVideoPlaybackStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    const-string p1, "clipInfoPack"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-class p2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 24
    .line 25
    const-string p2, "currentActiveIndex"

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 30
    move-result p2

    .line 31
    .line 32
    iput p2, p0, Lcom/narvii/video/MediaSpeedFragment;->activeIndex:I

    .line 33
    .line 34
    const-string p2, "minOutputLength"

    .line 35
    .line 36
    const/16 v0, 0x3e8

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 40
    move-result p2

    .line 41
    int-to-long v0, p2

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/narvii/video/MediaSpeedFragment;->minOutputLengthMs:J

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const-wide/16 v2, 0x0

    .line 48
    .line 49
    cmp-long p2, v0, v2

    .line 50
    .line 51
    if-gtz p2, :cond_0

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_0
    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->optionsPanel:Lcom/narvii/video/widget/MediaOptionPanel;

    .line 61
    .line 62
    sget p2, Lcom/narvii/mediaeditor/R$string;->speed:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    const-string v0, "getString(...)"

    .line 69
    .line 70
    .line 71
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    new-instance v0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;-><init>(Lcom/narvii/video/MediaSpeedFragment;)V

    .line 77
    const/4 v1, 0x5

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1, p2, v0}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->speedSelectView:Lcom/narvii/video/widget/MediaSpeedSelectView;

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 89
    .line 90
    if-eqz p2, :cond_1

    .line 91
    .line 92
    iget-wide v0, p2, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/widget/MediaSpeedSelectView;->setSpeed(D)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->speedSelectView:Lcom/narvii/video/widget/MediaSpeedSelectView;

    .line 105
    .line 106
    new-instance p2, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;

    .line 107
    .line 108
    .line 109
    invoke-direct {p2, p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;-><init>(Lcom/narvii/video/MediaSpeedFragment;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/MediaSpeedSelectView;->setOnSpeedUpdateListener(Le8/l;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    new-instance p2, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;

    .line 119
    .line 120
    .line 121
    invoke-direct {p2, p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;-><init>(Lcom/narvii/video/MediaSpeedFragment;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addPlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Lcom/narvii/video/MediaSpeedFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->seekbar:Landroid/widget/SeekBar;

    .line 131
    .line 132
    new-instance p2, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;

    .line 133
    .line 134
    .line 135
    invoke-direct {p2, p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;-><init>(Lcom/narvii/video/MediaSpeedFragment;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 139
    return-void

    .line 140
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    .line 144
    return-void
.end method
