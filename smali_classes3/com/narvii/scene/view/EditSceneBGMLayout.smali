.class public final Lcom/narvii/scene/view/EditSceneBGMLayout;
.super Landroid/widget/LinearLayout;
.source "EditSceneBGMLayout.kt"

# interfaces
.implements Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.implements Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditSceneBGMLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditSceneBGMLayout.kt\ncom/narvii/scene/view/EditSceneBGMLayout\n*L\n1#1,160:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activeClip:Lcom/narvii/video/model/AVClipInfoPack;

.field private audioOptionPanel:Lcom/narvii/scene/view/AudioOptionPanel;

.field private balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

.field private fadeInView:Landroid/view/View;

.field private fadeOutView:Landroid/view/View;

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private isFadeIn:Z

.field private isFadeOut:Z

.field private mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

.field private onFadeListener:Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;

.field private onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

.field private onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

.field private timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getMediaTimeLineComponent$p(Lcom/narvii/scene/view/EditSceneBGMLayout;)Lcom/narvii/video/widget/MediaTimeLineComponent;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-object p0
.end method

.method public static final synthetic access$setMediaTimeLineComponent$p(Lcom/narvii/scene/view/EditSceneBGMLayout;Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-void
.end method

.method private final initTimeLine(Ljava/util/List;IF)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;IF)V"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 101
    iget-object v0, v15, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    const/16 v1, 0x65

    const/16 v2, 0xc9

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 102
    iget-object v6, v15, Lcom/narvii/scene/view/EditSceneBGMLayout;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const v17, 0xbe00

    const/16 v18, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v15, p0

    .line 101
    invoke-static/range {v0 .. v18}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    :cond_0
    move-object/from16 v0, p0

    .line 103
    iget-object v1, v0, Lcom/narvii/scene/view/EditSceneBGMLayout;->activeClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v1, :cond_1

    .line 104
    iget v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    if-lez v2, :cond_1

    .line 105
    new-instance v2, Lcom/narvii/scene/view/EditSceneBGMLayout$initTimeLine$$inlined$let$lambda$1;

    invoke-direct {v2, v1, v0}, Lcom/narvii/scene/view/EditSceneBGMLayout$initTimeLine$$inlined$let$lambda$1;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/scene/view/EditSceneBGMLayout;)V

    const-wide/16 v3, 0x64

    invoke-static {v2, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method static synthetic initTimeLine$default(Lcom/narvii/scene/view/EditSceneBGMLayout;Ljava/util/List;IFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/high16 p3, -0x40800000    # -1.0f

    .line 100
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/EditSceneBGMLayout;->initTimeLine(Ljava/util/List;IF)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final init(Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 1

    const-string v0, "frameRetrieverManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 86
    :goto_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_in_view:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 87
    iget-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    .line 88
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeInView:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onFadeListener:Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    iget-boolean v1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    invoke-interface {p1, v0, v1}, Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;->onFade(ZZ)V

    goto :goto_2

    .line 92
    :cond_3
    :goto_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_out_view:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 93
    iget-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    .line 94
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeOutView:Landroid/view/View;

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onFadeListener:Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    iget-boolean v1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    invoke-interface {p1, v0, v1}, Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;->onFade(ZZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onControllerActive()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onControllerActive()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    sget v0, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/AudioOptionPanel;

    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->audioOptionPanel:Lcom/narvii/scene/view/AudioOptionPanel;

    .line 44
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 45
    sget v0, Lcom/narvii/mediaeditor/R$id;->balance_seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/BalanceSeekBar;

    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

    .line 46
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_in_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeInView:Landroid/view/View;

    .line 47
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_out_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeOutView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/scene/view/BalanceSeekBar;->setOnSeekListener(Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeInView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeOutView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->audioOptionPanel:Lcom/narvii/scene/view/AudioOptionPanel;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/narvii/scene/view/AudioOptionPanel;->setOnOptionClickListener(Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;)V

    :cond_3
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(II)V

    :cond_0
    return-void
.end method

.method public onOptionDelete(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;->onOptionDelete(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onOptionSubmit(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;->onOptionSubmit(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onPlayerTick(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;JJ)V

    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onReplayTriggered(III)V

    :cond_0
    return-void
.end method

.method public onSeek(F)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeek(F)V

    :cond_0
    return-void
.end method

.method public onSeekFinish(F)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeekFinish(F)V

    :cond_0
    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 1

    const-string v0, "clipInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineClicked(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Lcom/narvii/video/interfaces/ITimelineClip;)V

    return-void
.end method

.method public onTimeLineLayout()V
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineLayout(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineScrolledOffsetChanged(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;I)V

    return-void
.end method

.method public final pause()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public final setBGMusicClip(Lcom/narvii/video/model/AVClipInfoPack;J)V
    .locals 2

    const-string v0, "bgMusicClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->activeClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 116
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    long-to-int v1, p2

    long-to-float p2, p2

    const/16 p3, 0x8

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-direct {p0, v0, v1, p2}, Lcom/narvii/scene/view/EditSceneBGMLayout;->initTimeLine(Ljava/util/List;IF)V

    .line 118
    iget-object p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->audioOptionPanel:Lcom/narvii/scene/view/AudioOptionPanel;

    if-eqz p2, :cond_0

    iget-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/narvii/scene/view/AudioOptionPanel;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

    if-eqz p2, :cond_1

    iget p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    invoke-virtual {p2, p3}, Lcom/narvii/scene/view/BalanceSeekBar;->setRange(F)V

    .line 121
    :cond_1
    iget-boolean p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    iput-boolean p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    .line 122
    iget-boolean p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    iput-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    .line 124
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeInView:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeOutView:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    return-void
.end method

.method public final setOnFadeListener(Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;)V
    .locals 1

    const-string v0, "onFadeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onFadeListener:Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;

    return-void
.end method

.method public final setOnOptionClickListener(Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;)V
    .locals 1

    const-string v0, "onOptionClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    return-void
.end method

.method public final setOnSeekListener(Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;)V
    .locals 1

    const-string v0, "onSeekListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    return-void
.end method

.method public final setTimelineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V
    .locals 1

    const-string v0, "timeLineCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method

.method public final updatePlaybackTime(J)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->updatePlaybackTime(J)V

    :cond_0
    return-void
.end method
