.class public final Lcom/narvii/video/MediaSpeedFragment;
.super Lcom/narvii/video/BaseMediaEditorFragment;
.source "MediaSpeedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSpeedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSpeedFragment.kt\ncom/narvii/video/MediaSpeedFragment\n*L\n1#1,181:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activeIndex:I

.field private activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

.field private hasVideoCompleted:Z

.field private isSeekBarSeeking:Z

.field private minOutputLengthMs:J

.field private videoDurationMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getActiveIndex$p(Lcom/narvii/video/MediaSpeedFragment;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/narvii/video/MediaSpeedFragment;->activeIndex:I

    return p0
.end method

.method public static final synthetic access$getActiveMedia$p(Lcom/narvii/video/MediaSpeedFragment;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    return-object p0
.end method

.method public static final synthetic access$getHasVideoCompleted$p(Lcom/narvii/video/MediaSpeedFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/narvii/video/MediaSpeedFragment;->hasVideoCompleted:Z

    return p0
.end method

.method public static final synthetic access$getMinOutputLengthMs$p(Lcom/narvii/video/MediaSpeedFragment;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/narvii/video/MediaSpeedFragment;->minOutputLengthMs:J

    return-wide v0
.end method

.method public static final synthetic access$getVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/narvii/video/MediaSpeedFragment;->videoDurationMs:J

    return-wide v0
.end method

.method public static final synthetic access$isSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/narvii/video/MediaSpeedFragment;->isSeekBarSeeking:Z

    return p0
.end method

.method public static final synthetic access$setActiveIndex$p(Lcom/narvii/video/MediaSpeedFragment;I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/narvii/video/MediaSpeedFragment;->activeIndex:I

    return-void
.end method

.method public static final synthetic access$setActiveMedia$p(Lcom/narvii/video/MediaSpeedFragment;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method public static final synthetic access$setHasVideoCompleted$p(Lcom/narvii/video/MediaSpeedFragment;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/narvii/video/MediaSpeedFragment;->hasVideoCompleted:Z

    return-void
.end method

.method public static final synthetic access$setMinOutputLengthMs$p(Lcom/narvii/video/MediaSpeedFragment;J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/narvii/video/MediaSpeedFragment;->minOutputLengthMs:J

    return-void
.end method

.method public static final synthetic access$setSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/narvii/video/MediaSpeedFragment;->isSeekBarSeeking:Z

    return-void
.end method

.method public static final synthetic access$setVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/narvii/video/MediaSpeedFragment;->videoDurationMs:J

    return-void
.end method

.method public static final synthetic access$updateTime(Lcom/narvii/video/MediaSpeedFragment;JJZ)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/narvii/video/MediaSpeedFragment;->updateTime(JJZ)V

    return-void
.end method

.method private final updateTime(JJZ)V
    .locals 4

    .line 175
    sget v0, Lcom/narvii/mediaeditor/R$id;->time_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "time_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    long-to-int v1, p1

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    sget v0, Lcom/narvii/mediaeditor/R$id;->total_time_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "total_time_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    long-to-int v1, p3

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    .line 178
    sget p5, Lcom/narvii/mediaeditor/R$id;->seekbar:I

    invoke-virtual {p0, p5}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/SeekBar;

    const-string v0, "seekbar"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    sget v1, Lcom/narvii/mediaeditor/R$id;->seekbar:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, p1

    div-long/2addr v0, p3

    long-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p5, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method static synthetic updateTime$default(Lcom/narvii/video/MediaSpeedFragment;JJZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/MediaSpeedFragment;->updateTime(JJZ)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/MediaSpeedFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 3

    if-nez p1, :cond_0

    .line 166
    iget-boolean v0, p0, Lcom/narvii/video/MediaSpeedFragment;->hasVideoCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/narvii/video/MediaSpeedFragment;->hasVideoCompleted:Z

    .line 168
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getSeekRequestQueue()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-static {p0, v0, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

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

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 63
    invoke-static {}, Lcom/narvii/util/Utils;->isAndroidVersion8()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Translucent_NoActionBar:I

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

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    .line 49
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/narvii/video/model/AVClipInfoPack;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 50
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public initComponent()V
    .locals 1

    .line 37
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 38
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_button:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 39
    sget v0, Lcom/narvii/mediaeditor/R$id;->pause_shadow:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPauseShadow(Landroid/view/View;)V

    return-void
.end method

.method protected innerOnVideoPrepared()V
    .locals 0

    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 10

    .line 160
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onAVClipsPrepared()V

    .line 161
    iget-object v0, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/narvii/video/MediaSpeedFragment;->videoDurationMs:J

    const-wide/16 v3, 0x0

    .line 162
    iget-wide v5, p0, Lcom/narvii/video/MediaSpeedFragment;->videoDurationMs:J

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/narvii/video/MediaSpeedFragment;->updateTime$default(Lcom/narvii/video/MediaSpeedFragment;JJZILjava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_media_speed:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/video/MediaSpeedFragment;->_$_clearFindViewByIdCache()V

    return-void
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

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "clipInfoPack"

    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    const-string p2, "currentActiveIndex"

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p2, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/narvii/video/MediaSpeedFragment;->activeIndex:I

    const-string p2, "minOutputLength"

    const/16 v0, 0x3e8

    .line 74
    invoke-virtual {p0, p2, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/narvii/video/MediaSpeedFragment;->minOutputLengthMs:J

    if-eqz p1, :cond_2

    .line 75
    iget-wide v0, p0, Lcom/narvii/video/MediaSpeedFragment;->minOutputLengthMs:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 81
    sget p1, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/MediaOptionPanel;

    const/4 p2, 0x5

    sget v0, Lcom/narvii/mediaeditor/R$string;->speed:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.speed)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$1;-><init>(Lcom/narvii/video/MediaSpeedFragment;)V

    .line 81
    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 104
    sget p1, Lcom/narvii/mediaeditor/R$id;->speed_select_view:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/MediaSpeedSelectView;

    iget-object p2, p0, Lcom/narvii/video/MediaSpeedFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/widget/MediaSpeedSelectView;->setSpeed(D)V

    .line 105
    sget p1, Lcom/narvii/mediaeditor/R$id;->speed_select_view:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/MediaSpeedSelectView;

    new-instance p2, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$2;-><init>(Lcom/narvii/video/MediaSpeedFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/MediaSpeedSelectView;->setOnSpeedUpdateListener(Lkotlin/jvm/functions/Function1;)V

    .line 114
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    new-instance p2, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;-><init>(Lcom/narvii/video/MediaSpeedFragment;)V

    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addPlayingEventListener(Lcom/narvii/video/interfaces/IPlayingEventListener;)V

    .line 135
    sget p1, Lcom/narvii/mediaeditor/R$id;->seekbar:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    new-instance p2, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;-><init>(Lcom/narvii/video/MediaSpeedFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    return-void
.end method
