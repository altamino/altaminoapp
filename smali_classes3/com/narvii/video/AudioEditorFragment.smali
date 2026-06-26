.class public final Lcom/narvii/video/AudioEditorFragment;
.super Lcom/narvii/video/BaseViceTimeLineFragment;
.source "AudioEditorFragment.kt"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioEditorFragment.kt\ncom/narvii/video/AudioEditorFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,326:1\n1587#2,2:327\n*E\n*S KotlinDebug\n*F\n+ 1 AudioEditorFragment.kt\ncom/narvii/video/AudioEditorFragment\n*L\n317#1,2:327\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final audioEditingPanelCallback:Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;

.field private audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

.field private audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private outputFolderPath:Ljava/lang/String;

.field private selectedAudioTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/narvii/video/AudioEditorFragment;->selectedAudioTrackIndex:I

    .line 49
    new-instance v0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    iput-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditingPanelCallback:Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;

    return-void
.end method

.method public static final synthetic access$getAudioEditingPanelCallback$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditingPanelCallback:Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;

    return-object p0
.end method

.method public static final synthetic access$getAudioEditorPanel$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/widget/AudioEditorPanel;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "audioEditorPanel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getAudioWaveRetrieverManager$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-object p0
.end method

.method public static final synthetic access$getMediaPickerFragment$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/media/MediaPickerFragment;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mediaPickerFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getSelectedAudioTrackIndex$p(Lcom/narvii/video/AudioEditorFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/narvii/video/AudioEditorFragment;->selectedAudioTrackIndex:I

    return p0
.end method

.method public static final synthetic access$setAudioEditorPanel$p(Lcom/narvii/video/AudioEditorFragment;Lcom/narvii/video/widget/AudioEditorPanel;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

    return-void
.end method

.method public static final synthetic access$setAudioWaveRetrieverManager$p(Lcom/narvii/video/AudioEditorFragment;Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public static final synthetic access$setMediaPickerFragment$p(Lcom/narvii/video/AudioEditorFragment;Lcom/narvii/media/MediaPickerFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-void
.end method

.method public static final synthetic access$setSelectedAudioTrackIndex$p(Lcom/narvii/video/AudioEditorFragment;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/narvii/video/AudioEditorFragment;->selectedAudioTrackIndex:I

    return-void
.end method

.method public static final synthetic access$setVideoInputClipListVolume(Lcom/narvii/video/AudioEditorFragment;F)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->setVideoInputClipListVolume(F)V

    return-void
.end method

.method public static final synthetic access$updateAddMusicButton(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateAddMusicButton()V

    return-void
.end method

.method public static final synthetic access$updateMuteIcon(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateMuteIcon()V

    return-void
.end method

.method private final setVideoInputClipListVolume(F)V
    .locals 4

    .line 317
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 318
    iput p1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 319
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateAddMusicButton()V
    .locals 6

    .line 180
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "option_add_music"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 182
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 184
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_sfx:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "option_add_sfx"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 185
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_add_sfx:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private final updateMuteIcon()V
    .locals 2

    .line 324
    sget v0, Lcom/narvii/mediaeditor/R$id;->mute_iv:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->isAllVideoClipMute()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_mute:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_unmute:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 103
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

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SceneMusicEdit"

    return-object v0
.end method

.method public getTargetClipListForViceTracks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 284
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 285
    iget v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 286
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v3

    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getViceTrackDataType(I)I
    .locals 0

    const/16 p1, 0x65

    return p1
.end method

.method public initComponent()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initComponent()V

    .line 82
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_duration:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoDurationText(Landroid/widget/TextView;)V

    .line 83
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_playback_time:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 84
    sget v0, Lcom/narvii/mediaeditor/R$id;->divider:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeDivider(Landroid/view/View;)V

    .line 85
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_view_player:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 86
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_button:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 87
    sget v0, Lcom/narvii/mediaeditor/R$id;->audio_editor_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/AudioEditorPanel;

    const-string v1, "audio_editor_panel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

    .line 88
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "vice_time_line_panel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->setViceTimeLinePanel(Landroid/widget/LinearLayout;)V

    .line 89
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 8

    const-string v0, "frameRetrieverOutputFolder"

    .line 93
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->outputFolderPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/AudioEditorFragment;->outputFolderPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "timeline_tmp"

    const-string v3, "audio"

    invoke-static/range {v1 .. v7}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 99
    :goto_0
    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-direct {v0, p0}, Lcom/narvii/video/services/FrameRetrieverManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onAVClipsPrepared()V

    .line 174
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateAddMusicButton()V

    .line 175
    sget v0, Lcom/narvii/mediaeditor/R$id;->mute_rl:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "mute_rl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateMuteIcon()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_done:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$1;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_add_music:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$2;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget p1, Lcom/narvii/mediaeditor/R$id;->option_add_sfx:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$3;

    invoke-direct {v0, p0}, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$3;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget p1, Lcom/narvii/mediaeditor/R$id;->video_volume_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance v0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$4;

    invoke-direct {v0, p0}, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$4;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget p1, Lcom/narvii/mediaeditor/R$id;->video_volume_panel_progress_background:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget-object v0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$5;->INSTANCE:Lcom/narvii/video/AudioEditorFragment$onActivityCreated$5;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget p1, Lcom/narvii/mediaeditor/R$id;->mute_rl:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$6;

    invoke-direct {v0, p0}, Lcom/narvii/video/AudioEditorFragment$onActivityCreated$6;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 107
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "playListMediaPicker"

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 109
    instance-of v2, p1, Lcom/narvii/media/MediaPickerFragment;

    const-string v3, "mediaPickerFragment"

    if-eqz v2, :cond_0

    .line 110
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    goto :goto_0

    .line 112
    :cond_0
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 113
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 115
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    return-void

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 108
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_audio_editor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    return-void

    :cond_0
    const-string v0, "mediaPickerFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroyView()V
    .locals 4

    .line 206
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onDestroyView()V

    .line 207
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/narvii/video/AudioEditorFragment;->_$_clearFindViewByIdCache()V

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment;->outputFolderPath:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    .line 211
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, v3, v2, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/AudioEditorFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 197
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onPause()V

    .line 198
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 202
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    :cond_1
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 219
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "soundDataList"

    .line 222
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 223
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lcom/narvii/media/online/audio/model/Sound;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz p2, :cond_3

    const-string v2, "category"

    .line 224
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    .line 225
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Lcom/narvii/media/online/audio/model/AssetCategory;

    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/media/online/audio/model/AssetCategory;

    goto :goto_3

    :cond_4
    move-object v2, v0

    :goto_3
    if-eqz p2, :cond_5

    const-string v3, "soundTypeList"

    .line 226
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_5
    move-object p2, v0

    .line 227
    :goto_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_5

    :cond_6
    move-object p2, v0

    .line 228
    :goto_5
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    move-result v3

    .line 229
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->isTailFrameCellPlaying()Lkotlin/Pair;

    move-result-object v0

    .line 230
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_d

    .line 232
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/Media;

    .line 233
    new-instance v9, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v9}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 234
    iput v7, v9, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 235
    iget-object v10, v8, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "Uri.parse(media.url)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 236
    iget-object v10, v8, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    iput-object v10, v9, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 237
    iget-object v8, v8, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    iput-object v8, v9, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 238
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ne v8, v10, :cond_8

    if-eqz v2, :cond_8

    .line 239
    sget-object v8, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/media/online/audio/model/Sound;

    invoke-virtual {v8, v9, v10, v2}, Lcom/narvii/video/services/SceneMediaProcessor;->fillAudioClipMetadata(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;)Lcom/narvii/video/model/AVClipInfoPack;

    :cond_8
    const/4 v8, 0x1

    if-eqz p2, :cond_b

    .line 241
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_b

    .line 242
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const/4 v11, 0x2

    if-nez v10, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v11, :cond_a

    const/4 v10, 0x1

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v10, 0x0

    :goto_8
    iput-boolean v10, v9, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    goto :goto_9

    .line 244
    :cond_b
    iput-boolean v6, v9, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    :goto_9
    if-eqz v0, :cond_c

    .line 246
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v8, :cond_c

    add-int/lit16 v8, v3, -0x3e8

    goto :goto_a

    :cond_c
    move v8, v3

    :goto_a
    iput v8, v9, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 247
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    .line 249
    new-instance v7, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;

    invoke-direct {v7, p0, v5, v3}, Lcom/narvii/video/AudioEditorFragment$onPickMediaResult$1;-><init>(Lcom/narvii/video/AudioEditorFragment;Ljava/util/ArrayList;I)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList$default(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;ZLcom/narvii/util/Callback;ILjava/lang/Object;)V

    :cond_e
    :goto_b
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onResume()V

    .line 190
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->refreshTimeLine()V

    :cond_1
    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 7

    const-string v0, "clipInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V

    .line 301
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 302
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_volume_panel_progress_view:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/video/widget/VolumeProgressView;

    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v2, v0

    new-instance v3, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$$inlined$let$lambda$1;

    invoke-direct {v3, p1, p0}, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$$inlined$let$lambda$1;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/AudioEditorFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/widget/VolumeProgressView;->init$default(Lcom/narvii/video/widget/VolumeProgressView;ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;ZILjava/lang/Object;)V

    .line 309
    :cond_0
    new-instance p1, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$2;

    invoke-direct {p1, p0}, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$2;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onViceTrackClicked(I)V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "previewPlayer.getAudioClipInfoList()[trackIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 268
    iput p1, p0, Lcom/narvii/video/AudioEditorFragment;->selectedAudioTrackIndex:I

    .line 269
    new-instance p1, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;

    invoke-direct {p1, p0, v0}, Lcom/narvii/video/AudioEditorFragment$onViceTrackClicked$1;-><init>(Lcom/narvii/video/AudioEditorFragment;Lcom/narvii/video/model/AVClipInfoPack;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onViceTrackOffsetChanged(I)V
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->onAudioTrackOffsetChanged(I)V

    return-void
.end method

.method protected showPauseButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
